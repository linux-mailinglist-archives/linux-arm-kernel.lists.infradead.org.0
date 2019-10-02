Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1678C8EC9
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 18:44:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kYeT8JP2ze+YBBSYonD6IFZZU/IQ6eXhCO0b8Ul/r1U=; b=dx1qYnjTS4kuUl
	l2HruLqTCtyLi0vHCBJCa5JX6T5Mz5TxBL0StXOpU70i18rhOxq4GDOkivYcYWgRSuqYX3Ar37cB+
	XocnKLkeoue+QdEOewWyRzYb+DCUPfOsTkUXtXYmfxymnTuAULrB4vWGuz1PmcNaSBuhnyld68ZwX
	1vMue+LCzYxU07JQeq37MT1/VuKGKqP+0/sQP32Y5TepAobqSMHqCFzFIIAJpzxrbyfsRSsU/f0iM
	k0OOYQ+7u9cbjkd03enHUNKNskFakr1cvqcC0orZh48ZELjBwqCkRfSfH6PuGP+eCy7HEcX5xb8Q2
	NyLTGjK7nOpNukZ7s2Mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFhk1-00035Z-DI; Wed, 02 Oct 2019 16:44:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFhjR-0002m3-Kv
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 16:44:09 +0000
Received: from localhost.localdomain (unknown [194.230.155.145])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 88DCA21D81;
 Wed,  2 Oct 2019 16:43:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570034644;
 bh=UmEHRN9iGNdvANrP038774VqJvTLK0XIrWHKs42XDIc=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=bk/fs5HSy2Bms4sYmUo5urCsI1uxRu1O4NUPW8RT+5VCT7RxRp8StxBxCTslOYZuH
 JakGUtv1BUC0JZTEQaFqSiU67aUSuH9TDEMWLSlG+foCZcME4VOhouVkc7mu1rwIaN
 VZ7UV6aPWeLtX9gYRDZ1U5S1OOKhLDZo6mZa5O4M=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 =?UTF-8?q?Beno=C3=AEt=20Cousson?= <bcousson@baylibre.com>,
 Tony Lindgren <tony@atomide.com>, Jason Cooper <jason@lakedaemon.net>,
 Andrew Lunn <andrew@lunn.ch>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Santosh Shilimkar <ssantosh@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-omap@vger.kernel.org,
 linux-tegra@vger.kernel.org
Subject: [PATCH v3 03/10] ARM: dts: exynos: Rename SysRAM node to "sram"
Date: Wed,  2 Oct 2019 18:43:09 +0200
Message-Id: <20191002164316.14905-3-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191002164316.14905-1-krzk@kernel.org>
References: <20191002164316.14905-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_094405_802196_58EA3AEA 
X-CRM114-Status: GOOD (  13.44  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The device node name should reflect generic class of a device so rename
the SysRAM node from "sysram" to "sram".  The child nodes stay as before
as "smp-sysram" to match their real purpose.  This will be also in sync
with upcoming DT schema.  No functional change.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 arch/arm/boot/dts/exynos3250.dtsi | 2 +-
 arch/arm/boot/dts/exynos4210.dtsi | 2 +-
 arch/arm/boot/dts/exynos4412.dtsi | 2 +-
 arch/arm/boot/dts/exynos5250.dtsi | 2 +-
 arch/arm/boot/dts/exynos54xx.dtsi | 2 +-
 5 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boot/dts/exynos3250.dtsi b/arch/arm/boot/dts/exynos3250.dtsi
index d122fb52d3d4..cf422b48cb15 100644
--- a/arch/arm/boot/dts/exynos3250.dtsi
+++ b/arch/arm/boot/dts/exynos3250.dtsi
@@ -138,7 +138,7 @@
 		#size-cells = <1>;
 		ranges;
 
-		sysram@2020000 {
+		sram@2020000 {
 			compatible = "mmio-sram";
 			reg = <0x02020000 0x40000>;
 			#address-cells = <1>;
diff --git a/arch/arm/boot/dts/exynos4210.dtsi b/arch/arm/boot/dts/exynos4210.dtsi
index 298b8ddc0545..554819ae1446 100644
--- a/arch/arm/boot/dts/exynos4210.dtsi
+++ b/arch/arm/boot/dts/exynos4210.dtsi
@@ -72,7 +72,7 @@
 	};
 
 	soc: soc {
-		sysram: sysram@2020000 {
+		sysram: sram@2020000 {
 			compatible = "mmio-sram";
 			reg = <0x02020000 0x20000>;
 			#address-cells = <1>;
diff --git a/arch/arm/boot/dts/exynos4412.dtsi b/arch/arm/boot/dts/exynos4412.dtsi
index 6cf0e259fb39..5022aa574b26 100644
--- a/arch/arm/boot/dts/exynos4412.dtsi
+++ b/arch/arm/boot/dts/exynos4412.dtsi
@@ -188,7 +188,7 @@
 			interrupts = <GIC_SPI 72 IRQ_TYPE_LEVEL_HIGH>;
 		};
 
-		sysram@2020000 {
+		sram@2020000 {
 			compatible = "mmio-sram";
 			reg = <0x02020000 0x40000>;
 			#address-cells = <1>;
diff --git a/arch/arm/boot/dts/exynos5250.dtsi b/arch/arm/boot/dts/exynos5250.dtsi
index f01e3156191d..2780bf5c83c8 100644
--- a/arch/arm/boot/dts/exynos5250.dtsi
+++ b/arch/arm/boot/dts/exynos5250.dtsi
@@ -164,7 +164,7 @@
 	};
 
 	soc: soc {
-		sysram@2020000 {
+		sram@2020000 {
 			compatible = "mmio-sram";
 			reg = <0x02020000 0x30000>;
 			#address-cells = <1>;
diff --git a/arch/arm/boot/dts/exynos54xx.dtsi b/arch/arm/boot/dts/exynos54xx.dtsi
index 06ae40a2f1e9..dff9ef3ad0ef 100644
--- a/arch/arm/boot/dts/exynos54xx.dtsi
+++ b/arch/arm/boot/dts/exynos54xx.dtsi
@@ -46,7 +46,7 @@
 	};
 
 	soc: soc {
-		sysram@2020000 {
+		sram@2020000 {
 			compatible = "mmio-sram";
 			reg = <0x02020000 0x54000>;
 			#address-cells = <1>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
