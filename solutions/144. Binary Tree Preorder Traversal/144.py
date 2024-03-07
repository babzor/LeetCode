# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
class Solution:
    def preorderTraversal(self, root: Optional[TreeNode]) -> List[int]:
        visited = []
        stack = [root]

        while stack:
            current_node = stack.pop()
            if current_node is not None:
                visited.append(current_node.val)
                if current_node.right is not None:
                    stack.append(current_node.right) 
                if current_node.left is not None:
                    stack.append(current_node.left) 
        return visited