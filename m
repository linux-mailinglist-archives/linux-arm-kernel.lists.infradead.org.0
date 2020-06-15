Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0483B1F97CB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 15:03:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fPCy8DBdrAtUpqs9SIIH8sTZV+QxG0GkrMOKwDoYjc0=; b=EGIkR0nOyI2h3v
	DX1jdyqInzbuoOqH5sQ9ZMBkX4jOlSWONHgJdj7XWigOzBNLM0/Mzf5JFre0b271x63b0npcd/bxp
	CnXTt23oZAfNMqFXS1nqv1pJEwL7RmzkKc6DVTh4dUFR6cx0YLhu02ITtVUQgf3y2Nqzw0P+tiq09
	zXT0VMCB3ognNmlWUyVlMZfHx/+dUkZElLgNYySuTBC7jAQgFxVwX1YbACt9aIbG9mKooBtBAQQel
	OSaJDYrgCJgrakOmIWVIIWNLYKLhhDMQW5kkuW7xUwy0eE6gGuAmGPnf541j4yiS639gUzC+irW8F
	+OGzUQAn6qXxyJe2Culw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkolW-0001Mb-QD; Mon, 15 Jun 2020 13:03:06 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkolL-0001LN-GN
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 13:02:56 +0000
Received: by mail-wm1-x344.google.com with SMTP id f185so14743587wmf.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 06:02:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kynetics-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=yG4TX0q4STnfakhZj1Jy6LqPd0TuAXoc/J2tzd+XYRw=;
 b=vOlT6DrX6rx075X32KGHYvlAhGW2prqOHQiHu160Jm1Sx7TPbdK5EgFzjZY5ZDNTcz
 nL3jeWVLcxZ33If0/DklPgn7giQIo7U+JsYbTWa7upUdP1mCURZ6tDHN1xXutpLEXZAz
 gyaANYRm+OMChPplA5Q04hueaT4rUERoCh8lL/8e62inXpt8LZBzK4g9E3OgelBx35el
 DOQ8fWw5gtMRlpzAnk8lELnN5+aD+xe3695jvPVuVUpjPJExJi7j+GIVVHdsNOpshKjb
 Yo13cozv2dkpvDc7hvUiXdSwoOkSPOPNgGAcwJQgPe2s7YQTynkpqEt1C+eFEUQpSYEz
 kL0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=yG4TX0q4STnfakhZj1Jy6LqPd0TuAXoc/J2tzd+XYRw=;
 b=BYNTpeuDHymSUf3zSDtSj3yydnoXIwEwNX6AJVDLBxhN8Ctc1fu+jOe3GmM0CnBDWh
 DWDBBeLv3n7Lmt+GZowUis+kRHhZBSg58OQZ/4K4Purlrd2Nyo45hUoMpbA/oDeHfYEE
 1Qiiojfm8uwC15wPqc6c7/1/0Y+BFHUp/HmE9zu1o7rKp0QYraWkuOU+i/eWhtKROYAp
 LRCfUqSHHMqtIHyzUILMu7iQlDWi0s3br1in3oyhfKQ35dNhppqJIVfYZK6KN+3M71mA
 Gyo78jB3Q9elgeX7DSC1DXUdIIoz3XXbAWLs3ieSZ6h2xSjSKlhNebvLUrXg5qx9n+kO
 SxBg==
X-Gm-Message-State: AOAM5338lLMDaYgpKkSo4ljB63Arl+tX1BHOcB36Z+9Efg+xF5tlzds4
 HkrfMC8diu7pIchQy12W6cn9Tg==
X-Google-Smtp-Source: ABdhPJwmvwGWDdrqCPnEhR7CHzTB8RsOUHLalrL4KmPDN1e5zRjb2fQVCDq6msGiFBDRBvGkmaT+Zg==
X-Received: by 2002:a1c:e057:: with SMTP id x84mr13695935wmg.160.1592226173500; 
 Mon, 15 Jun 2020 06:02:53 -0700 (PDT)
