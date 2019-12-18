Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 560D1123E76
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 05:22:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JlsJBoFhBaFCxUBSijTsSVmCAdkn9Rl/fHTR598nJTg=; b=hfhMSdJelC6f62
	0M7nCV2NxQuhq//b2ujAwyqIcAq91xFbIEg4X8xKioQ9ktYS4kKUq3/n3byy3C4DxGXbk7yHfQot1
	YO07DMcT9ps/oegWiBz0/AfFnYBlhPIhEEiLjV5gE2OqsBCyuun+YigV77UhCn+zcsixy9puR/9Su
	aQtVAv82afp9Csua/lwwEjK2UvhRq9tGMWwy6JX1l+euRnHioGFp9oXGOcCJyhkJszEwTR8TDImuo
	jRqPSzZyjZSstUVX27FRAyKE0hu5xI5FsWrNWsOT8ihZ9zY8esTSg3y8jkLL8tFbtanUg4SM6ucjT
	aateLNOGVAhnORbvi27g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihQr5-0001KI-QF; Wed, 18 Dec 2019 04:22:35 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihQq3-0000eG-OU
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 04:21:34 +0000
Received: by mail-pl1-x644.google.com with SMTP id c23so379291plz.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Dec 2019 20:21:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KISpMLvHz5xVmytt7DhjjbLP2haRM0PkAgFQCpHv2Bk=;
 b=D1O/XNqoZhFSe6At2GFzjWOZQKji8mS7q/uJADGXW995QW5W2bfDqAXNwrYFLBhuRt
 343GJ/jorl3lNoubrrzmfImFh5JpQmV3N+71pM3lYojO0m8xk/UfFLgyWPz9sSYm+fJB
 SZOpEeepYh3xl+sdOjJMSEiYg3auyD0gk9gqauTTSCMMR3lj303Ir7MNV3AUSf3Uh5Y+
 nrW9WLfMc1ebVi/3CZ7mMeb/0LISiLaiwgnh/4pBlWOPEDktcpeBJAfRN1sn/v0uc3Lo
 1UGEM7heCM+nIaFDJoI0HjvV3zjnvx+UFtZ1kryhe3eQdSdZ9fftYDk1uTYDHKJiK+E8
 Otdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KISpMLvHz5xVmytt7DhjjbLP2haRM0PkAgFQCpHv2Bk=;
 b=oEmXjkThrRwYfMEW1qNKt0+P8gpnIj+jEVbNXnF+BlJqe57rSR+0ZcHiBWDFHez+RW
 qB7jR8HdGfKhlhrrhsOw77g1UpJCbVUTsmim7ShrY6oF/bYg30JsLU/wcDaXTB8eBoiY
 oqQ+U1N/16xly97YpO6k2X1hUACF4D2JCdmn42N/vIWIPX3cr5vGntZ6Ap65g6MHNn1o
 HHkH7DopaCy1BACuwobwh1SAzwlNYUuqSxNlQ/L9vFgGbTmg8G5vgpDs0yByeJwUWZmB
 xSNvhNnWASfaRzZ7fvSm2nZSHVQ0OAtGs7cdjnnmlYkTDw+fnWWVQmEfVmXWBKCP22j/
 pf/Q==
X-Gm-Message-State: APjAAAXEj+aJCrYk3oVzEXKFLSZs7Kglhp8Wb9SJd9YG26kl/ZYLdo6L
 olzrbxcp68LN28nqJSqSY0k=
X-Google-Smtp-Source: APXvYqxpQXSaBHFKvE0AQvKbWCbghFwFtWjDzqLzbpP3qGi8vq787Tb9uoBWWTtqPEr3U1c4cXYsjQ==
X-Received: by 2002:a17:90a:ec0f:: with SMTP id
 l15mr276822pjy.39.1576642890876; 
 Tue, 17 Dec 2019 20:21:30 -0800 (PST)
Received: from anarsoul-thinkpad.lan (216-71-213-236.dyn.novuscom.net.
 [216.71.213.236])
 by smtp.gmail.com with ESMTPSA id g17sm775380pfb.180.2019.12.17.20.21.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Dec 2019 20:21:30 -0800 (PST)
From: Vasily Khoruzhick <anarsoul@gmail.com>
To: Yangtao Li <tiny.windzz@gmail.com>, Zhang Rui <rui.zhang@intel.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-pm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 =?UTF-8?q?Ond=C5=99ej=20Jirman?= <megous@megous.com>,
 linux-kernel@vger.kernel.org
Subject: [PATCH v7 3/7] ARM: dts: sun8i-a83t: Add thermal sensor and thermal
 zones
Date: Tue, 17 Dec 2019 20:21:17 -0800
Message-Id: <20191218042121.1471954-4-anarsoul@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191218042121.1471954-1-anarsoul@gmail.com>
References: <20191218042121.1471954-1-anarsoul@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_202131_800108_5FBFD8DD 
X-CRM114-Status: GOOD (  11.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (anarsoul[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ondrej Jirman <megous@megous.com>

There are three sensors, two for each CPU cluster, one for GPU.

Signed-off-by: Ondrej Jirman <megous@megous.com>
Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
---
 arch/arm/boot/dts/sun8i-a83t.dtsi | 36 +++++++++++++++++++++++++++++++
 1 file changed, 36 insertions(+)

diff --git a/arch/arm/boot/dts/sun8i-a83t.dtsi b/arch/arm/boot/dts/sun8i-a83t.dtsi
index 53c38deb8a08..93a6df11cb18 100644
--- a/arch/arm/boot/dts/sun8i-a83t.dtsi
+++ b/arch/arm/boot/dts/sun8i-a83t.dtsi
@@ -50,6 +50,7 @@
 #include <dt-bindings/reset/sun8i-a83t-ccu.h>
 #include <dt-bindings/reset/sun8i-de2.h>
 #include <dt-bindings/reset/sun8i-r-ccu.h>
+#include <dt-bindings/thermal/thermal.h>
 
 / {
 	interrupt-parent = <&gic>;
@@ -581,6 +582,12 @@ mmc2: mmc@1c11000 {
 		sid: eeprom@1c14000 {
 			compatible = "allwinner,sun8i-a83t-sid";
 			reg = <0x1c14000 0x400>;
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			ths_calibration: thermal-sensor-calibration@34 {
+				reg = <0x34 8>;
+			};
 		};
 
 		crypto: crypto@1c15000 {
@@ -1165,5 +1172,34 @@ r_rsb: rsb@1f03400 {
 			#address-cells = <1>;
 			#size-cells = <0>;
 		};
+
+		ths: thermal-sensor@1f04000 {
+			compatible = "allwinner,sun8i-a83t-ths";
+			reg = <0x01f04000 0x100>;
+			interrupts = <GIC_SPI 41 IRQ_TYPE_LEVEL_HIGH>;
+			nvmem-cells = <&ths_calibration>;
+			nvmem-cell-names = "calibration";
+			#thermal-sensor-cells = <1>;
+		};
+	};
+
+	thermal-zones {
+		cpu0_thermal: cpu0-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+			thermal-sensors = <&ths 0>;
+		};
+
+		cpu1_thermal: cpu1-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+			thermal-sensors = <&ths 1>;
+		};
+
+		gpu_thermal: gpu-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+			thermal-sensors = <&ths 2>;
+		};
 	};
 };
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
