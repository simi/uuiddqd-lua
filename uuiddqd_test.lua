require("uuiddqd")

uuid = generate_uuid()
assert(36 == uuid:len())

another_uuid = generate_uuid()
assert(uuid ~= another_uuid)

print("Tests OK!")
