Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 873431FEF02
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 11:52:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=v3ApPsqCgM4g/lzF3VlF/LsQgZVFB4CB5rEZ0uwnpEo=; b=fGvIni2621E+MB
	I0dX8wop8punknrt5T3tH6iaaPv9p+O9nwxfIP0X2zFLk9jklqUbHrxXHzyEvS4FCEjRNuq8PAiKc
	rmujShlGKeOfapIgZ8wQnmMetw+ihBbZwhYsBy7n5ymnsgx1cFpi3zbV1yfXMp9fQaIzuXVceRh4i
	mgBl6G9f4zbE6mJjbXgsrAQIqEt+7gBIFDj/5DJ1KV0nxuCb5DTCsze+butjFw/laLwkcPAx4x1Jp
	XeVjUxy6Gld3WSPzSSxEaLR3lGMb46xtjRT9gDd7FGH1NBUDuCTH7feHH+LR4L/abO55LnWDloP2I
	y5WQFLkqXceKJuQRwdBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlrDO-0005gI-W9; Thu, 18 Jun 2020 09:52:11 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlrDG-0005fh-6F; Thu, 18 Jun 2020 09:52:03 +0000
Received: by mail-pf1-x444.google.com with SMTP id a127so2534480pfa.12;
 Thu, 18 Jun 2020 02:52:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=rlTaG4vEHV6obr/G85MD+Ik1qzQppM95dWbM2mQ30No=;
 b=XtXMobp1DssYwYeOkZQeegBQpybQHz6LYBfWFI/gC6jPaWEtCcHLm3SBm7d7l5QOTd
 sJjI4oNVfdezgxwoD7ebdbVqmFUJvleHwbrT99mP4y56Il/Ckp7z1p3ciPiEiAsj+3kT
 DQIR1nQJidTkiy3DYumYEOojMX08Giz8wF3Hf6odDCcNkVm+HY8776ExTFg9rfRDKG52
 pCUjJ40t9LwJ2fKXVW/9YGtS5DNRyTcQxNZFRFMTQaVjf38FhnFU51h0RsSbZ9xx9o8m
 Gp8boKfUoJtcL2gMOCgB4lZfsK0Bkh27YV6nv7CJ1q3JleSVIfcf9M7OrAxPKSWG67Ld
 24gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=rlTaG4vEHV6obr/G85MD+Ik1qzQppM95dWbM2mQ30No=;
 b=ZydZ+yAuMU2KKiQ8CElFMT17tRiqU5uEJjC8p/AKJldq/sdTxn9oy1rUdX+xy3fzEN
 faTLTs2sak8DLa27V9uJjUJ6NjUir0sxFCaYEbuIY2O5DcPu73pCFq+smxG//++kRpmK
 P0GVGCz0juxNOIkSrepH+l2geN5NjC/C/wT3z/87K8nMgUgaMGqlAAmv3xoDsIGd7nA3
 kCcBG8r74rAOMPr32pJNltQKIpIF82rshW6PSGqY5AdrQWCbcew/6hJL38w3nR9+Enj9
 9oT2f5ZQSV4WsgvqFRfBPKWEOkQPgWbMAsl9Yt4bCZX6ssKS8tVjXe8LOStGOh8BSgAU
 jCdQ==
X-Gm-Message-State: AOAM5337/GRquiMfFn/qKYyDjGLzi97NK04IJWbwiQdiOUZzgXY5OFaE
 FIjblsq0aziIR7x09kMbyDQ=
X-Google-Smtp-Source: ABdhPJyDgvg6arfypbKJjGrfCEVPwrJXeBR3QGkGNPtYZc4CCDRysB90RjiOBS4/5HzvwK83G4SfGQ==
X-Received: by 2002:a62:5ec2:: with SMTP id s185mr2954274pfb.0.1592473921435; 
 Thu, 18 Jun 2020 02:52:01 -0700 (PDT)
