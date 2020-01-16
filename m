Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E7D213F3F3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 19:46:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=4XGe1stAZ9fsl96HXEJOkoS5GmLeYed6TA23/LFmi0E=; b=iv9FP7wTaDVTLUf6UYMnQ715+h
	O4C9P2YilE2AleXm4T0bo5kvZV+Vdqv3MQrRJj90DXvvD+R9lvHwhCXBKyYNJpOliV5DPlKRGydHq
	cZA8lCCBXIFlbWxd8AEvicJ6VEmtm44w7oKnzvPssEOvfYYoTnCiGethQgpMYo5ppzHjaZUIam3P3
	ItQmiB1D7Z6aYCq5eEQPZjOPIqgepfx8C02GDvAq4qmGgJXFXtBX4DjTT2J3HxTDOv2nIgzBGN7pB
	PU2sg42S6nSVUKBOJke/UB3dQ2J2A46OWkZDGmJ4KrN/4yOlFR4EwSJ88vqw8yQ1Q7JUHjwrfBGyk
	hUaijELw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isAA5-0000mi-JX; Thu, 16 Jan 2020 18:46:33 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is9np-0000AN-G5
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 18:23:36 +0000
Received: by mail-wm1-x341.google.com with SMTP id m24so4796976wmc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Jan 2020 10:23:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=XCi3giR9VTe0RVdSxNrJbzA2jQPkRo5HAD6T0ea6ezU=;
 b=NK+qvfDtbcETsJbAUVtyYTvabKJ7laoZoo3Pi72AybzAYgicukjcCrWLCLPsmdQPQj
 C0UI1PjWGa06gE5PQhLy87feylKf6CPXf2dkpMFywDgcIsqCO4MDp4VSmSdRlW2LEmCy
 xI9fnWtM1bQBiAbH/XuAamzKVB7uJLB6NaQoVfy/p/KF6ia3cjsEr856YXyoF/ZKkohp
 p/UrPuAqIKV6lDpaSd9WB6EXh8To64A5Qm2MDTJsX3vVT1od0n0ghNHpDw1sSY3G/L/x
 SDy55Mxs4F2j+3td7ZJJZ9sle90kNaTdZ8yFYvEIbn5OpmNYMYSDRnLLOSyqpYC5aw+l
 Qccg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=XCi3giR9VTe0RVdSxNrJbzA2jQPkRo5HAD6T0ea6ezU=;
 b=QeqfsVzZwq9Ne7DtwUBwFgwcmYG4Z+vPZx3mka6KHf0h86r8huHMBKIDIiSZQYPaIX
 pU1iI0pbIS9PDNu71Z2F/6j1MqAkPPX+pEKjco+xy6yLBr6brI22nhZoGGof1YjQ7RmL
 /T5NdhdMSnVyWBVXffhbcp48s4MWjDPRGULFVRLHNhZFB+YDd6mR3rhVFtX0I5BJ7+le
 vYVHcQxjvDa55wa4ltE5hkOf1lJtUqL+Jy3IrUzrzKHbfU6u3xvUPK5VPkRtOTOBsK6J
 wzAwlBtEcWEMm+HFziUt24+8yg2AKCUDTVY4CbOcNw0UgmeqmlNJqpRhL3KOPum0gF86
 xUBw==
X-Gm-Message-State: APjAAAXHBJKzmo7V4ouwum9vyyEo2lcX2o1hEzmDVItmOVi5eDmNWnbH
 MpUlANFAMzTfGtxMiZpQg5Rm5Q==
X-Google-Smtp-Source: APXvYqzzk/u9wMQmxsWFQjXXqLpW96/Wotc9bX/2MlWh/iCgtJD6BoISx1/3AIymdgPTxC0p+Kg8UQ==
X-Received: by 2002:a1c:6707:: with SMTP id b7mr365782wmc.54.1579199011774;
 Thu, 16 Jan 2020 10:23:31 -0800 (PST)
