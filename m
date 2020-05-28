Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E41B11E549E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 05:23:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=62uvqlKGBs9eC00ZAHJ0/5JCS86RbE30OUPiyXAKyhI=; b=cWSJf9TVyw7STmrvxNR7UwSZLb
	FR1e1JV3JzHTPrUFMZ5tK81evHywjDd/yDf0whdwXtOBEUcCLCJSSOhUhd2wkCOv97qHiV2pMJwLV
	GIchPFocpzvC9Nji1CEA4xydyPiK3n6eHwRY6hygQd1B7g/IAikSh7+cGh+FKu+eBKSerzIixQSOB
	v29KU8Mrm5s10OmQ4a4iC4uUEo1edYB5sXyozmfWe5CaoNAdYUBT82NDv6nIY4NFqklZ4vo95Cwur
	owSur6Ug1b4y8T6j/nJBcc/mjdMjyXDwAB9u47nvmRPWXOt+U43BaxqHxM/j7kwvADeoWrwE9vhbP
	gSpMQezg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je994-0005sL-Ct; Thu, 28 May 2020 03:23:50 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je98X-0005fc-3x
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 03:23:18 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 941261A0A5E;
 Thu, 28 May 2020 05:23:11 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id A43B41A0A63;
 Thu, 28 May 2020 05:23:02 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 7D0E8402BF;
 Thu, 28 May 2020 11:22:52 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, daniel.baluta@nxp.com,
 leonard.crestez@nxp.com, peng.fan@nxp.com, aford173@gmail.com,
 jun.li@nxp.com, shengjiu.wang@nxp.com, horia.geanta@nxp.com,
 aisheng.dong@nxp.com, fugang.duan@nxp.com, agx@sigxcpu.org,
 l.stach@pengutronix.de, andrew.smirnov@gmail.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 1/4] ARM: dts: imx: change ocotp node name on i.MX6/7 SoCs
Date: Thu, 28 May 2020 11:12:47 +0800
Message-Id: <1590635570-8541-2-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1590635570-8541-1-git-send-email-Anson.Huang@nxp.com>
References: <1590635570-8541-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_202317_435220_E29919B4 
X-CRM114-Status: UNSURE (   8.36  )
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

Change OCOTP node name from ocotp-ctrl to efuse to be compliant with
yaml schema, it requires the nodename to be one of "eeprom|efuse|nvram".

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 arch/arm/boot/dts/imx6qdl.dtsi | 2 +-
 arch/arm/boot/dts/imx6sl.dtsi  | 2 +-
 arch/arm/boot/dts/imx6sll.dtsi | 2 +-
 arch/arm/boot/dts/imx6sx.dtsi  | 2 +-
 arch/arm/boot/dts/imx6ul.dtsi  | 2 +-
 arch/arm/boot/dts/imx7s.dtsi   | 2 +-
 arch/arm/boot/dts/imx7ulp.dtsi | 2 +-
 7 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm/boot/dts/imx6qdl.dtsi b/arch/arm/boot/dts/imx6qdl.dtsi
index 43d44d5..e14a6f2 100644
--- a/arch/arm/boot/dts/imx6qdl.dtsi
+++ b/arch/arm/boot/dts/imx6qdl.dtsi
@@ -1162,7 +1162,7 @@
 				status = "disabled";
 			};
 
-			ocotp: ocotp-ctrl@21bc000 {
+			ocotp: efuse@21bc000 {
 				compatible = "fsl,imx6q-ocotp", "syscon";
 				reg = <0x021bc000 0x4000>;
 				clocks = <&clks IMX6QDL_CLK_IIM>;
diff --git a/arch/arm/boot/dts/imx6sl.dtsi b/arch/arm/boot/dts/imx6sl.dtsi
index d8efc0a..11e7bf3 100644
--- a/arch/arm/boot/dts/imx6sl.dtsi
+++ b/arch/arm/boot/dts/imx6sl.dtsi
@@ -952,7 +952,7 @@
 				status = "disabled";
 			};
 
-			ocotp: ocotp-ctrl@21bc000 {
+			ocotp: efuse@21bc000 {
 				compatible = "fsl,imx6sl-ocotp", "syscon";
 				reg = <0x021bc000 0x4000>;
 				clocks = <&clks IMX6SL_CLK_OCOTP>;
diff --git a/arch/arm/boot/dts/imx6sll.dtsi b/arch/arm/boot/dts/imx6sll.dtsi
index bf7f048..b715aa7 100644
--- a/arch/arm/boot/dts/imx6sll.dtsi
+++ b/arch/arm/boot/dts/imx6sll.dtsi
@@ -786,7 +786,7 @@
 				clocks = <&clks IMX6SLL_CLK_MMDC_P0_IPG>;
 			};
 
-			ocotp: ocotp-ctrl@21bc000 {
+			ocotp: efuse@21bc000 {
 				#address-cells = <1>;
 				#size-cells = <1>;
 				compatible = "fsl,imx6sll-ocotp", "syscon";
diff --git a/arch/arm/boot/dts/imx6sx.dtsi b/arch/arm/boot/dts/imx6sx.dtsi
index 8c4473b..5cccf69 100644
--- a/arch/arm/boot/dts/imx6sx.dtsi
+++ b/arch/arm/boot/dts/imx6sx.dtsi
@@ -1053,7 +1053,7 @@
 				status = "disabled";
 			};
 
-			ocotp: ocotp-ctrl@21bc000 {
+			ocotp: efuse@21bc000 {
 				#address-cells = <1>;
 				#size-cells = <1>;
 				compatible = "fsl,imx6sx-ocotp", "syscon";
diff --git a/arch/arm/boot/dts/imx6ul.dtsi b/arch/arm/boot/dts/imx6ul.dtsi
index 505fd4f..a7a85c2 100644
--- a/arch/arm/boot/dts/imx6ul.dtsi
+++ b/arch/arm/boot/dts/imx6ul.dtsi
@@ -946,7 +946,7 @@
 				status = "disabled";
 			};
 
-			ocotp: ocotp-ctrl@21bc000 {
+			ocotp: efuse@21bc000 {
 				#address-cells = <1>;
 				#size-cells = <1>;
 				compatible = "fsl,imx6ul-ocotp", "syscon";
diff --git a/arch/arm/boot/dts/imx7s.dtsi b/arch/arm/boot/dts/imx7s.dtsi
index 3904558..4771d70 100644
--- a/arch/arm/boot/dts/imx7s.dtsi
+++ b/arch/arm/boot/dts/imx7s.dtsi
@@ -526,7 +526,7 @@
 				};
 			};
 
-			ocotp: ocotp-ctrl@30350000 {
+			ocotp: efuse@30350000 {
 				#address-cells = <1>;
 				#size-cells = <1>;
 				compatible = "fsl,imx7d-ocotp", "syscon";
diff --git a/arch/arm/boot/dts/imx7ulp.dtsi b/arch/arm/boot/dts/imx7ulp.dtsi
index f7c4878..3674396 100644
--- a/arch/arm/boot/dts/imx7ulp.dtsi
+++ b/arch/arm/boot/dts/imx7ulp.dtsi
@@ -452,7 +452,7 @@
 			reg = <0x410a3000 0x1000>;
 		};
 
-		ocotp: ocotp-ctrl@410a6000 {
+		ocotp: efuse@410a6000 {
 			compatible = "fsl,imx7ulp-ocotp", "syscon";
 			reg = <0x410a6000 0x4000>;
 			clocks = <&scg1 IMX7ULP_CLK_DUMMY>;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
