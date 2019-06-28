Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4A575921A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 05:41:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Bjm47QLRomFHqyk4q2F7c0FOtBWK6nIMxKl/IjAMGuw=; b=tdCEQGW9MCxCiM7SxmPdzzzqdr
	2LG1tOVJgOPx4XjjNbVqCTqNLnCve57w98VR8JB8e8ge8iRxHt1M086h8xsMwXiye0kzRp5toWjbe
	OkR4Kq5OMQ4r4VaF3V2Sa3gvTbN7r0LKPcHbddgRCjOo9kNO7qJnn8pPoaaavExtCozkDS3cSHa1B
	8BO5+7ml+GCow+2I2JN2MPX0565NbSUrLGDN1N45fziSTeK0Ci6zR2QsAi6fVZSEmiuhCTv92fRr/
	FO5d4En+KnvKkYYBzPqyCQt1rG6xgfTi0T3fIm+G2lOB8zqPI6jCROOjnMJLO5yHIn2swu6OqHeZb
	kHY0+fJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hghkz-0003Zb-I2; Fri, 28 Jun 2019 03:41:01 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hghjy-0001tK-Oa
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 03:40:00 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 7D3801A02E9;
 Fri, 28 Jun 2019 05:39:57 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id C205D1A02D8;
 Fri, 28 Jun 2019 05:39:46 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id BE9644030E;
 Fri, 28 Jun 2019 11:39:33 +0800 (SGT)
From: Anson.Huang@nxp.com
To: daniel.lezcano@linaro.org, tglx@linutronix.de, robh+dt@kernel.org,
 mark.rutland@arm.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, leonard.crestez@nxp.com,
 viresh.kumar@linaro.org, daniel.baluta@nxp.com, ping.bai@nxp.com,
 l.stach@pengutronix.de, abel.vesa@nxp.com, andrew.smirnov@gmail.com,
 ccaione@baylibre.com, angus@akkea.ca, agx@sigxcpu.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH V3 3/5] clocksource: imx-sysctr: Make timer work with clock
 driver using platform driver model
Date: Fri, 28 Jun 2019 11:30:39 +0800
Message-Id: <20190628033041.8513-3-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.14.1
In-Reply-To: <20190628033041.8513-1-Anson.Huang@nxp.com>
References: <20190628033041.8513-1-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_203958_974245_FB6B0E73 
X-CRM114-Status: GOOD (  12.01  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Anson Huang <Anson.Huang@nxp.com>

On some i.MX8M platforms, clock driver uses platform driver
model and it is NOT ready during timer initialization phase,
the clock operations will fail and system counter driver will
fail too. As all the i.MX8M platforms' system counter clock
are from OSC which is always enabled, so it is no need to enable
clock for system counter driver, the ONLY thing is to pass
clock frequence to driver.

To make system counter driver work for upper scenario, if DT's
system counter node has property "clock-frequency" present,
setting TIMER_OF_CLOCK_FREQUENCY flag to indicate timer-of driver
to get clock frequency from DT directly instead of of_clk operation
via clk APIs.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
Changes since V2:
	- do runtime check to decide whether using TIMER_OF_CLOCK_FREQUENCY or TIMER_OF_CLOCK
	  according to DT node settings.
---
 drivers/clocksource/timer-imx-sysctr.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/clocksource/timer-imx-sysctr.c b/drivers/clocksource/timer-imx-sysctr.c
index fd7d680..73e3193 100644
--- a/drivers/clocksource/timer-imx-sysctr.c
+++ b/drivers/clocksource/timer-imx-sysctr.c
@@ -98,7 +98,7 @@ static irqreturn_t sysctr_timer_interrupt(int irq, void *dev_id)
 }
 
 static struct timer_of to_sysctr = {
-	.flags = TIMER_OF_IRQ | TIMER_OF_CLOCK | TIMER_OF_BASE,
+	.flags = TIMER_OF_IRQ | TIMER_OF_BASE,
 	.clkevt = {
 		.name			= "i.MX system counter timer",
 		.features		= CLOCK_EVT_FEAT_ONESHOT |
@@ -114,6 +114,7 @@ static struct timer_of to_sysctr = {
 	},
 	.of_clk = {
 		.name = "per",
+		.prop_name = "clock-frequency",
 	},
 };
 
@@ -130,6 +131,9 @@ static int __init sysctr_timer_init(struct device_node *np)
 {
 	int ret = 0;
 
+	to_sysctr.flags |= of_find_property(np, "clock-frequency", NULL) ?
+			   TIMER_OF_CLOCK_FREQUENCY : TIMER_OF_CLOCK;
+
 	ret = timer_of_init(np, &to_sysctr);
 	if (ret)
 		return ret;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
