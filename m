Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15BD41C83C9
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 09:47:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=gGqh5XXYkkLtzhSiO1NaQT0WrNKJqsLfdSo+C4C39xQ=; b=ocE
	xSR3MjY2hFgVKqMOiddTTsvwN65QMSDPtlITBfGOWgGbkA00kPeq/vZazKVVVKHabedWxtZyKff6+
	cYrnm6Txkif8aQ9cttzoz9IMQQHIjuVSK3lyoO6N+0F9mnHQ0ABBlu/tbvQexLDBxRd4hLJp9crwj
	XFVOsEZu2rdd3+81Qq8C5pwMXl8QAQQkT8EburJlKtUhs8MmVd52SDmWSVwcDwCExcR15wNhRjjx2
	8Vz6zwl5AslYXvDF7+EKeRYYwsHmqfh497+DXUshGFHMIpcVYY2QP6mwe1giAGy7eh0+FKK4FMw7y
	q5ak6A6SSRb2uO/s4PeTTMkdQTsnpeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWbG2-000410-TM; Thu, 07 May 2020 07:47:50 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWbFs-0003xd-BG
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 07:47:43 +0000
Received: by mail-pj1-x1044.google.com with SMTP id mq3so2292096pjb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 May 2020 00:47:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=TqXy+vuqTjO3oqyIdtSWrtx+1Hrshv6ESnu5XJvj/E8=;
 b=NU2GkN1yjcH6u3KT3vkWXG9SlTvbwUqPD9S/3WdLd+Ohg7j9b+XdKAqIZCuUq9mP62
 Ew2ih5yFbth9vRsBaElXi+MSFMhj8P6wa6Tbhc5sMdqV3G91rjC686sIsyzzmwAjlKv2
 9jX6d5ig9dKA1YaCtAnvVWr2gggenToNSNKW2eXyKeTWKdypHml/OjW146/OSFq1CKM9
 BeptFZEPuYszkZ+VaPMa5/4OhRPjiD1pURw8gmUjz/6jQz2B1pggXEezGQF+8qTa+WZD
 lQj/DEU7cmLDm4JFVLl2pmfRhJwGClY1ddK66fM1eISD9suO5WVxP8muL4U2TLUkWPsp
 B5RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=TqXy+vuqTjO3oqyIdtSWrtx+1Hrshv6ESnu5XJvj/E8=;
 b=V6IZVczVZ5GjDmlri2gdocF24Sn0ZSv9w8/THrzpmzyPK6gfb3iXGIzXg1jza07em3
 GpiMmyttn/cY0rJA6wdOOdaBw1tl8x+vXTlM9wFRW4ywVwJiZR9dOvrUiPBt+46uSVUb
 eW0a1oP0tQOQ+ihD1o3Srojkrn9ENZWdICGBPK0cT5pmdERwOxC1TYFk71O9ilLuOHG2
 2xsEVqEy/O/Xx63fEe92yCrjiC8eZj+IQHUKI35gLzOIH9aEhl4EQvoR7Qm3IOWeG1Mq
 aHP1GIZ/3v2n27vDNV35yz06xstOwVLFpMwBmMOyM4C2S3nbvIjCpj8chRjG/y1cSPM0
 83Mg==
X-Gm-Message-State: AGi0PuaRXyK/mBngsR1UwY+9uUkExiFyRu/KWAA9oaih7t23dnEq9BpW
 5ohnAjqvket2uUaFLO2tYuz4qUHAXxM=
X-Google-Smtp-Source: APiQypJCZvPn2WgwGdgm7EZr1FrGskXuaTUxgPsHrQygHo0xj1oOe2JLGZscA50x4REpF1O6/1Ky0g==
X-Received: by 2002:a17:902:aa94:: with SMTP id
 d20mr11658129plr.15.1588837658982; 
 Thu, 07 May 2020 00:47:38 -0700 (PDT)
Received: from fmin-OptiPlex-7060.nreal.work ([103.206.190.146])
 by smtp.gmail.com with ESMTPSA id s22sm4020610pfd.51.2020.05.07.00.47.36
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 07 May 2020 00:47:38 -0700 (PDT)
From: dillon.minfei@gmail.com
To: mcoquelin.stm32@gmail.com, alexandre.torgue@st.com,
 philippe.schenker@toradex.com
Subject: [PATCH 3/4] ARM: dts: stm32: enable stmpe811 on stm32429-disco board
Date: Thu,  7 May 2020 15:47:34 +0800
Message-Id: <1588837654-14315-1-git-send-email-dillon.minfei@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_004740_638838_529656A2 
X-CRM114-Status: GOOD (  10.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
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
Cc: dillon min <dillon.minfei@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: dillon min <dillon.minfei@gmail.com>

Enable the stmpe811 touch screen on stm32429-disco board.

Signed-off-by: dillon min <dillon.minfei@gmail.com>
---
 arch/arm/boot/dts/stm32f429-disco.dts | 50 +++++++++++++++++++++++++++++++++++
 1 file changed, 50 insertions(+)

diff --git a/arch/arm/boot/dts/stm32f429-disco.dts b/arch/arm/boot/dts/stm32f429-disco.dts
index 30c0f67..f9f21c8 100644
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
@@ -127,3 +129,51 @@
 	pinctrl-names = "default";
 	status = "okay";
 };
+
+&i2c3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c3_pins>;
+	clock-frequency = <100000>;
+	status = "okay";
+
+	stmpe811@41 {
+		compatible = "st,stmpe811";
+		reg = <0x41>;
+		interrupts = <15 IRQ_TYPE_EDGE_FALLING>;
+		interrupt-parent = <&gpioa>;
+		id = <0>;
+		blocks = <0x5>;
+		irq-trigger = <0x1>;
+		/* 3.25 MHz ADC clock speed */
+		st,adc-freq = <1>;
+		/* 12-bit ADC */
+		st,mod-12b = <1>;
+		/* internal ADC reference */
+		st,ref-sel = <0>;
+		/* ADC converstion time: 80 clocks */
+		st,sample-time = <4>;
+
+		stmpe_touchscreen {
+			compatible = "st,stmpe-ts";
+			/* 8 sample average control */
+			st,ave-ctrl = <3>;
+			/* 7 length fractional part in z */
+			st,fraction-z = <7>;
+			/*
+			 * 50 mA typical 80 mA max touchscreen drivers
+			 * current limit value
+			 */
+			st,i-drive = <1>;
+			/* 1 ms panel driver settling time */
+			st,settling = <3>;
+			/* 5 ms touch detect interrupt delay */
+			st,touch-det-delay = <5>;
+		};
+
+		stmpe_adc {
+			compatible = "st,stmpe-adc";
+			/* forbid to use ADC channels 3-0 (touch) */
+			st,norequest-mask = <0x0F>;
+		};
+	};
+};
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
