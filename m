Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A35981CA048
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 03:47:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=VPc74lXENv6uqQRzuh3N9k0Bdcpw4dPyDU4ev9YbFmw=; b=mGWsx9XaIoQTzRNSgps5Sj/389
	8XukBkWeE2skEbI+kySeLcKTNph2/3RXAoLxN8AdPKUfw5AOUtoSB0KYvE6BnUuos6C1qBUfeUrpR
	4pC0rorAE4e1pgDp25Ndz7GYYJdX/sHE+nbSPCR5atjo1sWmQGfdVyh4dJtU7aVpaqkk+EG2MV8Y2
	AROrIW4hnAfiQMb+7Y2dvkffN6fgKAjpH8pGgmw+XIDgFm7QWfvQKNvmEaWX8GUel/5kDHVGU7LFU
	vXj7sq2CUv8VYUMJ0krwXwDaCmZIK6NhKb9ifsvNvNrnd3aT22GU0nV5d6+LzM4Qh1ltSn7gzOhv1
	NHKfErCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWs70-000533-H9; Fri, 08 May 2020 01:47:38 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWs65-0004Lg-St
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 01:46:43 +0000
Received: by mail-pj1-x1041.google.com with SMTP id fu13so3495963pjb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 May 2020 18:46:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=g21VM0N/xeIa/BHhtzwrufGFeXAe+t8tpDwjYGOH/p4=;
 b=rgetU6OpAMU4D1kkUKoI+J0pdPOpRA+4I02nwC0ZKFmz2pAXs3HVpNB+cB0o0V6Y5L
 W9Lw+p9mZueptmpC3Wo+pKScnSNvsDmzqUG/B4EmIqu5P1wAs9VnyX4ghEhjmMHCO7U8
 q/L0cgAR6S+qEMyzSa7uvyyvNz3CxRxQqsx2nKz71RXv9J3oEh3wFGrpWEsyfD+hhpNG
 D2BWRyWos3AiKBo/5eZwaysxRCJ/8c8X4QAapIWbMpM+jHRiURiw26YlLqmr4wbuDT5r
 tWyNuMGMhfYCu/XcHQtVWT0dW0YwGZwp5OM80nkNhajmM/Nsls0yeAeQq/ST1LtjfaQ3
 blQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=g21VM0N/xeIa/BHhtzwrufGFeXAe+t8tpDwjYGOH/p4=;
 b=SRravjJkCuCUZi7qzPuFxoEq53Tuvkqm2BM2ZlVUbjWbLc/JFvpFPz/yd918egJAPl
 Xl1fPPk9O9YJba0QcGNYT9ZZkIIwtqMiK6Xj2JPr66h8Nu70fj4Yfj103Cvl8epX//Lg
 4RjWRdRemhIkppmq3iy150fjsozvTx2zy9Qkq5bpVMyNJFQdzpOlhxnxUi9vhXRW+V4Y
 TlNgI+8gYvL/NF76rK0OUVaGXdX9itTdp9/v28vvEbK1Xh7ZEmIwtsRvQ27yIJuYcFU8
 c9g2LVaP4hsEQcbxx6P2h6/nxWNJ08/yhYFWvvOX9Zvzsre4pUYBPdbUr717wx43D9Q7
 NFIg==
X-Gm-Message-State: AGi0PuZD2RftHobU5b+Z3lKA7wdrXXqpU3UDG2J4uoF6TJxzOZYCuk0J
 5tRjEjSjzb/yB9phCSNwx78=
X-Google-Smtp-Source: APiQypI7IDVKxcFmHkJ4Xm0Fi0OGTuWgWHi+XPxKF9hO8yv4yELTdrT+trWL0uEpQEME++1N51EJtQ==
X-Received: by 2002:a17:90a:414e:: with SMTP id
 m14mr3414310pjg.227.1588902401207; 
 Thu, 07 May 2020 18:46:41 -0700 (PDT)
Received: from fmin-OptiPlex-7060.nreal.work ([103.206.190.146])
 by smtp.gmail.com with ESMTPSA id f74sm9270816pje.3.2020.05.07.18.46.38
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 07 May 2020 18:46:40 -0700 (PDT)
From: dillon.minfei@gmail.com
To: mcoquelin.stm32@gmail.com, alexandre.torgue@st.com,
 philippe.schenker@toradex.com
Subject: [PATCH v3 3/4] ARM: dts: stm32: enable stmpe811 on stm32429-disco
 board
Date: Fri,  8 May 2020 09:46:27 +0800
Message-Id: <1588902388-4596-4-git-send-email-dillon.minfei@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1588902388-4596-1-git-send-email-dillon.minfei@gmail.com>
References: <1588902388-4596-1-git-send-email-dillon.minfei@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_184641_952898_D21D066C 
X-CRM114-Status: GOOD (  12.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
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

Hi, Philippe Schenker, Alexandre Torgue

compare to [patch v1 3/4], this patch remove id, blocks, irq-trigger from
stmpe811 dts, as they not used by driver anymore.

thanks.

dillon,

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
