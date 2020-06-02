Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC80E1EB5E6
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 08:35:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GbxaCsAzEnGYgWR3vYRNdEU8NhmE4+1VwoShWHpFm+E=; b=ni1STZqfEwhUzRc4aEKjv+womr
	TMrCBFDSrV1QcY4qOI/oJxRQZHaQ/tgIGtNZGOaxBgRhX53g/JNhKf/lRlXDk5B7vhGS6dKCuOGoL
	+nITw5lJq6EpCXh3YNSf6ZhubLKXb3wFyVfodTcuDX79vbLspOpn9vUkpZ5X3fBC/jlioPBXNTx/e
	WmtHxxsvYu0+fotDJhWQJ74P4ZtfAIMMpOofR2ZCo0Y7UveR+FlINcmVvrtSM9J6lfNW6Ghtubjfx
	aH1KSzcKznMqD6CqCWKcJ7EauUeXm0HzyXfMtkq7a/U4vt9aDy89qr0jFf6LIIpbXJF0NCarI0z6q
	WJUEfaKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg0WT-0008H7-IM; Tue, 02 Jun 2020 06:35:41 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg0W7-00088R-Uu
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 06:35:21 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id BA88120096A;
 Tue,  2 Jun 2020 08:35:16 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id BC807200971;
 Tue,  2 Jun 2020 08:35:12 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 1F8CD4031F;
 Tue,  2 Jun 2020 14:35:08 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/3] ARM: dts: imx: Change esdhc node name on
 i.MX2/i.MX3/i.MX5 SoCs
Date: Tue,  2 Jun 2020 14:24:51 +0800
Message-Id: <1591079092-18625-2-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1591079092-18625-1-git-send-email-Anson.Huang@nxp.com>
References: <1591079092-18625-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_233520_265005_F55786A2 
X-CRM114-Status: UNSURE (   8.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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

Change i.MX2/i.MX3/i.MX5 SoCs esdhc node name from esdhc to mmc to
be compliant with yaml schema, it requires the nodename to be "mmc".

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 arch/arm/boot/dts/imx25.dtsi | 4 ++--
 arch/arm/boot/dts/imx35.dtsi | 6 +++---
 arch/arm/boot/dts/imx50.dtsi | 8 ++++----
 arch/arm/boot/dts/imx51.dtsi | 8 ++++----
 arch/arm/boot/dts/imx53.dtsi | 8 ++++----
 5 files changed, 17 insertions(+), 17 deletions(-)

diff --git a/arch/arm/boot/dts/imx25.dtsi b/arch/arm/boot/dts/imx25.dtsi
index 4eaf4eb..b045c6d 100644
--- a/arch/arm/boot/dts/imx25.dtsi
+++ b/arch/arm/boot/dts/imx25.dtsi
@@ -453,7 +453,7 @@
 				interrupts = <22>;
 			};
 
