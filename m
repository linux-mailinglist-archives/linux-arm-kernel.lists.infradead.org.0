Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B09E33BB59
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 19:52:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VR8DyDowNtyeK8fMFLZIfeBjcX+/0frxPGstPgwYicg=; b=NWyAB7OD3yWUxD
	oG4aJ2iH/rvuOY0amDyLiTZEBDbRXOANYuoVDLyfLts//g6pUoiP8ILqJ1Y++9OmZBMD2c9rPR/Iw
	xQbgi8HUsAfsUUbD97UVo3ZzdLm0jdqcv9Zy0Pw+I246FdASiGCZwPZoN2tGdRypT49TT67EuswZz
	OIvNARu1bPEwZ5Rc9EYsErBsz+c9Nf8+OqaSW/J+NPc3wqmVWgBiyTzw35J5UhDhDkGsx7aj27f32
	ejeZ5Z7krwPUbbIEFV3yS8GWKKrU2Ip6o5ZGEZ2/0sd96FpmYVNkEnK/YIHFPCZP4V3Jz4JLAkwYU
	+T2egNmiCCe/mAFgxqxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haOSi-0006nO-UF; Mon, 10 Jun 2019 17:52:04 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1haOSU-0006n4-1w
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 17:51:51 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8C61A337;
 Mon, 10 Jun 2019 10:51:47 -0700 (PDT)
Received: from ostrya.cambridge.arm.com (ostrya.cambridge.arm.com
 [10.1.196.129])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id D7B573F246;
 Mon, 10 Jun 2019 10:51:46 -0700 (PDT)
From: Jean-Philippe Brucker <jean-philippe.brucker@arm.com>
To: lorenzo.pieralisi@arm.com
Subject: [PATCH v2] firmware/psci: psci_checker: Park kthreads before stopping
 them
Date: Mon, 10 Jun 2019 18:38:29 +0100
Message-Id: <20190610173829.4741-1-jean-philippe.brucker@arm.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_105150_144619_8F78343E 
X-CRM114-Status: GOOD (  12.43  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, linux-arm-kernel@lists.infradead.org,
 sudeep.holla@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since commit 85f1abe0019f ("kthread, sched/wait: Fix kthread_parkme()
completion issue"), kthreads that are bound to a CPU must be parked
before being stopped. At the moment the PSCI checker calls
kthread_stop() directly on the suspend kthread, which triggers the
following warning:

[    6.068288] WARNING: CPU: 1 PID: 1 at kernel/kthread.c:398 __kthread_bind_mask+0x20/0x78
               ...
[    6.190151] Call trace:
[    6.192566]  __kthread_bind_mask+0x20/0x78
[    6.196615]  kthread_unpark+0x74/0x80
[    6.200235]  kthread_stop+0x44/0x1d8
[    6.203769]  psci_checker+0x3bc/0x484
[    6.207389]  do_one_initcall+0x48/0x260
[    6.211180]  kernel_init_freeable+0x2c8/0x368
[    6.215488]  kernel_init+0x10/0x100
[    6.218935]  ret_from_fork+0x10/0x1c
[    6.222467] ---[ end trace e05e22863d043cd3 ]---

kthread_unpark() tries to bind the thread to its CPU and aborts with a
WARN() if the thread wasn't in TASK_PARKED state. Park the kthreads
before stopping them.

Fixes: 85f1abe0019f ("kthread, sched/wait: Fix kthread_parkme() completion issue")
Signed-off-by: Jean-Philippe Brucker <jean-philippe.brucker@arm.com>
---
Since v1: rebased onto v5.2-rc4
---
 drivers/firmware/psci/psci_checker.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/firmware/psci/psci_checker.c b/drivers/firmware/psci/psci_checker.c
index 08c85099d4d0..f3659443f8c2 100644
--- a/drivers/firmware/psci/psci_checker.c
+++ b/drivers/firmware/psci/psci_checker.c
@@ -359,16 +359,16 @@ static int suspend_test_thread(void *arg)
 	for (;;) {
 		/* Needs to be set first to avoid missing a wakeup. */
 		set_current_state(TASK_INTERRUPTIBLE);
-		if (kthread_should_stop()) {
-			__set_current_state(TASK_RUNNING);
+		if (kthread_should_park())
 			break;
-		}
 		schedule();
 	}
 
 	pr_info("CPU %d suspend test results: success %d, shallow states %d, errors %d\n",
 		cpu, nb_suspend, nb_shallow_sleep, nb_err);
 
+	kthread_parkme();
+
 	return nb_err;
 }
 
@@ -433,8 +433,10 @@ static int suspend_tests(void)
 
 
 	/* Stop and destroy all threads, get return status. */
-	for (i = 0; i < nb_threads; ++i)
+	for (i = 0; i < nb_threads; ++i) {
+		err += kthread_park(threads[i]);
 		err += kthread_stop(threads[i]);
+	}
  out:
 	cpuidle_resume_and_unlock();
 	kfree(threads);
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