Received: from home-desktop ([114.204.138.55])
 by smtp.gmail.com with ESMTPSA id s26sm2045206pga.80.2020.06.18.02.51.58
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 18 Jun 2020 02:52:00 -0700 (PDT)
Date: Thu, 18 Jun 2020 18:51:55 +0900
From: Hyeonki Hong <hhk7734@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>
Subject: [PATCH] arm64: dts: odroid: add spicc0 controller node
Message-ID: <20200618095150.GA9713@home-desktop>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_025202_258754_AE256B00 
X-CRM114-Status: GOOD (  12.23  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [hhk7734[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [hhk7734[at]gmail.com]
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add enabled spicc0 controller node with annotations describing the
physical SPI0 pin number based on the 40 pin header on the Odroid
board.

Signed-off-by: Hyeonki Hong <hhk7734@gmail.com>
---
 .../boot/dts/amlogic/meson-g12b-odroid-n2.dts | 26 +++++++++++++++++--
 .../boot/dts/amlogic/meson-sm1-odroid-c4.dts  | 24 ++++++++++++++++-
 2 files changed, 47 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
index 169ea283d4ee..ec6d345caaae 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
@@ -16,8 +16,9 @@
 	model = "Hardkernel ODROID-N2";
 
 	aliases {
-		serial0 = &uart_AO;
 		ethernet0 = &ethmac;
+		serial0 = &uart_AO;
+		spi0 = &spicc0
 	};
 
 	chosen {
@@ -328,7 +329,7 @@
 
 &ext_mdio {
 	external_phy: ethernet-phy@0 {
-		/* Realtek RTL8211F (0x001cc916) */	
+		/* Realtek RTL8211F (0x001cc916) */
 		reg = <0>;
 		max-speed = <1000>;
 
@@ -451,6 +452,27 @@
 	vqmmc-supply = <&flash_1v8>;
 };
 
+&spicc0 {
+	status = "okay";
+
+	/*
+	 * 40 Pin Header : MOSI(GPIOX.8->19 Pin),
+	 *		   MISO(GPIOX.9->21 Pin),
+	 *		   SPI0_CLK(GPIOX.11->23 Pin)
+	 *		   SPI_CE0(GPIOX.10->24 Pin),
+	 */
+	pinctrl-names = "default";
+	pinctrl-0 = <&spicc0_x_pins>, <&spicc0_ss0_x_pins>;
+
+	spidev@0 {
+		compatible = "spidev";
+		status = "okay";
+		/* spi default max clock 100Mhz */
+		spi-max-frequency = <100000000>;
+		reg = <0>;
+	};
+};
+
 /*
  * EMMC_D4, EMMC_D5, EMMC_D6 and EMMC_D7 pins are shared between SPI NOR pins
  * and eMMC Data 4 to 7 pins.
diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1-odroid-c4.dts b/arch/arm64/boot/dts/amlogic/meson-sm1-odroid-c4.dts
index 00d90b30f8b4..f809b2ba6b15 100644
--- a/arch/arm64/boot/dts/amlogic/meson-sm1-odroid-c4.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-sm1-odroid-c4.dts
@@ -14,8 +14,9 @@
 	model = "Hardkernel ODROID-C4";
 
 	aliases {
-		serial0 = &uart_AO;
 		ethernet0 = &ethmac;
+		serial0 = &uart_AO;
+		spi0 = &spicc0;
 	};
 
 	chosen {
@@ -381,6 +382,27 @@
 	vqmmc-supply = <&flash_1v8>;
 };
 
+&spicc0 {
+	status = "okay";
+
+	/*
+	 * 40 Pin Header : MOSI(GPIOX.8->19 Pin),
+	 *		   MISO(GPIOX.9->21 Pin),
+	 *		   SPI0_CLK(GPIOX.11->23 Pin)
+	 *		   SPI_CE0(GPIOX.10->24 Pin),
+	 */
+	pinctrl-names = "default";
+	pinctrl-0 = <&spicc0_x_pins>, <&spicc0_ss0_x_pins>;
+
+	spidev@0 {
+		compatible = "spidev";
+		status = "okay";
+		/* spi default max clock 100Mhz */
+		spi-max-frequency = <100000000>;
+		reg = <0>;
+	};
+};
+
 &uart_AO {
 	status = "okay";
 	pinctrl-0 = <&uart_ao_a_pins>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
