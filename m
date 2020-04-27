Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08FF21B98AC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 09:32:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9P34F8C0GdLTosd5u6vHbsC9JDy8MpNe0ZnkBsenJyY=; b=p5Pjqas5RlPRxc
	Bu5kYwAyXbMtzx2lazeDXuMeRfYZQeTG4f03jE0JLjcmo7kWByyAutmnAbCmM9TZSfsxSC3Ci/HJU
	4hLQQ0YmLnRYNStrDOAkc4ln48kCYsRmIi5pGUBEQpqWFIcrFwMQF3JAqvYM/6jKVfBRX4P2LlY/H
	SyEprks8K5586x5aHQLmGBYQQVAxNpaiDKgWVradjBmlsB16jVFPlpqc6L9Gji1iMIfw22+/0LwVS
	mBzQUD/4UjU5+P70kIk4F8jL6bhD13UyDZoVg1h0yZxQk8xjd/yeoP2yJbPJUM+JOFYGnfFGly9P3
	h9P4xZPBQR79AxAEEMVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSyFC-0007zs-Mw; Mon, 27 Apr 2020 07:31:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSyEz-0007yX-Iu; Mon, 27 Apr 2020 07:31:46 +0000
Received: from wens.tw (mirror2.csie.ntu.edu.tw [140.112.30.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9563C2051A;
 Mon, 27 Apr 2020 07:31:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587972704;
 bh=EB/8lQ6+/XniFQ49WgaV6x0TkKREKExmreY0EeEVl70=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=GsD/E2b5m33qFTMLKp7RyIht3sckCqUa+LfmwqRzzX99BAadGU5LlmnlU1UR4im0r
 0Xvf2kwD7pIYc8aAEyYLWrtF/eFimXP4UA0aSupz+Tq+CPzT1zj9bHqd2OE7mL+qmu
 QGaMD5TMG/ahGFA2FbW7L4y5HjGV481B+XPjnM44=
Received: by wens.tw (Postfix, from userid 1000)
 id 6F9F15FCE9; Mon, 27 Apr 2020 15:31:42 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>, Pavel Machek <pavel@ucw.cz>,
 Dan Murphy <dmurphy@ti.com>
Subject: [PATCH v2 2/3] arm64: dts: rockchip: rk3399-roc-pc: Fix MMC numbering
 for LED triggers
Date: Mon, 27 Apr 2020 15:31:31 +0800
Message-Id: <20200427073132.29997-3-wens@kernel.org>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200427073132.29997-1-wens@kernel.org>
References: <20200427073132.29997-1-wens@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_003145_643386_E91DF854 
X-CRM114-Status: GOOD (  13.46  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Chen-Yu Tsai <wens@csie.org>,
 linux-arm-kernel@lists.infradead.org, linux-leds@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Chen-Yu Tsai <wens@csie.org>

With SDIO now enabled, the numbering of the existing MMC host controllers
gets incremented by 1, as the SDIO host is the first one.

Increment the numbering of the MMC LED triggers to match.

Fixes: cf3c5397835f ("arm64: dts: rockchip: Enable sdio0 and uart0 on rk3399-roc-pc-mezzanine")
Signed-off-by: Chen-Yu Tsai <wens@csie.org>
---
 arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts | 8 ++++++++
 arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi          | 4 ++--
 2 files changed, 10 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts
index 2acb3d500fb9..f0686fc276be 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts
@@ -38,6 +38,10 @@ vcc3v3_pcie: vcc3v3-pcie {
 	};
 };
 
+&diy_led {
+	linux,default-trigger = "mmc2";
+};
+
 &pcie_phy {
 	status = "okay";
 };
@@ -91,3 +95,7 @@ &uart0 {
 	pinctrl-0 = <&uart0_xfer &uart0_cts &uart0_rts>;
 	status = "okay";
 };
+
+&yellow_led {
+	linux,default-trigger = "mmc1";
+};
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
index 9f225e9c3d54..bc060ac7972d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
@@ -70,14 +70,14 @@ work-led {
 			linux,default-trigger = "heartbeat";
 		};
 
-		diy-led {
+		diy_led: diy-led {
 			label = "red:diy";
 			gpios = <&gpio0 RK_PB5 GPIO_ACTIVE_HIGH>;
 			default-state = "off";
 			linux,default-trigger = "mmc1";
 		};
 
-		yellow-led {
+		yellow_led: yellow-led {
 			label = "yellow:yellow-led";
 			gpios = <&gpio0 RK_PA2 GPIO_ACTIVE_HIGH>;
 			default-state = "off";
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
