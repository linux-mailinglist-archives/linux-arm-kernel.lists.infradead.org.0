Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C58B36417C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 08:41:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=d+V0XMe0DdrUbLlLAhx9iV+rOHuXlB0kerEbOWBMuG0=; b=kvF
	vIUDw92GGSZohDxceHQdDz8VgSNb4W9ieDQb9+G3Z3TvHORx+CuSkV2tIUyzM9/bWkBTTl3heKvqs
	uVbYEfycy416L6YBcF1LhMp+3m8r+6PWLhfzaiXJTUK/12u5oKMYQF2U2qI1g5TIdHmyhScyqCAjs
	0flZjUcVlISOFrI/XDB9u0WF0u+7wje+zSdAljZ5JwXBTlS+o1yzf8x1gfk7+xjaLXus9dKp41tJk
	5XG22wSI7901WmZKMUj+zTVDsi2y8PGK3nOhxHRPJGmoAf1eLsWAakZwQIwcvHCYyVDHno/f6E9Rb
	lCI+0HbO6GeSK4PM/iFYYk4WqoBmjdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hl6I0-0004Ie-Gp; Wed, 10 Jul 2019 06:41:16 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hl6HE-0003rQ-Rw
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jul 2019 06:40:31 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id A044A1A013B;
 Wed, 10 Jul 2019 08:40:22 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 661041A029E;
 Wed, 10 Jul 2019 08:40:09 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 24218402E3;
 Wed, 10 Jul 2019 14:39:56 +0800 (SGT)
From: Anson.Huang@nxp.com
To: catalin.marinas@arm.com, will@kernel.org, robh+dt@kernel.org,
 mark.rutland@arm.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
 daniel.lezcano@linaro.org, tglx@linutronix.de, leonard.crestez@nxp.com,
 aisheng.dong@nxp.com, daniel.baluta@nxp.com, ping.bai@nxp.com,
 l.stach@pengutronix.de, abel.vesa@nxp.com, andrew.smirnov@gmail.com,
 ccaione@baylibre.com, angus@akkea.ca, agx@sigxcpu.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
Subject: [PATCH V5 1/5] clocksource: imx-sysctr: Add internal clock divider
 handle
Date: Wed, 10 Jul 2019 14:30:52 +0800
Message-Id: <20190710063056.35689-1-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.9.5
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_234029_118210_23F1CB0A 
X-CRM114-Status: UNSURE (   8.81  )
X-CRM114-Notice: Please train this message.
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

The system counter block guide states that the base clock is
internally divided by 3 before use, that means the clock input of
system counter defined in DT should be base clock which is normally
from OSC, and then internally divided by 3 before use.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
Changes since V4:
	- to solve the clock driver probed after system counter driver issue, now we can easily switch to
	  use fixed clock defined in DT and get its rate, then divided by 3 to get real clock rate for
	  system counter driver, no need to add "clock-frequency" property in DT.
---
 drivers/clocksource/timer-imx-sysctr.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/clocksource/timer-imx-sysctr.c b/drivers/clocksource/timer-imx-sysctr.c
index fd7d680..b7c80a3 100644
--- a/drivers/clocksource/timer-imx-sysctr.c
+++ b/drivers/clocksource/timer-imx-sysctr.c
@@ -20,6 +20,8 @@
 #define SYS_CTR_EN		0x1
 #define SYS_CTR_IRQ_MASK	0x2
 
+#define SYS_CTR_CLK_DIV		0x3
+
 static void __iomem *sys_ctr_base;
 static u32 cmpcr;
 
@@ -134,6 +136,9 @@ static int __init sysctr_timer_init(struct device_node *np)
 	if (ret)
 		return ret;
 
+	/* system counter clock is divided by 3 internally */
+	to_sysctr.of_clk.rate /= SYS_CTR_CLK_DIV;
+
 	sys_ctr_base = timer_of_base(&to_sysctr);
 	cmpcr = readl(sys_ctr_base + CMPCR);
 	cmpcr &= ~SYS_CTR_EN;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
