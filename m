Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AED154FB71
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Jun 2019 14:04:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+3TtmvOfEnIsBRUveAhi96KNDk5trEEEFybfXlcfZsQ=; b=e3Mf5GUQE6Hzwv+GqNEEff5cuq
	Y3Y7jfqWIdsY+Q23e5cSBtdIGlFw0p8zz6cKJ+BP6N8KesmvO2jFVyQS4Yxa6SWpVMR9PlWQ9SvpX
	cglZViX9rpPJM2174X7wOdDRszGiBQFUi6Zewa+0yUwHGoYqj8i99Nhu0HV5HDTcXMGf8GvFnSsuC
	idQyRua/SG13leCiKYlI9Gcx+xzh/bo0rJFgULnrjeDIDsWNcWWmcX0ZvsShibkpFFYutQGjmqLFG
	ZmPW2sJOVDWCZpsJRfONo2fQhOdsHypGVY128Aou7UrGlOB4nP0joXY6D4mdVx9tDTpOGZAkvdVNK
	bJDLAykg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hf1E6-0003zS-6W; Sun, 23 Jun 2019 12:04:06 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hf1Cw-0003WU-Tq
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Jun 2019 12:02:56 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id B5DF12003BB;
 Sun, 23 Jun 2019 14:02:51 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id C6AEB200277;
 Sun, 23 Jun 2019 14:02:42 +0200 (CEST)
Received: from mega.ap.freescale.net (mega.ap.freescale.net [10.192.208.232])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id D96E14030C;
 Sun, 23 Jun 2019 20:02:31 +0800 (SGT)
From: Anson.Huang@nxp.com
To: daniel.lezcano@linaro.org, tglx@linutronix.de, robh+dt@kernel.org,
 mark.rutland@arm.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, l.stach@pengutronix.de,
 abel.vesa@nxp.com, ccaione@baylibre.com, angus@akkea.ca,
 andrew.smirnov@gmail.com, agx@sigxcpu.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH V2 2/3] clocksource: imx-sysctr: Add of_clk skip option
Date: Sun, 23 Jun 2019 20:04:33 +0800
Message-Id: <20190623120434.19556-2-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190623120434.19556-1-Anson.Huang@nxp.com>
References: <20190623120434.19556-1-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_050255_093321_A1C19CDE 
X-CRM114-Status: GOOD (  10.00  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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

This patch adds an option of skipping of_clk operation for
system counter driver, an optional property "clock-frequency"
is introduced to pass the frequency value to system counter
driver and indicate driver to skip of_clk operations.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
No change.
---
 drivers/clocksource/timer-imx-sysctr.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/clocksource/timer-imx-sysctr.c b/drivers/clocksource/timer-imx-sysctr.c
index fd7d680..8ff3d7e 100644
--- a/drivers/clocksource/timer-imx-sysctr.c
+++ b/drivers/clocksource/timer-imx-sysctr.c
@@ -129,6 +129,14 @@ static void __init sysctr_clockevent_init(void)
 static int __init sysctr_timer_init(struct device_node *np)
 {
 	int ret = 0;
+	u32 rate;
+
+	if (!of_property_read_u32(np, "clock-frequency",
+				  &rate)) {
+		to_sysctr.of_clk.rate = rate;
+		to_sysctr.of_clk.period = DIV_ROUND_UP(rate, HZ);
+		to_sysctr.flags &= ~TIMER_OF_CLOCK;
+	}
 
 	ret = timer_of_init(np, &to_sysctr);
 	if (ret)
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
