Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A6701EB5E5
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 08:35:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=i2LUVgEZlKqn1y9lQ6xejIbIgi9lo2joRrYIE/YpIkY=; b=Npn
	X7aksC19rui8jrLsWj2shd8rDwwXz6Bt+9jhn2V3Tllxs0jiK/GOhEHYiIfTmpBc0ocwNKEAWMXYk
	9Woie66koZeVZI8tVjQDYH+VAMYEheSsqfp2/009syrEx5d4cqLrQSDyC1vKQCsqLKRJDw4/spV96
	kyk0jicqV3VZXhhbl4SFmgZCUefinTK+8StkuhdlYqmF0T+RwDp9zHw3qA383Ku7eppokrk9Nc6jz
	o5fdAGa0igdKK6GyaG7iPkH021YfeYdEUOPwFoCInk8X8DWP0/Foq9OGix6LGckDNI3qhWFOAFxDL
	5rXKWlMPVbj2iyxf4YBHubrJGXpH3bQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg0WE-0008A0-Hi; Tue, 02 Jun 2020 06:35:26 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg0W7-00088O-Jq
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 06:35:20 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id F04631A264E;
 Tue,  2 Jun 2020 08:35:15 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 34F061A2603;
 Tue,  2 Jun 2020 08:35:12 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 2EFED402DF;
 Tue,  2 Jun 2020 14:35:07 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/3] ARM: dts: imx: Change sdhci node name on i.MX27/i.MX31
 SoCs
Date: Tue,  2 Jun 2020 14:24:50 +0800
Message-Id: <1591079092-18625-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_233519_791806_3CB41F09 
X-CRM114-Status: UNSURE (   8.31  )
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

Change i.MX27/i.MX31 node name from sdhci to mmc to be compliant
with yaml schema, it requires the nodename to be "mmc".

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 arch/arm/boot/dts/imx27.dtsi | 6 +++---
 arch/arm/boot/dts/imx31.dtsi | 4 ++--
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boot/dts/imx27.dtsi b/arch/arm/boot/dts/imx27.dtsi
index ee04771..47de96b 100644
--- a/arch/arm/boot/dts/imx27.dtsi
+++ b/arch/arm/boot/dts/imx27.dtsi
@@ -265,7 +265,7 @@
 				status = "disabled";
 			};
 
-			sdhci1: sdhci@10013000 {
+			sdhci1: mmc@10013000 {
 				compatible = "fsl,imx27-mmc", "fsl,imx21-mmc";
 				reg = <0x10013000 0x1000>;
 				interrupts = <11>;
@@ -277,7 +277,7 @@
 				status = "disabled";
 			};
 
-			sdhci2: sdhci@10014000 {
+			sdhci2: mmc@10014000 {
 				compatible = "fsl,imx27-mmc", "fsl,imx21-mmc";
 				reg = <0x10014000 0x1000>;
 				interrupts = <10>;
@@ -431,7 +431,7 @@
 				status = "disabled";
 			};
 
-			sdhci3: sdhci@1001e000 {
+			sdhci3: mmc@1001e000 {
 				compatible = "fsl,imx27-mmc", "fsl,imx21-mmc";
 				reg = <0x1001e000 0x1000>;
 				interrupts = <9>;
diff --git a/arch/arm/boot/dts/imx31.dtsi b/arch/arm/boot/dts/imx31.dtsi
index 4f3d7ab..eedf2d7 100644
--- a/arch/arm/boot/dts/imx31.dtsi
+++ b/arch/arm/boot/dts/imx31.dtsi
@@ -173,7 +173,7 @@
 			reg = <0x50000000 0x100000>;
 			ranges;
 
-			sdhci1: sdhci@50004000 {
+			sdhci1: mmc@50004000 {
 				compatible = "fsl,imx31-mmc";
 				reg = <0x50004000 0x4000>;
 				interrupts = <9>;
@@ -184,7 +184,7 @@
 				status = "disabled";
 			};
 
-			sdhci2: sdhci@50008000 {
+			sdhci2: mmc@50008000 {
 				compatible = "fsl,imx31-mmc";
 				reg = <0x50008000 0x4000>;
 				interrupts = <8>;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
