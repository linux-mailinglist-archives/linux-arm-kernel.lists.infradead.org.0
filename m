Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B75BC160520
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 16 Feb 2020 18:35:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R/mL1384WFvNkIj+3S/Av/B+QMGPaoHJsFFakM5k7us=; b=cTpkCg2eZkOHln
	6379QX+U79KZuCFS3m8Xb8ymFGIVG4iXO1r9NwbuffLjnq85P5Ojsd8e9MfWaVFxw57cDcOTsqa9u
	uULo69+0LqGDfU73xY8Ba/i+pGO4bh5mIBTKAGdG45SGpmExzRopI9dmSLikKtmybnJpU0bsg/exR
	QukdtsxJA8lDqCp/fXg92LdfCG78kJDiT34R4hP7bNUjkb2wQWH4jqtidrmfNDTg0Oe4Fe3FS+pcb
	vzaQpVaq3UN0x4yMLrT7AftypnwXiuEoLK4iLgzXnjX0WXNK6G9J2NuO6gF6sp0J+iHcTlc1Q1rSB
	hSAn3cZNiSuL3ZxLibhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3NpO-0000Es-6Y; Sun, 16 Feb 2020 17:35:34 +0000
Received: from mail-pl1-x629.google.com ([2607:f8b0:4864:20::629])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3Np3-0007qS-SJ; Sun, 16 Feb 2020 17:35:15 +0000
Received: by mail-pl1-x629.google.com with SMTP id y8so5756081pll.13;
 Sun, 16 Feb 2020 09:35:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=JPM2kqx4hlDXSNBDa3izQLbeJ7f1jy1y8czH2Ne/TYs=;
 b=IMejrEl725fqCXBPzYt9wmJUvxnKWr0ybMDAva6F56fobzg5h1czrrqJ32BVqj3Lki
 uF2pqycVRAub8wF470gHyC7O/uukwgYhQwuMlDiJZNwmdEFZTNc22YvxKjwqBNS2h1P5
 TVD0CCcGtcrp63oBFDlzB9MLIt4C62A15uR7Dt5mRklg/IDE4wl9Nu6Gzhj4oZu5oee3
 jPjt2AwjnwZoQuQR0SHvpmwrHjuocsM6cr45QvQiMUgRC0lkbKiAsO+SSdrj49CJhszq
 nWxn1JBEAiZGC1eeeuvWRGANygkQYdVY8FWEaAO9kp16OKk5cn0Jh1WRGjca8BQKrvUK
 0Czg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JPM2kqx4hlDXSNBDa3izQLbeJ7f1jy1y8czH2Ne/TYs=;
 b=Z1WDGZb1Xm1LaQntzmy773z3886S7TnU9FW+vXBfU42JEFUR/4Zyy4/akN5843DQI6
 BVBzWE0JTCl43BQs9ntIORHlW4/fzuq0FxGKXgH+OeIE2IDSx8jPAe5WT9v5v0DpvmcQ
 HB1Q8iciK6Ojp/eZTsf5OBX1Oz+SQqpaAgUb+gNoX2PsKMD7KIh+qy01SRFyqmnK0Jww
 VIul2Eg03/9/vNtqJDUYH0CrXhGqzhfWP/8XlYpE9UFNiyqt2As4Vn4f+Z7zkuAZwiUI
 OssiwbX/CwINzwBqSy1KBRWDkUvzur9rB9lmTtroc6ahOFiyktVlsCnpq+xVrx99cCB4
 tUww==
X-Gm-Message-State: APjAAAXuE3JgoDj3fi0twkbHKctSlc95rUjmCSLsD2b/kQD4onOdY2iE
 zmA7phUt4r04BPFfpKOYs4qOvMeF
X-Google-Smtp-Source: APXvYqwNzqmeVTiT7B3ggj00IH6FrnYaVsK+XBkavG5u0s6WRDvhKYzANPW5j9VnHOG0S/Ue30dTkA==
X-Received: by 2002:a17:902:9a45:: with SMTP id
 x5mr11818858plv.296.1581874507557; 
 Sun, 16 Feb 2020 09:35:07 -0800 (PST)
Received: from localhost.localdomain ([103.51.74.127])
 by smtp.gmail.com with ESMTPSA id a36sm14284724pga.32.2020.02.16.09.35.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 16 Feb 2020 09:35:07 -0800 (PST)
From: Anand Moon <linux.amoon@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>
Subject: [PATCHv1 1/3] arm64: dts: meson: Add missing regulator linked to
 VDDAO_3V3 regulator to FLASH_VDD
Date: Sun, 16 Feb 2020 17:34:44 +0000
Message-Id: <20200216173446.1823-2-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200216173446.1823-1-linux.amoon@gmail.com>
References: <20200216173446.1823-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_093513_941955_347225B8 
X-CRM114-Status: GOOD (  10.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:629 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [linux.amoon[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Kevin Hilman <khilman@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As per schematics add missing VDDAO_3V3 power supply to FLASH_VDD
regulator. Also add TFLASH_VDD_EN signal name to gpio pin.

Fixes: c35f6dc5c377 (arm64: dts: meson: Add minimal support for Odroid-N2)
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: Jerome Brunet <jbrunet@baylibre.com>
Cc: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>
Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
 arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
index 0e54c1dc2842..353db3b32cc4 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
@@ -51,9 +51,12 @@ tflash_vdd: regulator-tflash_vdd {
 		regulator-min-microvolt = <3300000>;
 		regulator-max-microvolt = <3300000>;
 
+		/* TFLASH_VDD_EN */
 		gpio = <&gpio_ao GPIOAO_8 GPIO_ACTIVE_HIGH>;
 		enable-active-high;
 		regulator-always-on;
+		/* U18 FC8731-09VF05NRR */
+		vin-supply = <&vddao_3v3>;
 	};
 
 	tf_io: gpio-regulator-tf_io {
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
