Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20F611769E5
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 02:15:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5juWeMkGocALa28cOowon2Rpb1YVTqGZOFtbZMEr49E=; b=jNMP9Sw4uqFTyo
	5o6yzJ+D8cnbgNQo+KDQKEkSwVYsrLrlCbZWC8KG0yFrq0i7LnEFlZDYQHUL4mzGDFsJRu0NU5tr5
	h7FlZ5D49dOD0uchQ36L5cFkBHqfOsLvYF3hetGli0JBPX0/ghL0WdJd3QDlIM3YyjgnSQeVPIluF
	xssrxjEveesdxWWm/HnTvXYJ60VtVkm4MoLA7/Wyc8FzSFvzI/HZ/qLqM+agDYJHjefl4BCfnLL7C
	WEL1ZhUfpLWNBa1doh/PRBhibsYCl3Bv+C8r5f5UkVQDQZXH7BS22K5MueuZjfxv3sqgozxEj+FFY
	ppk3OLPL2Kf/9TWMnBfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8w9j-0004jh-GA; Tue, 03 Mar 2020 01:15:31 +0000
Received: from mail-qv1-xf43.google.com ([2607:f8b0:4864:20::f43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8w9a-0004jF-Tf
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 01:15:24 +0000
Received: by mail-qv1-xf43.google.com with SMTP id c19so947032qvv.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Mar 2020 17:15:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=massaru-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=sWljvu1Z0h+Ls6IHlbxUmdvdlpex8c5qLQ1lV9V+EAk=;
 b=umYklWYhe3xxKSCtXJYUkBktabKrCZvJ2LLPSATs301AsMO71sXYHDC2M2CUE2lYfq
 3C4cJMDyMOddPZ0jzCTWVI7+ERR7T4EZHM4FPXx986Mhi7CwoWfkad7BUEUH/lxdHJvq
 x84qts05ldxkdfmvhQ7+vyYidA7Zm302EPtBT/TPOr7iFbCPdmmm1Za8g0V1LGrF10fB
 KW/SoK7iGvMy9bdrHj3CAcsB8iRO5gFu7wXxaBIRo351KY2qoinwIFcrkdOZ8W/xVvDL
 FBvZCrMYVe35StQwNZchnLHMDwmShZTJB0jWt2ByqhgKNp62kh1I6r+i7rwPoj47mFqn
 /bdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=sWljvu1Z0h+Ls6IHlbxUmdvdlpex8c5qLQ1lV9V+EAk=;
 b=KbAcc044SL2WmKQWIXq57RQf/6txOSxh3lGj5bsUIw/qSaP41tgVXXPUtfVoJ2NMFK
 vCPmvBch2s+Uk0sjN2gBTC0UnVYY8jJ4Ai+UszzUJPuvNYkXYoAed26tnyDbPpzpxBWY
 tkz0srC73D7cIzltZcKcywm6KXQy5fB/6pxPYN4dcZ0CNBcXDMc84Xw7QxMg3m0LJsWL
 FrZiJBS95CN02bLDVwapgkBIimvl2tp9WyLoSGMO0sLAK4YKMPOyUbBLXaA+vqUio8HA
 UlxsNJOXdYs/xBQlCF4BUxQc5HC7zeUDhLr8/zs/rNbVXhQXapEGEG3rRVZSGjuXv1NY
 nUpw==
X-Gm-Message-State: ANhLgQ2pKukB5ugRaF1QB8gtNmqbgPD5Cb/DPgLhvv/0n8myDWUlDSaX
 PgKeDQBbneqNCGK+wxXUwKNoPQ==
X-Google-Smtp-Source: ADFU+vsmXxQ0YjxEkyQxVibbF9pItS1rT2buTUlHOOEt1BdiFeJEBc2oROy/hYScVJb68Kaz/UT1jg==
X-Received: by 2002:ad4:474f:: with SMTP id c15mr2079042qvx.52.1583198121446; 
 Mon, 02 Mar 2020 17:15:21 -0800 (PST)
Received: from bbking.lan ([2804:14c:4a5:36c::cd2])
 by smtp.gmail.com with ESMTPSA id o7sm11105460qkd.119.2020.03.02.17.15.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Mar 2020 17:15:20 -0800 (PST)
From: Vitor Massaru Iha <vitor@massaru.org>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v6] arm64: dts: imx8mq-phanbell: Add gpio-fan/thermal support
Date: Mon,  2 Mar 2020 22:15:16 -0300
Message-Id: <20200303011516.14946-1-vitor@massaru.org>
X-Mailer: git-send-email 2.21.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_171522_962801_058C6201 
X-CRM114-Status: GOOD (  12.82  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f43 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, lkcamp@lists.libreplanetbr.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, robh+dt@kernel.org, linux-imx@nxp.com,
 marco.franchi@nxp.com, festevam@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

It was based on Google Source Code for Coral Edge TPU Mendel release:
https://coral.googlesource.com/linux-imx/

It was tested on Coral Dev Board using this command:
  sudo stress --cpu 4 --timeout 3600

Signed-off-by: Vitor Massaru Iha <vitor@massaru.org>
Reviewed-by: Fabio Estevam <festevam@gmail.com>
---
v2:
 * Fix underscore in property name;
 * Add pinctrl entry for gpio-fan;
 * Removes undocumented property;

v3:
 * Fix subject pattern;
 * Fix order of pinctrl entries;
 * Fix MX8MQ_IOMUXC_NAND_CLE_GPIO3_IO5 flags;
 * Typo pattern (from "gpiofanp" to "gpiofangrp");
 * Fix tabs on MX8MQ_IOMUXC_NAND_CLE_GPIO3_IO5 line;

v4:
 * Fix cpu_thermal order;

v5:
 * Add missing Reviewed-by;

v6:
 * Removes unneeded blank line;

BR,
Vitor
---
 .../boot/dts/freescale/imx8mq-phanbell.dts    | 63 +++++++++++++++++++
 arch/arm64/boot/dts/freescale/imx8mq.dtsi     |  2 +-
 2 files changed, 64 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq-phanbell.dts b/arch/arm64/boot/dts/freescale/imx8mq-phanbell.dts
index 3f2a489a4ad8..0ff100f3f8f0 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-phanbell.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mq-phanbell.dts
@@ -35,6 +35,16 @@
 		gpio = <&gpio2 19 GPIO_ACTIVE_HIGH>;
 		enable-active-high;
 	};
+
+	fan: gpio-fan {
+		compatible = "gpio-fan";
+		gpio-fan,speed-map = <0 0 8600 1>;
+		gpios = <&gpio3 5 GPIO_ACTIVE_HIGH>;
+		#cooling-cells = <2>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_gpio_fan>;
+		status = "okay";
+	};
 };
 
 &A53_0 {
@@ -53,6 +63,53 @@
 	cpu-supply = <&buck2>;
 };
 
