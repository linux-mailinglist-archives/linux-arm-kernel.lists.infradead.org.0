Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4D64767D3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 15:40:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OXssl17fwpeYjLU//T9nURSUqQnnOTeCl616slS1zTY=; b=jem6m0SK8yEakg
	q8Gggxlb+HQy2ysht2emxRZlky6PVzCQ79ss/HUk72bGQZLyfknF5L04k2BKijor3fTcXwh/wNlkm
	fqjh/xr5AcVb78QojPb0GAoSjFSjLECt+CcJ8UPW6Ds6sqvajTJ09bs7aw+7GjQML0yMT1mknYaIy
	sLVY4/5pHBp6K0bc62mMDnwAgYdh3PQHTpOARn+65bTY9vqpLyL5w+Jqhkk8fCh/lDy7gP4ratyR1
	TSYJJn7IvK5JCqbJVAthSaus26S9faRqWwQTNiu0u+kXI39DZXIrFDNZq1gxnVAH8MSnL7K4B/Ndn
	P/s4KfECud3WE7LDPcTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr0SK-0001w5-Qe; Fri, 26 Jul 2019 13:40:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hr0S2-0001Sc-Qk
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 13:40:04 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7B48D22BF5;
 Fri, 26 Jul 2019 13:40:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564148402;
 bh=RLsYumlcChrRdNAT+1a34p/7+WhNOBCg+wKS11rYYOI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=BBNaR2dJvM1DC5YNjHabfrTivAv/DENdTepFPiJxY33lY3ZHByhUx7/pWT6FUey9H
 UOlQb/lSYzIwsy7EYmuWlolZFFr+ARaOqUKHZf3dnAVGVd7Qudqmb9QHmLT6HVV/Tw
 o1yhjHFepgbAG2HzC4gDlK14Y9ebROdZyNuHZV5c=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.2 15/85] firmware/psci: psci_checker: Park kthreads
 before stopping them
Date: Fri, 26 Jul 2019 09:38:25 -0400
Message-Id: <20190726133936.11177-15-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190726133936.11177-1-sashal@kernel.org>
References: <20190726133936.11177-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_064002_957254_A3C01E20 
X-CRM114-Status: GOOD (  13.35  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Jean-Philippe Brucker <jean-philippe.brucker@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>, Olof Johansson <olof@lixom.net>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jean-Philippe Brucker <jean-philippe.brucker@arm.com>

[ Upstream commit 92e074acf6f7694e96204265eb18ac113f546e80 ]

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
Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>
Acked-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Signed-off-by: Olof Johansson <olof@lixom.net>
Signed-off-by: Sasha Levin <sashal@kernel.org>
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
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
