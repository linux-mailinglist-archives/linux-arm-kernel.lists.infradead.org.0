Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6E6C2010FB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 17:37:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tC9ic659D0rppZEkwWE3DqcvMH90Vy/dmA2KXNpVraI=; b=S8CrRxwPohNl1T
	c8O+Cx71Nfl6yaYwupN2lVa5M6P7FX3ZXs0+G+pk7HKz11UCYzuYZcRMCD/2VGZ7wjSfc3IxTJduh
	HLgNkPL1xkPx/z0pesyTcnSEjc3+xXgFHjw2+lw6qkJ3jV2qqfTq85Q6ewl3UKoeMbBFl2ZzObGlo
	ehne3i5MYsDjI8FdZ2I1YXqPUOPce+K8VSGGPD1h1kyfmer1jsEFrRfoOWQEn3SrK7toXJBh+14U4
	BGhSV1GxeWRbEJkb5pMnnB2pi+IjHJOiRG6HaSjBaV4oYXH8P+USkK+CMjumx9NaZ8zleUPwWV+8L
	MSWaBIfDSa5MOK/hnvlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmJ4X-00038Q-2x; Fri, 19 Jun 2020 15:36:53 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmJ43-0002xy-Ce
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 15:36:24 +0000
Received: from ip-109-41-0-196.web.vodafone.de ([109.41.0.196]
 helo=localhost.localdomain) by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <christian.brauner@ubuntu.com>)
 id 1jmJ40-0000bE-FM; Fri, 19 Jun 2020 15:36:20 +0000
From: Christian Brauner <christian.brauner@ubuntu.com>
To: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 x86@kernel.org
Subject: [PATCH 1/3] timens: make vdso_join_timens() always succeed
Date: Fri, 19 Jun 2020 17:35:57 +0200
Message-Id: <20200619153559.724863-2-christian.brauner@ubuntu.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200619153559.724863-1-christian.brauner@ubuntu.com>
References: <20200619153559.724863-1-christian.brauner@ubuntu.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_083623_557056_F193BBA9 
X-CRM114-Status: GOOD (  16.10  )
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

As discussed on-list (cf. [1]), in order to make setns() support time
namespaces properly we need to tweak vdso_join_timens() to always succeed.
So switch vdso_join_timens() from mmap_write_lock_killable() to
mmap_write_lock().

Last cycle setns() was changed to support attaching to multiple namespaces
atomically. This requires all namespaces to have a point of no return where
they can't fail anymore. Specifically, <namespace-type>_install() is
allowed to perform permission checks and install the namespace into the new
struct nsset that it has been given but it is not allowed to make visible
changes to the affected task. Once <namespace-type>_install() returns
anything that the given namespace type requires to be setup in addition
needs to ideally be done in a function that can't fail or if it fails the
failure is not fatal. For time namespaces the relevant functions that fall
into this category are timens_set_vvar_page() and vdso_join_timens().
Currently the latter can fail but doesn't need to. With this we can go on
to implement a timens_commit() helper in a follow up patch to be used by
setns().

[1]: https://lore.kernel.org/lkml/20200611110221.pgd3r5qkjrjmfqa2@wittgenstein
Cc: Will Deacon <will@kernel.org>
Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Andy Lutomirski <luto@kernel.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Dmitry Safonov <dima@arista.com>
Cc: Andrei Vagin <avagin@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org
Signed-off-by: Christian Brauner <christian.brauner@ubuntu.com>
---
 arch/x86/entry/vdso/vma.c      |  6 ++----
 include/linux/time_namespace.h |  7 +++----
 kernel/time/namespace.c        | 10 ++--------
 3 files changed, 7 insertions(+), 16 deletions(-)

diff --git a/arch/x86/entry/vdso/vma.c b/arch/x86/entry/vdso/vma.c
index ea7c1f0b79df..be3f542e419c 100644
--- a/arch/x86/entry/vdso/vma.c
+++ b/arch/x86/entry/vdso/vma.c
@@ -139,13 +139,12 @@ static struct page *find_timens_vvar_page(struct vm_area_struct *vma)
  * corresponding layout.
  * See also the comment near timens_setup_vdso_data() for details.
  */