-			esdhc1: esdhc@53fb4000 {
+			esdhc1: mmc@53fb4000 {
 				compatible = "fsl,imx25-esdhc";
 				reg = <0x53fb4000 0x4000>;
 				interrupts = <9>;
@@ -462,7 +462,7 @@
 				status = "disabled";
 			};
 
-			esdhc2: esdhc@53fb8000 {
+			esdhc2: mmc@53fb8000 {
 				compatible = "fsl,imx25-esdhc";
 				reg = <0x53fb8000 0x4000>;
 				interrupts = <8>;
diff --git a/arch/arm/boot/dts/imx35.dtsi b/arch/arm/boot/dts/imx35.dtsi
index 502112b..e154087 100644
--- a/arch/arm/boot/dts/imx35.dtsi
+++ b/arch/arm/boot/dts/imx35.dtsi
@@ -231,7 +231,7 @@
 				#interrupt-cells = <2>;
 			};
 
-			esdhc1: esdhc@53fb4000 {
+			esdhc1: mmc@53fb4000 {
 				compatible = "fsl,imx35-esdhc";
 				reg = <0x53fb4000 0x4000>;
 				interrupts = <7>;
@@ -240,7 +240,7 @@
 				status = "disabled";
 			};
 
-			esdhc2: esdhc@53fb8000 {
+			esdhc2: mmc@53fb8000 {
 				compatible = "fsl,imx35-esdhc";
 				reg = <0x53fb8000 0x4000>;
 				interrupts = <8>;
@@ -249,7 +249,7 @@
 				status = "disabled";
 			};
 
-			esdhc3: esdhc@53fbc000 {
+			esdhc3: mmc@53fbc000 {
 				compatible = "fsl,imx35-esdhc";
 				reg = <0x53fbc000 0x4000>;
 				interrupts = <9>;
diff --git a/arch/arm/boot/dts/imx50.dtsi b/arch/arm/boot/dts/imx50.dtsi
index 1f4ecbc..377951a 100644
--- a/arch/arm/boot/dts/imx50.dtsi
+++ b/arch/arm/boot/dts/imx50.dtsi
@@ -115,7 +115,7 @@
 				reg = <0x50000000 0x40000>;
 				ranges;
 
-				esdhc1: esdhc@50004000 {
+				esdhc1: mmc@50004000 {
 					compatible = "fsl,imx50-esdhc", "fsl,imx53-esdhc";
 					reg = <0x50004000 0x4000>;
 					interrupts = <1>;
@@ -127,7 +127,7 @@
 					status = "disabled";
 				};
 
-				esdhc2: esdhc@50008000 {
+				esdhc2: mmc@50008000 {
 					compatible = "fsl,imx50-esdhc", "fsl,imx53-esdhc";
 					reg = <0x50008000 0x4000>;
 					interrupts = <2>;
@@ -176,7 +176,7 @@
 					status = "disabled";
 				};
 
-				esdhc3: esdhc@50020000 {
+				esdhc3: mmc@50020000 {
 					compatible = "fsl,imx50-esdhc", "fsl,imx53-esdhc";
 					reg = <0x50020000 0x4000>;
 					interrupts = <3>;
@@ -188,7 +188,7 @@
 					status = "disabled";
 				};
 
-				esdhc4: esdhc@50024000 {
+				esdhc4: mmc@50024000 {
 					compatible = "fsl,imx50-esdhc", "fsl,imx53-esdhc";
 					reg = <0x50024000 0x4000>;
 					interrupts = <4>;
diff --git a/arch/arm/boot/dts/imx51.dtsi b/arch/arm/boot/dts/imx51.dtsi
index c83bc77..db5827d 100644
--- a/arch/arm/boot/dts/imx51.dtsi
+++ b/arch/arm/boot/dts/imx51.dtsi
@@ -185,7 +185,7 @@
 				reg = <0x70000000 0x40000>;
 				ranges;
 
-				esdhc1: esdhc@70004000 {
+				esdhc1: mmc@70004000 {
 					compatible = "fsl,imx51-esdhc";
 					reg = <0x70004000 0x4000>;
 					interrupts = <1>;
@@ -196,7 +196,7 @@
 					status = "disabled";
 				};
 
-				esdhc2: esdhc@70008000 {
+				esdhc2: mmc@70008000 {
 					compatible = "fsl,imx51-esdhc";
 					reg = <0x70008000 0x4000>;
 					interrupts = <2>;
@@ -245,7 +245,7 @@
 					status = "disabled";
 				};
 
-				esdhc3: esdhc@70020000 {
+				esdhc3: mmc@70020000 {
 					compatible = "fsl,imx51-esdhc";
 					reg = <0x70020000 0x4000>;
 					interrupts = <3>;
@@ -257,7 +257,7 @@
 					status = "disabled";
 				};
 
-				esdhc4: esdhc@70024000 {
+				esdhc4: mmc@70024000 {
 					compatible = "fsl,imx51-esdhc";
 					reg = <0x70024000 0x4000>;
 					interrupts = <4>;
diff --git a/arch/arm/boot/dts/imx53.dtsi b/arch/arm/boot/dts/imx53.dtsi
index ed6b0c8..9a4fc99 100644
--- a/arch/arm/boot/dts/imx53.dtsi
+++ b/arch/arm/boot/dts/imx53.dtsi
@@ -236,7 +236,7 @@
 				reg = <0x50000000 0x40000>;
 				ranges;
 
-				esdhc1: esdhc@50004000 {
+				esdhc1: mmc@50004000 {
 					compatible = "fsl,imx53-esdhc";
 					reg = <0x50004000 0x4000>;
 					interrupts = <1>;
@@ -248,7 +248,7 @@
 					status = "disabled";
 				};
 
-				esdhc2: esdhc@50008000 {
+				esdhc2: mmc@50008000 {
 					compatible = "fsl,imx53-esdhc";
 					reg = <0x50008000 0x4000>;
 					interrupts = <2>;
@@ -301,7 +301,7 @@
 					status = "disabled";
 				};
 
-				esdhc3: esdhc@50020000 {
+				esdhc3: mmc@50020000 {
 					compatible = "fsl,imx53-esdhc";
 					reg = <0x50020000 0x4000>;
 					interrupts = <3>;
@@ -313,7 +313,7 @@
 					status = "disabled";
 				};
 
-				esdhc4: esdhc@50024000 {
+				esdhc4: mmc@50024000 {
 					compatible = "fsl,imx53-esdhc";
 					reg = <0x50024000 0x4000>;
 					interrupts = <4>;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
