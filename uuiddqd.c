#include <lua.h>
#include <lauxlib.h>
#include <lualib.h>
#include <uuid/uuid.h>

static int generate_uuid(lua_State *L) {
    uuid_t my_uuid;
    uuid_generate(my_uuid);

    char stringy[36];
    uuid_unparse(my_uuid, stringy);
    lua_pushlstring(L, stringy, 36);
    return 1;
}

int luaopen_uuiddqd(lua_State *L) {
	lua_register(
			L,               /* Lua state variable */
			"generate_uuid", /* func name as known in Lua */
			generate_uuid    /* func name in this file */
			);  
	return 0;
}