-int vdso_join_timens(struct task_struct *task, struct time_namespace *ns)
+void vdso_join_timens(struct task_struct *task, struct time_namespace *ns)
 {
 	struct mm_struct *mm = task->mm;
 	struct vm_area_struct *vma;
 
-	if (mmap_write_lock_killable(mm))
-		return -EINTR;
+	mmap_write_lock(mm);
 
 	for (vma = mm->mmap; vma; vma = vma->vm_next) {
 		unsigned long size = vma->vm_end - vma->vm_start;
@@ -155,7 +154,6 @@ int vdso_join_timens(struct task_struct *task, struct time_namespace *ns)
 	}
 
 	mmap_write_unlock(mm);
-	return 0;
 }
 #else
 static inline struct page *find_timens_vvar_page(struct vm_area_struct *vma)
diff --git a/include/linux/time_namespace.h b/include/linux/time_namespace.h
index 824d54e057eb..4d1768c6f836 100644
--- a/include/linux/time_namespace.h
+++ b/include/linux/time_namespace.h
@@ -31,8 +31,8 @@ struct time_namespace {
 extern struct time_namespace init_time_ns;
 
 #ifdef CONFIG_TIME_NS
-extern int vdso_join_timens(struct task_struct *task,
-			    struct time_namespace *ns);
+extern void vdso_join_timens(struct task_struct *task,
+			     struct time_namespace *ns);
 
 static inline struct time_namespace *get_time_ns(struct time_namespace *ns)
 {
@@ -90,10 +90,9 @@ static inline ktime_t timens_ktime_to_host(clockid_t clockid, ktime_t tim)
 }
 
 #else
-static inline int vdso_join_timens(struct task_struct *task,
+static inline void vdso_join_timens(struct task_struct *task,
 				   struct time_namespace *ns)
 {
-	return 0;
 }
 
 static inline struct time_namespace *get_time_ns(struct time_namespace *ns)
diff --git a/kernel/time/namespace.c b/kernel/time/namespace.c
index 5d9fc22d836a..e5af6fe87af8 100644
--- a/kernel/time/namespace.c
+++ b/kernel/time/namespace.c
@@ -284,7 +284,6 @@ static int timens_install(struct nsset *nsset, struct ns_common *new)
 {
 	struct nsproxy *nsproxy = nsset->nsproxy;
 	struct time_namespace *ns = to_time_ns(new);
-	int err;
 
 	if (!current_is_single_threaded())
 		return -EUSERS;
@@ -295,9 +294,7 @@ static int timens_install(struct nsset *nsset, struct ns_common *new)
 
 	timens_set_vvar_page(current, ns);
 
-	err = vdso_join_timens(current, ns);
-	if (err)
-		return err;
+	vdso_join_timens(current, ns);
 
 	get_time_ns(ns);
 	put_time_ns(nsproxy->time_ns);
@@ -313,7 +310,6 @@ int timens_on_fork(struct nsproxy *nsproxy, struct task_struct *tsk)
 {
 	struct ns_common *nsc = &nsproxy->time_ns_for_children->ns;
 	struct time_namespace *ns = to_time_ns(nsc);
-	int err;
 
 	/* create_new_namespaces() already incremented the ref counter */
 	if (nsproxy->time_ns == nsproxy->time_ns_for_children)
@@ -321,9 +317,7 @@ int timens_on_fork(struct nsproxy *nsproxy, struct task_struct *tsk)
 
 	timens_set_vvar_page(tsk, ns);
 
-	err = vdso_join_timens(tsk, ns);
-	if (err)
-		return err;
+	vdso_join_timens(tsk, ns);
 
 	get_time_ns(ns);
 	put_time_ns(nsproxy->time_ns);
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