+&cpu_thermal {
+	trips {
+		cpu_alert0: trip0 {
+			temperature = <75000>;
+			hysteresis = <2000>;
+			type = "passive";
+		};
+
+		cpu_alert1: trip1 {
+			temperature = <80000>;
+			hysteresis = <2000>;
+			type = "passive";
+		};
+
+		cpu_crit0: trip3 {
+			temperature = <90000>;
+			hysteresis = <2000>;
+			type = "critical";
+		};
+
+		fan_toggle0: trip4 {
+			temperature = <65000>;
+			hysteresis = <10000>;
+			type = "active";
+		};
+	};
+
+	cooling-maps {
+		map0 {
+			trip = <&cpu_alert0>;
+			cooling-device =
+			<&A53_0 0 1>; /* Exclude highest OPP */
+		};
+
+		map1 {
+			trip = <&cpu_alert1>;
+			cooling-device =
+			<&A53_0 0 2>; /* Exclude two highest OPPs */
+		};
+
+		map4 {
+			trip = <&fan_toggle0>;
+			cooling-device = <&fan 0 1>;
+		};
+	};
+};
+
 &i2c1 {
 	clock-frequency = <400000>;
 	pinctrl-names = "default";
@@ -254,6 +311,12 @@
 };
 
 &iomuxc {
+	pinctrl_gpio_fan: gpiofangrp {
+		fsl,pins = <
+			MX8MQ_IOMUXC_NAND_CLE_GPIO3_IO5			0x16
+		>;
+	};
+
 	pinctrl_i2c1: i2c1grp {
 		fsl,pins = <
 			MX8MQ_IOMUXC_I2C1_SCL_I2C1_SCL			0x4000007f
diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
index 6a1e83922c71..a3bb17a6b9df 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
@@ -198,7 +198,7 @@
 	};
 
 	thermal-zones {
-		cpu-thermal {
+		cpu_thermal: cpu-thermal {
 			polling-delay-passive = <250>;
 			polling-delay = <2000>;
 			thermal-sensors = <&tmu 0>;
-- 
2.21.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
