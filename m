Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AAFA15991B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 19:48:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=FtEJEzWohhLC9zHmzs3ozAX+Cqrq7AWm2rpuZ5CDavs=; b=W0ORgyQ8WxbVu7hYNWIJUmACdG
	tqvyoIMx3wYjU0yQJ+2gjJdzV70iqzJ+TvEa+eFD8z9H9X8/fmwwUw9vGQa85AV3z3BM6XjYLSAz/
	HJAISckJ1lJ/HJHAVAoDLw+CaukHl1Oq88ZRYkJy3cgHfTmQEX9k1Ajw8ijk//+AzElcKQURHxKkx
	RBYaEHsxJXyZnAOmUYOKXQITlB7JIuyXTrHF0d5MboEoSMf1T3w92QKLMxm8P6G+Ra9sFQZEKuk/w
	4zibSHjdDWrnJkdqo+JzlA4tocz3jam4Td7RXD7b90rvLK7Cf/7nYxE7egPepn2XRgwkiCUIUatOY
	uYgtlN4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1aZn-0006LI-0x; Tue, 11 Feb 2020 18:48:03 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1aYZ-0005CP-0r
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 18:46:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 42FE81FB;
 Tue, 11 Feb 2020 10:46:46 -0800 (PST)
Received: from e108754-lin.cambridge.arm.com (e108754-lin.cambridge.arm.com
 [10.1.198.52])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 0C5A23F68F;
 Tue, 11 Feb 2020 10:46:43 -0800 (PST)
From: Ionela Voinescu <ionela.voinescu@arm.com>
To: catalin.marinas@arm.com, will@kernel.org, mark.rutland@arm.com,
 maz@kernel.org, suzuki.poulose@arm.com, sudeep.holla@arm.com,
 lukasz.luba@arm.com, valentin.schneider@arm.com, rjw@rjwysocki.net,
 ionela.voinescu@arm.com
Subject: [PATCH v3 7/7] clocksource/drivers/arm_arch_timer: validate
 arch_timer_rate
Date: Tue, 11 Feb 2020 18:45:42 +0000
Message-Id: <20200211184542.29585-8-ionela.voinescu@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200211184542.29585-1-ionela.voinescu@arm.com>
References: <20200211184542.29585-1-ionela.voinescu@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_104647_136324_79CC658D 
X-CRM114-Status: GOOD (  12.65  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: linux-doc@vger.kernel.org, peterz@infradead.org, viresh.kumar@linaro.org,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org, mingo@redhat.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Valentin Schneider <valentin.schneider@arm.com>

Using an arch timer with a frequency of less than 1MHz can result in an
incorrect functionality of the system which assumes a reasonable rate.

One example is the use of activity monitors for frequency invariance
which uses the rate of the arch timer as the known rate of the constant
cycle counter in computing its ratio compared to the maximum frequency
of a CPU. For arch timer frequencies less than 1MHz this ratio could
end up being 0 which is an invalid value for its use.

Therefore, warn if the arch timer rate is below 1MHz which contravenes
the recommended architecture interval of 1 to 50MHz.

Signed-off-by: Ionela Voinescu <ionela.voinescu@arm.com>
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
