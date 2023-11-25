<?php

namespace App\Policies;

use App\Models\User;
use App\Models\Reply;

class ReplyPolicy extends Policy
{
    public function destroy(User $user, Reply $reply)
    {
//当前登录用户是这条评论的所有者或者当前帖子是当前登录用户的帖子
//        $reply->$topic->user_id == $user->id;
        return $reply->user_id == $user->id || $reply->topic->user_id==$user->id;
    }
}
