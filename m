Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C60FB4C3CA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 00:38:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:MIME-Version:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PDceEseQBDyptyI6ijCSYIamVhmuXxw35e9dYMQV0nw=; b=gGpx+18V0D+ebL
	MCELvs74BTozKkqcKCblB0lilGVgxaXef/uwAwO1uxS2uxHtvn3eTOdnb9v7/nmJ9njeMQwrdNwDf
	R/2mNSTyAyfz8uDXoMc4gzoRcXIvu8dqh2ik+ep2t3nkIWysQw54Awmhwg2dvgU5RMyu7sDPuoHT1
	rAs+afcLrFlViGQhB84Lws6FM1U3XeWvp60hwLDvGSoM1Y9wF1PB0Hwwk5wPlAcU6iwrACZf9Z3RS
	smTmqy0P8yhoMwVcp0nolz3ZVnBUobBmehCt9uorfmZ/249PReWE8q0NOVfMjQ0GRHzVfT3hYp0mn
	ofva1godgR5oeop1Cfuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdjDu-0007lQ-Gi; Wed, 19 Jun 2019 22:38:34 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdjDg-0007R3-Jj
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 22:38:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
 Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:Reply-To:Content-ID
 :Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:
 Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WXl+KIoWV8m2vrtlGsM8OucBTd0Of2l1snOONqNgntU=; b=XM7k7SGtEfrK0t5zIId0HWTxRN
 C/m6RXj1mpXaGy+PthOxXr0tmV6wDcPOG4nIatbKq21DJ8sqlfsBHpL49azILMYfa1HWNQ+UM+J7N
 a87AnNYHpCxgyS5/MC6lzrf490+Mbxu1G5KIeWTac1GSFCEcc1dbhVKaFCIcEk1Jbx6G1VC9NpPP7
 EHyuWgve0dA4ZFbtnOjXvsIrzwMMOCNIb2LfqEMAu5RheVySYRmsz79VVM0j5BlITgV0xzahm8ezt
 e2evaagnfWxEuKzrGV1/dUix8AdxrnwmkHjWbcqeTJAkA/sTBV1aZaTfPq9RmfbSU5kV9X2k0RqeV
 SzK29fPw==;
Received: from e0022681537dd.dyn.armlinux.org.uk
 ([2002:4e20:1eda:1:222:68ff:fe15:37dd]:42906 helo=rmk-PC.armlinux.org.uk)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1hdjBP-0003BR-18; Wed, 19 Jun 2019 23:35:59 +0100
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim
 4.82_1-5b7a7c0-XX) (envelope-from <rmk@armlinux.org.uk>)
 id 1hdjBO-0007Yt-9M; Wed, 19 Jun 2019 23:35:58 +0100
From: Russell King <rmk+kernel@armlinux.org.uk>
To: Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH] ARM: dts: imx6qdl-sr-som: fix AR8035 phy interface mode
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1hdjBO-0007Yt-9M@rmk-PC.armlinux.org.uk>
Date: Wed, 19 Jun 2019 23:35:58 +0100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_153820_653221_E8205685 
X-CRM114-Status: GOOD (  12.50  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A change to the AT803x driver fixed the handling of the phy interface
mode, but this breaks all platforms that use "rgmii" as the mode in
their DT.  Fix the Solidrun platforms.

Fixes: 6d4cd041f0af ("net: phy: at803x: disable delay only for RGMII mode")
Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
---
 arch/arm/boot/dts/imx6qdl-sr-som.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/imx6qdl-sr-som.dtsi b/arch/arm/boot/dts/imx6qdl-sr-som.dtsi
index 4ccb7afc4b35..6d7f6b9035bc 100644
--- a/arch/arm/boot/dts/imx6qdl-sr-som.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-sr-som.dtsi
@@ -53,7 +53,7 @@
 &fec {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_microsom_enet_ar8035>;
-	phy-mode = "rgmii";
+	phy-mode = "rgmii-id";
 	phy-reset-duration = <2>;
 	phy-reset-gpios = <&gpio4 15 GPIO_ACTIVE_LOW>;
 	status = "okay";
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
