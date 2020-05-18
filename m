Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E4401D7646
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 13:11:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=//q3myTvpFiv0kw+aQWpr+hypZDRl3w/RIMlp7B/iAM=; b=Jxh6hXMCGh5iDbxe86OuOBoHO5
	L0DSNEKergpaD3vmSJyPh7gg2lwScthzn9b5WdWb9wkxx3UmDVUFtmPpQLSM3HN3+Nav91GBbu9nC
	VEWi+UVyiE6Xsqa5rM2c1qz8KylGHzRP4OoAg6ZG/FkNtHmh69ukWjaOYVI3ezctQcZOrH6ak2mO9
	OdjRFD6be7brxlFeClF5fMnAXeqlm0vm5u7Tkz0ehxPls0ZJQHuu2P4KBbhwMCo7AGDdiNFNxW6Br
	XbOz0zjTTslcoQwdGBO7DS5El1R+5jv0e/eCG6ORk3XPXFGKFj/DrguftGjyS0RG4TPrqtgk59feE
	N10WPSSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jadgN-0001xb-1n; Mon, 18 May 2020 11:11:43 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jadem-0006t8-Sk
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 11:10:08 +0000
Received: by mail-pf1-x442.google.com with SMTP id b190so4794460pfg.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 May 2020 04:10:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=I1T/MSXgatC2plQLGmWEDShQlFTEnK6nXGcY9iM2hHM=;
 b=iLYajPKb4u2/NWaM0uZuIIE0Zgslm6lKb1y7vbs2KEVZmA5magKDWvcJaUjMVGG+Hq
 HtA7x5myFIX4Z4h80DOZFCe/VoYeirGoypijZ4/g7WZ7lvx1ubsUYNofLiJhE1wIPAhS
 3vih8uOhCFix1mDfEuK9yq+iHbVagLjCIBoienMxcwEIl1Lc8SaBOHhbQCmo6UYA0X2K
 nPPIsaiO4+H/UuvWhNm1AEtIIELfckw275sb9XmSEP5HNnY39X5zXHA34nbxGxOeIH5p
 97482nu6JWh6jXjVTCm8W087b5N2UPqd28djYacnRa8xQf8+F9jwruj10kyiX0vGDrp9
 ucag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=I1T/MSXgatC2plQLGmWEDShQlFTEnK6nXGcY9iM2hHM=;
 b=pwkaW41jm35bEe6XY316RUDjmUO1u6vbJq7+ClbZ2KXm/CWpTg+vq7RJ/oX2CDdGQO
 eRLkQ8tnpQfp1wfhNlFvwKS5aUqpxLtb0dsDTsNDEDtQm8J5CGEOmGuK4Cn4O1g9mjjm
 9n1/fyQ6U07o6b2givScBCL/Rch94iD3jUvyeHdG+WCQbiPa3Sjl+DEttFmxiCr3j4HH
 znIViO8rZAGCWpiVvaJz/y0l+KR1A8lrhVwN8C/J/ZtAykluGmB49znKZfZF5HGXGwDu
 kc1TFtZ+nyKfv7w6EES0GIirX6JGZt061Hn2zwq6oOavRUVWaxgWZWmX3xg4sZuKjkov
 893w==
X-Gm-Message-State: AOAM533uNxNMbtYMytbQ2q6QUGAxcyrjlcgUVqv2hhyXdFIN/JSCoIe2
 EdKDiQMGGnw8YLt9scT4fkw=
X-Google-Smtp-Source: ABdhPJzTp8verXSiF/j8yXN0XwsCs3i8VyAOtQYBHq+u7MVM7vRjm0APUV2Qcp5rZcERI/eLfvhwIg==
X-Received: by 2002:a63:5f41:: with SMTP id t62mr14754996pgb.252.1589800203620; 
 Mon, 18 May 2020 04:10:03 -0700 (PDT)
