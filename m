Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9DA9123E79
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 05:23:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WIZKoK/jlhzYVKB/z8X7MFdV/Fc7Z+Ffiuhd0Ob3DVg=; b=ffj/I9Mk0tbRr3
	4IOPL+uF31bM7a6yWVXbSMHhO+2T8Bh5ZqWOzkRIJlE0T9Ieto+rk6uAxWz3PGGrsJ4I7n7MJt0/w
	Gb0+BDOPEcilbzV96F0Du5Lnvj/9sEAdooTDh/5hLjJ3lKO/guGy0xQ70pTEpTvBjLj5GZEZPIsDO
	zte4peXqXdue7MFCb8GettDRmOOwsHWFq0cggOzCMkoHIHfN5X926qQ64BatBsIpOOP3PNggzuWmf
	U0Rcu0YzziO4wO7iA5o0fY2+5416P1sKCemlf0aLzRwUUlCNU8qqdJrAP/38mDpvlVU/YfYNy20aM
	g11C7rAZfR8VbfFysCIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihQs1-00029z-AK; Wed, 18 Dec 2019 04:23:33 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihQq6-0000gy-RU
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 04:21:36 +0000
Received: by mail-pf1-x441.google.com with SMTP id z16so488488pfk.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Dec 2019 20:21:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=iNX03JAOppaU3e3PkzJ7AHYN2jOBOqdXzk0VsYgjatg=;
 b=jVqoF0hHjloQCi5UH4qQ9ART3reXrk4ao/eieXiXlKTbZbR0O3D1JQTW42ym6leW3N
 lO+0DHoBNw1ZxOBfWD1jEYDPL9jIbBChkvneuNd04gDEwLdCEI76a5znDNA7ApKlaKgp
 6xMo1RTDCkTfz3qB7OiNs+0JLT1Q6Uuw3CWJX3e6xvG8JUdq9Ls0X+5hZG9wmPMrbp6i
 KIn+wP3aC5+GmWBl1wNb4cbIgfNKHUYRz3q15ypI0HnzGS0EwYHSJB2tZZc7caAHPdm6
 0pO6/LeQ4NYXLJimevLa3OGR8RuignIHeJNAEzeIBbP3/ZDnlNIbS3YpxaoJFtMzFHMY
 f+/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=iNX03JAOppaU3e3PkzJ7AHYN2jOBOqdXzk0VsYgjatg=;
 b=Sn5fZaKVYEg/PsucWDh1jBcxqYjDbIFatruQe8d629rzGDsZh7zRifDZkCtrqh9cWI
 oBeM6dvcovyyNI0nuC1eu3t5GLcQhQICojfnHxAqQpx896Cb5foL8R8Dq6GN+ju0yIAC
 LVHSt8xlznosc1qyzma66TaZ1bUnaX4iGFkG2iK3T9OEep9SPoCxLGjvGRmTKca/s5nm
 lOVpIiV8iSm5dav1W9D56qz21blKAdrG3xW7gH9o11UqUnilzt8ntLg/XTWioQ+nvAdu
 inHUTGWjc5XK/LUV108Su8jI57XAX1Y/RQww+O6VDWYr4vKXDki8YDTku9bt422Fi0yZ
 RZsg==
X-Gm-Message-State: APjAAAWBhp5/p8XsEvh4t/iDRv/c8NKEYhL1DmVzA2D+Iw4KzDa8Rm4/
 4lib7Ni2ECfgjRbsrWoRcxI=
X-Google-Smtp-Source: APXvYqy4TSEggqwbg/BFa9ETiaGNQrz9Vejq1CKVDpkMenvRmSXBpmZp8SS0b5R+mUmZ/0fqmxVYqg==
X-Received: by 2002:a62:b519:: with SMTP id y25mr760491pfe.194.1576642893785; 
 Tue, 17 Dec 2019 20:21:33 -0800 (PST)
Received: from anarsoul-thinkpad.lan (216-71-213-236.dyn.novuscom.net.
 [216.71.213.236])
 by smtp.gmail.com with ESMTPSA id g17sm775380pfb.180.2019.12.17.20.21.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Dec 2019 20:21:33 -0800 (PST)
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
Subject: [PATCH v7 6/7] arm64: dts: allwinner: h6: Add thermal sensor and
 thermal zones
Date: Tue, 17 Dec 2019 20:21:20 -0800
Message-Id: <20191218042121.1471954-7-anarsoul@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191218042121.1471954-1-anarsoul@gmail.com>
References: <20191218042121.1471954-1-anarsoul@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_202134_914043_59B58BC3 
X-CRM114-Status: GOOD (  11.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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

There are two sensors, one for CPU, one for GPU.

Signed-off-by: Ondrej Jirman <megous@megous.com>
Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
---
 arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi | 33 ++++++++++++++++++++
 1 file changed, 33 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
index 29824081b43b..cdcb1a36301a 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
@@ -11,6 +11,7 @@
 #include <dt-bindings/reset/sun50i-h6-ccu.h>
 #include <dt-bindings/reset/sun50i-h6-r-ccu.h>
 #include <dt-bindings/reset/sun8i-de2.h>
+#include <dt-bindings/thermal/thermal.h>
 
 / {
 	interrupt-parent = <&gic>;
@@ -233,6 +234,12 @@ dma: dma-controller@3002000 {
 		sid: efuse@3006000 {
 			compatible = "allwinner,sun50i-h6-sid";
 			reg = <0x03006000 0x400>;
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			ths_calibration: thermal-sensor-calibration@14 {
+				reg = <0x14 0x6>;
+			};
 		};
 
 		watchdog: watchdog@30090a0 {
@@ -856,5 +863,31 @@ r_i2c: i2c@7081400 {
 			#address-cells = <1>;
 			#size-cells = <0>;
 		};
+
+		ths: thermal-sensor@5070400 {
+			compatible = "allwinner,sun50i-h6-ths";
+			reg = <0x05070400 0x100>;
+			interrupts = <GIC_SPI 15 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&ccu CLK_BUS_THS>;
+			clock-names = "bus";
+			resets = <&ccu RST_BUS_THS>;
+			nvmem-cells = <&ths_calibration>;
+			nvmem-cell-names = "calibration";
+			#thermal-sensor-cells = <1>;
+		};
+	};
+
+	thermal-zones {
+		cpu-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+			thermal-sensors = <&ths 0>;
+		};
+
+		gpu-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+			thermal-sensors = <&ths 1>;
+		};
 	};
 };
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
