Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A63F61AAC2D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 17:45:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:MIME-Version:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=w+vQzrsiiLt5NdooDD/gzZ4byYPIfgSzaoiROy3OA9s=; b=IO0lr5L1c5g4Gw
	VZKHnkMqIcZpTBNDhTHkhpeu0MPjyRNNZ7xaG5Ku1Cwzc8sdpT/nSnlgQ3NtPThI9n3LMcU4f55YB
	bCEWCT1A0q5saDEISF391/zLSF2YnHAHsROuvKW1LWUgjRzTlaU2cctb8jxvslrwSBRgHchKWsSOx
	6r6Alah64gWK5/R2AXFEXfTx4zDTfH05ADysq/OUChE6g/zmxB9aUwA+v5lXft7+EYIevysXUv0Q8
	9z3r2D/TKDxkVRirGpg1PgdveJ8XWjjfyrlTsvaodjEzXmyHVN0Tw4tcIV+bPZY84g/8hVhG5UB86
	42GTDYxMkpC9JJvZJeUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOkDy-0000ng-46; Wed, 15 Apr 2020 15:45:14 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOkDI-0000bd-TI
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 15:44:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
 Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:Reply-To:Content-ID
 :Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:
 Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RsMinqNBHcBxPu4JtPaqIeJQm1L0qtrioJ5JRN1lF0o=; b=OK8n0MgLyy5lBv39bB+Ps+Ev0T
 xzNOdSznDYeidxQllWwMptZVM8ebRqBDyL4FZA5xLISpRe51v3GTBbARD8g59Ug3RUWAeHbnVBkTK
 VMma3VaWtHqVWvjzZcVupcuG+MVHbcZYlljZVMsT3tVs+Sq0UxQh7+P2THvBWjvPUJyY7V609rkWf
 JAQwTZZx7I8uT5eFbNzcK7HYT8kW6+PogVvllv34eH6J79yJy1KFSAP3KA9tBk6WEogfVHBM+JJbH
 z1kn1F8Ru0xgM9cEnzhF1c/b9O8xTFFT04l5kmel6s3cvX6wXOH4KlNafH5c7ulX4yLH8z8e8oUps
 0TaHqdpw==;
Received: from e0022681537dd.dyn.armlinux.org.uk
 ([2001:4d48:ad52:3201:222:68ff:fe15:37dd]:60590 helo=rmk-PC.armlinux.org.uk)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1jOkD4-0007IJ-Gd; Wed, 15 Apr 2020 16:44:18 +0100
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1jOkD3-00067R-RZ; Wed, 15 Apr 2020 16:44:17 +0100
From: Russell King <rmk+kernel@armlinux.org.uk>
To: Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH] arm: dts: imx6-sr-som: add ethernet PHY configuration
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1jOkD3-00067R-RZ@rmk-PC.armlinux.org.uk>
Date: Wed, 15 Apr 2020 16:44:17 +0100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_084432_945790_6A8B5541 
X-CRM114-Status: UNSURE (   8.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Sascha Hauer <s.hauer@pengutronix.de>,
 Oleksij Rempel <o.rempel@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add ethernet PHY configuration ahead of removing the quirk that
configures the clocking mode for the PHY.  The RGMII delay is
already set correctly.

Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
---
This patch depends on b1f4c209d840 ("net: phy: at803x: fix clock
sink configuration on ATH8030 and ATH8035") which has been
recently merged.

 arch/arm/boot/dts/imx6qdl-sr-som.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm/boot/dts/imx6qdl-sr-som.dtsi b/arch/arm/boot/dts/imx6qdl-sr-som.dtsi
index 6d7f6b9035bc..b06577808ff4 100644
--- a/arch/arm/boot/dts/imx6qdl-sr-som.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-sr-som.dtsi
@@ -53,10 +53,21 @@
 &fec {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_microsom_enet_ar8035>;
+	phy-handle = <&phy>;
 	phy-mode = "rgmii-id";
 	phy-reset-duration = <2>;
 	phy-reset-gpios = <&gpio4 15 GPIO_ACTIVE_LOW>;
 	status = "okay";
+
+	mdio {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		phy: ethernet-phy@0 {
+			reg = <0>;
+			qca,clk-out-frequency = <125000000>;
+		};
+	};
 };
 
 &iomuxc {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
