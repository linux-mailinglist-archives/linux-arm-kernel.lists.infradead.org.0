Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D42A31E059F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 05:47:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=INWvvper30qDKw26NpNq16huZgdPxM/K/N7aNApPqIk=; b=F3Yp45l+UHTWvsrc/wiLAdGY9h
	pFr+qOnv9JjfOepSEi0qB0jnEcaN6F5ggbC60vpFx/1hfP5XLAW//nwEb/uS7RWEfx4RWTmaET6Av
	aid8THfvTln74AEodaq0fqwX5GtCSiexaBqzsjEzNM00CqTHEsgCf9eJBq/Z/3rD9klmub1vZAEGF
	BfuI8epBRyu07gs+Fce9UWG7MeuJj6WGAVztbI+f4mfmMYB12eLagqttLQozumb+26qxPEPDyGr9j
	A6XT2YKa85VblNys4pRc2ikAoP5Vqj3dGXocjPXKOZ0CAdly84zNeE6J9zYW6J2Vw7B895flaJyBq
	PK2nc44A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd451-0008RH-PN; Mon, 25 May 2020 03:47:11 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd43v-0007eo-VV
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 03:46:05 +0000
Received: by mail-pf1-x442.google.com with SMTP id v63so8275336pfb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 24 May 2020 20:46:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=TecVBwOuGZ/BbCjVyBAZuzQGGC9DlsbNm1sr3li0idE=;
 b=oOnEvJIc5RIC+XycPQbNKIOqu3rZrB9GkscAVQFQ0bIPFUXhXArjacXi2Bv9R8irzo
 xJ4obbevslcs+GawkyTJuMZcaQxb8t70SgchuEOmzRv9VmCoagv+xoE3hH8+uxrGu+u7
 Tr/nTMpuhzI8FeOPEYF4CiVdLMO4Yo+CU/rEyl2ZyF/zXXNC8cydBxXGjcTypHEmgeax
 OY8v4Xebai1cj4X0S4d58nwAtcOIGFv4+K0Qo3tuY/twGNB5zfVMY5LFwteks12B1qoP
 WJ2FZXvTm78wjDBDexzekBDJehJ6XUiQNlj1HScpmMzEEio3Xpd63nu3vsmTHMjSstN4
 gkgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=TecVBwOuGZ/BbCjVyBAZuzQGGC9DlsbNm1sr3li0idE=;
 b=SzTb0LpEI0YjjvU7vAH6RRU5Gf/OS487Yj/vkxHgty64rk7vyL/39wKonteCXFWnlw
 kfrx2YSo+beuCRnRKYtZk0FfFy2nO4/XQKCTBrKHjkqXeTn17uqxroNUUfhJOkDA0kea
 Qgm6o+tfudpg85sjoVt7yeq9H36o0Q8YfzWW6/ntMwDJPpaXN9Ah57ufEw9+wkMbaUsn
 LOiGWTk7QpsQTZ1dgC+mcTsYYVwrM0o4q9G51qhzL3rsBU1vb+cH3B6NW04A0S7iw/EK
 JWwnSh9XEKDZcr5yDwq1N985Cg5j4ZJKFqZqHzUVIGMhGiK7vKISS5GLJGJLvDaaN1QJ
 FUmQ==
X-Gm-Message-State: AOAM5337LS2PBXrtYxIiMzxUvYRR5so9SSeB3R6b4xMgRXybv9PRmm0c
 9Y8O9481CI5pVVuF8leZj3k=
X-Google-Smtp-Source: ABdhPJzcQZcr90XePIuYsKAB+iyE3OReyvFJzMWSlexKfctfg9uLTc3FLbdM/Zb/mh6AWJtg+8RtAA==
X-Received: by 2002:a62:e305:: with SMTP id g5mr15607365pfh.144.1590378362742; 
 Sun, 24 May 2020 20:46:02 -0700 (PDT)
Received: from fmin-OptiPlex-7060.nreal.work ([103.206.191.44])
 by smtp.gmail.com with ESMTPSA id i98sm12152831pje.37.2020.05.24.20.45.59
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 24 May 2020 20:46:02 -0700 (PDT)
From: dillon.minfei@gmail.com
To: linus.walleij@linaro.org,
	broonie@kernel.org
Subject: [PATCH v5 3/8] ARM: dts: stm32: enable ltdc binding with ili9341,
 gyro l3gd20 on stm32429-disco board
Date: Mon, 25 May 2020 11:45:43 +0800
Message-Id: <1590378348-8115-4-git-send-email-dillon.minfei@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1590378348-8115-1-git-send-email-dillon.minfei@gmail.com>
References: <1590378348-8115-1-git-send-email-dillon.minfei@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_204604_139104_5DE84ADD 
X-CRM114-Status: GOOD (  13.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dillon.minfei[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-clk@vger.kernel.org,
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
