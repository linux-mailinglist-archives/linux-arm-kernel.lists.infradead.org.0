Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 076FA1B77AD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 15:58:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YbMpwTUQGHWDEJa4Sp2NKTUPlwcPAiQ8NqfkXe29S8Q=; b=kVU7nLseAAjbu8
	Q92vAB0f/UNUJ9uxm4f7tkvMSg6sfGjSJBG8u+0s2q9p+lFmbCLalZ1/+vHzZxR6oyk/t12Fowssf
	BaRBFtxH/etS53uOkJvwkiA0pku0sjCIrUKTUs1eaAdZocpLIcl10oP3idbA5bWyai0rBKqj7u1Nb
	//tNk/SUrqwiRYJWa5mx42ZOMvNkZoXhlIojaG8dKM60i92ifXDQ4wEBznYsmXDPDf/D/NgDRBmwb
	uexs11RpEOt3Ec2HjqoZHXTWuy9+gYVvA5DxYJHNfaugLa39mbsaj4YvlUZIuoqWSCf9qDlqIfsVR
	7HCiOyV4tNG1c2BuE53Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRyqs-00070X-Uo; Fri, 24 Apr 2020 13:58:46 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRyqO-0006mb-Kw
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 13:58:19 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 63408C14;
 Fri, 24 Apr 2020 06:58:14 -0700 (PDT)
Received: from e113632-lin.cambridge.arm.com (e113632-lin.cambridge.arm.com
 [10.1.194.46])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 6389A3F68F;
 Fri, 24 Apr 2020 06:58:13 -0700 (PDT)
From: Valentin Schneider <valentin.schneider@arm.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/2] firmware/psci: Make PSCI checker not bother with parking
Date: Fri, 24 Apr 2020 14:56:56 +0100
Message-Id: <20200424135657.32519-2-valentin.schneider@arm.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200424135657.32519-1-valentin.schneider@arm.com>
References: <20200424135657.32519-1-valentin.schneider@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_065816_772693_E943E33D 
X-CRM114-Status: GOOD (  12.71  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

kthread_stop() unconditionally calls kthread_unpark(). For kthreads
with KTHREAD_IS_PER_CPU, this leads to waiting for
wait_task_inactive(TASK_PARKED) before re-binding them. This is required
mainly for smpboot threads, as they are parked before their respective CPU
comes online which causes their affinity mask to be reset.

For users of kthread_create_on_cpu(), this means they must park their
threads before stopping them, which is a bit silly. While we could change
kthread_unpark() to only do the rebind if it is required, using
kthread_create_on_cpu() for anything else than smpboot threads is risky:
they won't get parked/unparked during a hotplug cycle, so their affinity
will just be reset as soon as their respective CPU goes out.

The PSCI checker only lives during initcalls and explicitly points out
that it cannot exist concurrently with hotplug operations, so let's just
make it use kthread_create_on_node() + kthread_bind() (similar to what
e.g. RCU torture does).

Signed-off-by: Valentin Schneider <valentin.schneider@arm.com>
---
 drivers/firmware/psci/psci_checker.c | 32 +++++++++++-----------------
 1 file changed, 12 insertions(+), 20 deletions(-)

diff --git a/drivers/firmware/psci/psci_checker.c b/drivers/firmware/psci/psci_checker.c
index a5279a430274..fa7bb1e8a461 100644
--- a/drivers/firmware/psci/psci_checker.c
+++ b/drivers/firmware/psci/psci_checker.c
@@ -347,19 +347,12 @@ static int suspend_test_thread(void *arg)
 	if (atomic_dec_return_relaxed(&nb_active_threads) == 0)
 		complete(&suspend_threads_done);
 
-	for (;;) {
-		/* Needs to be set first to avoid missing a wakeup. */
-		set_current_state(TASK_INTERRUPTIBLE);
-		if (kthread_should_park())
-			break;
-		schedule();
-	}
+	while (!kthread_should_stop())
+		schedule_timeout_interruptible(MAX_SCHEDULE_TIMEOUT);
 
 	pr_info("CPU %d suspend test results: success %d, shallow states %d, errors %d\n",
 		cpu, nb_suspend, nb_shallow_sleep, nb_err);
 
-	kthread_parkme();
-
 	return nb_err;
 }
 
@@ -395,13 +388,15 @@ static int suspend_tests(void)
 			continue;
 		}
 
-		thread = kthread_create_on_cpu(suspend_test_thread,
-					       (void *)(long)cpu, cpu,
-					       "psci_suspend_test");
-		if (IS_ERR(thread))
+		thread = kthread_create_on_node(suspend_test_thread,
+						(void *)(long)cpu, cpu_to_node(cpu),
+						"psci_suspend_test/%d", cpu);
+		if (IS_ERR(thread)) {
 			pr_err("Failed to create kthread on CPU %d\n", cpu);
-		else
+		} else {
 			threads[nb_threads++] = thread;
+			kthread_bind(thread, cpu);
+		}
 	}
 
 	if (nb_threads < 1) {
@@ -418,17 +413,14 @@ static int suspend_tests(void)
 	 */
 	for (i = 0; i < nb_threads; ++i)
 		wake_up_process(threads[i]);
-	complete_all(&suspend_threads_started);
 
+	complete_all(&suspend_threads_started);
 	wait_for_completion(&suspend_threads_done);
 
-
 	/* Stop and destroy all threads, get return status. */
-	for (i = 0; i < nb_threads; ++i) {
-		err += kthread_park(threads[i]);
+	for (i = 0; i < nb_threads; ++i)
 		err += kthread_stop(threads[i]);
-	}
- out:
+out:
 	cpuidle_resume_and_unlock();
 	kfree(threads);
 	return err;
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