Received: from fmin-OptiPlex-7060.nreal.work ([103.206.190.146])
 by smtp.gmail.com with ESMTPSA id a15sm8290630pju.3.2020.05.18.04.09.58
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 18 May 2020 04:10:03 -0700 (PDT)
From: dillon.minfei@gmail.com
To: robh+dt@kernel.org, p.zabel@pengutronix.de, mcoquelin.stm32@gmail.com,
 broonie@kernel.org, devicetree@vger.kernel.org, alexandre.torgue@st.com,
 thierry.reding@gmail.com, sam@ravnborg.org, airlied@linux.ie,
 daniel@ffwll.ch, mturquette@baylibre.com, sboyd@kernel.org
Subject: [PATCH v4 6/8] ARM: dts: stm32: enable ltdc binding with ili9341 on
 stm32429-disco board
Date: Mon, 18 May 2020 19:09:23 +0800
Message-Id: <1589800165-3271-7-git-send-email-dillon.minfei@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1589800165-3271-1-git-send-email-dillon.minfei@gmail.com>
References: <1589800165-3271-1-git-send-email-dillon.minfei@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_041005_099200_46C0CB4E 
X-CRM114-Status: GOOD (  12.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dillon.minfei[at]gmail.com]
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
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-spi@vger.kernel.org,
 dillon min <dillon.minfei@gmail.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: dillon min <dillon.minfei@gmail.com>

Enable the ltdc & ili9341 on stm32429-disco board.

Signed-off-by: dillon min <dillon.minfei@gmail.com>
---
 arch/arm/boot/dts/stm32f429-disco.dts | 48 +++++++++++++++++++++++++++++++++++
 1 file changed, 48 insertions(+)

diff --git a/arch/arm/boot/dts/stm32f429-disco.dts b/arch/arm/boot/dts/stm32f429-disco.dts
index 30c0f67..365d16f 100644
--- a/arch/arm/boot/dts/stm32f429-disco.dts
+++ b/arch/arm/boot/dts/stm32f429-disco.dts
@@ -49,6 +49,8 @@
 #include "stm32f429.dtsi"
 #include "stm32f429-pinctrl.dtsi"
 #include <dt-bindings/input/input.h>
+#include <dt-bindings/interrupt-controller/irq.h>
+#include <dt-bindings/gpio/gpio.h>
 
 / {
 	model = "STMicroelectronics STM32F429i-DISCO board";
@@ -127,3 +129,49 @@
 	pinctrl-names = "default";
 	status = "okay";
 };
+
+&ltdc {
+	status = "okay";
+	pinctrl-0 = <&ltdc_pins_f429_disco>;
+	pinctrl-names = "default";
+
+	port {
+		ltdc_out_rgb: endpoint {
+			remote-endpoint = <&panel_in_rgb>;
+		};
+	};
+};
+
+&spi5 {
+	status = "okay";
+	pinctrl-0 = <&spi5_pins>;
+	pinctrl-names = "default";
+	#address-cells = <1>;
+	#size-cells = <0>;
+	cs-gpios = <&gpioc 1 GPIO_ACTIVE_LOW>, <&gpioc 2 GPIO_ACTIVE_LOW>;
+
+	l3gd20: l3gd20@0 {
+		compatible = "st,l3gd20-gyro";
+		spi-max-frequency = <10000000>;
+		st,drdy-int-pin = <2>;
+		interrupt-parent = <&gpioa>;
+		interrupts = <1 IRQ_TYPE_EDGE_RISING>,
+				<2 IRQ_TYPE_EDGE_RISING>;
+		reg = <0>;
+		status = "okay";
+	};
+
+	display: display@1{
+		/* Connect panel-ilitek-9341 to ltdc */
+		compatible = "st,sf-tc240t-9370-t";
+		reg = <1>;
+		spi-3wire;
+		spi-max-frequency = <10000000>;
+		dc-gpios = <&gpiod 13 0>;
+		port {
+			panel_in_rgb: endpoint {
+			remote-endpoint = <&ltdc_out_rgb>;
+			};
+		};
+	};
+};
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
