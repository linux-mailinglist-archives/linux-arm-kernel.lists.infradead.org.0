Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50AF01EB5E7
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 08:36:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=evgykbhRBq3G168xkMyGKEvb1w1Tf8YTS2bdk05rk4o=; b=oHjd5H8tBYmpV5nC68+YrZkVef
	+o61htVJdCZN+ieTBqSLFbmn47cfuERNivlWqxpQfm8VjNNIT3oHTODug3YNhkcD/v8bptgkHng3Y
	M+oFfX7+/CU/rjJ/A+AL3UgOISeOvB5i08/H8K9ioiC4w7hsEWovoqXx+XjofzeNGMNKMrCGY6I2u
	c2+1C5nWtY30f0eDZ5RlNuKgauGeSzISeeSiv50DjyU2GOk7ZC6tLi1GhmrH6e3KoQ2aMcCNXebtA
	kE+qF6PzrsUcur2X6UQne/45iggCAmlUvTeDlThu3bi94pwMigdj5CXnjrHislC7UU9rD1+b37gfr
	iDxrKgSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg0Wh-00005k-Bh; Tue, 02 Jun 2020 06:35:55 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg0W8-00088T-9p
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 06:35:22 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 9F85C1A266B;
 Tue,  2 Jun 2020 08:35:17 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id AC9351A0BEC;
 Tue,  2 Jun 2020 08:35:13 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 0F6CB4030C;
 Tue,  2 Jun 2020 14:35:08 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 3/3] ARM: dts: imx: Change usdhc node name on i.MX6/i.MX7 SoCs
Date: Tue,  2 Jun 2020 14:24:52 +0800
Message-Id: <1591079092-18625-3-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1591079092-18625-1-git-send-email-Anson.Huang@nxp.com>
References: <1591079092-18625-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_233520_616839_654EA643 
X-CRM114-Status: UNSURE (   7.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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

Change i.MX6/i.MX7 SoCs usdhc node name from usdhc to mmc to be
compliant with yaml schema, it requires the nodename to be "mmc".

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 arch/arm/boot/dts/imx6qdl.dtsi | 8 ++++----
 arch/arm/boot/dts/imx6sl.dtsi  | 8 ++++----
 arch/arm/boot/dts/imx6sx.dtsi  | 8 ++++----
 arch/arm/boot/dts/imx6ul.dtsi  | 4 ++--
 arch/arm/boot/dts/imx7s.dtsi   | 6 +++---
 5 files changed, 17 insertions(+), 17 deletions(-)

diff --git a/arch/arm/boot/dts/imx6qdl.dtsi b/arch/arm/boot/dts/imx6qdl.dtsi
index deb09df..346a52f 100644
--- a/arch/arm/boot/dts/imx6qdl.dtsi
+++ b/arch/arm/boot/dts/imx6qdl.dtsi
@@ -1056,7 +1056,7 @@
 					     <0 126 IRQ_TYPE_LEVEL_HIGH>;
 			};
 
