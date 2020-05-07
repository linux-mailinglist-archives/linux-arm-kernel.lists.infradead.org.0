Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A46E21C87DA
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 13:16:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=j2cUs9fIsBfX5Vz83Vb0Lcey7Y0M/kw0jT/AG4S2uYg=; b=GX7
	cf/uNSDado/N0sMePY3RX4WVFHe1cn7xGzg7p2hw2IBU8fcgJWmijvyGGk0SLfLOQJqNnU2rMLU/B
	O4K/U2eEKRsPy1ZGDbsIndc9Hf3msHh27/7dI1bavPGg82WvmYjXc5C9jMXY9XJPqpd7kAVDsfcRO
	SZKe0QNJh28AGNZJpes/T+amWMnwVx7nJK7y4861B5J5V2t+2Dt4Fa2IktahHeeyzOjmZlgQWuFMT
	wHWuVokgCUOraKf9VhYHiZqtgejvzx3az4CEnEGTB1O7P4OM2yYAN4HPgYxn1atkIjh2GwkKJ94hI
	LdKjxSR/kxgAvdrSWnMbi7hsiEjzU8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWeVT-0001xS-Gl; Thu, 07 May 2020 11:15:59 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWeV1-0001m3-03
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 11:15:33 +0000
Received: by mail-pj1-x1044.google.com with SMTP id a7so2486533pju.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 May 2020 04:15:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=dzZv5l46H3vCVPERauYX1uGZ7zgOzPk4wkpAl/BDozc=;
 b=tSbG7BME/8vv5wmI/sQc+zwSPUoEoKgUp4LNjaY+Qkz0zVVKE0Rc1qtVsZEaOJLq+D
 T7zYpqzmNEPG8PPe3sDzQmIBrVsQ3YdZHaWVxolM7OaCc04AJ72uDYD8xMTigC8YZ73O
 DtHhv6NGLxThEGqUri6YXrisZZkQWhZux89L9reZ1ZM0TXb1FDtClGLs5Cn3ZioT6Iql
 HIsRp4uVK4sDNELmcnS2ni7fPUOeRRhGs0TKaajJ3SZlCaquvsun27EVEgONBnuQeCmM
 OwD+kegqJKmB4tqYRmpgHMdVurC9Ap7GZ9ZpV5TuKaJJXeD5aDbo5AIsWc3ulXRZ8dwr
 x4dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=dzZv5l46H3vCVPERauYX1uGZ7zgOzPk4wkpAl/BDozc=;
 b=Gd9cXCEvml9AiDgDSROIdbGuypqH9h2SNoT0Tgf1urtNqQjhxHXG6CrRu2hXFc6s8a
 ID5d4yi+IqFSZTP5BiQm5q2hH4guGGtxMh4bYh5sLYJTnLnafC1CoboKKIOVOhCJpxiz
 H/WEoiiR5Bl4PK0cseSQRv2umOC+isdLYBe1qxH2Cfjrd30P8Vkv+EEeEeDuds12guAN
 MghhueVefhIP5sYp5cQpeE/bpcC6GqxEJSjoLmC4vto2Ob4jF7MsJ5CtyF7e6tPtPeqr
 eWmwx6EnyAV6uMVoB4Y+rmWPmXRhij8OJWHOxSLC5A0q+H2l4UP5vku+9SneARBd7tq8
 vciw==
X-Gm-Message-State: AGi0PuYIl2x2s7pHhmSD5a6iM4ZCscorNWm16ztwgi+TkgXDqeYzzLov
 5VQebABmr5NBtHrUzBkPlp0=
X-Google-Smtp-Source: APiQypL0XwlSVSsL32FDaZck9swez03mevirdkbAAk25JZBdWGaET1BAU4+vusLEr5Iw20yBXb3YQA==
X-Received: by 2002:a17:90a:1f8f:: with SMTP id
 x15mr14723323pja.76.1588850129146; 
 Thu, 07 May 2020 04:15:29 -0700 (PDT)
Received: from fmin-OptiPlex-7060.nreal.work ([103.206.190.146])
 by smtp.gmail.com with ESMTPSA id z1sm7056388pjn.43.2020.05.07.04.15.26
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 07 May 2020 04:15:28 -0700 (PDT)
From: dillon.minfei@gmail.com
To: mcoquelin.stm32@gmail.com, alexandre.torgue@st.com,
 philippe.schenker@toradex.com
Subject: [PATCH V2 3/4] ARM: dts: stm32: enable stmpe811 on stm32429-disco
 board
Date: Thu,  7 May 2020 19:15:25 +0800
Message-Id: <1588850125-24344-1-git-send-email-dillon.minfei@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_041531_070918_DBF526C7 
X-CRM114-Status: GOOD (  11.75  )
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

[PATCH 3/4]: ARM: dts: stm32: enable stmpe811 on stm32429-disco

V2:
patch 3: remove unused id, blocks, irq-trigger

V1:
patch 4: fix read touch screen xyz timeout bug
patch 3: enable stmpe_touchscreen on stm32f429-disco board
patch 2: add i2c3 pin mux for stm32f4
patch 1: add i2c3 controller interface for stm32f4

Signed-off-by: dillon min <dillon.minfei@gmail.com>
---
 arch/arm/boot/dts/stm32f429-disco.dts | 47 +++++++++++++++++++++++++++++++++++
 1 file changed, 47 insertions(+)

diff --git a/arch/arm/boot/dts/stm32f429-disco.dts b/arch/arm/boot/dts/stm32f429-disco.dts
index 30c0f67..fad1ec1 100644
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
@@ -127,3 +129,48 @@
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
