Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33F3B3C39D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 07:51:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=uB57eO900nz6BGg8G3Vmf4VjvnyS2u5QeRNOotoKz1o=; b=RbF
	TMiseD1lbfW6tWeJwWkmkFlop631fAz/7/omNpVYv9s2rdfzzSYsF/YLJxrfLenOAxOLCHQv21oc1
	TePz4GmIBq3wjAQNqOVL+boOOi75d0X7KHtx/LyEb6sAuw8UkFjNGC530Hmcfc9nPcufmOJWrtYEz
	8NcK6hPjuF2q4ns6tDEi6ASZ4PI9hLrNUrP/OWd4EriIzZmbuIaIu4j5MSh3JZO6TlvH5DJsCM6LP
	u3PIXxbli3/AwupuiINVg15KTwblQ7IF05uNVlUUd2MKXbY84LmCxfEXQsyanZUPIaJ8QA6ireKZB
	9yPZWeWLQqAvCjhUPMapgv3OAlrDTLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haZgn-0006cD-N7; Tue, 11 Jun 2019 05:51:21 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haZgc-0006b6-M4
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 05:51:12 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 345CA200945;
 Tue, 11 Jun 2019 07:51:07 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 73052200954;
 Tue, 11 Jun 2019 07:51:03 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id E025E402CA;
 Tue, 11 Jun 2019 13:50:58 +0800 (SGT)
From: Yuantian Tang <andy.tang@nxp.com>
To: shawnguo@kernel.org
Subject: [PATCH v3] arm64: dts: ls1028a: Add temperature sensor node
Date: Tue, 11 Jun 2019 13:42:44 +0800
Message-Id: <20190611054244.35269-1-andy.tang@nxp.com>
X-Mailer: git-send-email 2.14.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_225110_860656_32C0722C 
X-CRM114-Status: UNSURE (   7.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Yuantian Tang <andy.tang@nxp.com>, linux-kernel@vger.kernel.org,
 leoyang.li@nxp.com, robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add nxp sa56004 chip node for temperature monitor.

Signed-off-by: Yuantian Tang <andy.tang@nxp.com>
---
v3:
	- sort the node in i2c address
v2:
	- change the node name and add vcc-supply
 arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dts |   15 +++++++++++++++
 arch/arm64/boot/dts/freescale/fsl-ls1028a-rdb.dts |   15 +++++++++++++++
 2 files changed, 30 insertions(+), 0 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dts b/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dts
index b359068..960daf2 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dts
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dts
@@ -47,6 +47,15 @@
 		regulator-always-on;
 	};
 
+	sb_3v3: regulator-sb3v3 {
+		compatible = "regulator-fixed";
+		regulator-name = "3v3_vbus";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-boot-on;
+		regulator-always-on;
+	};
+
 	sound {
 		compatible = "simple-audio-card";
 		simple-audio-card,format = "i2s";
@@ -117,6 +126,12 @@
 			#size-cells = <0>;
 			reg = <0x3>;
 
+			temperature-sensor@4c {
+				compatible = "nxp,sa56004";
+				reg = <0x4c>;
+				vcc-supply = <&sb_3v3>;
+			};
+
 			rtc@51 {
 				compatible = "nxp,pcf2129";
 				reg = <0x51>;
diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a-rdb.dts b/arch/arm64/boot/dts/freescale/fsl-ls1028a-rdb.dts
index f9c272f..6a22423 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1028a-rdb.dts
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a-rdb.dts
@@ -43,6 +43,15 @@
 		regulator-always-on;
 	};
 
+	sb_3v3: regulator-sb3v3 {
+		compatible = "regulator-fixed";
+		regulator-name = "3v3_vbus";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-boot-on;
+		regulator-always-on;
+	};
+
 	sound {
 		compatible = "simple-audio-card";
 		simple-audio-card,format = "i2s";
@@ -115,6 +124,12 @@
 			#size-cells = <0>;
 			reg = <0x3>;
 
+			temperature-sensor@4c {
+				compatible = "nxp,sa56004";
+				reg = <0x4c>;
+				vcc-supply = <&sb_3v3>;
+			};
+
 			rtc@51 {
 				compatible = "nxp,pcf2129";
 				reg = <0x51>;
-- 
1.7.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
