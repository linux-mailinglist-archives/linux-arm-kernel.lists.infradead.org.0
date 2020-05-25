Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B94881E0567
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 05:42:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=INWvvper30qDKw26NpNq16huZgdPxM/K/N7aNApPqIk=; b=ZDMgRzGZFcqULhbzuzjTGajBvI
	qP0IeDV7vfcNTk4Wa7COXiXoV6URPOVvm6m9cze5MMgYTXG1jJPfo4D+98nfae28HkUsn/HnBLBZl
	3zTZERUA6o6U8UWUhSJZ5JfMODuDz7hvIBbLuZZP1ro1tHBj8GeVZcI1tOFthCVJX2oBmwmbI+XUO
	Tg0D0/zZxuKQzDYqaOVqlIkPqvMft/gF2eCEQsoazPLD4bEvBfu/WiKXJbpu1uimphZ4+3gcWa8Nr
	FAmJzXNFSqZ6lbR/4nGaQXy+Os5XNEo2GSIPFkiq1/43UkLWuPxln/Rrw4DMI5RxEqXpHFNc6MsIc
	JI/LsEeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd40T-000362-Jn; Mon, 25 May 2020 03:42:29 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd3zR-0002WK-96
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 03:41:26 +0000
Received: by mail-pg1-x544.google.com with SMTP id j21so8108615pgb.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 24 May 2020 20:41:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=TecVBwOuGZ/BbCjVyBAZuzQGGC9DlsbNm1sr3li0idE=;
 b=QvwUoGSuDZI63M9mn4vBZYR6xz8xAH3VHV5RbxNhdUbFv/U8Ov8jfGdflulavz+0WZ
 qn68Vk0lu71CEX9OGs4+MKvbDf/Ar+ANm9y5umPi9zmijBjN/L9m7TPJC2x8GEpBrLTx
 MtAmyIwYQmGgE8wW1oyErjZhXBE3+4RW5rSQVe19dvn6zXpHN5xM6gCLNw3e5ShOIePL
 EBfhSGztPSl4/o2NB8WyTY+Hpmg/imm0D5l7FPJJVQ++7BrB5tsfdiZzzGcbRuK/rQDh
 gSgGSXEVBQc+l2Aj8p4zMIZ9pgJTISpwslah9WeJImGDSfyMAnK0aABmjeZDfYJkxjwo
 yx/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=TecVBwOuGZ/BbCjVyBAZuzQGGC9DlsbNm1sr3li0idE=;
 b=Cacvj0LXdbQenQh9EERsFk0Aq8U7/2VN4FQr0djQZxxAT/SgZQM8bnQlkFWCx683vY
 fz08oEX7vz/lXnt2uwJHyGJ2a66+z+telMDX7zIF+k+RHcnqOsz2tM5cfeAhL8LOgUVC
 VktjaGdJrN3992TyQ51ao2PO9ocgAb3tL9OFdfOuTTStumbFABM1mMvFkp4diXNG2Iuc
 V425Azcoh0ZvrqPRM3ORXALj6ROptPakqt7tqFOoccjACxCNxDvvNMBD7Vuc7mxqZoYz
 XDKnOA7uDxKns6PGSvilNjLDZidWEyBLE45ZKM/WIHqVD4ftdVuVrMf4Bf4yA89ZZS8J
 8rxw==
X-Gm-Message-State: AOAM532gYTNKasWabSJM9bed4upk52imoh5LS3G7kuKispI5hY6DhEyh
 kd7KpM8ZzRy//9G5fhkPsbc=
X-Google-Smtp-Source: ABdhPJy5ws0szZe0UGhHCEkCIdbOEeMkcDKZOuy9zGQFq2wn8JF4wLX/np8i7COUtqGKNVkzvHrg1w==
X-Received: by 2002:a63:3609:: with SMTP id d9mr24436404pga.354.1590378084548; 
 Sun, 24 May 2020 20:41:24 -0700 (PDT)
Received: from fmin-OptiPlex-7060.nreal.work ([103.206.191.44])
 by smtp.gmail.com with ESMTPSA id 7sm11981695pfc.203.2020.05.24.20.41.19
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 24 May 2020 20:41:24 -0700 (PDT)
From: dillon.minfei@gmail.com
To: robh+dt@kernel.org, p.zabel@pengutronix.de, mcoquelin.stm32@gmail.com,
 alexandre.torgue@st.com, thierry.reding@gmail.com, sam@ravnborg.org,
 airlied@linux.ie, daniel@ffwll.ch, mturquette@baylibre.com,
 sboyd@kernel.org
Subject: [PATCH v5 3/8] ARM: dts: stm32: enable ltdc binding with ili9341,
 gyro l3gd20 on stm32429-disco board
Date: Mon, 25 May 2020 11:40:57 +0800
Message-Id: <1590378062-7965-4-git-send-email-dillon.minfei@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1590378062-7965-1-git-send-email-dillon.minfei@gmail.com>
References: <broonie@kernel.org>
 <1590378062-7965-1-git-send-email-dillon.minfei@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_204125_340359_463923A3 
X-CRM114-Status: GOOD (  12.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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
