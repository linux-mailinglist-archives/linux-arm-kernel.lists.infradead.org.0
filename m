Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AB5ADCA00
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 17:57:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mtj4A0Kf+hZ3/Vxg+FV2aMfDG2B/2uptNtPc/akrpWw=; b=apifqUFLOSMbLe
	WFRL8K3f6BL2wSxK5dHvfW15GeJU5OxlSoHoXqjl2KMidYdVV2lA3gxSkWSJM0q7iFdgU0V1EbDqQ
	5sbhf95ejf1yqfdoM7fMIqgMDtjf7VtZD1fZOK84PMxFUwigYOnh0t6Whz+6Q34Icx5oVAmB038s9
	Qa52uE4Xm1k1beaTHussj+rEF1yaYMwvI0MTlI0a9UaQd1lgiTHD5o/+YXNBdIDTiHRZSlQ+MFLp1
	D2NMbUQYvckF/nYDo6TF/seg34eBjlQIg8Nl51cDUXzypWWxAZ2ii1YyUEIMXuz574lN2htquP+7F
	t8xPzjX1n0rp6AshLmBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLUd6-0007bF-24; Fri, 18 Oct 2019 15:57:28 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLUWX-0007L6-Vv
 for linux-arm-kernel@bombadil.infradead.org; Fri, 18 Oct 2019 15:50:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=coNgMFOpiK14khaVXnq6BpXcHLUxcoibYe0qsJJmGzg=; b=nfLsI4WweStF2trJvf1L3awDE9
 nOYOWBUac2YvqJFLPXHelYPL2+ioT4gHHYSK+Z1Zgyf96S0cXwKQACfBzZA0+mOBhxwlhgnw9KahQ
 NQYzwy3Hp4Whjr11xfOqrzPlaIj7SAtDSj22Laty7sxCfo0P3FiRpddkfAh5maTQgoZ8/ToZx/RmL
 XW2xPEKQDM1T7v2mBOgx3FyD8P9KDKyszIT/KzAw6dH+VWbsI6itMqqkdUCGcgVRPFyfz1t4LhwHs
 0mxk92VQeV/jMjEXgsr76aNxFQYORkLOjeJE2LefDN0UyX7bQ/mrrgBlmriwqHN7zc0upHhRVZ5/q
 /5VUJnSw==;
Received: from mout.kundenserver.de ([217.72.192.75])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLUP9-0002DY-4r
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 15:43:04 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.145]) with ESMTPA (Nemesis) id
 1Mq2rM-1hiK9j1L1e-00n5fL; Fri, 18 Oct 2019 17:42:33 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Daniel Mack <daniel@zonque.org>, Haojian Zhuang <haojian.zhuang@gmail.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>
Subject: [PATCH 39/46] power: tosa: simplify probe function
Date: Fri, 18 Oct 2019 17:41:54 +0200
Message-Id: <20191018154201.1276638-39-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20191018154052.1276506-1-arnd@arndb.de>
References: <20191018154052.1276506-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:hl7BVkd0yWFJrOmiZHbeobrWCSoJQ+ScQbAwl6PsnGpuJOJIEHu
 W0QV/e5+JWq7TsLgc2PtBEnls5NuarY449LGFoJViTSJWvMdHcLlMDX2XoWwFZEcbYPI5WZ
 TdOdhaetEZ7yT8ULxFUd+U0PpVPf/ceYiuCvUo7SyrqiG5srZ7uqgbND4fJK/5Lkt+TFsTD
 40f6kuITqgYxlt9LHI6UQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:H4Ylysjy0ZA=:/XEzK/9RniR7YFlZoEyvOt
 96k2I0vU6eFeQVYNinRZYLqMtbg2Zj3rAQyQGnOHBs5u+TB+8sRWhVmJUdvbPrx8+i9jhXxCa
 cux8jIgrcfoGgiVR6hzJQ6XSCkrVw+f63GS8MXKzgu/KDRmHn+IVrCd/fvzEpKw8zW3Xy8AYl
 6nY4dEbC9HxJ8XyC4ueDhKV7gZOE+plXzxxtAy01EeW/ip8d0apUcP9fnPKiNsv0RkAa2hUA3
 eeiKt5kZ2hiCv912MsTwG/rWA0kw47V9mr2FdA/yLy9Ib+Xe4hqPFgHzSlu5aMBm4rJYSOYUU
 Ufn5VqBmUuwUkgDtn2PLMzwRt8Ed4z0LgxO+QXZGIpgxIeV+jtxBXNquKQHq0Ul5IrQ9sZik8
 mRVvKqm1SOknx18e/pj/6I8uCfwaa+A0KA+iKP0kV5Yrjd6XmlAp49azsORHHnDByVUC/yf9x
 EEgrc9tI9Axi5IHvUcCYwhgkijFLu8xgiXAbvsQuSlALU/QSjPatNYqXiZ5Ax+0ucplamJd2G
 81jEcjedwI+C4nr8ELmgS93/M5QldzfaizY3neyNehWGgJOKieaJyUmwBBL8dwEauT54HsvH/
 u1+1jCkw1CCq4yUZn3fwV/ywmTttv9TfeYXlj1tE9dAkp19dOQhmw8sSPt1aPq+jQe1W2IRN5
 oQLZMuDv6cNAldguZPFT+8gjHn/w8hqf/0WP63uJ0l33g32WBLUCxEH82OtVBaSU9BXRYoeJh
 nfxJr+55wQNqDBa2UfH3ccIHTo7sEoRuG2Zl5dA9xiYnJDgneAxAoINw1wy5S/8r/AmkA31Gk
 yFfFbUaXdiJS8WT0H2tVEaW6xyOc0+EcuV7zwq7+0PX/PEzKDk1u/p/TAir1FIPGtgX3w7iq1
 0VQp6qh9uRbkEH8o4DZA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_164303_235699_F7BA36C6 
