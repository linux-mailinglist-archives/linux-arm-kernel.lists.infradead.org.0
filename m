Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D7F11FC2CA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 02:34:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SeM0Q321aADgOYO95d5VK+7nOS0GO58dcFI7ZIVcswk=; b=CSX3sCogc3Vf9T
	ZCDzwap6MdHDdwnCxlJ4jsGFUGqvrKYwt92nHFAVQJQKzeU6EwRK7V8s7aPcgxcag44p8Lk0vh965
	Vktt1T2T4LAUWjZGlZBHEAhr4ahMi133NRnq73CRM+Ge7dNkAhQ5wtpqypLSI59pPXemkkqfIQQv+
	dk9V7mREngYlGQpTVrEzB7tVzAyGaaHPDe60HqeHrTlJ6JTTu4/iqkEoFPXVa8YTNwJDmlYYbF//k
	31v7KBZ3CIih7KBF1Cql6gJ8lB88aPFoMicbmGofqGPtYRs5K9bWysJLnbPchCujOJw7PP91VA1/S
	KlQirYQRqNIahJtcEk9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlM1j-0002lf-1E; Wed, 17 Jun 2020 00:34:03 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlM0A-0001Xt-KW
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 00:32:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1592353935; bh=b1/7qbKU/Xjmfy3lRGyd7/FtHpXUhaxNH3hyWhF4w/I=;
 h=From:To:Cc:Subject:Date:References:From;
 b=fzUsKIKzoQ+1OaWhcz+hZ7MIjha/GYJ3SwW1xSWguquo+3lqSLOaIfzBYY7ta0io8
 rL8DemDnSAwGa1BBkB0+DuxTcVg51GGq/DYZa1aStAcUu9yBwIafghQ+VTlwXqqR0h
 3THfBi7Z/3isAxxKn49vLTr+lDXdBWz0mMWLDxk4=
From: Ondrej Jirman <megous@megous.com>
To: linux-sunxi@googlegroups.com, Thierry Reding <thierry.reding@gmail.com>,
 Sam Ravnborg <sam@ravnborg.org>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Linus Walleij <linus.walleij@linaro.org>, Icenowy Zheng <icenowy@aosc.io>
Subject: [PATCH v4 5/5] arm64: dts: sun50i-a64-pinephone: Add touchscreen
 support
Date: Wed, 17 Jun 2020 02:32:09 +0200
Message-Id: <20200617003209.670819-6-megous@megous.com>
In-Reply-To: <20200617003209.670819-1-megous@megous.com>
References: <20200617003209.670819-1-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_173226_857013_48B1F696 
X-CRM114-Status: UNSURE (   7.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Ondrej Jirman <megous@megous.com>, devicetree@vger.kernel.org,
 Samuel Holland <samuel@sholland.org>, Bhushan Shah <bshah@kde.org>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Luca Weiss <luca@z3ntu.xyz>, Martijn Braam <martijn@brixit.nl>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Pinephone has a Goodix GT917S capacitive touchscreen controller on
I2C0 bus. Add support for it.

Signed-off-by: Ondrej Jirman <megous@megous.com>
---
 .../dts/allwinner/sun50i-a64-pinephone.dtsi   | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone.dtsi
index e60b57f8ac14..6b2ff431cddb 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone.dtsi
@@ -123,6 +123,25 @@ &ehci1 {
 	status = "okay";
 };
 
+&i2c0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c0_pins>;
+	status = "okay";
+
+	touchscreen@5d {
+		compatible = "goodix,gt917s", "goodix,gt911";
+		reg = <0x5d>;
+		interrupt-parent = <&pio>;
+		interrupts = <7 4 IRQ_TYPE_LEVEL_HIGH>; /* PH4 */
+		irq-gpios = <&pio 7 4 GPIO_ACTIVE_HIGH>; /* PH4 */
+		reset-gpios = <&pio 7 11 GPIO_ACTIVE_HIGH>; /* PH11 */
+		AVDD28-supply = <&reg_ldo_io0>;
+		VDDIO-supply = <&reg_ldo_io0>;
+		touchscreen-size-x = <720>;
+		touchscreen-size-y = <1440>;
+	};
+};
+
 &i2c1 {
 	status = "okay";
 
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
