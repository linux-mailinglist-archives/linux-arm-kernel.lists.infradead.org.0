Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F1C1176612
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 22:36:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cOQDrliJizVyYNo+g4Z+6T+ZH4dLLacT9/JroZi1IeI=; b=kQ9dyxpQbsYxrB
	8siyL69GGcbjH4S3h6d8nJ8DTUmGYijhK8QIrKREJF+e5q7Skc5rdq2iL5Lyzgit76W8IMVs4y9XJ
	TgDFxWmKgfh6KQs6UOx9xcYlb+ckL3enQ6+zcAcu6XUZLHvYh7x1kK3k6YScaR20nfuqKrGH21asS
	P6GHR1JKce4WFmJl2xITanI00CMNyNGkmRgVkR3qas82lxsOHxawCJpTxv5Lx1hvceM0eLccssGdC
	9gTHI5qOa+hX5GC0iJaKcDD2u5vZkETYuwfBAvmSCGeairpdRU7pLCWToNvKnFpXSdxvc54oHmYk/
	pd0gTJLH6zBHnSSYxdcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8sjS-0000Vk-CP; Mon, 02 Mar 2020 21:36:10 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8sjL-0000VH-I4
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 21:36:05 +0000
Received: by mail-qt1-x843.google.com with SMTP id r6so1210830qtt.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Mar 2020 13:36:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=massaru-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=r9MdSe3Cp1lK2gG7CSugFJQzL+Ftzyoa9ZuWFdMMRyU=;
 b=v1NVxwUhDEc9KuoY0dQgfwrrdS+ySgl/dlgzB0wKwecXQH50HdSVu3ak9BFzS+kKV9
 EKpyy5eE/2OnF03JnYiaQDgusRCKsOTcXNS2NTw5DTPiXWO2ZYI/pNs2V9f6OdfdtONL
 qkc17l4+XYYOEV51IBBoFKt1AfmdfnG5PPBd+FchacXw8vr2QFFRsQBpWMhn5EvuCQzj
 bbCyt6KSX78myxtdU4DytNRUBBavvwpG5/kPhvpjXxsw4uHL6PcTO6C6QjZgPL8uOXgr
 F2+OyrRCa0TKT32QfPyyXq13lD7fCj/AW7WYozx5DwikeowcAId7mBl0VZtNek/QJWaH
 fm1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=r9MdSe3Cp1lK2gG7CSugFJQzL+Ftzyoa9ZuWFdMMRyU=;
 b=tWW50z/kyeplt3pAVC2HC+K2PZneu4s2hsLnIvhhgpavMcPZBXxf0HImTOyvuBORJZ
 Tt9M9GvLuLj43wY1hzUITlRdaLIN6IW1a+Jgh7NAZ9/Za3iN26+7y1RNx5WUuhqP7IH/
 e5o432qe3LsVy0CTxSJRe2v0Y8CUlUxrhS8t3RlCBdOpbbBY3uPvCbfkGmMQWa0XZZ5B
 FsC+ytlAl/J0o+KV5X8qMUj5yOCvrZXImS0dGjAP/9QDPFNiU/Uz0QrLjqXk+GAYFNpJ
 gQJ5FNTYvLnFf6JgjEKtuXVH40yEMs28TaOD+V+BQy+c+QMMIuQew208DWUT5fmAoXjG
 jQ3Q==
X-Gm-Message-State: ANhLgQ0O7UZ7U4UCzs4k27lPqbBTzOKGagVzDL52xQBN4M0GCO3lqv8h
 pWivyuu5o1nU99jAsviYrPK5XA==
X-Google-Smtp-Source: ADFU+vvXTcOclxCW7n8FPaNrlZeCSsnViuh2KdNCzSYQltwtpBLHuD8NYy/7EiI4MQzpeYFg25dwsw==
X-Received: by 2002:ac8:7b45:: with SMTP id m5mr1510643qtu.213.1583184961902; 
 Mon, 02 Mar 2020 13:36:01 -0800 (PST)
Received: from bbking.lan ([2804:14c:4a5:36c::cd2])
 by smtp.gmail.com with ESMTPSA id b5sm1378122qkk.16.2020.03.02.13.35.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Mar 2020 13:36:01 -0800 (PST)
From: Vitor Massaru Iha <vitor@massaru.org>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3] arm64: dts: imx8mq-phanbell: Add gpio-fan/thermal support
Date: Mon,  2 Mar 2020 18:35:57 -0300
Message-Id: <20200302213557.11128-1-vitor@massaru.org>
X-Mailer: git-send-email 2.21.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_133603_600337_ABF7EE2F 
X-CRM114-Status: GOOD (  12.29  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
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

BR,
Vitor
---
 .../boot/dts/freescale/imx8mq-phanbell.dts    | 64 +++++++++++++++++++
 arch/arm64/boot/dts/freescale/imx8mq.dtsi     |  2 +-
 2 files changed, 65 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq-phanbell.dts b/arch/arm64/boot/dts/freescale/imx8mq-phanbell.dts
index 3f2a489a4ad8..e20032110e0e 100644
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
@@ -254,6 +264,12 @@
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
@@ -374,3 +390,51 @@
 		>;
 	};
 };
+
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
