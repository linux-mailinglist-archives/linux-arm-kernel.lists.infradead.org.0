Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BF3E5CA7C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 10:04:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=CgknCnikVToh4idSL+Qo57cLrKmmlo3NmeZWi/PNGjg=; b=Vha
	8TL6qoZ7Cy/A/Wlh5MjpCTCucphY88qaCO3XHtFt1ELma7+PeBdEw29BVlUy70TK0h4QWCuuxI0Jh
	BLYdcFWHnY2IbNAI9qyGJX8CGOy7+C1TGURYoUrOb34PvG1JvtQTa/Ue2Vs/mh+QPVd7U/ocD2tTs
	hfq+fFH6OUM0XSc3UhEM9DQScpfOms0wLjxgwFHT2DGXib7i6uQcPidemKEangAYbyITLbZMG79k4
	PFhtedaVwFQ2eVlTL/TYtSwta71YfquPvZ94G81bk7zKGyOjsPxsb1RiJeexbwZZT2VxrLgrdKF1g
	BXFWGXFsBoGqeBRzaYkj4HrEmkXlbqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiDmQ-0005Kz-Bz; Tue, 02 Jul 2019 08:04:46 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiDmC-0005JV-3K
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 08:04:33 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id A09EE1A0BBD;
 Tue,  2 Jul 2019 10:04:30 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 9D25D1A0BBA;
 Tue,  2 Jul 2019 10:04:19 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 7E87E402EB;
 Tue,  2 Jul 2019 16:04:04 +0800 (SGT)
From: Anson.Huang@nxp.com
To: daniel.lezcano@linaro.org, tglx@linutronix.de, robh+dt@kernel.org,
 mark.rutland@arm.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, leonard.crestez@nxp.com,
 viresh.kumar@linaro.org, daniel.baluta@nxp.com, ping.bai@nxp.com,
 l.stach@pengutronix.de, abel.vesa@nxp.com, andrew.smirnov@gmail.com,
 ccaione@baylibre.com, angus@akkea.ca, agx@sigxcpu.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH RESEND V4 1/5] clocksource: timer-of: Support getting clock
 frequency from DT
Date: Tue,  2 Jul 2019 15:55:09 +0800
Message-Id: <20190702075513.17451-1-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.14.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_010432_418130_DED7CDDF 
X-CRM114-Status: GOOD (  12.07  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Anson Huang <Anson.Huang@nxp.com>

More and more platforms use platform driver model for clock driver,
so the clock driver is NOT ready during timer initialization phase,
it will cause timer initialization failed.

To support those platforms with upper scenario, introducing a new
flag TIMER_OF_CLOCK_FREQUENCY which is mutually exclusive with
TIMER_OF_CLOCK flag to support getting timer clock frequency from
DT's timer node, the property name should be "clock-frequency",
then of_clk operations can be skipped.

User needs to select either TIMER_OF_CLOCK_FREQUENCY or TIMER_OF_CLOCK
flag if want to use timer-of driver to initialize the clock rate.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
Changes since V3:
	- use hardcoded "clock-frequency" instead of adding new variable prop_name;
	- add pre-condition check for TIMER_OF_CLOCK and TIMER_OF_CLOCK_FREQUENCY, they MUST be exclusive.
---
 drivers/clocksource/timer-of.c | 29 +++++++++++++++++++++++++++++
 drivers/clocksource/timer-of.h |  7 ++++---
 2 files changed, 33 insertions(+), 3 deletions(-)

diff --git a/drivers/clocksource/timer-of.c b/drivers/clocksource/timer-of.c
index 8054228..858f684 100644
--- a/drivers/clocksource/timer-of.c
+++ b/drivers/clocksource/timer-of.c
@@ -161,11 +161,30 @@ static __init int timer_of_base_init(struct device_node *np,
 	return 0;
 }
 
+static __init int timer_of_clk_frequency_init(struct device_node *np,
+					      struct of_timer_clk *of_clk)
+{
+	int ret;
+	u32 rate;
+
+	ret = of_property_read_u32(np, "clock-frequency", &rate);
+	if (!ret) {
+		of_clk->rate = rate;
+		of_clk->period = DIV_ROUND_UP(rate, HZ);
+	}
+
+	return ret;
+}
+
 int __init timer_of_init(struct device_node *np, struct timer_of *to)
 {
+	unsigned long clock_flags = TIMER_OF_CLOCK | TIMER_OF_CLOCK_FREQUENCY;
 	int ret = -EINVAL;
 	int flags = 0;
 
+	if ((to->flags & clock_flags) == clock_flags)
+		return ret;
+
 	if (to->flags & TIMER_OF_BASE) {
 		ret = timer_of_base_init(np, &to->of_base);
 		if (ret)
@@ -180,6 +199,13 @@ int __init timer_of_init(struct device_node *np, struct timer_of *to)
 		flags |= TIMER_OF_CLOCK;
 	}
 
+	if (to->flags & TIMER_OF_CLOCK_FREQUENCY) {
+		ret = timer_of_clk_frequency_init(np, &to->of_clk);
+		if (ret)
+			goto out_fail;
+		flags |= TIMER_OF_CLOCK_FREQUENCY;
+	}
+
 	if (to->flags & TIMER_OF_IRQ) {
 		ret = timer_of_irq_init(np, &to->of_irq);
 		if (ret)
@@ -201,6 +227,9 @@ int __init timer_of_init(struct device_node *np, struct timer_of *to)
 	if (flags & TIMER_OF_CLOCK)
 		timer_of_clk_exit(&to->of_clk);
 
+	if (flags & TIMER_OF_CLOCK_FREQUENCY)
+		to->of_clk.rate = 0;
+
 	if (flags & TIMER_OF_BASE)
 		timer_of_base_exit(&to->of_base);
 	return ret;
diff --git a/drivers/clocksource/timer-of.h b/drivers/clocksource/timer-of.h
index a5478f3..a08e108 100644
--- a/drivers/clocksource/timer-of.h
+++ b/drivers/clocksource/timer-of.h
@@ -4,9 +4,10 @@
 
 #include <linux/clockchips.h>
 
-#define TIMER_OF_BASE	0x1
-#define TIMER_OF_CLOCK	0x2
-#define TIMER_OF_IRQ	0x4
+#define TIMER_OF_BASE			0x1
+#define TIMER_OF_CLOCK			0x2
+#define TIMER_OF_IRQ			0x4
+#define TIMER_OF_CLOCK_FREQUENCY	0x8
 
 struct of_timer_irq {
 	int irq;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
