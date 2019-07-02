Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D45D45CA95
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 10:05:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=02XpMOfJLHkbURbv4GcyDNYbXYY39ItXGT/a0dt4Kwo=; b=eSKdtwAxTjljFHIagkSpYm75El
	mQ+6Sxmb9ZyqDsm8RxwdVTuw/ZvI8W5CaZXwHKI9arDWdnuMaOCCuKkIdeBbG91JSz1eZK3QL5aq7
	OoLIBK2AwGJUu4Ou6/8Daw1x5pSfSU3Rzr0dyydyRq72DV/cALKz5dvOUfy8Sex4ggsitDm3DhAkT
	oyQWB64pNsz5J6ZaFv/AgJmSn65rHr3I4+MV6K+19nZB8vcxSWq2vM+e+ajXHiOg4Gqj8GhivBZYA
	QnI5SDQge3LO6EsncGVA4fkGADHc7ZgB/XMDjuQZUbK+DDRMsvsAh/Kc5Y9NMLsHh8QJFSWAqBoIp
	jtR/zPkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiDnS-00077I-Fl; Tue, 02 Jul 2019 08:05:50 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiDmD-0005Js-OC
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 08:04:35 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 87DF7200B4F;
 Tue,  2 Jul 2019 10:04:32 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id C7BDE200B57;
 Tue,  2 Jul 2019 10:04:21 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 86569402B6;
 Tue,  2 Jul 2019 16:04:08 +0800 (SGT)
From: Anson.Huang@nxp.com
To: daniel.lezcano@linaro.org, tglx@linutronix.de, robh+dt@kernel.org,
 mark.rutland@arm.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, leonard.crestez@nxp.com,
 viresh.kumar@linaro.org, daniel.baluta@nxp.com, ping.bai@nxp.com,
 l.stach@pengutronix.de, abel.vesa@nxp.com, andrew.smirnov@gmail.com,
 ccaione@baylibre.com, angus@akkea.ca, agx@sigxcpu.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH RESEND V4 3/5] clocksource: imx-sysctr: Make timer work with
 clock driver using platform driver model
Date: Tue,  2 Jul 2019 15:55:11 +0800
Message-Id: <20190702075513.17451-3-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.14.1
In-Reply-To: <20190702075513.17451-1-Anson.Huang@nxp.com>
References: <20190702075513.17451-1-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_010433_922473_B59B9710 
X-CRM114-Status: GOOD (  11.02  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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
Changes since V3:
	- remove the .prop_name initialization acording to timer-of changes in V4.
---
 drivers/clocksource/timer-imx-sysctr.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/clocksource/timer-imx-sysctr.c b/drivers/clocksource/timer-imx-sysctr.c
index fd7d680..b82a549 100644
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
@@ -130,6 +130,9 @@ static int __init sysctr_timer_init(struct device_node *np)
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
