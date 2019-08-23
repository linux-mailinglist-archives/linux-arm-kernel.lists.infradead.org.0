Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3696F9A614
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 05:35:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:
	Subject:To:From:Date:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dsBrb3iR80MNiXCU+y9OxYkAL6NbAWlRBZEifu50mRc=; b=AkAeJQMLCWQ+9A
	jkURWbvekUWOsy71E5VIBsVvdo5OGQvS8zselNNwm7ORuRDe4NDtfqIE0m1ddlwDrVo3dkwj/C0/C
	aqRixN/u6jL66B62aE5VhZ+vRosBfBMHP7WJ1EpfuukN8PUZ2pQMieFuUqb1qCrBacMwpdgce2+Va
	JBFFTmo5S80Ff5/DVl+3JWgZrbDIbtKLfn5NRmvTv0eMev7vKOb1Wi47y1NYy1qJfOYqATfUzsyOb
	mMqLv5PPnfavXHRw3QFepfiqXzEu3AP65FjdlbsWD01DH0oeVYg0LlyLLtexcNcinI9PBCQHGV7zq
	HgsLhzFH9h+5vouQ7h5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i10Lv-0001xT-VB; Fri, 23 Aug 2019 03:35:04 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i10Lh-0001x9-OA
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 03:34:51 +0000
Received: from [5.158.153.53] (helo=tip-bot2.lab.linutronix.de)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tip-bot2@linutronix.de>)
 id 1i10LY-0001oe-6b; Fri, 23 Aug 2019 05:34:40 +0200
Received: from [127.0.1.1] (localhost [IPv6:::1])
 by tip-bot2.lab.linutronix.de (Postfix) with ESMTP id E49F81C07E4;
 Fri, 23 Aug 2019 05:34:39 +0200 (CEST)
Date: Fri, 23 Aug 2019 03:34:39 -0000
From: tip-bot2 for Paul E. McKenney <tip-bot2@linutronix.de>
To: linux-tip-commits@vger.kernel.org
Subject: [tip: core/rcu] arm: Use common outgoing-CPU-notification code
MIME-Version: 1.0
Message-ID: <156653127981.15193.5771893878801654857.tip-bot2@tip-bot2>
X-Mailer: tip-git-log-daemon
Robot-ID: <tip-bot2.linutronix.de>
Robot-Unsubscribe: Contact <mailto:tglx@linutronix.de> to get blacklisted from
 these emails
Content-Disposition: inline
Precedence: bulk
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_203449_931993_3317DD00 
X-CRM114-Status: GOOD (  13.40  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a0a:51c0:0:12e:550:0:0:1 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Reply-To: linux-kernel@vger.kernel.org
Cc: Mark Rutland <mark.rutland@arm.com>, Russell King <linux@arm.linux.org.uk>,
 linux-kernel@vger.kernel.org, "Paul E. McKenney" <paulmck@linux.vnet.ibm.com>,
 Dietmar Eggemann <dietmar.eggemann@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following commit has been merged into the core/rcu branch of tip:

Commit-ID:     1d5087ab964d84e5a0cfe5059cf5e929127d573f
Gitweb:        https://git.kernel.org/tip/1d5087ab964d84e5a0cfe5059cf5e929127d573f
Author:        Paul E. McKenney <paulmck@linux.vnet.ibm.com>
AuthorDate:    Tue, 12 May 2015 14:50:06 -07:00
Committer:     Paul E. McKenney <paulmck@linux.ibm.com>
CommitterDate: Mon, 12 Aug 2019 11:25:06 -07:00

arm: Use common outgoing-CPU-notification code

This commit removes the open-coded CPU-offline notification with new
common code.  In particular, this change avoids calling scheduler code
using RCU from an offline CPU that RCU is ignoring.  This is a minimal
change.  A more intrusive change might invoke the cpu_check_up_prepare()
and cpu_set_state_online() functions at CPU-online time, which would
allow onlining throw an error if the CPU did not go offline properly.

Signed-off-by: Paul E. McKenney <paulmck@linux.vnet.ibm.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: Russell King <linux@arm.linux.org.uk>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Dietmar Eggemann <dietmar.eggemann@arm.com>
---
 arch/arm/kernel/smp.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/arch/arm/kernel/smp.c b/arch/arm/kernel/smp.c
index aab8ba4..4b0bab2 100644
--- a/arch/arm/kernel/smp.c
+++ b/arch/arm/kernel/smp.c
@@ -264,15 +264,13 @@ int __cpu_disable(void)
 	return 0;
 }
 
-static DECLARE_COMPLETION(cpu_died);
-
 /*
  * called on the thread which is asking for a CPU to be shutdown -
  * waits until shutdown has completed, or it is timed out.
  */
 void __cpu_die(unsigned int cpu)
 {
-	if (!wait_for_completion_timeout(&cpu_died, msecs_to_jiffies(5000))) {
+	if (!cpu_wait_death(cpu, 5)) {
 		pr_err("CPU%u: cpu didn't die\n", cpu);
 		return;
 	}
@@ -319,7 +317,7 @@ void arch_cpu_idle_dead(void)
 	 * this returns, power and/or clocks can be removed at any point
 	 * from this CPU and its cache by platform_cpu_kill().
 	 */
-	complete(&cpu_died);
+	(void)cpu_report_death();
 
 	/*
 	 * Ensure that the cache lines associated with that completion are

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
