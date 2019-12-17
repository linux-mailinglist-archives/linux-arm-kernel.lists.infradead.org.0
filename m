Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A52F7121F59
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 01:20:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6nWtqhbTxpuJdncUwYkub3rfj55h+R+vdArdqTFPexo=; b=gNbq3Fy1mCnR7s
	FkEjlwDCb1SO4VDRiLnTwZXNOp3zG1QaQNdUuLE3qDsY/Se46xEwTqfVOosCOl8H/d49R0gKhW6Ty
	R8D8BPxuTV274Si8OAdEBR/Nv9MWQ59+wwxikRi+rsBg9uXEiZjgWf7EJ3P8vbQAAq/60Nfk1ZW7N
	mH0axU5HgVfLwRK77hnqHS8J2UnOB7VmeTlqJLYTQAPTYJ51WI2T2KqXwX0nr9Aase8yEHbkdNZzs
	QkuQAqS2jyAeR86LsmvIHa333QMH6oYrXPGInBsq07RpxRxrf/ozAlUQTlD3Hju5xoofsvLu+iRbV
	oghZk28pbVrNLK/AoKhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih0bB-0002XR-Ey; Tue, 17 Dec 2019 00:20:25 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih0aW-00018t-Po
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 00:19:46 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 9CC1B8126;
 Tue, 17 Dec 2019 00:20:23 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH 01/14] ARM: dts: Add generic compatible for omap sdma instances
Date: Mon, 16 Dec 2019 16:19:12 -0800
Message-Id: <20191217001925.44558-2-tony@atomide.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191217001925.44558-1-tony@atomide.com>
References: <20191217001925.44558-1-tony@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_161944_870634_70F93248 
X-CRM114-Status: UNSURE (   8.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Aaro Koskinen <aaro.koskinen@iki.fi>, Vinod Koul <vinod.koul@intel.com>,
 Vinod Koul <vkoul@kernel.org>, Peter Ujfalusi <peter.ujfalusi@ti.com>,
 Russell King <rmk+kernel@armlinux.org.uk>, dmaengine@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We need this to pass auxdata to all the sdma instances.

Cc: devicetree@vger.kernel.org
Cc: Aaro Koskinen <aaro.koskinen@iki.fi>
Cc: Peter Ujfalusi <peter.ujfalusi@ti.com>
Cc: Russell King <rmk+kernel@armlinux.org.uk>
Cc: Vinod Koul <vkoul@kernel.org>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 arch/arm/boot/dts/dra7-l4.dtsi  | 2 +-
 arch/arm/boot/dts/omap4-l4.dtsi | 2 +-
 arch/arm/boot/dts/omap5-l4.dtsi | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/dra7-l4.dtsi b/arch/arm/boot/dts/dra7-l4.dtsi
--- a/arch/arm/boot/dts/dra7-l4.dtsi
+++ b/arch/arm/boot/dts/dra7-l4.dtsi
@@ -212,7 +212,7 @@ SYSC_OMAP2_SOFTRESET |
 			ranges = <0x0 0x56000 0x1000>;
 
 			sdma: dma-controller@0 {
-				compatible = "ti,omap4430-sdma";
+				compatible = "ti,omap4430-sdma", "ti,omap-sdma";
 				reg = <0x0 0x1000>;
 				interrupts = <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>,
 					     <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>,
diff --git a/arch/arm/boot/dts/omap4-l4.dtsi b/arch/arm/boot/dts/omap4-l4.dtsi
--- a/arch/arm/boot/dts/omap4-l4.dtsi
+++ b/arch/arm/boot/dts/omap4-l4.dtsi
@@ -160,7 +160,7 @@ SYSC_OMAP2_SOFTRESET |
 			ranges = <0x0 0x56000 0x1000>;
 
 			sdma: dma-controller@0 {
-				compatible = "ti,omap4430-sdma";
+				compatible = "ti,omap4430-sdma", "ti,omap-sdma";
 				reg = <0x0 0x1000>;
 				interrupts = <GIC_SPI 12 IRQ_TYPE_LEVEL_HIGH>,
 					     <GIC_SPI 13 IRQ_TYPE_LEVEL_HIGH>,
diff --git a/arch/arm/boot/dts/omap5-l4.dtsi b/arch/arm/boot/dts/omap5-l4.dtsi
--- a/arch/arm/boot/dts/omap5-l4.dtsi
+++ b/arch/arm/boot/dts/omap5-l4.dtsi
@@ -237,7 +237,7 @@ SYSC_OMAP2_SOFTRESET |
 			ranges = <0x0 0x56000 0x1000>;
 
 			sdma: dma-controller@0 {
-				compatible = "ti,omap4430-sdma";
+				compatible = "ti,omap4430-sdma", "ti,omap-sdma";
 				reg = <0x0 0x1000>;
 				interrupts = <GIC_SPI 12 IRQ_TYPE_LEVEL_HIGH>,
 					     <GIC_SPI 13 IRQ_TYPE_LEVEL_HIGH>,
-- 
2.24.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
