function Get-CWMBoardAutoTemplate {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory = $true)]
        [Alias('boardId')]
        [int]$parentId,
        [int]$id,
        [switch]$count,
        [string]$condition,
        [ValidatePattern('\S* (desc|asc)')]
        $orderBy,
        [string]$childconditions,
        [string]$customfieldconditions,
        [int]$page,
        [int]$pageSize,
        [string[]]$fields,
        [switch]$all
    )

    $Endpoint = "/service/boards/$($parentId)/autoTemplates"
    Invoke-CWMGetMaster -Arguments $PsBoundParameters -Endpoint $Endpoint
}