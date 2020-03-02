Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8328B175142
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 01:12:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1aACk3r1zFTnEloA8s6Jo/1bUMhZlT0JwXhRThEhdO4=; b=SkeKE6EpZYiaDt
	bBRLFih3NTkWpNuNgQOtqkv4iG6Vc/zk6JLHYeruOJCSlKkh5G9AwckLO6T1j+qyz/m12Bd/VHm96
	DCXA/qVtLa099RF6HSpexEULzDYALtr2BcO4cqTzwZRlwIe8W+5y+iqY7mClkShkOG4EXIXw12sdJ
	GDhAAXQBQvH0rPqrn+v4F4wgcDoMuNj2Tft5swD5MAOqUMYkAYSVg0TI2fQnSPdaejeoe7bNtzrxz
	/oGxAjvBwcioDPxQXAbHofZYqbQI1I2c3O//dmsvlBUN19dHRleKPhl16H3ojPGM3Iy9LkTFwxpjg
	A/z/fGAYPQ4UoGnAIlgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8Ygo-0004OV-7L; Mon, 02 Mar 2020 00:12:06 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8Ygg-0004O5-Ds
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 00:12:00 +0000
Received: by mail-qk1-x742.google.com with SMTP id f3so8526228qkh.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 01 Mar 2020 16:11:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=massaru-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=4/YCjZ1oaKRZgdjhxl8DLn+nRy9DD18mNfW/zomwFzE=;
 b=carO0kFs1H4HE9z1tt2Yn3Llcx8sXHWgu5rJipogdsli2uizchBvU9ydf+1yIw0U6v
 TWQX65v4oKXz2HMztMrBG0qDyINAkfqwHMP1ELbl2rfBOAcyCXVJ9PWgXioNq1G093n/
 ieXrYGXG1eB2G/RR66betZPBripGPC0rjJPwLWFHDx15AEr9WO3UHafFLhHLAYBWXky/
 NbPSlUCy7vKAbC88dlDfnWd9uFqrSQgCgAKCXZDeFspnznj560BIkUBGKNjF0AOfqYPD
 +dyJi0/wrT+tvMKe+OvuaIEvrHqJl83v1crOZMRW3DT6jkpvu3t0SBMcZ5AeRPLAMVDO
 iihQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=4/YCjZ1oaKRZgdjhxl8DLn+nRy9DD18mNfW/zomwFzE=;
 b=rQkXHwlSv+jo180QcUhyoB1OzKfyz2/ehGszqwKMrpIykkBQYE8wnxjo0/YwiYQXBu
 L2d1ZPmq5f1Ew+chSVeFCxalUpavHT4UtCmoFN/UKiqWCqoHEcan/Jtx3wl6Z5X0gzuZ
 VSCHmneYze4dwz/PpfLSNpfuNTlnhMU0GXjJxoYgIkQTd4tf4AftuoDeOa3EN6RWpTBa
 iFzsCsSJiqSJ37zlCJP7jCl0PCJNkQEEMuksS6L17FuiWgD+MvoAbUhy1N5irQPDQ9Lf
 udaYSxXwUrKbkh8G/BPBOKco2p+4gqbmNdcrcJzlsneLaYP51gMvYpbDOA0rzDxT+z5F
 qmTQ==
X-Gm-Message-State: APjAAAW0z87sH0uRFXZfT3CPxAnGwn1w6sWKl4UmZ3P6A6eYzjePZuWo
 DTqdxvG2h3k6+9OThMYetIxaeA==
X-Google-Smtp-Source: APXvYqx6If6whTCbu1kaCgR0TRrpOFIWdC6fmEUBVEcHG8zBm14f496mkUEMnQZ/aYydOZrT1VUKcw==
X-Received: by 2002:a05:620a:22cc:: with SMTP id
 o12mr14087296qki.331.1583107915740; 
 Sun, 01 Mar 2020 16:11:55 -0800 (PST)
Received: from bbking.lan ([2804:14c:4a5:36c::cd2])
 by smtp.gmail.com with ESMTPSA id l16sm4921372qke.68.2020.03.01.16.11.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 01 Mar 2020 16:11:55 -0800 (PST)
From: Vitor Massaru Iha <vitor@massaru.org>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2] arm64: dts: freescale: add gpio-fan/thermal support for
 Google i.MX 8MQ Phanbell
Date: Sun,  1 Mar 2020 21:11:49 -0300
Message-Id: <20200302001150.27952-1-vitor@massaru.org>
X-Mailer: git-send-email 2.21.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200301_161158_494297_DABA78A4 
X-CRM114-Status: GOOD (  12.25  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 * Removes undocumented property.

BR,
Vitor
---
 .../boot/dts/freescale/imx8mq-phanbell.dts    | 64 +++++++++++++++++++
 arch/arm64/boot/dts/freescale/imx8mq.dtsi     |  2 +-
 2 files changed, 65 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq-phanbell.dts b/arch/arm64/boot/dts/freescale/imx8mq-phanbell.dts
index 3f2a489a4ad8..3302e5c127ca 100644
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
@@ -373,4 +383,58 @@
 			MX8MQ_IOMUXC_GPIO1_IO02_WDOG1_WDOG_B 0xc6
 		>;
 	};
+
+	pinctrl_gpio_fan: gpiofanp {
+		fsl,pins = <
+			MX8MQ_IOMUXC_NAND_CLE_GPIO3_IO5 0x01
+		>;
+	};
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