-			usdhc1: usdhc@2190000 {
+			usdhc1: mmc@2190000 {
 				compatible = "fsl,imx6q-usdhc";
 				reg = <0x02190000 0x4000>;
 				interrupts = <0 22 IRQ_TYPE_LEVEL_HIGH>;
@@ -1068,7 +1068,7 @@
 				status = "disabled";
 			};
 
-			usdhc2: usdhc@2194000 {
+			usdhc2: mmc@2194000 {
 				compatible = "fsl,imx6q-usdhc";
 				reg = <0x02194000 0x4000>;
 				interrupts = <0 23 IRQ_TYPE_LEVEL_HIGH>;
@@ -1080,7 +1080,7 @@
 				status = "disabled";
 			};
 
-			usdhc3: usdhc@2198000 {
+			usdhc3: mmc@2198000 {
 				compatible = "fsl,imx6q-usdhc";
 				reg = <0x02198000 0x4000>;
 				interrupts = <0 24 IRQ_TYPE_LEVEL_HIGH>;
@@ -1092,7 +1092,7 @@
 				status = "disabled";
 			};
 
-			usdhc4: usdhc@219c000 {
+			usdhc4: mmc@219c000 {
 				compatible = "fsl,imx6q-usdhc";
 				reg = <0x0219c000 0x4000>;
 				interrupts = <0 25 IRQ_TYPE_LEVEL_HIGH>;
diff --git a/arch/arm/boot/dts/imx6sl.dtsi b/arch/arm/boot/dts/imx6sl.dtsi
index 11e7bf3..e2d2532 100644
--- a/arch/arm/boot/dts/imx6sl.dtsi
+++ b/arch/arm/boot/dts/imx6sl.dtsi
@@ -854,7 +854,7 @@
 				status = "disabled";
 			};
 
-			usdhc1: usdhc@2190000 {
+			usdhc1: mmc@2190000 {
 				compatible = "fsl,imx6sl-usdhc", "fsl,imx6q-usdhc";
 				reg = <0x02190000 0x4000>;
 				interrupts = <0 22 IRQ_TYPE_LEVEL_HIGH>;
@@ -866,7 +866,7 @@
 				status = "disabled";
 			};
 
-			usdhc2: usdhc@2194000 {
+			usdhc2: mmc@2194000 {
 				compatible = "fsl,imx6sl-usdhc", "fsl,imx6q-usdhc";
 				reg = <0x02194000 0x4000>;
 				interrupts = <0 23 IRQ_TYPE_LEVEL_HIGH>;
@@ -878,7 +878,7 @@
 				status = "disabled";
 			};
 
-			usdhc3: usdhc@2198000 {
+			usdhc3: mmc@2198000 {
 				compatible = "fsl,imx6sl-usdhc", "fsl,imx6q-usdhc";
 				reg = <0x02198000 0x4000>;
 				interrupts = <0 24 IRQ_TYPE_LEVEL_HIGH>;
@@ -890,7 +890,7 @@
 				status = "disabled";
 			};
 
-			usdhc4: usdhc@219c000 {
+			usdhc4: mmc@219c000 {
 				compatible = "fsl,imx6sl-usdhc", "fsl,imx6q-usdhc";
 				reg = <0x0219c000 0x4000>;
 				interrupts = <0 25 IRQ_TYPE_LEVEL_HIGH>;
diff --git a/arch/arm/boot/dts/imx6sx.dtsi b/arch/arm/boot/dts/imx6sx.dtsi
index 995e1b1..430c21a 100644
--- a/arch/arm/boot/dts/imx6sx.dtsi
+++ b/arch/arm/boot/dts/imx6sx.dtsi
@@ -943,7 +943,7 @@
 				status = "disabled";
 			};
 
-			usdhc1: usdhc@2190000 {
+			usdhc1: mmc@2190000 {
 				compatible = "fsl,imx6sx-usdhc", "fsl,imx6sl-usdhc";
 				reg = <0x02190000 0x4000>;
 				interrupts = <GIC_SPI 22 IRQ_TYPE_LEVEL_HIGH>;
@@ -955,7 +955,7 @@
 				status = "disabled";
 			};
 
-			usdhc2: usdhc@2194000 {
+			usdhc2: mmc@2194000 {
 				compatible = "fsl,imx6sx-usdhc", "fsl,imx6sl-usdhc";
 				reg = <0x02194000 0x4000>;
 				interrupts = <GIC_SPI 23 IRQ_TYPE_LEVEL_HIGH>;
@@ -967,7 +967,7 @@
 				status = "disabled";
 			};
 
-			usdhc3: usdhc@2198000 {
+			usdhc3: mmc@2198000 {
 				compatible = "fsl,imx6sx-usdhc", "fsl,imx6sl-usdhc";
 				reg = <0x02198000 0x4000>;
 				interrupts = <GIC_SPI 24 IRQ_TYPE_LEVEL_HIGH>;
@@ -979,7 +979,7 @@
 				status = "disabled";
 			};
 
-			usdhc4: usdhc@219c000 {
+			usdhc4: mmc@219c000 {
 				compatible = "fsl,imx6sx-usdhc", "fsl,imx6sl-usdhc";
 				reg = <0x0219c000 0x4000>;
 				interrupts = <GIC_SPI 25 IRQ_TYPE_LEVEL_HIGH>;
diff --git a/arch/arm/boot/dts/imx6ul.dtsi b/arch/arm/boot/dts/imx6ul.dtsi
index 2d64802..e5aab37 100644
--- a/arch/arm/boot/dts/imx6ul.dtsi
+++ b/arch/arm/boot/dts/imx6ul.dtsi
@@ -861,7 +861,7 @@
 				status = "disabled";
 			};
 
-			usdhc1: usdhc@2190000 {
+			usdhc1: mmc@2190000 {
 				compatible = "fsl,imx6ul-usdhc", "fsl,imx6sx-usdhc";
 				reg = <0x02190000 0x4000>;
 				interrupts = <GIC_SPI 22 IRQ_TYPE_LEVEL_HIGH>;
@@ -875,7 +875,7 @@
 				status = "disabled";
 			};
 
-			usdhc2: usdhc@2194000 {
+			usdhc2: mmc@2194000 {
 				compatible = "fsl,imx6ul-usdhc", "fsl,imx6sx-usdhc";
 				reg = <0x02194000 0x4000>;
 				interrupts = <GIC_SPI 23 IRQ_TYPE_LEVEL_HIGH>;
diff --git a/arch/arm/boot/dts/imx7s.dtsi b/arch/arm/boot/dts/imx7s.dtsi
index 3cba731..1cfaf41 100644
--- a/arch/arm/boot/dts/imx7s.dtsi
+++ b/arch/arm/boot/dts/imx7s.dtsi
@@ -1126,7 +1126,7 @@
 				reg = <0x30b30200 0x200>;
 			};
 
-			usdhc1: usdhc@30b40000 {
+			usdhc1: mmc@30b40000 {
 				compatible = "fsl,imx7d-usdhc", "fsl,imx6sl-usdhc";
 				reg = <0x30b40000 0x10000>;
 				interrupts = <GIC_SPI 22 IRQ_TYPE_LEVEL_HIGH>;
@@ -1138,7 +1138,7 @@
 				status = "disabled";
 			};
 
-			usdhc2: usdhc@30b50000 {
+			usdhc2: mmc@30b50000 {
 				compatible = "fsl,imx7d-usdhc", "fsl,imx6sl-usdhc";
 				reg = <0x30b50000 0x10000>;
 				interrupts = <GIC_SPI 23 IRQ_TYPE_LEVEL_HIGH>;
@@ -1150,7 +1150,7 @@
 				status = "disabled";
 			};
 
-			usdhc3: usdhc@30b60000 {
+			usdhc3: mmc@30b60000 {
 				compatible = "fsl,imx7d-usdhc", "fsl,imx6sl-usdhc";
 				reg = <0x30b60000 0x10000>;
 				interrupts = <GIC_SPI 24 IRQ_TYPE_LEVEL_HIGH>;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
