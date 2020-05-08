Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E78E1CA1ED
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 06:14:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Lq0KB8GStDWTbOnu7hSD8dwsPF/4kCV1lZpEa5/DvOM=; b=KPBy0a4l29pcTqWPGLrKafCvaa
	Iz/kl7ljSthS165W0xRHZF0PhzY0uF78L1wVib5JdoTCQ72kPz1SiC/3PcX6Sv3Q/KW7kY2C2giBe
	xx/AbnOeIkIhLkvkeArPR047TmvbLt6xhVyrm0EkmjOAWrEN6kxfdIp2vOguAKPDfA1hmLxFIVOsJ
	qgZsug6tPDVdRWz1hpm6iX+i0b0sJAy2WEUMaBa7FFJBX0aQm8c8wdWTtItCTHORzdQ6SHa2Ge41h
	xLrrly1yqEZ9xF3NJaxBqoRSSmxsTJhxdyjpXPIB9678T1HaHmjX6p1F8yJh0Gql4w03GQregelBP
	tACYtxbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWuOm-0006cr-Oz; Fri, 08 May 2020 04:14:08 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWuOA-0006HB-EI
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 04:13:32 +0000
Received: by mail-pg1-x541.google.com with SMTP id 207so272690pgc.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 May 2020 21:13:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=FwcBHEkgpi816HDa38k8dH6l9iAu/nO4Zhpk53Krt/4=;
 b=HcozJuektBhBGZGzSb6NtiZUXW+vXKMz+tmI9HpmNvc6WneM4GYTXNr8Z9jNyMKaqU
 dBp5dsPXy/FmQHQQa7/6hcGuKWjHXY+cS+0YcnQzvypM5GvJJ53YaxVfhPYQDZ0wMFTi
 K5G1Klp0fpWZmr5uy/5ziRvjbmpIEEzRldIjRVMrHGjbvCQ2SWIz3Lfe6jpPKyScPOEI
 n/F+Bh6qLaN4YVt1Btx61eEJlmLn3xN2UnNrjpiNOZ75aWOdPboleRsRNObFS4D4ejpx
 EWXHrFGCsgQdna0sMAdu06UzueA+PnpdEz/A9tNfKOFLDL9Y5Ea3RWq9nhabQeiz5Y6H
 MtIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=FwcBHEkgpi816HDa38k8dH6l9iAu/nO4Zhpk53Krt/4=;
 b=nT7L5LTw0Jh/p4klp+Yn6jgEieSh1foWmYPyXUqa+pMw4MYhSFAGrIuBbKTiaXjIJt
 DOtK/uX2acXTTOBGO13viA7iRfwn5vZfkY615AwsDel0vr8xPQ4+h6m3YE3VjA48181C
 7LzHGxr/tbWeodbdM93vILNi5rRb6++/a3oeZRQFKY8Xe5MgyejZDB1Tgcdqd2xu8Go1
 IwWENdlJePI2N5pC1h4tlfsIzQiEWn4SfXOZmG2CGUWrAEXl1yMhV/OydRwsIVkbUREe
 3JQhNBhf3Bj+ZX0tPGBOn1gzdQkOl3KIpyDBeDNBxjRkAOLXM4MMax0vSKTfmm+Xd6Xp
 hNQA==
X-Gm-Message-State: AGi0PuYnOkO6n39JHVO1H2WKF+W2UR5qFLIVy6VUFVnW8CgWQntSPpCK
 KBXbVBcOlUyH725LSUaQkyo=
X-Google-Smtp-Source: APiQypLfzmDOwklw5AJIU1r5uLkQQrj0GcfwrLA3v2Q59+LXy/BZRcluqTxvpGbaYdlSHWH1dJyzWA==
X-Received: by 2002:a62:f941:: with SMTP id g1mr763602pfm.118.1588911209459;
 Thu, 07 May 2020 21:13:29 -0700 (PDT)
Received: from fmin-OptiPlex-7060.nreal.work ([103.206.190.146])
 by smtp.gmail.com with ESMTPSA id h12sm314868pfq.176.2020.05.07.21.13.25
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 07 May 2020 21:13:29 -0700 (PDT)
From: dillon.minfei@gmail.com
To: robh+dt@kernel.org, mcoquelin.stm32@gmail.com, alexandre.torgue@st.com,
 thierry.reding@gmail.com, sam@ravnborg.org, airlied@linux.ie,
 daniel@ffwll.ch, mturquette@baylibre.com, sboyd@kernel.org
Subject: [PATCH v2 2/5] ARM: dts: stm32: enable ltdc binding with ili9341 on
 stm32429-disco board
Date: Fri,  8 May 2020 12:13:11 +0800
Message-Id: <1588911194-12433-3-git-send-email-dillon.minfei@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1588911194-12433-1-git-send-email-dillon.minfei@gmail.com>
References: <1588911194-12433-1-git-send-email-dillon.minfei@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_211330_500114_CE39DFA2 
X-CRM114-Status: GOOD (  12.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dillon.minfei[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-stm32@st-md-mailman.stormreply.com,
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
 arch/arm/boot/dts/stm32f429-disco.dts | 40 +++++++++++++++++++++++++++++++++++
 1 file changed, 40 insertions(+)

diff --git a/arch/arm/boot/dts/stm32f429-disco.dts b/arch/arm/boot/dts/stm32f429-disco.dts
index 30c0f67..2d9637a 100644
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
@@ -127,3 +129,41 @@
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
+	cs-gpios = <&gpioc 2 GPIO_ACTIVE_LOW>;
+	dmas = <&dma2 3 2 0x400 0x0>,
+	       <&dma2 4 2 0x400 0x0>;
+	dma-names = "rx", "tx";
+	display: display@0{
+		/* Connect panel-ilitek-9341 to ltdc */
+		compatible = "stm32f429,ltdc-panel", "ilitek,ili9341";
+		reg = <0>;
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
+
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
