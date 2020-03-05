Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 540AF17A207
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 10:09:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=M9q9yUZvFnDpJnQxvJFOnAc9SY/bspSx3rQnJM0jtQ4=; b=k1BeCUJn6Mj9hVez3rLGro1a7+
	3IVcujFaBHz8SG3wJJ46WnQa+fNODzZ1DuetiBaiLq3IWmxOkTHqFbiEErtiZlyy8zx103eD1Xru/
	qbYRXdQg+EeQy3BlPtjbe//XhsEnl4s50uZq5r+8Bb9V1/KUZ+1dl2jxvJFvew3HGrpRa49U3Au85
	AOxCCZPvhz2fW8/rPi1XLayqf7cxChZXNP4/ivxJsGs58qQJhAfgu3n+OD5D1+J80MyMlYRd77Lkp
	EyCMa0I/O85SbpB+J60+i2iBHXgjbjctP735o++EpW1vRjHYT/Q32sU2xuU7e01D/jASjU6CGlSXo
	mZ6WZqzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9mUz-0008Ca-FD; Thu, 05 Mar 2020 09:08:57 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9mTR-0006uJ-BO
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Mar 2020 09:07:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8C7634B2;
 Thu,  5 Mar 2020 01:07:20 -0800 (PST)
Received: from e108754-lin.cambridge.arm.com (e108754-lin.cambridge.arm.com
 [10.1.198.53])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 117C43F534;
 Thu,  5 Mar 2020 01:07:17 -0800 (PST)
From: Ionela Voinescu <ionela.voinescu@arm.com>
To: catalin.marinas@arm.com, will@kernel.org, mark.rutland@arm.com,
 maz@kernel.org, suzuki.poulose@arm.com, sudeep.holla@arm.com,
 lukasz.luba@arm.com, valentin.schneider@arm.com, dietmar.eggemann@arm.com,
 rjw@rjwysocki.net, pkondeti@codeaurora.org, ionela.voinescu@arm.com
Subject: [PATCH v6 7/7] clocksource/drivers/arm_arch_timer: validate
 arch_timer_rate
Date: Thu,  5 Mar 2020 09:06:27 +0000
Message-Id: <20200305090627.31908-8-ionela.voinescu@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200305090627.31908-1-ionela.voinescu@arm.com>
References: <20200305090627.31908-1-ionela.voinescu@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_010721_486143_3B655409 
X-CRM114-Status: GOOD (  12.35  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-doc@vger.kernel.org, peterz@infradead.org, viresh.kumar@linaro.org,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org, mingo@redhat.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Using an arch timer with a frequency of less than 1MHz can potentially
result in incorrect functionality in systems that assume a reasonable
rate of the arch timer of 1 to 50MHz, described as typical in the
architecture specification.

Therefore, warn if the arch timer rate is below 1MHz, which is
considered atypical and worth emphasizing.

Signed-off-by: Ionela Voinescu <ionela.voinescu@arm.com>
Suggested-by: Valentin Schneider <valentin.schneider@arm.com>
Acked-by: Marc Zyngier <maz@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Marc Zyngier <maz@kernel.org>
---
 drivers/clocksource/arm_arch_timer.c | 18 +++++++++++++++---
 1 file changed, 15 insertions(+), 3 deletions(-)

diff --git a/drivers/clocksource/arm_arch_timer.c b/drivers/clocksource/arm_arch_timer.c
index 9a5464c625b4..4faa930eabf8 100644
--- a/drivers/clocksource/arm_arch_timer.c
+++ b/drivers/clocksource/arm_arch_timer.c
@@ -885,6 +885,17 @@ static int arch_timer_starting_cpu(unsigned int cpu)
 	return 0;
 }
 
+static int validate_timer_rate(void)
+{
+	if (!arch_timer_rate)
+		return -EINVAL;
+
+	/* Arch timer frequency < 1MHz can cause trouble */
+	WARN_ON(arch_timer_rate < 1000000);
+
+	return 0;
+}
+
 /*
  * For historical reasons, when probing with DT we use whichever (non-zero)
  * rate was probed first, and don't verify that others match. If the first node
@@ -900,7 +911,7 @@ static void arch_timer_of_configure_rate(u32 rate, struct device_node *np)
 		arch_timer_rate = rate;
 
 	/* Check the timer frequency. */
-	if (arch_timer_rate == 0)
+	if (validate_timer_rate())
 		pr_warn("frequency not available\n");
 }
 
@@ -1594,9 +1605,10 @@ static int __init arch_timer_acpi_init(struct acpi_table_header *table)
 	 * CNTFRQ value. This *must* be correct.
 	 */
 	arch_timer_rate = arch_timer_get_cntfrq();
-	if (!arch_timer_rate) {
+	ret = validate_timer_rate();
+	if (ret) {
 		pr_err(FW_BUG "frequency not available.\n");
-		return -EINVAL;
+		return ret;
 	}
 
 	arch_timer_uses_ppi = arch_timer_select_ppi();
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