Received: from mai.imgcgcw.net ([2a01:e34:ed2f:f020:6c63:1b50:1156:7f0f])
 by smtp.gmail.com with ESMTPSA id b137sm1087920wme.26.2020.01.16.10.23.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Jan 2020 10:23:30 -0800 (PST)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: tglx@linutronix.de
Subject: [PATCH 07/17] clocksource/drivers/cadence-ttc: Use ttc driver as
 platform driver
Date: Thu, 16 Jan 2020 19:22:54 +0100
Message-Id: <20200116182304.4926-7-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200116182304.4926-1-daniel.lezcano@linaro.org>
References: <74bf7170-401f-2962-ea5a-1e21431a9349@linaro.org>
 <20200116182304.4926-1-daniel.lezcano@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_102333_556632_CA770BDB 
X-CRM114-Status: GOOD (  14.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "moderated list:ARM/ZYNQ ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, linux-kernel@vger.kernel.org,
 Rajan Vaja <rajan.vaja@xilinx.com>, Michal Simek <michal.simek@xilinx.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Rajan Vaja <rajan.vaja@xilinx.com>

Currently TTC driver is TIMER_OF_DECLARE type driver. Because of
that, TTC driver may be initialized before other clock drivers. If
TTC driver is dependent on that clock driver then initialization of
TTC driver will failed.

So use TTC driver as platform driver instead of using
TIMER_OF_DECLARE.

Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
Tested-by: Michal Simek <michal.simek@xilinx.com>
Acked-by: Michal Simek <michal.simek@xilinx.com>
Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
Link: https://lore.kernel.org/r/1573122988-18399-1-git-send-email-rajan.vaja@xilinx.com
---
 drivers/clocksource/timer-cadence-ttc.c | 26 +++++++++++++++++--------
 1 file changed, 18 insertions(+), 8 deletions(-)

diff --git a/drivers/clocksource/timer-cadence-ttc.c b/drivers/clocksource/timer-cadence-ttc.c
index 88fe2e9ba9a3..38858e141731 100644
--- a/drivers/clocksource/timer-cadence-ttc.c
+++ b/drivers/clocksource/timer-cadence-ttc.c
@@ -15,6 +15,8 @@
 #include <linux/of_irq.h>
 #include <linux/slab.h>
 #include <linux/sched_clock.h>
+#include <linux/module.h>
+#include <linux/of_platform.h>
 
 /*
  * This driver configures the 2 16/32-bit count-up timers as follows:
@@ -464,13 +466,7 @@ static int __init ttc_setup_clockevent(struct clk *clk,
 	return 0;
 }
 
-/**
- * ttc_timer_init - Initialize the timer
- *
- * Initializes the timer hardware and register the clock source and clock event
- * timers with Linux kernal timer framework
- */
-static int __init ttc_timer_init(struct device_node *timer)
+static int __init ttc_timer_probe(struct platform_device *pdev)
 {
 	unsigned int irq;
 	void __iomem *timer_baseaddr;
@@ -478,6 +474,7 @@ static int __init ttc_timer_init(struct device_node *timer)
 	static int initialized;
 	int clksel, ret;
 	u32 timer_width = 16;
+	struct device_node *timer = pdev->dev.of_node;
 
 	if (initialized)
 		return 0;
@@ -532,4 +529,17 @@ static int __init ttc_timer_init(struct device_node *timer)
 	return 0;
 }
 
-TIMER_OF_DECLARE(ttc, "cdns,ttc", ttc_timer_init);
+static const struct of_device_id ttc_timer_of_match[] = {
+	{.compatible = "cdns,ttc"},
+	{},
+};
+
+MODULE_DEVICE_TABLE(of, ttc_timer_of_match);
+
+static struct platform_driver ttc_timer_driver = {
+	.driver = {
+		.name	= "cdns_ttc_timer",
+		.of_match_table = ttc_timer_of_match,
+	},
+};
+builtin_platform_driver_probe(ttc_timer_driver, ttc_timer_probe);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
