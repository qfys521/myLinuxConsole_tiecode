#include "tie_base.h"

TieVoid TieObject::SetClassName(TieString name)
{
	this->className = name;
}

TieString TieObject::GetClassName()
{
	return this->className;
}