Received: from localhost.lan (mob-37-176-61-186.net.vodafone.it.
 [37.176.61.186])
 by smtp.gmail.com with ESMTPSA id s132sm23900345wmf.12.2020.06.15.06.02.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Jun 2020 06:02:53 -0700 (PDT)
From: Diego Rondini <diego.rondini@kynetics.com>
To: Maxime Ripard <mripard@kernel.org>
Subject: [PATCH v2 1/2] ARM: dts: orange-pi-zero-plus2: enable USB OTG port
Date: Mon, 15 Jun 2020 15:02:23 +0200
Message-Id: <20200615130223.34464-1-diego.rondini@kynetics.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_060255_600967_53316063 
X-CRM114-Status: GOOD (  13.02  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 linux-kernel@vger.kernel.org, Diego Rondini <diego.rondini@kynetics.com>,
 linux-sunxi@googlegroups.com, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enable support for USB OTG port on Orange Pi Zero Plus 2 (both H3 and H5
variants). As, according to the board schematics, the USB OTG port cannot
provide power to external devices, we set dr_mode to peripheral.

Signed-off-by: Diego Rondini <diego.rondini@kynetics.com>
---
v2:
- reordered nodes alphabetically
---
 .../boot/dts/sun8i-h3-orangepi-zero-plus2.dts | 23 +++++++++++++++++++
 .../sun50i-h5-orangepi-zero-plus2.dts         | 23 +++++++++++++++++++
 2 files changed, 46 insertions(+)

diff --git a/arch/arm/boot/dts/sun8i-h3-orangepi-zero-plus2.dts b/arch/arm/boot/dts/sun8i-h3-orangepi-zero-plus2.dts
index b8f46e2802fd3..cbe32b975c5fe 100644
--- a/arch/arm/boot/dts/sun8i-h3-orangepi-zero-plus2.dts
+++ b/arch/arm/boot/dts/sun8i-h3-orangepi-zero-plus2.dts
@@ -88,6 +88,10 @@ &de {
 	status = "okay";
 };
 
+&ehci0 {
+	status = "okay";
+};
+
 &hdmi {
 	status = "okay";
 };
@@ -132,8 +136,27 @@ &mmc2 {
 	status = "okay";
 };
 
+&ohci0 {
+	status = "okay";
+};
+
 &uart0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&uart0_pa_pins>;
 	status = "okay";
 };
+
+&usb_otg {
+	/*
+	 * According to schematics CN1 MicroUSB port can be used to take
+	 * external 5V to power up the board VBUS. On the contrary CN1 MicroUSB
+	 * port cannot provide power externally even if the board is powered
+	 * via GPIO pins. It thus makes sense to force peripheral mode.
+	 */
+	dr_mode = "peripheral";
+	status = "okay";
+};
+
+&usbphy {
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-zero-plus2.dts b/arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-zero-plus2.dts
index c95a68541309c..e67733d133bb4 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-zero-plus2.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-zero-plus2.dts
@@ -48,6 +48,10 @@ &de {
 	status = "okay";
 };
 
+&ehci0 {
+	status = "okay";
+};
+
 &hdmi {
 	status = "okay";
 };
@@ -92,6 +96,10 @@ &mmc2 {
 	status = "okay";
 };
 
+&ohci0 {
+	status = "okay";
+};
+
 &uart0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&uart0_pa_pins>;
@@ -103,3 +111,18 @@ &uart1 {
 	pinctrl-0 = <&uart1_pins>, <&uart1_rts_cts_pins>;
 	status = "okay";
 };
+
+&usb_otg {
+	/*
+	 * According to schematics CN1 MicroUSB port can be used to take
+	 * external 5V to power up the board VBUS. On the contrary CN1 MicroUSB
+	 * port cannot provide power externally even if the board is powered
+	 * via GPIO pins. It thus makes sense to force peripheral mode.
+	 */
+	dr_mode = "peripheral";
+	status = "okay";
+};
+
+&usbphy {
+	status = "okay";
+};
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
