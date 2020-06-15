Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A82E11F97C8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 15:02:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=txKjYZbULGgIKhTrKhoqRrbH4ptpnwNepG5ybvDmcEM=; b=mmrkWuaVqV/u0g
	AX7wjZmEe4Zwd6mClBC1P3yWD7+SdZQrPDYqEQ7yWyNvPBCnij9O5kdy/32mKrTsVmgWvLw/BT5d4
	UfWDE0O/yDhjQTs40mjMuoqqzxIdsRc5Nt/imAf6RBxXZPB0aLhx5oTCAVelVqPyGugb2K1Cv82sN
	X0QtilrXzpgL+O6euLJ6bIX1cQgavSifmFRm54sPzfUP2fNTAi1vZkaOSMhvU0rOZ1Sh3dp/1gAOx
	tSUmpEaJwdSkRt8WuzLbYYaePKMhl+98WyVFxYiN3z1CdGJs764oZlNLYLbHqt2+OaY6IYIFu5Pty
	OxZYjp6zCO9RL8Ycx+Qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkoku-0000wK-0z; Mon, 15 Jun 2020 13:02:28 +0000
Received: from 195-192-102-148.dyn.cablelink.at ([195.192.102.148]
 helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkojK-00081b-G3; Mon, 15 Jun 2020 13:00:51 +0000
From: Christoph Hellwig <hch@lst.de>
To: Al Viro <viro@zeniv.linux.org.uk>
Subject: [PATCH 6/6] kernel: add a kernel_wait helper
Date: Mon, 15 Jun 2020 15:00:32 +0200
Message-Id: <20200615130032.931285-7-hch@lst.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200615130032.931285-1-hch@lst.de>
References: <20200615130032.931285-1-hch@lst.de>
MIME-Version: 1.0
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, linux-parisc@vger.kernel.org, x86@kernel.org,
 linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, Luis Chamberlain <mcgrof@kernel.org>,
 sparclinux@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add a helper that waits for a pid and stores the status in the passed
in kernel pointer.  Use it to fix the usage of kernel_wait4 in
call_usermodehelper_exec_sync that only happens to work due to the
implicit set_fs(KERNEL_DS) for kernel threads.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 include/linux/sched/task.h |  1 +
 kernel/exit.c              | 16 ++++++++++++++++
 kernel/umh.c               | 29 ++++-------------------------
 3 files changed, 21 insertions(+), 25 deletions(-)

diff --git a/include/linux/sched/task.h b/include/linux/sched/task.h
index 38359071236ad7..a80007df396e95 100644
--- a/include/linux/sched/task.h
+++ b/include/linux/sched/task.h
@@ -102,6 +102,7 @@ struct task_struct *fork_idle(int);
 struct mm_struct *copy_init_mm(void);
 extern pid_t kernel_thread(int (*fn)(void *), void *arg, unsigned long flags);
 extern long kernel_wait4(pid_t, int __user *, int, struct rusage *);
+int kernel_wait(pid_t pid, int *stat);
 
 extern void free_task(struct task_struct *tsk);
 
diff --git a/kernel/exit.c b/kernel/exit.c
index 727150f2810338..fd598846df0b17 100644
--- a/kernel/exit.c
+++ b/kernel/exit.c
@@ -1626,6 +1626,22 @@ long kernel_wait4(pid_t upid, int __user *stat_addr, int options,
 	return ret;
 }
 
+int kernel_wait(pid_t pid, int *stat)
+{
+	struct wait_opts wo = {
+		.wo_type	= PIDTYPE_PID,
+		.wo_pid		= find_get_pid(pid),
+		.wo_flags	= WEXITED,
+	};
+	int ret;
+
+	ret = do_wait(&wo);
+	if (ret > 0 && wo.wo_stat)
+		*stat = wo.wo_stat;
+	put_pid(wo.wo_pid);
+	return ret;
+}
+
 SYSCALL_DEFINE4(wait4, pid_t, upid, int __user *, stat_addr,
 		int, options, struct rusage __user *, ru)
 {
diff --git a/kernel/umh.c b/kernel/umh.c
index 1284823dbad338..6fd948e478bec4 100644
--- a/kernel/umh.c
+++ b/kernel/umh.c
@@ -126,37 +126,16 @@ static void call_usermodehelper_exec_sync(struct subprocess_info *sub_info)
 {
 	pid_t pid;
 
-	/* If SIGCLD is ignored kernel_wait4 won't populate the status. */
+	/* If SIGCLD is ignored do_wait won't populate the status. */
 	kernel_sigaction(SIGCHLD, SIG_DFL);
 	pid = kernel_thread(call_usermodehelper_exec_async, sub_info, SIGCHLD);
-	if (pid < 0) {
+	if (pid < 0)
 		sub_info->retval = pid;
-	} else {
-		int ret = -ECHILD;
-		/*
-		 * Normally it is bogus to call wait4() from in-kernel because
-		 * wait4() wants to write the exit code to a userspace address.
-		 * But call_usermodehelper_exec_sync() always runs as kernel
-		 * thread (workqueue) and put_user() to a kernel address works
-		 * OK for kernel threads, due to their having an mm_segment_t
-		 * which spans the entire address space.
-		 *
-		 * Thus the __user pointer cast is valid here.
-		 */
-		kernel_wait4(pid, (int __user *)&ret, 0, NULL);
-
-		/*
-		 * If ret is 0, either call_usermodehelper_exec_async failed and
-		 * the real error code is already in sub_info->retval or
-		 * sub_info->retval is 0 anyway, so don't mess with it then.
-		 */
-		if (ret)
-			sub_info->retval = ret;
-	}
+	else
+		kernel_wait(pid, &sub_info->retval);
 
 	/* Restore default kernel sig handler */
 	kernel_sigaction(SIGCHLD, SIG_IGN);
-
 	umh_complete(sub_info);
 }
 
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
