Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3EB6C8EE6
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 18:45:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H14kbD8+inpo86xta/JQGcXvHN1S85efSfm4IdjDjCs=; b=o/J91i3EwpiwD/
	t1xsPczhegYdHW8DRM0An+4LVOQsZ27xRi9ZvIjVi/I3eI57/lRWoEMxdgjsQ2pdRID4kl+OYITjA
	+aotMSZprpHKhm9CXwyrhCVx7rIqBC1l+PgEmfx11CSNPov8/xyAzkWmGsUdFpI1kMguZFHC72hI7
	rN1v1UdxcAFHZuYrFBlqHHQ1MfGb8Lq7P0VH1nk7z9qaUvzhCPQQv6GIZWEtFc772Dz7ITF0tdQqP
	NXyR22B4k3XmS0fP6wYcgC71SEDLYEDAQlVJ8QCeRmA4EPRJPoCkIJN4KxGJiCsc7l2KBPUJCyZd1
	vjNUraf0Z+Ih4anfa6Lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFhkz-0005L6-0k; Wed, 02 Oct 2019 16:45:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFhju-0003EW-FE
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 16:44:36 +0000
Received: from localhost.localdomain (unknown [194.230.155.145])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3B343222C4;
 Wed,  2 Oct 2019 16:44:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570034673;
 bh=lDWykLKv1vsGv4BGTPct5cswSS36/zx9QEpHy9lcc4o=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=iY6Yzz3NFnFDzVQ85C+54vhqjDixlR5Qoo25f7esTbaodOoEspth9X2HZ7HE/Wr9U
 bsmo9nVgupIs16Q9lTqIQtfcG9EULGCyn41MovwPHBSA6YhR4bPH+5hBxUbaRM3EVr
 qmRxR0d3GrCOtoKoYwOBMWTmsdE4/zKMb/wYUwOo=
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
Subject: [PATCH v3 07/10] ARM: dts: keystone: Rename "msmram" node to "sram"
Date: Wed,  2 Oct 2019 18:43:13 +0200
Message-Id: <20191002164316.14905-7-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191002164316.14905-1-krzk@kernel.org>
References: <20191002164316.14905-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_094434_629397_9D7C21BB 
X-CRM114-Status: GOOD (  12.39  )
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
the "msmram" node to "sram".  This will be also in sync with upcoming DT
schema.  No functional change.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 arch/arm/boot/dts/keystone-k2e.dtsi  | 2 +-
 arch/arm/boot/dts/keystone-k2g.dtsi  | 2 +-
 arch/arm/boot/dts/keystone-k2hk.dtsi | 2 +-
 arch/arm/boot/dts/keystone-k2l.dtsi  | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/keystone-k2e.dtsi b/arch/arm/boot/dts/keystone-k2e.dtsi
index 085e7326ea8e..c84dc49e441e 100644
--- a/arch/arm/boot/dts/keystone-k2e.dtsi
+++ b/arch/arm/boot/dts/keystone-k2e.dtsi
@@ -86,7 +86,7 @@
 			};
 		};
 
-		msm_ram: msmram@c000000 {
+		msm_ram: sram@c000000 {
 			compatible = "mmio-sram";
 			reg = <0x0c000000 0x200000>;
 			ranges = <0x0 0x0c000000 0x200000>;
diff --git a/arch/arm/boot/dts/keystone-k2g.dtsi b/arch/arm/boot/dts/keystone-k2g.dtsi
index 1c833105d6c5..fa6be1b2cb8a 100644
--- a/arch/arm/boot/dts/keystone-k2g.dtsi
+++ b/arch/arm/boot/dts/keystone-k2g.dtsi
@@ -95,7 +95,7 @@
 		ranges = <0x0 0x0 0x0 0xc0000000>;
 		dma-ranges = <0x80000000 0x8 0x00000000 0x80000000>;
 
-		msm_ram: msmram@c000000 {
+		msm_ram: sram@c000000 {
 			compatible = "mmio-sram";
 			reg = <0x0c000000 0x100000>;
 			ranges = <0x0 0x0c000000 0x100000>;
diff --git a/arch/arm/boot/dts/keystone-k2hk.dtsi b/arch/arm/boot/dts/keystone-k2hk.dtsi
index ca0f198ba627..2c00f11cd146 100644
--- a/arch/arm/boot/dts/keystone-k2hk.dtsi
+++ b/arch/arm/boot/dts/keystone-k2hk.dtsi
@@ -57,7 +57,7 @@
 &soc0 {
 		/include/ "keystone-k2hk-clocks.dtsi"
 
-		msm_ram: msmram@c000000 {
+		msm_ram: sram@c000000 {
 			compatible = "mmio-sram";
 			reg = <0x0c000000 0x600000>;
 			ranges = <0x0 0x0c000000 0x600000>;
diff --git a/arch/arm/boot/dts/keystone-k2l.dtsi b/arch/arm/boot/dts/keystone-k2l.dtsi
index 374c80124c4e..ff086132576b 100644
--- a/arch/arm/boot/dts/keystone-k2l.dtsi
+++ b/arch/arm/boot/dts/keystone-k2l.dtsi
@@ -255,7 +255,7 @@
 			};
 		};
 
-		msm_ram: msmram@c000000 {
+		msm_ram: sram@c000000 {
 			compatible = "mmio-sram";
 			reg = <0x0c000000 0x200000>;
 			ranges = <0x0 0x0c000000 0x200000>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
