Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C84F14D6D3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Jan 2020 07:54:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fPrvX58cxOqyMKdyLUvh+kHpqYxulU9dVa8tnvmsRGM=; b=WoeEK2QAAr8KCErAS2CvYhKRBf
	KZI0msavAoNXY07PFhBuu/56BzljFiGFoPLHejHLxpBq1Q+KYhvLvgxVRTKCD+ZdVF3ksFDBmG7MR
	NGtdn58WqkuA65CtmB9FcqcLCNwlUstl+IUdjfHAP00ooT1EtpRWs0toR6Jqm6POXoeS1plbPXPEH
	vLp7jkaw040rxL6kcl2UacrpvhaEVnCHaX6cZka45m/u2BdNCDKmfXwummAZRJtYGr4A0qClJRHHy
	4uaYgxCye6tzgNXG3GI4ZMTiCp3asLElgBiywt70FVMReifLAHEQR4qPBu8TN+WvixoKUHowJ9hfa
	YgAIepXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ix3iE-0005vn-Lh; Thu, 30 Jan 2020 06:54:02 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ix3hA-000570-6n
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Jan 2020 06:52:58 +0000
Received: from unknown (HELO iyokan-ex.css.socionext.com) ([172.31.9.54])
 by mx.socionext.com with ESMTP; 30 Jan 2020 15:52:53 +0900
Received: from mail.mfilter.local (m-filter-1 [10.213.24.61])
 by iyokan-ex.css.socionext.com (Postfix) with ESMTP id D82DD603AB;
 Thu, 30 Jan 2020 15:52:53 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Thu, 30 Jan 2020 15:53:58 +0900
Received: from plum.e01.socionext.com (unknown [10.213.132.32])
 by kinkan.css.socionext.com (Postfix) with ESMTP id 89A631A01BB;
 Thu, 30 Jan 2020 15:52:53 +0900 (JST)
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: [PATCH v2 2/7] dt-bindings: phy: socionext: Add Pro5 support and
 remove Pro4 from usb3-hsphy
