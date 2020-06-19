Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47899201103
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 17:37:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=izjvNWQLkeVNdM8+JjMGylHxv+S2l1v3cyaXsR43YHM=; b=M7A15hQxEk5nMW
	yUHT4vN7LVFihckZmznpQi9z6DSXumHeI7eMj+Zcan/ddSoB5X/Y6OWI0tHXfqoP+eSYJZUpK4SHg
	YpScYN+e9KPodLn7o48cxLi5AbDEkNIuAqSG2LY7zjT7Ndr8AgsG/q3zCt6/rYkU7UvgTgRHLN7Xd
	Li1kPM1JqBm005fvBYu64veWl+95tTdsV8T6yp5nKNxfi9kcJBVQaxV6KjvQz5NXPtpBS9UA4CDQQ
	NTeh19JXACSOStkyvb/TBoK2Km3KAzPrWLfIHrRjihba6XAH55AReMjBqEwx+s2gc71g4iYZ9gKD1
	ALx2YY9lWX0qgOfI2sPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmJ50-0003eY-It; Fri, 19 Jun 2020 15:37:22 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmJ4A-00034u-0o
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 15:36:31 +0000
Received: from ip-109-41-0-196.web.vodafone.de ([109.41.0.196]
 helo=localhost.localdomain) by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <christian.brauner@ubuntu.com>)
 id 1jmJ47-0000bE-W1; Fri, 19 Jun 2020 15:36:28 +0000
From: Christian Brauner <christian.brauner@ubuntu.com>
To: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 x86@kernel.org
Subject: [PATCH 3/3] nsproxy: support CLONE_NEWTIME with setns()
Date: Fri, 19 Jun 2020 17:35:59 +0200
Message-Id: <20200619153559.724863-4-christian.brauner@ubuntu.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200619153559.724863-1-christian.brauner@ubuntu.com>
References: <20200619153559.724863-1-christian.brauner@ubuntu.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_083630_208954_5C30E1EC 
X-CRM114-Status: GOOD (  12.72  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [91.189.89.112 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [91.189.89.112 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mark Rutland <mark.rutland@arm.com>, Dmitry Safonov <dima@arista.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Andrei Vagin <avagin@gmail.com>,
 Michael Kerrisk <mtk.manpages@gmail.com>, Andy Lutomirski <luto@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 Christian Brauner <christian.brauner@ubuntu.com>,
 Serge Hallyn <serge@hallyn.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

So far setns() was missing time namespace support. This was partially due
to it simply not being implemented but also because vdso_join_timens()
could still fail which made switching to multiple namespaces atomically
problematic. This is now fixed so support CLONE_NEWTIME with setns()

Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Michael Kerrisk <mtk.manpages@gmail.com>
Cc: Serge Hallyn <serge@hallyn.com>
Cc: Dmitry Safonov <dima@arista.com>
Cc: Andrei Vagin <avagin@gmail.com>
Signed-off-by: Christian Brauner <christian.brauner@ubuntu.com>
---
 include/linux/time_namespace.h |  6 ++++++
 kernel/nsproxy.c               | 21 +++++++++++++++++++--
 kernel/time/namespace.c        |  5 +----
 3 files changed, 26 insertions(+), 6 deletions(-)

diff --git a/include/linux/time_namespace.h b/include/linux/time_namespace.h
index 4d1768c6f836..d308a3812f79 100644
--- a/include/linux/time_namespace.h
+++ b/include/linux/time_namespace.h
@@ -33,6 +33,7 @@ extern struct time_namespace init_time_ns;
 #ifdef CONFIG_TIME_NS
 extern void vdso_join_timens(struct task_struct *task,
 			     struct time_namespace *ns);
+extern void timens_commit(struct task_struct *tsk, struct time_namespace *ns);
 
 static inline struct time_namespace *get_time_ns(struct time_namespace *ns)
 {
@@ -95,6 +96,11 @@ static inline void vdso_join_timens(struct task_struct *task,
 {
 }
 
+static inline void timens_commit(struct task_struct *tsk,
+				 struct time_namespace *ns)
+{
+}
+
 static inline struct time_namespace *get_time_ns(struct time_namespace *ns)
 {
 	return NULL;
diff --git a/kernel/nsproxy.c b/kernel/nsproxy.c
index b03df67621d0..f12231c41b69 100644
--- a/kernel/nsproxy.c
+++ b/kernel/nsproxy.c
@@ -262,8 +262,8 @@ void exit_task_namespaces(struct task_struct *p)
 static int check_setns_flags(unsigned long flags)
 {
 	if (!flags || (flags & ~(CLONE_NEWNS | CLONE_NEWUTS | CLONE_NEWIPC |
-				 CLONE_NEWNET | CLONE_NEWUSER | CLONE_NEWPID |
-				 CLONE_NEWCGROUP)))
+				 CLONE_NEWNET | CLONE_NEWTIME | CLONE_NEWUSER |
+				 CLONE_NEWPID | CLONE_NEWCGROUP)))
 		return -EINVAL;
 
 #ifndef CONFIG_USER_NS
@@ -290,6 +290,10 @@ static int check_setns_flags(unsigned long flags)
 	if (flags & CLONE_NEWNET)
 		return -EINVAL;
 #endif
+#ifndef CONFIG_TIME_NS
+	if (flags & CLONE_NEWTIME)
+		return -EINVAL;
+#endif
 
 	return 0;
 }
@@ -464,6 +468,14 @@ static int validate_nsset(struct nsset *nsset, struct pid *pid)
 	}
 #endif
 
+#ifdef CONFIG_TIME_NS
+	if (flags & CLONE_NEWTIME) {
+		ret = validate_ns(nsset, &nsp->time_ns->ns);
+		if (ret)
+			goto out;
+	}
+#endif
+
 out:
 	if (pid_ns)
 		put_pid_ns(pid_ns);
@@ -507,6 +519,11 @@ static void commit_nsset(struct nsset *nsset)
 		exit_sem(me);
 #endif
 
+#ifdef CONFIG_TIME_NS
+	if (flags & CLONE_NEWTIME)
+		timens_commit(me, nsset->nsproxy->time_ns);
+#endif
+
 	/* transfer ownership */
 	switch_task_namespaces(me, nsset->nsproxy);
 	nsset->nsproxy = NULL;
diff --git a/kernel/time/namespace.c b/kernel/time/namespace.c
index aa7b90aac2a7..afc65e6be33e 100644
--- a/kernel/time/namespace.c
+++ b/kernel/time/namespace.c
@@ -280,7 +280,7 @@ static void timens_put(struct ns_common *ns)
 	put_time_ns(to_time_ns(ns));
 }
 
-static void timens_commit(struct task_struct *tsk, struct time_namespace *ns)
+void timens_commit(struct task_struct *tsk, struct time_namespace *ns)
 {
 	timens_set_vvar_page(tsk, ns);
 	vdso_join_timens(tsk, ns);
@@ -298,9 +298,6 @@ static int timens_install(struct nsset *nsset, struct ns_common *new)
 	    !ns_capable(nsset->cred->user_ns, CAP_SYS_ADMIN))
 		return -EPERM;
 
-
-	timens_commit(current, ns);
-
 	get_time_ns(ns);
 	put_time_ns(nsproxy->time_ns);
 	nsproxy->time_ns = ns;
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
