Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C8A1703FA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 17:39:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oyVcZ6wRcJuIo2Lkcum80bs3IKXmGmTrVNeAuSDFd+k=; b=bOGjFovsZApVao
	325gQT5c2hcFR1C98OnsgCGDA/N/bVd1YGpM5n8E8IpW2DyX5KtA7veykqnchpg3NrDBi4ypMx7pr
	922ONPbMVaNrp8dD7x7kaUjyxBfXPBcodI4QGO7nCIWEZG0xO6Ed/R/4bzpMdkQq7YYjCqMXFQhQx
	CDMguqgB39qcGIug8g4fxmFerhTuaUcC9NxkjjvW5QTAqVuaJA1BnIXc/p6ilSMRDttAZvDFIweK3
	ZDvLDfpCZYHCO2iIJEOGDtWKEE63N2xOB1/zj3z6AHIcI014Yx15GtwVzbwr/otFKBz+rrFvkhJHb
	smJp5FYuj9lEedhoeaGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpaPh-0007U7-Gc; Mon, 22 Jul 2019 15:39:45 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hpaNx-0006lA-4r
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 15:37:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9A0C915A1;
 Mon, 22 Jul 2019 08:37:56 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (unknown [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2AF0C3F694;
 Mon, 22 Jul 2019 08:37:55 -0700 (PDT)
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: linux-pm@vger.kernel.org
Subject: [PATCH 3/6] drivers: firmware: psci: Decouple checker from generic
 ARM CPUidle
Date: Mon, 22 Jul 2019 16:37:42 +0100
Message-Id: <20190722153745.32446-4-lorenzo.pieralisi@arm.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190722153745.32446-1-lorenzo.pieralisi@arm.com>
References: <20190722153745.32446-1-lorenzo.pieralisi@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_083757_230766_AA68D30C 
X-CRM114-Status: GOOD (  14.14  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, LKML <linux-kernel@vger.kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>, Will Deacon <will@kernel.org>,
 LAKML <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The PSCI checker currently relies on the generic ARM CPUidle
infrastructure to enter an idle state, which in turn creates
a dependency that is not really needed.

The PSCI checker code to test PSCI CPU suspend is built on
top of the CPUidle framework and can easily reuse the
struct cpuidle_state.enter() function (previously initialized
by an idle driver, with a PSCI back-end) to trigger an entry
into an idle state, decoupling the PSCI checker from the
generic ARM CPUidle infrastructure and simplyfing the code
in the process.

Convert the PSCI checker suspend entry function to use
the struct cpuidle_state.enter() function callback.

Signed-off-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Sudeep Holla <sudeep.holla@arm.com>
Cc: Mark Rutland <mark.rutland@arm.com>
---
 drivers/firmware/psci/psci_checker.c | 16 +++++++---------
 1 file changed, 7 insertions(+), 9 deletions(-)

diff --git a/drivers/firmware/psci/psci_checker.c b/drivers/firmware/psci/psci_checker.c
index f3659443f8c2..6a445397771c 100644
--- a/drivers/firmware/psci/psci_checker.c
+++ b/drivers/firmware/psci/psci_checker.c
@@ -228,8 +228,11 @@ static int hotplug_tests(void)
 
 static void dummy_callback(struct timer_list *unused) {}
 
-static int suspend_cpu(int index, bool broadcast)
+static int suspend_cpu(struct cpuidle_device *dev,
+		       struct cpuidle_driver *drv, int index)
 {
+	struct cpuidle_state *state = &drv->states[index];
+	bool broadcast = state->flags & CPUIDLE_FLAG_TIMER_STOP;
 	int ret;
 
 	arch_cpu_idle_enter();
@@ -254,11 +257,7 @@ static int suspend_cpu(int index, bool broadcast)
 		}
 	}
 
-	/*
-	 * Replicate the common ARM cpuidle enter function
-	 * (arm_enter_idle_state).
-	 */
-	ret = CPU_PM_CPU_IDLE_ENTER(arm_cpuidle_suspend, index);
+	ret = state->enter(dev, drv, index);
 
 	if (broadcast)
 		tick_broadcast_exit();
@@ -301,9 +300,8 @@ static int suspend_test_thread(void *arg)
 		 * doesn't use PSCI).
 		 */
 		for (index = 1; index < drv->state_count; ++index) {
-			struct cpuidle_state *state = &drv->states[index];
-			bool broadcast = state->flags & CPUIDLE_FLAG_TIMER_STOP;
 			int ret;
+			struct cpuidle_state *state = &drv->states[index];
 
 			/*
 			 * Set the timer to wake this CPU up in some time (which
@@ -318,7 +316,7 @@ static int suspend_test_thread(void *arg)
 			/* IRQs must be disabled during suspend operations. */
 			local_irq_disable();
 
-			ret = suspend_cpu(index, broadcast);
+			ret = suspend_cpu(dev, drv, index);
 
 			/*
 			 * We have woken up. Re-enable IRQs to handle any
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