Date: Thu, 30 Jan 2020 15:52:40 +0900
Message-Id: <1580367165-16760-3-git-send-email-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1580367165-16760-1-git-send-email-hayashi.kunihiko@socionext.com>
References: <1580367165-16760-1-git-send-email-hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_225256_578291_D42926FF 
X-CRM114-Status: GOOD (  14.70  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [202.248.49.38 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Masami Hiramatsu <masami.hiramatsu@linaro.org>, linux-kernel@vger.kernel.org,
 Jassi Brar <jaswinder.singh@linaro.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds compatible string for Pro5 SoC that needs to manage gio clock
and reset. And Pro4 SoC uses USB2 PHY instead of USB3 HS-PHY, so this
removes Pro4 description from usb3-hsphy.

Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/phy/uniphier-pcie-phy.txt | 13 +++++++++----
 .../devicetree/bindings/phy/uniphier-usb3-hsphy.txt         |  6 +++---
 .../devicetree/bindings/phy/uniphier-usb3-ssphy.txt         |  5 +++--
 3 files changed, 15 insertions(+), 9 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/uniphier-pcie-phy.txt b/Documentation/devicetree/bindings/phy/uniphier-pcie-phy.txt
index 1889d3b..3cee372 100644
--- a/Documentation/devicetree/bindings/phy/uniphier-pcie-phy.txt
+++ b/Documentation/devicetree/bindings/phy/uniphier-pcie-phy.txt
@@ -5,14 +5,19 @@ PCIe controller implemented on Socionext UniPhier SoCs.
 
 Required properties:
 - compatible: Should contain one of the following:
+    "socionext,uniphier-pro5-pcie-phy" - for Pro5 PHY
     "socionext,uniphier-ld20-pcie-phy" - for LD20 PHY
     "socionext,uniphier-pxs3-pcie-phy" - for PXs3 PHY
 - reg: Specifies offset and length of the register set for the device.
 - #phy-cells: Must be zero.
-- clocks: A phandle to the clock gate for PCIe glue layer including
-	this phy.
-- resets: A phandle to the reset line for PCIe glue layer including
-	this phy.
+- clocks: A list of phandles to the clock gate for PCIe glue layer
+	including this phy.
+- clock-names: For Pro5 only, should contain the following:
+    "gio", "link" - for Pro5 SoC
+- resets: A list of phandles to the reset line for PCIe glue layer
+	including this phy.
+- reset-names: For Pro5 only, should contain the following:
+    "gio", "link" - for Pro5 SoC
 
 Optional properties:
 - socionext,syscon: A phandle to system control to set configurations
diff --git a/Documentation/devicetree/bindings/phy/uniphier-usb3-hsphy.txt b/Documentation/devicetree/bindings/phy/uniphier-usb3-hsphy.txt
index e8d8086..093d4f0 100644
--- a/Documentation/devicetree/bindings/phy/uniphier-usb3-hsphy.txt
+++ b/Documentation/devicetree/bindings/phy/uniphier-usb3-hsphy.txt
@@ -7,7 +7,7 @@ this describes about High-Speed PHY.
 
 Required properties:
 - compatible: Should contain one of the following:
-    "socionext,uniphier-pro4-usb3-hsphy" - for Pro4 SoC
+    "socionext,uniphier-pro5-usb3-hsphy" - for Pro5 SoC
     "socionext,uniphier-pxs2-usb3-hsphy" - for PXs2 SoC
     "socionext,uniphier-ld20-usb3-hsphy" - for LD20 SoC
     "socionext,uniphier-pxs3-usb3-hsphy" - for PXs3 SoC
@@ -16,13 +16,13 @@ Required properties:
 - clocks: A list of phandles to the clock gate for USB3 glue layer.
 	According to the clock-names, appropriate clocks are required.
 - clock-names: Should contain the following:
-    "gio", "link" - for Pro4 SoC
+    "gio", "link" - for Pro5 SoC
     "phy", "phy-ext", "link" - for PXs3 SoC, "phy-ext" is optional.
     "phy", "link" - for others
 - resets: A list of phandles to the reset control for USB3 glue layer.
 	According to the reset-names, appropriate resets are required.
 - reset-names: Should contain the following:
-    "gio", "link" - for Pro4 SoC
+    "gio", "link" - for Pro5 SoC
     "phy", "link" - for others
 
 Optional properties:
diff --git a/Documentation/devicetree/bindings/phy/uniphier-usb3-ssphy.txt b/Documentation/devicetree/bindings/phy/uniphier-usb3-ssphy.txt
index 490b815..9df2bc2 100644
--- a/Documentation/devicetree/bindings/phy/uniphier-usb3-ssphy.txt
+++ b/Documentation/devicetree/bindings/phy/uniphier-usb3-ssphy.txt
@@ -8,6 +8,7 @@ this describes about Super-Speed PHY.
 Required properties:
 - compatible: Should contain one of the following:
     "socionext,uniphier-pro4-usb3-ssphy" - for Pro4 SoC
+    "socionext,uniphier-pro5-usb3-ssphy" - for Pro5 SoC
     "socionext,uniphier-pxs2-usb3-ssphy" - for PXs2 SoC
     "socionext,uniphier-ld20-usb3-ssphy" - for LD20 SoC
     "socionext,uniphier-pxs3-usb3-ssphy" - for PXs3 SoC
@@ -16,13 +17,13 @@ Required properties:
 - clocks: A list of phandles to the clock gate for USB3 glue layer.
 	According to the clock-names, appropriate clocks are required.
 - clock-names:
-    "gio", "link" - for Pro4 SoC
+    "gio", "link" - for Pro4 and Pro5 SoC
     "phy", "phy-ext", "link" - for PXs3 SoC, "phy-ext" is optional.
     "phy", "link" - for others
 - resets: A list of phandles to the reset control for USB3 glue layer.
 	According to the reset-names, appropriate resets are required.
 - reset-names:
-    "gio", "link" - for Pro4 SoC
+    "gio", "link" - for Pro4 and Pro5 SoC
     "phy", "link" - for others
 
 Optional properties:
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
