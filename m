Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC65A154734
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 16:10:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ERKuOeVkPodzGOg+EhCJsmHhqViUiQzi9v6cKaZVpM4=; b=VAN1ZST7tO+hxC
	SV/SmMwO+uBGx7xbYlLyi21TPQe8703Zg63q8jNLVU/LIOK9KG2Vq7gZXCJ2/lMhUrOKt61Qc9ROQ
	lLzKPPgf0tgl0InUZVoE78czT+5sZIOJ1NcVC7L/nZ5GdJamWrerQ/Ny345kaVmP3tnJsVLkLW3vV
	v+7cxQfaGyEbZgIXMjXDLkg8jC4roM7biiJVITzSNPsSWyS06y/QvE+QU6faOJ/5WK3rx/+lWcdse
	27mtXoy9Xuye5tMBCy4OLxFAzWMmpuFm/9Jah/e89yVs6pJ9dznKtztyzXgUX/lf6aYb8lxrxZc/I
	CxXq//BYOQKW1zC8VZXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izink-0003RX-E3; Thu, 06 Feb 2020 15:10:44 +0000
Received: from smtp.gentoo.org ([140.211.166.183])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izind-0003QR-M4; Thu, 06 Feb 2020 15:10:39 +0000
Received: from alexis.zapto.org (85-171-52-99.rev.numericable.fr
 [85.171.52.99])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: aballier)
 by smtp.gentoo.org (Postfix) with ESMTPSA id F291C34E821;
 Thu,  6 Feb 2020 15:10:33 +0000 (UTC)
From: Alexis Ballier <aballier@gentoo.org>
To: 
Subject: [PATCH 1/2] arm64: dts: rockchip: rk3399-orangepi: Add ethernet phy.
Date: Thu,  6 Feb 2020 16:10:24 +0100
Message-Id: <20200206151025.3813-1-aballier@gentoo.org>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_071037_746109_D59DAE25 
X-CRM114-Status: GOOD (  11.37  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [140.211.166.183 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [140.211.166.183 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, Alexis Ballier <aballier@gentoo.org>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org,
 Heiko Stuebner <heiko@sntech.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enables INTB.
The wiring is the same as the nanopi4, so this is heavily based on:
- [1a4e6203f0c] arm64: dts: rockchip: Add nanopi4 ethernet phy
- [bc43cee88aa] arm64: dts: rockchip: Update nanopi4 phy reset properties
by Robin Murphy.

Signed-off-by: Alexis Ballier <aballier@gentoo.org>
Cc: devicetree@vger.kernel.org
Cc: Heiko Stuebner <heiko@sntech.de>
Cc: Robin Murphy <robin.murphy@arm.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-rockchip@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
 .../boot/dts/rockchip/rk3399-orangepi.dts     | 31 ++++++++++++++++---
 1 file changed, 27 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts b/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
index 9c659f3115c8..1767015e684c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
@@ -202,14 +202,27 @@ &gmac {
 	clock_in_out = "input";
 	phy-supply = <&vcc3v3_s3>;
 	phy-mode = "rgmii";
+	phy-handle = <&rtl8211e>;
 	pinctrl-names = "default";
-	pinctrl-0 = <&rgmii_pins>;
-	snps,reset-gpio = <&gpio3 RK_PB7 GPIO_ACTIVE_LOW>;
-	snps,reset-active-low;
-	snps,reset-delays-us = <0 10000 50000>;
+	pinctrl-0 = <&rgmii_pins>, <&phy_intb>, <&phy_rstb>;
 	tx_delay = <0x28>;
 	rx_delay = <0x11>;
 	status = "okay";
+
+	mdio {
+		compatible = "snps,dwmac-mdio";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		rtl8211e: phy@1 {
+			reg = <1>;
+			interrupt-parent = <&gpio3>;
+			interrupts = <RK_PB2 IRQ_TYPE_LEVEL_LOW>;
+			reset-assert-us = <10000>;
+			reset-deassert-us = <30000>;
+			reset-gpios = <&gpio3 RK_PB7 GPIO_ACTIVE_LOW>;
+		};
+	};
 };
 
 &gpu {
@@ -537,6 +550,16 @@ pwr_btn: pwr-btn {
 		};
 	};
 
+	phy {
+		phy_intb: phy-intb {
+			rockchip,pins = <3 RK_PB2 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+
+		phy_rstb: phy-rstb {
+			rockchip,pins = <3 RK_PB7 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	pmic {
 		pmic_int_l: pmic-int-l {
 			rockchip,pins =
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
