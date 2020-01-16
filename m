Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C09D813FCCA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 00:12:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=cdwKiTVvArXDdJX/i2AfX9fVvES3CCWQmoKDoJWrSUA=; b=O5/beZjobkMURHUnHp9cpdGrhR
	DLmAOHbbA97R5e9fiJOzBAn2233geL7ZpIhYpRgdAgXfLBjIBL11Oxkwv/aJv/fCsk/FDFtfTT/7i
	CBN3kytY33vgqx6/DujhafaSQYFIS0pPGFpp+d/NdFTu4t6iogwn/KaZM52gCMM5jkAiz4ubO3iEB
	a13ifuvx+wkrA4mhQq1R13as9jXWNce0s7M2Mx50HKEdf5GkPDhyr5P6orTMszA7pCIp9hvGI9u9q
	w258lB+Es1Q04z8xLLd4vDYuwCULvHGrk27c5nd4T6PJkwwGWLz2KiPfZNLcHqIUqZnVxy+Csx7Ch
	9mEXOmVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isEJk-0002HQ-SO; Thu, 16 Jan 2020 23:12:48 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isEJ8-0001p4-HV
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 23:12:12 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D3F4D11D4;
 Thu, 16 Jan 2020 15:12:09 -0800 (PST)
Received: from localhost.localdomain (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2723C3F68E;
 Thu, 16 Jan 2020 15:12:08 -0800 (PST)
From: Andre Przywara <andre.przywara@arm.com>
To: Maxime Ripard <mripard@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v3 2/3] arm64: dts: allwinner: h6: Pine H64: Add SPI flash node
Date: Thu, 16 Jan 2020 23:11:47 +0000
Message-Id: <20200116231148.1490-3-andre.przywara@arm.com>
X-Mailer: git-send-email 2.14.1
In-Reply-To: <20200116231148.1490-1-andre.przywara@arm.com>
References: <20200116231148.1490-1-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_151210_626702_98DA3C0A 
X-CRM114-Status: GOOD (  14.70  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-spi@vger.kernel.org,
 linux-sunxi@googlegroups.com, Mark Brown <broonie@kernel.org>,
 Icenowy Zheng <icenowy@aosc.xyz>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Pine H64 board comes with SPI flash soldered on the board, connected
to the SPI0 pins (so it can also boot from there).

Add the required SPI flash DT node to describe this.

Unfortunately the SPI CS0 pin collides with the eMMC CMD pin, so we can't
use both eMMC and SPI flash at the same time (the first to claim the pin
would win, the other's probe routine would then fail).

To avoid losing the more useful eMMC device by chance, mark the SPI
device as "disabled" for now. A user or some U-Boot code could fix this
up if needed, for instance if no eMMC has been detected (it's socketed).

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts b/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts
index d1c2aa5b3a20..3c9dd0d69754 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts
@@ -14,6 +14,7 @@
 	aliases {
 		ethernet0 = &emac;
 		serial0 = &uart0;
+		spi0 = &spi0;
 	};
 
 	chosen {
@@ -278,6 +279,24 @@
 	vcc-pm-supply = <&reg_aldo1>;
 };
 
+/*
+ * The CS pin is shared with the MMC2 CMD pin, so we cannot have the SPI
+ * flash and eMMC at the same time, as one of them would fail probing.
+ * Disable SPI0 in here, to prefer the more useful eMMC. U-Boot can
+ * fix this up in no eMMC is connected.
+ */
+&spi0 {
+	pinctrl-0 = <&spi0_pins>, <&spi0_cs_pin>;
+	pinctrl-names = "default";
+	status = "disabled";
+
+	flash@0 {
+		compatible = "winbond,w25q128", "jedec,spi-nor";
+		reg = <0>;
+		spi-max-frequency = <4000000>;
+	};
+};
+
 &uart0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&uart0_ph_pins>;
-- 
2.14.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
