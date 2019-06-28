Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3816F59210
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 05:40:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=8GAixaJRxopqqTOy04TVmxQ7aGelieHffACyu7AbgNk=; b=ouD
	xcgyqOvzoLACcQrYztL8sSKDWwJ+bVPt2VBxePhsGDgByXNHgUmv8g6c2qhBNY0Airz9iU7sVziSt
	OuLgtaKGUyX/EtAtHh3n+CEXpFnuh7RPa3xCAvIMv/Kn/Guuy1wbhoOgobRshftiC97zk9YxPsStT
	4Dft832yq0nM7JHRA7nHjUhLj9BbppLbJ7G47x33bEdAf3gdnu9np/eMV23oCABnZi7vgWEHePuKr
	hKj++Indq9pLaCQZpvausvzrzbkRc5oIkpz92WtJlLZQ8FMQIPy0MukKx+orNKHs5jaX0IvN7cRZq
	2TqUI4jCPeeHO1vjvwLjmhoUJd9rTpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hghkG-0001tM-VY; Fri, 28 Jun 2019 03:40:17 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hghjv-0001sF-7B
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 03:39:56 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id DEF1E200307;
 Fri, 28 Jun 2019 05:39:53 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id E19A2200304;
 Fri, 28 Jun 2019 05:39:42 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id DE51D402F6;
 Fri, 28 Jun 2019 11:39:29 +0800 (SGT)
From: Anson.Huang@nxp.com
To: daniel.lezcano@linaro.org, tglx@linutronix.de, robh+dt@kernel.org,
 mark.rutland@arm.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, leonard.crestez@nxp.com,
 viresh.kumar@linaro.org, daniel.baluta@nxp.com, ping.bai@nxp.com,
 l.stach@pengutronix.de, abel.vesa@nxp.com, andrew.smirnov@gmail.com,
 ccaione@baylibre.com, angus@akkea.ca, agx@sigxcpu.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH V3 1/5] clocksource: timer-of: Support getting clock frequency
 from DT
Date: Fri, 28 Jun 2019 11:30:37 +0800
Message-Id: <20190628033041.8513-1-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.14.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_203955_632516_7A2A1A6A 
X-CRM114-Status: GOOD (  13.87  )
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

More and more platforms use platform driver model for clock driver,
so the clock driver is NOT ready during timer initialization phase,
it will cause timer initialization failed.

To support those platforms with upper scenario, introducing a new
flag TIMER_OF_CLOCK_FREQUENCY which is mutually exclusive with
TIMER_OF_CLOCK flag to support getting timer clock frequency from
DT, then of_clk operations can be skipped.

User needs to select either TIMER_OF_CLOCK_FREQUENCY or TIMER_OF_CLOCK
flag if want to use timer-of driver to initialize the clock rate,
and the corresponding clock name or property name needs to be specified.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
New patch:
	- Add new flag of TIMER_OF_CLOCK_FREQUENCY, mutually exclusive with TIMER_OF_CLOCK, to support
	  getting clock frequency from DT directly;
	- Add prop_name to of_timer_clk structure, if using TIMER_OF_CLOCK_FREQUENCY flag, user needs
	  to pass the property name for timer-of driver to get clock frequency from DT, this is to avoid
	  the couple of timer-of driver and DT, so timer-of driver does NOT use a fixed property name.
---
 drivers/clocksource/timer-of.c | 23 +++++++++++++++++++++++
 drivers/clocksource/timer-of.h |  8 +++++---
 2 files changed, 28 insertions(+), 3 deletions(-)

diff --git a/drivers/clocksource/timer-of.c b/drivers/clocksource/timer-of.c
index 8054228..c91a8b6 100644
--- a/drivers/clocksource/timer-of.c
+++ b/drivers/clocksource/timer-of.c
@@ -161,6 +161,21 @@ static __init int timer_of_base_init(struct device_node *np,
 	return 0;
 }
 
+static __init int timer_of_clk_frequency_init(struct device_node *np,
+					      struct of_timer_clk *of_clk)
+{
+	int ret;
+	u32 rate;
+
+	ret = of_property_read_u32(np, of_clk->prop_name, &rate);
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
 	int ret = -EINVAL;
@@ -178,6 +193,11 @@ int __init timer_of_init(struct device_node *np, struct timer_of *to)
 		if (ret)
 			goto out_fail;
 		flags |= TIMER_OF_CLOCK;
+	} else if (to->flags & TIMER_OF_CLOCK_FREQUENCY) {
+		ret = timer_of_clk_frequency_init(np, &to->of_clk);
+		if (ret)
+			goto out_fail;
+		flags |= TIMER_OF_CLOCK_FREQUENCY;
 	}
 
 	if (to->flags & TIMER_OF_IRQ) {
@@ -201,6 +221,9 @@ int __init timer_of_init(struct device_node *np, struct timer_of *to)
 	if (flags & TIMER_OF_CLOCK)
 		timer_of_clk_exit(&to->of_clk);
 
+	if (flags & TIMER_OF_CLOCK_FREQUENCY)
+		to->of_clk.rate = 0;
+
 	if (flags & TIMER_OF_BASE)
 		timer_of_base_exit(&to->of_base);
 	return ret;
diff --git a/drivers/clocksource/timer-of.h b/drivers/clocksource/timer-of.h
index a5478f3..f1a083e 100644
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
@@ -26,6 +27,7 @@ struct of_timer_base {
 struct of_timer_clk {
 	struct clk *clk;
 	const char *name;
+	const char *prop_name;
 	int index;
 	unsigned long rate;
 	unsigned long period;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
