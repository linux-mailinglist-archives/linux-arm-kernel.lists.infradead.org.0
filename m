Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCA69184360
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 10:11:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LQ53F1/VE0vMCHwZkbG6oXjoftdDRiTIXBQeF19WMPw=; b=aFG0hOteYTB5x8
	EPsZ+5Pliejli7fr2dzt6cYoEElCFRlBBbmBuwu5oy0UiJzafeDxJAVX4IIZJmVReJge5BU4ta3fe
	MF1Wzz6cYsgQXAcKh4r37uM+tIkBsXxUPkI8pt/rHhs0z0AmmnMKyDRcAuxkd78Ethjy03Z7r1pa5
	uxV/SohNockB3sy9onIuFP2Rs2As3o3Uj43ArqZkogTGPPbwN48HZhWW9LpjNdiJneFTl6WxJjoTL
	iOJEIL5W18PojUi9guzO6ZOMuQb5FdGapxhRwOBS4Vm8fuUDKIkK0Hgq4AkbdwpXbY17vqKunlqUC
	AjsimIiQLdjRMpBsxhaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCgM7-0000t5-JG; Fri, 13 Mar 2020 09:11:47 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCgHq-0003qd-Fw
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 09:07:25 +0000
Received: by mail-wr1-x442.google.com with SMTP id t2so996955wrx.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Mar 2020 02:07:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KrJf+EGLXE8nvYgZtr6atvulE/NcTou2lZGP+D+d2qw=;
 b=BOVKBU0Ujuzg0xDGWTs/W1y0roYbWeUvMBriY4xI3p+BCY48nGP4y+J7KmoYc6mhYP
 cThTepp8+g70rWRbmqNvc1ofqIv7gOpAdSUT15RROZDKtVgDGycvvVc9rvEI2zMdZw1W
 ZC9opbu8pF43mYmDBythnQVVQh/AS0FHU6sC431mSosuX4Pn9wloX4IH4/Kc7ousft3H
 sbe+51tKPQydX1ojL3RPgC2B4QiiKzZ2Vx1SntQktZexGrz+lWHygUAdYMXdMifLTS7c
 gj34RDmRDa/JzjiZAPJGm+j2uOrLuLj23zsAQwy4EfJ7U9B3rNFVJS/J+IV4TVPaW4Hg
 nHNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KrJf+EGLXE8nvYgZtr6atvulE/NcTou2lZGP+D+d2qw=;
 b=m+YbRKNtKb3FVXaXuvCvFEGBa8w66V+DlMarm6TCf5WjoL+dkb1YmH0l9QzOa9l9I2
 9Ws3eHvLoFGSdNZBxlmATsu6+Whb2jIH0xo49Zbg7EkyHQCzV6bF7/KDeLgWVfKlfGHv
 S9rYqkSxFwZwYwSP98L4Jlq8YFdkweZ73RqLno+TIah2R3740JmdUlms8DcotBMWbl7p
 so0x6b+dsT3RigqeTI1E/OHdkTGBn/6Z6DiStpCwYUKlWQiYHLKVr9jJq3LwXGYQbkDA
 HDXbjRhxsJ7U+Iuyr6lGvKpzp2eWqBCCJDs0ME7uZ855tjoEDIqBJ8IF4SdxMsumwxfv
 bW2g==
X-Gm-Message-State: ANhLgQ1SPcD0gbALTk85oxBrxvFvQ/LfYjjdVGiCZnUFsLw2KawEE1Af
 HSKqDO1bJ+nXryRWtfJqsvDsQQ==
X-Google-Smtp-Source: ADFU+vu0BdY5m1oq1hZ64fBK3Lt0+33tWgB3mGxdT6gg9HNBrGg14nro/t4yX9kgtHUi01cFFBaogQ==
X-Received: by 2002:a5d:4004:: with SMTP id n4mr15867133wrp.48.1584090440564; 
 Fri, 13 Mar 2020 02:07:20 -0700 (PDT)
Received: from bender.baylibre.local ([2a01:e35:2ec0:82b0:5c5f:613e:f775:b6a2])
 by smtp.gmail.com with ESMTPSA id i1sm61872399wrs.18.2020.03.13.02.07.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Mar 2020 02:07:20 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH 3/4] arm64: dts: khadas-vim3: add SPIFC controller node
Date: Fri, 13 Mar 2020 10:07:12 +0100
Message-Id: <20200313090713.15147-4-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200313090713.15147-1-narmstrong@baylibre.com>
References: <20200313090713.15147-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_020723_167744_20BB393B 
X-CRM114-Status: GOOD (  11.22  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add disabled SPIFC controller node with instruction on how to enable
it while lowering capabilities of the eMMC controller from 8bits bus
width to 4bits bus width, it's data pins 4 to 7 being shared with
the SPI NOR controller pins.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 .../boot/dts/amlogic/meson-khadas-vim3.dtsi   | 20 +++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi b/arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi
index b6f22a0bd318..f09854560938 100644
--- a/arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi
@@ -328,6 +328,26 @@
 	vqmmc-supply = <&emmc_1v8>;
 };
 
+/*
+ * EMMC_D4, EMMC_D5, EMMC_D6 and EMMC_D7 pins are shared between SPI NOR CS
+ * and eMMC Data 4 to 7 pins.
+ * Replace emmc_data_8b_pins to emmc_data_4b_pins from sd_emmc_c pinctrl-0,
+ * and change bus-width to 4 then spifc can be enabled.
+ */
+&spifc {
+	status = "disabled";
+	pinctrl-0 = <&nor_pins>;
+	pinctrl-names = "default";
+
+	w25q32: spi-flash@0 {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		compatible = "winbond,w25q128fw", "jedec,spi-nor";
+		reg = <0>;
+		spi-max-frequency = <104000000>;
+	};
+};
+
 &uart_A {
 	status = "okay";
 	pinctrl-0 = <&uart_a_pins>, <&uart_a_cts_rts_pins>;
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
