Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97C6087829
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 13:04:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b5iyq8REAnikcSA0kcpG+dEJrF5+CAmtY7JQ9RRCqxM=; b=S6zdKU2PBJffRv
	r0W+jj9kdVATnNt41CBL7P/m7ypya/fn1ZXEzEWBHHXhB8uT0kNSkC5ZZrLFC+C8YOZIQWRUR3gbq
	L0zakoVqKWy6mWpfN6IJvva7sUF6uVOxJsLknxMJzXrtfILIFQIUnSKoD8rQqwJumOUpJtBjhWgD5
	ce60Id4g6D7hPZh85Jc+ROD0h54uGv0MkqUqoUEy4qTrl9REeLHyanPL/TmD9FGtvqZCmHT/CCbuC
	p3mXjRL/wNVFHR++vFYK6jMisf3TfU6FcpTDgxgt5eyCdrdjTzjqbkl1x2mDC3ikQ1nWdq7BWnjC/
	RZSUg2CLrvd2ZM5/vwJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw2hG-0005t0-Uw; Fri, 09 Aug 2019 11:04:35 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hw2gA-000510-Ey
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 11:03:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1D68F1596;
 Fri,  9 Aug 2019 04:03:26 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (unknown [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 867A23F575;
 Fri,  9 Aug 2019 04:03:24 -0700 (PDT)
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: linux-pm@vger.kernel.org
Subject: [PATCH v2 3/8] drivers: firmware: psci: Decouple checker from generic
 ARM CPUidle
Date: Fri,  9 Aug 2019 12:03:09 +0100
Message-Id: <5f7e39dd44f69eee926dec582caeb3b626bf15eb.1565348376.git.lorenzo.pieralisi@arm.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <cover.1565348376.git.lorenzo.pieralisi@arm.com>
References: <20190722153745.32446-1-lorenzo.pieralisi@arm.com>
 <cover.1565348376.git.lorenzo.pieralisi@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_040326_627639_17BBAB3B 
X-CRM114-Status: GOOD (  13.95  )
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
 Sudeep Holla <sudeep.holla@arm.com>, Shawn Guo <shawnguo@kernel.org>,
 Will Deacon <will@kernel.org>, LAKML <linux-arm-kernel@lists.infradead.org>
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
Acked-by: Daniel Lezcano <daniel.lezcano@linaro.org>
Reviewed-by: Ulf Hansson <ulf.hansson@linaro.org>
Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>
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
