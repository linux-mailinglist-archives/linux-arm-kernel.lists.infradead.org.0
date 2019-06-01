Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ADBC32108
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  2 Jun 2019 00:32:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CiWOoAi8kyuJGoKNqSdb+7Sg/f0FKe3LuVffij17LUo=; b=PH/Tf7f0Pd4RKc
	1VSZB952/MDB0f+zpftkKx8KlRKGKcyEdr6jSaCQzmBkcnc3EAdfB2ZwB9ZPPtQuhNHbh1YIIxC2Z
	RdJ3XqAc/g4V7KlYjzUzJPV9PN4jjYYduqIEy3TWn9lrD4txemBNUti3drVOJqZvaT/CHYxvKwW81
	0MfmjBN66l6AZtSQeu1jRq9MsSTGrSQMlOBQuS3UG893UXXgzr32ZIf2VoyHYRu4eQJTe+hRmHL6v
	mNgx0EjD/fr/ve/rD0cUjtJRxb+54SRZkZG/9rsATSHSjH36Gzbho56zwSo+9T/ISn/UW+A/0Q2fl
	I6jeWHQCxSWomIB+/DJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXCXZ-0000wF-06; Sat, 01 Jun 2019 22:31:53 +0000
Received: from mail-out.m-online.net ([2001:a60:0:28:0:1:25:1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXCXR-0000sQ-BR
 for linux-arm-kernel@lists.infradead.org; Sat, 01 Jun 2019 22:31:47 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 45Gbdn19fpz1rWxB;
 Sun,  2 Jun 2019 00:31:41 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 45Gbdn0nz6z1qqkj;
 Sun,  2 Jun 2019 00:31:41 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id i9VW3zfENnRr; Sun,  2 Jun 2019 00:31:39 +0200 (CEST)
X-Auth-Info: ft1+Ne8ae1I6hrZvZ01K6PN4Ur/wSUu0QbyEJew7T1w=
Received: from kurokawa.lan (ip-86-49-110-70.net.upcbroadband.cz
 [86.49.110.70])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Sun,  2 Jun 2019 00:31:39 +0200 (CEST)
From: Marek Vasut <marex@denx.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH V2] ARM: dts: imx53: Bind CPLD on M53Menlo
Date: Sun,  2 Jun 2019 00:30:50 +0200
Message-Id: <20190601223050.27410-1-marex@denx.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190601_153145_541194_88F64469 
X-CRM114-Status: GOOD (  10.04  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:a60:0:28:0:1:25:1 listed in] [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Marek Vasut <marex@denx.de>, Fabio Estevam <festevam@gmail.com>,
 Shawn Guo <shawnguo@kernel.org>, NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enable ECSPI2 and bind CPLD to both chip selects.

Signed-off-by: Marek Vasut <marex@denx.de>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: NXP Linux Team <linux-imx@nxp.com>
To: linux-arm-kernel@lists.infradead.org
---
V2: Drop fsl,spi-num-chipselects
---
 arch/arm/boot/dts/imx53-m53menlo.dts | 30 ++++++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/arch/arm/boot/dts/imx53-m53menlo.dts b/arch/arm/boot/dts/imx53-m53menlo.dts
index 55c122a64ef0..1deb070c1c21 100644
--- a/arch/arm/boot/dts/imx53-m53menlo.dts
+++ b/arch/arm/boot/dts/imx53-m53menlo.dts
@@ -100,6 +100,25 @@
 	assigned-clock-rates = <133333334>, <33333334>, <33333334>;
 };
 
+&ecspi2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_ecspi2>;
+	cs-gpios = <&gpio2 26 GPIO_ACTIVE_HIGH>, <&gpio2 27 GPIO_ACTIVE_HIGH>;
+	status = "okay";
+
+	spidev@0 {
+		compatible = "menlo,m53cpld", "spidev";
+		spi-max-frequency = <25000000>;
+		reg = <0>;
+	};
+
+	spidev@1 {
+		compatible = "menlo,m53cpld", "spidev";
+		spi-max-frequency = <25000000>;
+		reg = <1>;
+	};
+};
+
 &esdhc1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_esdhc1>;
@@ -301,6 +320,17 @@
 			>;
 		};
 
+		pinctrl_ecspi2: ecspi2grp {
+			fsl,pins = <
+				MX53_PAD_EIM_CS0__ECSPI2_SCLK		0xe4
+				MX53_PAD_EIM_OE__ECSPI2_MISO		0xe4
+				MX53_PAD_EIM_CS1__ECSPI2_MOSI		0xe4
+
+				MX53_PAD_EIM_RW__GPIO2_26		0xe4
+				MX53_PAD_EIM_LBA__GPIO2_27		0xe4
+			>;
+		};
+
 		pinctrl_esdhc1: esdhc1grp {
 			fsl,pins = <
 				MX53_PAD_SD1_DATA0__ESDHC1_DAT0		0x1e4
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
