Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EB14176968
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 01:46:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=McMs3wMbIz4Q+2IMgwuxQmGqcL2hOFgGQVq4AezKjjs=; b=OhJtpTb6RtxkpH
	zQ1hZWuIfdsFK9AbXHKNXKvp5hxKBuHxXTSE1BovOOtemOLvrAbTZDa2QmEXshWo3oTXV6XiKghKh
	S0e0OhfgLGi1lrK12zmq13A4UMm3/nt/KlBhqF+x7TJoobhEorrlxKk9D8QVO6hAJnuqYxerEoxyn
	4gCcQaOnQqjcuDppdOTx7K6ko/LneY3y7OgTyxkxa8OpeTpqCUVzXR2bhDajFUFCNGrHlN2uMbo2H
	BDMI845oJ03A+BmRdvDj+jsGGv5PpC3dIZjeeOqtBZFAYINCXv2JlRLf433osXBYhsvc57ZXF6F77
	lVr0cktcAMiabZIeYCtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8vhv-0002Vd-Kq; Tue, 03 Mar 2020 00:46:47 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8vho-0002VC-I4
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 00:46:42 +0000
Received: by mail-qk1-x744.google.com with SMTP id p62so1806898qkb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Mar 2020 16:46:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=massaru-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=FJzJAEuKHPY6L62lnbjtAROsD95ktjZMnZsb3UGNdoo=;
 b=EAXXXRg9yWE/eu15wdXFiqqdRa8fvC7j6/kiQ+sZ5+8VcUZulKti8KEB12QryZBORD
 qPVfEjioSfSlwMQikCxVTN/PQedu3dYDAnrBbf8RdCzvLZl0erDdcS8qK8occGQEqIM9
 JOxL5KH2n1UfL9ekZ9hDNZflV3kW5hyRkH3rFhw6ALROthslfQW7vWcKmVN6sLQV70po
 +ejYu9Uk99kD7EEOr8xSkDlM1jVYKV4R3gs89mvA/WKrGk33OvPEGewFf5KW4L4bhWOI
 /dmOHA97nBl34b1RwpNzhJmyqUwICIkRL9fN/zGnhdN5dfc6am8LZbY9ce/irTlo97QZ
 0f2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=FJzJAEuKHPY6L62lnbjtAROsD95ktjZMnZsb3UGNdoo=;
 b=JwC3jAUlw+lyNuFBMB8d1k/f2PrZR1N5etDbYXKq7oR2CHTWSeGcCL3DEfgI9NCDmi
 BAepk5Td9LZbQPKHzmDFpdbS3Jg1IFtGEyndibdQfVIhk9NrPusu3TEDiS7P4pkv4Rj0
 PfdIuh4DfyE2b/kHohRDlfnxBCD0juAAlAPo2vrf1GUg52tb80RPku+jpDYd8HlgMTfZ
 WMIZRiB4S2SwgU5GxnrZd8ZZmjYlJmx717Ux7uJpLGDJApFsW0cyO8FLhIQt96RwsEkL
 /tN4w+ipnLQwm42rkCCwBJrqcS57uSJwueUT1lg1gZKytZ1bskDLujATXmrINz+/mYDG
 5w1A==
X-Gm-Message-State: ANhLgQ0iyfM0XVyId1Hl8+Ce1eMU0zJv43aBgtkuoUDX1dlBhpGdvOAw
 UCHLxVkWcstIZzi6ofQehI9g3A==
X-Google-Smtp-Source: ADFU+vt190SBEdDRnqimw8AigTuE5fSCYYi1HXhNY+pZ3S7DEWJhp2+r7BeEN2P7CAIlnUuqjkLXSQ==
X-Received: by 2002:a05:620a:15cf:: with SMTP id
 o15mr1899012qkm.140.1583196395553; 
 Mon, 02 Mar 2020 16:46:35 -0800 (PST)
Received: from bbking.lan ([2804:14c:4a5:36c::cd2])
 by smtp.gmail.com with ESMTPSA id s139sm7167406qke.70.2020.03.02.16.46.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Mar 2020 16:46:34 -0800 (PST)
From: Vitor Massaru Iha <vitor@massaru.org>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4] arm64: dts: imx8mq-phanbell: Add gpio-fan/thermal support
Date: Mon,  2 Mar 2020 21:46:30 -0300
Message-Id: <20200303004630.13663-1-vitor@massaru.org>
X-Mailer: git-send-email 2.21.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_164640_599024_368E49EE 
X-CRM114-Status: GOOD (  12.72  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
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

BR,
Vitor
---
 .../boot/dts/freescale/imx8mq-phanbell.dts    | 64 +++++++++++++++++++
 arch/arm64/boot/dts/freescale/imx8mq.dtsi     |  2 +-
 2 files changed, 65 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq-phanbell.dts b/arch/arm64/boot/dts/freescale/imx8mq-phanbell.dts
index 3f2a489a4ad8..f1fce2b1b5c8 100644
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
@@ -374,3 +437,4 @@
 		>;
 	};
 };
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
