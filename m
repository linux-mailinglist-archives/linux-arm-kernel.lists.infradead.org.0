Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E77D71C8587
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 11:16:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=eyE1v1Zj4fpVOnomKAaaPEka9ZIgNNwuFkYc0Jev8GU=; b=Lasa1Fv5j7GzfnOxAeucRZEszI
	d10DW+8KhLTZ5ENPKMI27IK2/67wdJJtM4GkUI2Eq7WvDUixTlE+ks8wNecsKwK1Gqo2K5CAsG9vX
	M/wb7bdkDaHtz857oRwo+QHKhrg2uXY84QfPNT6SPloE6EHoaFzPbj5CQmV9YqeYnsvIZHpf6BqV/
	h0C70hsJijdOrvNhGqYd+Eq9hN5DqYAJwN6y1d7IiaXKtFb4AC3cvNaskX73/9HoSLJVdPLs9h1yQ
	xGyNaMokSFXfp0D9URTdPbGIy8pZ2w0BbDQ7CXJaFhhfBdLg2UHD3mUL7h3bid123Xm6y6skArET9
	ez8GXI7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWce6-0007YT-PX; Thu, 07 May 2020 09:16:46 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWcdm-0007QG-K1
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 09:16:27 +0000
Received: by mail-pl1-x643.google.com with SMTP id z6so1830746plk.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 May 2020 02:16:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=L4sM3AW3j6UIA7E8JtPyZaEOpo7L03/nH/zacWPyyAQ=;
 b=O+Eco3yTtSm5e3+ZZJEPQW7LYANk0ENsvTeGBvwhhxBe6+m53DXNgfqZ7KlDwc6zBf
 JCLRKcMxF6PEn50vbF+FNy9Ca9UdLt6ezVQyaiKWh8VK0EgLC+PocTQ/yPrm4+Do8wgf
 gNfYp2QPEOrvfTN3DnPJs5bycglTABJG+XJTlYpq1c+CQNHVVQcPLw8Y4+Ky6rXVAby3
 W4DbHEUaWenVwfWH88cdIn6tORbxYxpxeMuQxL6bfTI03XS2cSePVcvcab8cBgW5hFwB
 RPaIqLbrsfy9qwYdbvRIb21IB5r0QTfkx0wwZo5F6TEjBsFiD2XMmrhlYNbRyyISdZ5E
 5LaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=L4sM3AW3j6UIA7E8JtPyZaEOpo7L03/nH/zacWPyyAQ=;
 b=PlnA7edrDtfzeDNqXNYxQidugo1oMV+b/glgfnvR5D4F7MwaYJkCrrXHIEwGLeMhFK
 ZD1FDgvSkeW2HJVGbL4ZSEX6jAARcDIRtFE9nRGlwfNvYLhgTFlKuaFrTQmRbTTbuTmd
 SZ1Ze97goftm1CIuAzvr3xtYLSHjTKJw3z73VzCVUPq/wGR8EvqIXuvuAPxeic9xpC4G
 JR/NxBDl/bxltjQJI0OMDjoM7W+A5Y6ncNX+miXR3LTeB2aF9ZGYDRpcvTpa8ol+o7+1
 1WT62R1UEdTiw6/+XWtzRGFtn2fLoqPjD05+H8NfZlNmah6FafIVfQSsKQx7kMWXxwBb
 Awiw==
X-Gm-Message-State: AGi0PuaRyqNnezrzGzEdnnRUWv2rZ4YN9ZmfMU1Ql1CdsgJ/jK4vfE8w
 wsMhKK94Iw3HvlTjFlg8eHs9fSRr5L4=
X-Google-Smtp-Source: APiQypLbcwB9R3OvqJ1MZo4353PGHtm6f1Og5xJlUP4Dg+wBN0WjbeLkBl8G7D4+ObVPV5HAMXpj6g==
X-Received: by 2002:a17:902:b711:: with SMTP id
 d17mr12427536pls.333.1588842986055; 
 Thu, 07 May 2020 02:16:26 -0700 (PDT)
Received: from fmin-OptiPlex-7060.nreal.work ([103.206.190.146])
 by smtp.gmail.com with ESMTPSA id m8sm660100pjz.27.2020.05.07.02.16.23
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 07 May 2020 02:16:25 -0700 (PDT)
From: dillon.minfei@gmail.com
To: mcoquelin.stm32@gmail.com, alexandre.torgue@st.com,
 philippe.schenker@toradex.com
Subject: [PATCH 3/4] ARM: dts: stm32: enable stmpe811 on stm32429-disco board
Date: Thu,  7 May 2020 17:16:11 +0800
Message-Id: <1588842971-20495-2-git-send-email-dillon.minfei@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1588842971-20495-1-git-send-email-dillon.minfei@gmail.com>
References: <philippe.schenker@toradex.com>
 <1588842971-20495-1-git-send-email-dillon.minfei@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_021626_651305_CA038110 
X-CRM114-Status: GOOD (  12.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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
