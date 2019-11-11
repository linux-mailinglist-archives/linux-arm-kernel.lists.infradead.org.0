Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46454F6C4D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 02:30:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=wkue6FtVuF7TdNbHyRiv9eVv9qusfdu+YFHYgrr6EN0=; b=rUa
	8lgDDYzu4YqUx5deD+YVdKilfcBg4A7v9drgok3+oHK4Icpux1sgMOm+V2//9xFruatM7yZ8DEt39
	2e9ml8e8Uz2r2cHco773hDGTulzdLxiCc9joglqkYeJtlFDl/rcNL4fCmgshJJpGtTTxZHieWvHsu
	KSkt4jUZNglDU+fdYQRfmvNTF4CHmNcj2DUWyfggs+Bci8lIt//ixRP6F8YIBtylhJSOLXhp0lX/v
	LAZWKN2W8+AOCcZqdXqESlEG4FnHqvqB2ChiI7CwfRkNurqc1ZrWGYUBNyL4ph23iMg4SUdkQFrZz
	VpYMUSbLbLzP64l4Z1xzkyt7iqatneQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTyXd-00037c-GV; Mon, 11 Nov 2019 01:30:53 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTyXV-00031J-D0
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 01:30:46 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 450BB2008F3;
 Mon, 11 Nov 2019 02:30:41 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 34B1A2002C8;
 Mon, 11 Nov 2019 02:30:35 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 7827A402A9;
 Mon, 11 Nov 2019 09:30:27 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 andrew.smirnov@gmail.com, manivannan.sadhasivam@linaro.org,
 marcel.ziswiler@toradex.com, sebastien.szymanski@armadeus.com,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH V2 1/4] ARM: dts: imx6sll: Update usdhc fallback compatible to
 support HS400 mode
Date: Mon, 11 Nov 2019 09:28:49 +0800
Message-Id: <1573435732-30361-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_173045_579418_DBEB6326 
X-CRM114-Status: UNSURE (   8.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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

The i.MX6SLL SoC can support HS400 mode, hence "fsl,imx7d-usdhc"
should be used as compatible string to support HS400 mode by
default.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
Changes since V1:
	- improve commit message, no code change.
---
 arch/arm/boot/dts/imx6sll.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/imx6sll.dtsi b/arch/arm/boot/dts/imx6sll.dtsi
index 85aa8bb..1c8101f 100644
--- a/arch/arm/boot/dts/imx6sll.dtsi
+++ b/arch/arm/boot/dts/imx6sll.dtsi
@@ -698,7 +698,7 @@
 			};
 
 			usdhc1: mmc@2190000 {
-				compatible = "fsl,imx6sll-usdhc", "fsl,imx6sx-usdhc";
+				compatible = "fsl,imx6sll-usdhc", "fsl,imx7d-usdhc";
 				reg = <0x02190000 0x4000>;
 				interrupts = <GIC_SPI 22 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clks IMX6SLL_CLK_USDHC1>,
@@ -712,7 +712,7 @@
 			};
 
 			usdhc2: mmc@2194000 {
-				compatible = "fsl,imx6sll-usdhc", "fsl,imx6sx-usdhc";
+				compatible = "fsl,imx6sll-usdhc", "fsl,imx7d-usdhc";
 				reg = <0x02194000 0x4000>;
 				interrupts = <GIC_SPI 23 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clks IMX6SLL_CLK_USDHC2>,
@@ -726,7 +726,7 @@
 			};
 
 			usdhc3: mmc@2198000 {
-				compatible = "fsl,imx6sll-usdhc", "fsl,imx6sx-usdhc";
+				compatible = "fsl,imx6sll-usdhc", "fsl,imx7d-usdhc";
 				reg = <0x02198000 0x4000>;
 				interrupts = <GIC_SPI 24 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clks IMX6SLL_CLK_USDHC3>,
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
