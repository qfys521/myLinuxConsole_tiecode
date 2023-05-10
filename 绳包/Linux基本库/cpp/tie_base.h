#pragma once

#include <string>
#include <functional>

using TieVoid = void;
using TieBool = bool;
using TieInt = int;
using TieLong = long long;
using TieDouble = double;
using TieFloat = float;
using TieChar = char;
using TieString = std::string;

/*
 * Object Foundation
 */
class TieObject {
private:
	TieString className;
protected:
	TieVoid SetClassName(TieString name);
	TieString GetClassName();
};