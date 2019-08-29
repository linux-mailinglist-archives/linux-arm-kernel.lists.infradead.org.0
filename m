Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B559A2024
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 17:57:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fbF9l9HOT0RDWrja8qu20Ht1lCKtB3ZOoWezs7mDioM=; b=epu7mai3TGimOV
	8dfukcBGSxTmZWXCUFOG4MfRmRPAu8/aox7wDge2itChmLw0pjEHwxtgFSwdJWNPIC/IdDikhjdCC
	jxv3mIZwXsK8d0kRbR58fngX+JRipiLNvU/QTaZMuH08SZQtRT5MDEYYGhFKq1GLULgILOCaIyEDy
	1oY8XCjEN1NDvVelmjjfRYyiHX6tqEdRgT9qF5D53RO4wZWJGISJ7oneX9uuAIsChFfvPlyp967J/
	DoRl9OrDaagYFtNz9CjbCc9h4ACJyN8C5fOPr3bMIl1Z6uGAeq67qe6ExgCYKIB03IOEf6XarmPY6
	NoelmoVxNK+OEeB+VWhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Mnd-0007vF-4i; Thu, 29 Aug 2019 15:57:25 +0000
Received: from skedge04.snt-world.com ([91.208.41.69])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3MnM-0007uq-8w
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 15:57:09 +0000
Received: from sntmail14r.snt-is.com (unknown [10.203.32.184])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by skedge04.snt-world.com (Postfix) with ESMTPS id B153B67A863;
 Thu, 29 Aug 2019 17:49:23 +0200 (CEST)
Received: from DDESAB0033.kontron.local (10.228.0.137) by
 sntmail14r.snt-is.com (10.203.32.184) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 29 Aug 2019 17:49:22 +0200
From: Thomas Schaefer <thomas.schaefer@kontron.com>
To: <thomas.schaefer@kontron.com>, <shawnguo@kernel.org>,
 <s.hauer@pengutronix.de>, <kernel@pengutronix.de>, <festevam@gmail.com>,
 <linux-imx@nxp.com>, <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH] ARM: dts: imx7: fix USB controller 'size' parameter
Date: Thu, 29 Aug 2019 17:49:13 +0200
Message-ID: <20190829154913.2049-1-thomas.schaefer@kontron.com>
X-Mailer: git-send-email 2.22.0.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.228.0.137]
X-ClientProxiedBy: sntmail14r.snt-is.com (10.203.32.184) To
 sntmail14r.snt-is.com (10.203.32.184)
X-C2ProcessedOrg: 51b406b7-48a2-4d03-b652-521f56ac89f3
X-SnT-MailScanner-Information: Please contact the ISP for more information
X-SnT-MailScanner-ID: B153B67A863.A9974
X-SnT-MailScanner: Not scanned: please contact your Internet E-Mail Service
 Provider for details
X-SnT-MailScanner-SpamCheck: 
X-SnT-MailScanner-From: thomas.schaefer@kontron.com
X-SnT-MailScanner-To: festevam@gmail.com, kernel@pengutronix.de,
 linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com,
 s.hauer@pengutronix.de, shawnguo@kernel.org
X-Spam-Status: No
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_085708_485811_56D51B95 
X-CRM114-Status: GOOD (  11.13  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [91.208.41.69 listed in list.dnswl.org]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently the size parameter in the reg property of usbotg and
usbh nodes in imx7s and imx7d dts includes is set to 0x200 which
is wrong for the i.MX7 CPU. According to reference manual, spacing
of USB controller registers is 0x10000 instead.

This patch will fix this and set the 'size' to 0x10000.

Signed-off-by: Thomas Schaefer <thomas.schaefer@kontron.com>
---
 arch/arm/boot/dts/imx7d.dtsi | 2 +-
 arch/arm/boot/dts/imx7s.dtsi | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/imx7d.dtsi b/arch/arm/boot/dts/imx7d.dtsi
index 42528d2812a2..f1b098d28b6e 100644
--- a/arch/arm/boot/dts/imx7d.dtsi
+++ b/arch/arm/boot/dts/imx7d.dtsi
@@ -117,7 +117,7 @@
 &aips3 {
 	usbotg2: usb@30b20000 {
 		compatible = "fsl,imx7d-usb", "fsl,imx27-usb";
-		reg = <0x30b20000 0x200>;
+		reg = <0x30b20000 0x10000>;
 		interrupts = <GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&clks IMX7D_USB_CTRL_CLK>;
 		fsl,usbphy = <&usbphynop2>;
diff --git a/arch/arm/boot/dts/imx7s.dtsi b/arch/arm/boot/dts/imx7s.dtsi
index c1a4fff5ceda..9e25fccf33f0 100644
--- a/arch/arm/boot/dts/imx7s.dtsi
+++ b/arch/arm/boot/dts/imx7s.dtsi
@@ -1088,7 +1088,7 @@
 
 			usbotg1: usb@30b10000 {
 				compatible = "fsl,imx7d-usb", "fsl,imx27-usb";
-				reg = <0x30b10000 0x200>;
+				reg = <0x30b10000 0x10000>;
 				interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clks IMX7D_USB_CTRL_CLK>;
 				fsl,usbphy = <&usbphynop1>;
@@ -1099,7 +1099,7 @@
 
 			usbh: usb@30b30000 {
 				compatible = "fsl,imx7d-usb", "fsl,imx27-usb";
-				reg = <0x30b30000 0x200>;
+				reg = <0x30b30000 0x10000>;
 				interrupts = <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clks IMX7D_USB_CTRL_CLK>;
 				fsl,usbphy = <&usbphynop3>;
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
