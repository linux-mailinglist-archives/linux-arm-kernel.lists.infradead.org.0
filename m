Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0F621CEE57
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 09:38:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3DneaNUSsq2aiserSPqgty67J272ya2wKxdhpdRAKIM=; b=OFxWt2NmQ6fIpt9oU+0vqUgCwc
	4/ipdbYpCcd8CNd0Iy6P8l+zLtq2sV/plElSQJ9mmyc0YB+wBHALQFZkiJcbzekHs/4grxHqh3spn
	4cHh+0xwlshGzw/uRAmoeeJsygRdZ4LoMMpnKpZD8OJ/tHVb5LHvaLlm8XjcrdDDMQbmU6mLpFLVa
	jgYCRACejHGCllIRlanzoshkDUoImVTrrJwiD1UW5Yqatd7pzXEUZYy4T0OkZJldg9qqKb7RtGbkL
	GURpF7+ODeLk5/+SmPdDrjq+aAnDjF/jHfZwuJrNJzq9CA5Tiu4QumMk6xOt5tq7l/CxNcAQXfR88
	SZfUGLlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYPU7-0002Yy-CU; Tue, 12 May 2020 07:37:51 +0000
Received: from mail-pg1-x532.google.com ([2607:f8b0:4864:20::532])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYPTL-00020B-Ut
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 07:37:05 +0000
Received: by mail-pg1-x532.google.com with SMTP id f6so5783607pgm.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 May 2020 00:37:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=r4ch8j5fUt4KnjnT79HJgzesM349QfaUvm49nNEOTbM=;
 b=liGnZv9V+YlD0rTxwCsrqKX9T7b/uFKEWEmcLhyUVdVM4OLuljhp0H4BIxzOKopWpH
 qD2ZsbfwZ04LJWj410Nwng4Fj9Ivnzfe8nuB/uggi+t82UEiUK9OrHzDBFeHv6X+IgCy
 nP91XfVq24+2of3EHWR5g9MciEg4KN/4Hi7UXzwcIJ8JJKjjYWhxj0wQmjrA7ZCfsJl7
 QsIDHvh8F8md2YbeJHHd6wUlJhmUwiFyJlZxsC2TiBbtqn6qtDtIUAzMhajplC8uB0dx
 cajfYKfQWnF9mJF1n+U0VlcM1/3fYMjkfqOL2LIiUMViyVHWMe2/Ot3Qiy+rmcwbLJfT
 PDrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=r4ch8j5fUt4KnjnT79HJgzesM349QfaUvm49nNEOTbM=;
 b=BKFfujbkDQjShED5PQt2zqDzQKbWyq2MbjPeBB5hsn34gaZUea1jpxFhPCElw+EBQc
 7pLCYvoH4n96/LAf882pSlNRKhCLXhlQjH4VzMySmCUh0zZ4wpxr19+OoG8FSUbBvwcM
 W0DtNV5zoM6W//8pbjtm2hLsW4XBb9LJ8faBaWRV1vUHiXcxagvY6QFqW4/x5zUolH8d
 xitRn1LhNeiRkk3PNCYm1UFi2tw/RnRg2qe7n1/wywrk0uSaURjo6KPSZpAPyHKunotO
 QaQ2vxy5IYm8InaJUY8M7oQ9v+AzXvZa+Fu/iayuXSKaRPEj7XRpdw9LXhpslir1R4cr
 8Tog==
X-Gm-Message-State: AGi0PuZmz3pO7T53AnJXxTvNl1MydSmKRN/lf7s4PgObwIvtYxF/gRy5
 1sBl75rEGamXk0Hr6KqW1aw=
X-Google-Smtp-Source: APiQypKyQ9WN5ToMhvq2wklP3XUxBEgEbvE5+fep2zT8czr9PcuMmduH6S9XdVQSc2xZkkJ2D80wig==
X-Received: by 2002:a62:1657:: with SMTP id 84mr19158275pfw.51.1589269022679; 
 Tue, 12 May 2020 00:37:02 -0700 (PDT)
Received: from fmin-OptiPlex-7060.nreal.work ([103.206.190.146])
 by smtp.gmail.com with ESMTPSA id 5sm11732471pjf.19.2020.05.12.00.36.59
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 12 May 2020 00:37:02 -0700 (PDT)
From: dillon.minfei@gmail.com
To: robh+dt@kernel.org, mcoquelin.stm32@gmail.com, alexandre.torgue@st.com,
 broonie@kernel.org, p.zabel@pengutronix.de
Subject: [PATCH v2 2/3] ARM: dts: stm32: enable l3gd20 on stm32429-disco board
Date: Tue, 12 May 2020 15:36:49 +0800
Message-Id: <1589269010-18472-3-git-send-email-dillon.minfei@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1589269010-18472-1-git-send-email-dillon.minfei@gmail.com>
References: <1589269010-18472-1-git-send-email-dillon.minfei@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_003704_017959_D9DB2989 
X-CRM114-Status: GOOD (  13.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:532 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dillon.minfei[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, dillonhua@gmail.com,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 dillon.minfei@gmail.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: dillon min <dillon.minfei@gmail.com>

L3gd20, st mems motion sensor, 3-axis digital output gyroscope,
connect to stm32f429 via spi5

Signed-off-by: dillon min <dillon.minfei@gmail.com>
---

Hi Alexandre,

V2:
    1, insert blank line at stm32f420-disco.dts line 143
    2, add more description about l3gd20 in commit message

V1:
    enable l3gd20 dts binding on stm32f429-disco

thanks.

dillon,

 arch/arm/boot/dts/stm32f429-disco.dts | 25 +++++++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/arch/arm/boot/dts/stm32f429-disco.dts b/arch/arm/boot/dts/stm32f429-disco.dts
index 30c0f67..1bfb903 100644
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
@@ -127,3 +129,26 @@
 	pinctrl-names = "default";
 	status = "okay";
 };
+
+&spi5 {
+	status = "okay";
+	pinctrl-0 = <&spi5_pins>;
+	pinctrl-names = "default";
+	#address-cells = <1>;
+	#size-cells = <0>;
+	cs-gpios = <&gpioc 1 GPIO_ACTIVE_LOW>;
+	dmas = <&dma2 3 2 0x400 0x0>,
+	       <&dma2 4 2 0x400 0x0>;
+	dma-names = "rx", "tx";
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
+};
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