X-CRM114-Status: GOOD (  14.70  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Arnd Bergmann <arnd@arndb.de>, linux-pm@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 Sebastian Reichel <sre@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We have three power supplies that need similar initialization.
As a preparation for the gpio lookup table conversion, split
out the initialization into a separate function.

Cc: Sebastian Reichel <sre@kernel.org>
Cc: linux-pm@vger.kernel.org
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/power/supply/tosa_battery.c | 50 ++++++++++++++---------------
 1 file changed, 24 insertions(+), 26 deletions(-)

diff --git a/drivers/power/supply/tosa_battery.c b/drivers/power/supply/tosa_battery.c
index 32cc31cd4761..b26b0eca33e1 100644
--- a/drivers/power/supply/tosa_battery.c
+++ b/drivers/power/supply/tosa_battery.c
@@ -343,12 +343,24 @@ static int tosa_bat_resume(struct platform_device *dev)
 #define tosa_bat_resume NULL
 #endif
 
+static int tosa_power_supply_register(struct device *dev,
+			struct tosa_bat *bat,
+			const struct power_supply_desc *desc)
+{
+	struct power_supply_config cfg = {
+		.drv_data = bat,
+	};
+
+	mutex_init(&bat->work_lock);
+	bat->psy = power_supply_register(dev, desc, &cfg);
+
+	return PTR_ERR_OR_ZERO(bat->psy);
+}
+
+
 static int tosa_bat_probe(struct platform_device *dev)
 {
 	int ret;
-	struct power_supply_config main_psy_cfg = {},
-				   jacket_psy_cfg = {},
-				   bu_psy_cfg = {};
 
 	if (!machine_is_tosa())
 		return -ENODEV;
@@ -357,36 +369,22 @@ static int tosa_bat_probe(struct platform_device *dev)
 	if (ret)
 		return ret;
 
-	mutex_init(&tosa_bat_main.work_lock);
-	mutex_init(&tosa_bat_jacket.work_lock);
-
 	INIT_WORK(&bat_work, tosa_bat_work);
 
-	main_psy_cfg.drv_data = &tosa_bat_main;
-	tosa_bat_main.psy = power_supply_register(&dev->dev,
-						  &tosa_bat_main_desc,
-						  &main_psy_cfg);
-	if (IS_ERR(tosa_bat_main.psy)) {
-		ret = PTR_ERR(tosa_bat_main.psy);
+	ret = tosa_power_supply_register(&dev->dev, &tosa_bat_main,
+					 &tosa_bat_main_desc);
+	if (ret)
 		goto err_psy_reg_main;
-	}
 
-	jacket_psy_cfg.drv_data = &tosa_bat_jacket;
-	tosa_bat_jacket.psy = power_supply_register(&dev->dev,
-						    &tosa_bat_jacket_desc,
-						    &jacket_psy_cfg);
-	if (IS_ERR(tosa_bat_jacket.psy)) {
-		ret = PTR_ERR(tosa_bat_jacket.psy);
+	ret = tosa_power_supply_register(&dev->dev, &tosa_bat_jacket,
+					 &tosa_bat_jacket_desc);
+	if (ret)
 		goto err_psy_reg_jacket;
-	}
 
-	bu_psy_cfg.drv_data = &tosa_bat_bu;
-	tosa_bat_bu.psy = power_supply_register(&dev->dev, &tosa_bat_bu_desc,
-						&bu_psy_cfg);
-	if (IS_ERR(tosa_bat_bu.psy)) {
-		ret = PTR_ERR(tosa_bat_bu.psy);
+	ret = tosa_power_supply_register(&dev->dev, &tosa_bat_bu,
+					 &tosa_bat_bu_desc);
+	if (ret)
 		goto err_psy_reg_bu;
-	}
 
 	ret = request_irq(gpio_to_irq(TOSA_GPIO_BAT0_CRG),
 				tosa_bat_gpio_isr,
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
