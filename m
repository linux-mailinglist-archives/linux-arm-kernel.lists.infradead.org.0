Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFE9D201102
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 17:37:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vMQfhg61oL+PwWoSvy+dKiTj3mIKGsTgS9nE+IdPM10=; b=Mt9FeugLCSgflx
	wrgLIRCSPJZ5VZC7dqgHhEIn72KWLhXBTWu7hXacf3F9nwurLISAkCkW8nti47yI0NvG6wX4lJfA4
	XZid8y2/4W2eat8oYNQKjJQLm40JubRKgT3vv559jRvnKQS7VBlKvIAICXZZkPXfDH7+WOI+idmW4
	P3T1CXReWyStH9zsQHAX9kpogMK15cZ5sma0dgiBqIyIc5frn7J3i8/1qvU4iA/vmy1/f6COH5Mrn
	5jDr2aqe6KX3rPlgdKEJ3u5Ww1WUl1eh723ZbPvXMx0d6UMXm/EaecPLsEqh3B5fCAPhO+b6KWGsW
	+MnIqv9ifrXKFtaCLL/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmJ4k-0003SF-8Z; Fri, 19 Jun 2020 15:37:06 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmJ46-0002zV-6u
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 15:36:27 +0000
Received: from ip-109-41-0-196.web.vodafone.de ([109.41.0.196]
 helo=localhost.localdomain) by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <christian.brauner@ubuntu.com>)
 id 1jmJ44-0000bE-6M; Fri, 19 Jun 2020 15:36:24 +0000
From: Christian Brauner <christian.brauner@ubuntu.com>
To: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 x86@kernel.org
Subject: [PATCH 2/3] timens: add timens_commit() helper
Date: Fri, 19 Jun 2020 17:35:58 +0200
Message-Id: <20200619153559.724863-3-christian.brauner@ubuntu.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200619153559.724863-1-christian.brauner@ubuntu.com>
References: <20200619153559.724863-1-christian.brauner@ubuntu.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_083626_436160_722BF873 
X-CRM114-Status: GOOD (  11.04  )
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

Wrap the calls to timens_set_vvar_page() and vdso_join_timens() in
timens_on_fork() and timens_install() in a new timens_commit() helper.
We'll use this helper in a follow-up patch in nsproxy too.

Cc: Will Deacon <will@kernel.org>
Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Dmitry Safonov <dima@arista.com>
Cc: Andrei Vagin <avagin@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org
Signed-off-by: Christian Brauner <christian.brauner@ubuntu.com>
---
 kernel/time/namespace.c | 15 +++++++++------
 1 file changed, 9 insertions(+), 6 deletions(-)

diff --git a/kernel/time/namespace.c b/kernel/time/namespace.c
index e5af6fe87af8..aa7b90aac2a7 100644
--- a/kernel/time/namespace.c
+++ b/kernel/time/namespace.c
@@ -280,6 +280,12 @@ static void timens_put(struct ns_common *ns)
 	put_time_ns(to_time_ns(ns));
 }
 
+static void timens_commit(struct task_struct *tsk, struct time_namespace *ns)
+{
+	timens_set_vvar_page(tsk, ns);
+	vdso_join_timens(tsk, ns);
+}
+
 static int timens_install(struct nsset *nsset, struct ns_common *new)
 {
 	struct nsproxy *nsproxy = nsset->nsproxy;
@@ -292,9 +298,8 @@ static int timens_install(struct nsset *nsset, struct ns_common *new)
 	    !ns_capable(nsset->cred->user_ns, CAP_SYS_ADMIN))
 		return -EPERM;
 
-	timens_set_vvar_page(current, ns);
 
-	vdso_join_timens(current, ns);
+	timens_commit(current, ns);
 
 	get_time_ns(ns);
 	put_time_ns(nsproxy->time_ns);
@@ -315,14 +320,12 @@ int timens_on_fork(struct nsproxy *nsproxy, struct task_struct *tsk)
 	if (nsproxy->time_ns == nsproxy->time_ns_for_children)
 		return 0;
 
-	timens_set_vvar_page(tsk, ns);
-
-	vdso_join_timens(tsk, ns);
-
 	get_time_ns(ns);
 	put_time_ns(nsproxy->time_ns);
 	nsproxy->time_ns = ns;
 
+	timens_commit(tsk, ns);
+
 	return 0;
 }
 
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
