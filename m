Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0C701E3A86
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 09:29:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=KLNNk59/UQqzfPADR7ikI9sSEBaPyKQJH4UaFcjhHnU=; b=c5uxT0eRnT9o+rgBUvAn46ikS9
	gxMbKzOtXPmN0/Uh0XqcRnd7SAcxrDfNr9XbxgTmphKz3a+HKv/PZUWu55ofrtN/BRLkJKm7rWHaU
	aYOGenrsw7fituVUEuzkfIxKnK7hN25kgZGtCTUoTm4Lb5BxjThs9ouGlhzkqwuOdO8X6RFZjEjYV
	N1CUW5+EEcAeL6j5D0K1ciyq0EbjjCX30F6bWbhRFYf3hAhA7u04mY85q3XIfWeL+kZ/qxGM7uzAi
	ypdk5yqo0pskhq6IA/dsBhDK/I8pW98jQDNr+QHD36GnlY81nI6rEWlEey4dnrLYXzaX+/jzZUush
	Qm8XvIow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdqUs-0003hX-9Z; Wed, 27 May 2020 07:29:06 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdqTm-0002ri-Cq
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 07:28:00 +0000
Received: by mail-pf1-x444.google.com with SMTP id y18so11440922pfl.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 00:27:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Onz0m4658GcwNr7+Ki8b+efZhD5UwVfFPAClpApbxu0=;
 b=qzfCjtCaNGhfLciJD54Qh0tr4HfhlWRrFOV4JqFKlMpPdMNiyfoPVd6vh8IKAjR6+w
 C3AxBzG4tFG5AdOMu96Ur6YY/V4j6KirRzrwgdy+q8SsNNRhQfzTBZoCGK0nKcuEH6jf
 Y/1G+YUZWV57/XbaDHtNSoP/ya1KgxF23wSVZw1hqxBtOWbPFu+RM6v7DXRgrfPD1r8W
 egyo5asIcWN8twWGCbqUEZlLLLsGpR65xSoNRDxh/XVqIUb9qytoVqhE11VAR5QECjzV
 gXBuGjBHyEzOYijY7L1lKKXkAOwdAVLV4/NtmD2MMusXDm23palSzGptNSoAQQiEXOQE
 VrKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Onz0m4658GcwNr7+Ki8b+efZhD5UwVfFPAClpApbxu0=;
 b=jPAliDNtU6uxnNlwu3uj6VgHs8AZCl1OAh1YHX1DXAxfkfx1qTzGhNh5DjDyR1ty2X
 eVy6bex+zC6uv98hJTAgxF6hgPJwlQrO939a8ApsFQFocVkylPB9p473rNH4L1vAoCO9
 eI7BnesSAld+MmIFuBJ4O72OTL0bRdgAVBuslA6qqmTBC/k7/5EzOlxqz7FWlhESaolV
 GrZ/Hxas++Ukv4iCVSBqcUnTiursInm9EhiA4JDd4VnOm/cGLutFbko6XcRGujJRRd+g
 If/YlvNAp+xIxYPdZVeXmNfVUDLESvIUu84U5T3CX8mfTBN3yaO2IE9bvDphI98LTRqw
 ewWA==
X-Gm-Message-State: AOAM531mV9Md5Z2TBc481i8maqnpZOJR+BMUrObRP/RL050hpLM/SoNC
 jAHIbaDJfp+WxDPARY2mV9U=
X-Google-Smtp-Source: ABdhPJxrq6LGGhU2T5g5A4vxN18i9oicAGxndDihLIS9MQThMQYthUtoVFwyJepniaGtO+w8ZQMX1g==
X-Received: by 2002:a63:dc44:: with SMTP id f4mr2832593pgj.442.1590564476259; 
 Wed, 27 May 2020 00:27:56 -0700 (PDT)
Received: from fmin-OptiPlex-7060.nreal.work ([103.206.191.44])
 by smtp.gmail.com with ESMTPSA id q201sm1371842pfq.40.2020.05.27.00.27.51
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 27 May 2020 00:27:55 -0700 (PDT)
From: dillon.minfei@gmail.com
To: robh+dt@kernel.org, p.zabel@pengutronix.de, mcoquelin.stm32@gmail.com,
 alexandre.torgue@st.com, thierry.reding@gmail.com, sam@ravnborg.org,
 airlied@linux.ie, daniel@ffwll.ch, mturquette@baylibre.com,
 sboyd@kernel.org, andy.shevchenko@gmail.com, noralf@tronnes.org,
 linus.walleij@linaro.org, broonie@kernel.org
Subject: [PATCH v6 3/9] ARM: dts: stm32: enable ltdc binding with ili9341,
 gyro l3gd20 on stm32429-disco board
Date: Wed, 27 May 2020 15:27:27 +0800
Message-Id: <1590564453-24499-4-git-send-email-dillon.minfei@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1590564453-24499-1-git-send-email-dillon.minfei@gmail.com>
References: <1590564453-24499-1-git-send-email-dillon.minfei@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_002758_534461_213EDB82 
X-CRM114-Status: GOOD (  13.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dillon.minfei[at]gmail.com]
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
Cc: devicetree@vger.kernel.org, dillonhua@gmail.com, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-spi@vger.kernel.org, dillon min <dillon.minfei@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: dillon min <dillon.minfei@gmail.com>

Enable the ltdc & ili9341, gyro l3gd20 on stm32429-disco board.

Signed-off-by: dillon min <dillon.minfei@gmail.com>
---
 arch/arm/boot/dts/stm32f429-disco.dts | 48 +++++++++++++++++++++++++++++++++++
 1 file changed, 48 insertions(+)

diff --git a/arch/arm/boot/dts/stm32f429-disco.dts b/arch/arm/boot/dts/stm32f429-disco.dts
index 30c0f6717871..365d16fd3934 100644
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
