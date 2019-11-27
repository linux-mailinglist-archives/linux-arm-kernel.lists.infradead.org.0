Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E42E110AA36
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 06:31:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bKlRJEH2LkwblWUnwS1/KtpdYuQwadtDT4uL+Ih1zX0=; b=f8i0v5Khz6FFDR
	ofktrESA34hJh6j60LFv84pqb3AHZ5BKg9TKBwVk8yDr1DD884H+hF8E2faQhpDHXJwdn1ebT/FYX
	IWY5CT7dOsmDHzwp0pspmixUKn7bJkokepP3UrIpgweTlUgvY7ZEf98HfM+5rLaASbXP5Quvq22oU
	aD436WUYuIpeeNA0SC5nnE89FDj0wxAGVI/1vmjy7cAFjKJoTSWnKnApjwzcy3AOd3dK8R0GpcoYJ
	K9NWNx7FHw/CaCr8uW7w+BK5+iIRdvIMY2HE55PynVG1LRuCzHkOfeYShGihJLPFJKCG8Cys+4yW1
	nJBSmiN4baAqZKO040cA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZpum-0002RN-S4; Wed, 27 Nov 2019 05:31:00 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZptu-0001Ae-K5
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 05:30:10 +0000
Received: by mail-pg1-x542.google.com with SMTP id k1so10181580pgg.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 Nov 2019 21:30:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vhMu4ADnQOnOcJ6BIbNumeV+R111igTahrNXaoaT2bg=;
 b=JI9vifZO/hlNlsVdVbkQAosj4wct0Y/Ey9lvPG25NoShcDsu71L11PV96pOoMZL980
 5OITy+OqvSpfCMS4dHDjs+M9mEvAXpC1wPk0vzK5SAaM6xGy2F32057VuoCjH5P0Mz5I
 ksBf/dHPnPYiBp+jVZIbJmg4T7Zr0L6frm4tgTZYPA8/Vjnhg/Lif+jKoCRmIpVec24Z
 3nRW0I5i/LWRo5q9smCmOtu9ecJtC0384AvF8Fa+hGl43nnexUQHchB5yX3mvbZS9Ope
 U6ptKcW6pV6EGCxhP/yzZs150YOd+LEMO6ovqiDy1R75y2l6o8Jw8oWjT2MA1Im1z1b8
 XYLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vhMu4ADnQOnOcJ6BIbNumeV+R111igTahrNXaoaT2bg=;
 b=EM3eU6U0Mz5utHOfDeoZB/8aQeXG+Aspjo5m2xshOF9RlnIinS5IXWFuS1zOLHpWER
 YqAB4K7GbYJ33S4iUDGtCQaFUlaDhiFTU2qC0Ffp/MyxXRgO7t3rDXXfs4BAcRCFC0Xd
 dVy+Qf1kqD8J+1hlcVtfBnUivbCH5r5fVTvmBi7uYhg6LGjy/tnTqleV9EgZAnII8rvg
 A7E8DxRmREg8Q/DPF13Skx6xWjgIH+WxMQ3yfqqChjrCjka36p5DkEuAuZFHL1TGlb3v
 U2UjQE5OzpqalGrStfiGtmW8tM9j5j1IolTB61FSK+T1Uv0ZxSL93qK/VHpoUPESFxma
 RSLQ==
X-Gm-Message-State: APjAAAXWDX1Jhhcr84729b3i6aCIZIC+TKy5MZAU4ZvfGnzafob3IrGO
 NVeTuq0ppwPKpgw87Jlr/kg=
X-Google-Smtp-Source: APXvYqzVeWRQSqkKyH0MFBGH6b0eZNxA9y0WDKi5fRr/9ehuoyu+hi9MIjxq+m8LFWvRCkkg2Ut39Q==
X-Received: by 2002:a62:b40b:: with SMTP id h11mr44293621pfn.57.1574832605993; 
 Tue, 26 Nov 2019 21:30:05 -0800 (PST)
Received: from anarsoul-thinkpad.lan (216-71-213-236.dyn.novuscom.net.
 [216.71.213.236])
 by smtp.gmail.com with ESMTPSA id p38sm4360825pjp.27.2019.11.26.21.30.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 Nov 2019 21:30:05 -0800 (PST)
From: Vasily Khoruzhick <anarsoul@gmail.com>
To: Yangtao Li <tiny.windzz@gmail.com>, Zhang Rui <rui.zhang@intel.com>,
 Eduardo Valentin <edubezval@gmail.com>,
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
Subject: [PATCH v6 4/7] ARM: dts: sun8i-h3: Add thermal sensor and thermal
 zones
Date: Tue, 26 Nov 2019 21:29:32 -0800
Message-Id: <20191127052935.1719897-5-anarsoul@gmail.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191127052935.1719897-1-anarsoul@gmail.com>
References: <20191127052935.1719897-1-anarsoul@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_213006_773033_D9983DA7 
X-CRM114-Status: GOOD (  11.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (anarsoul[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ondrej Jirman <megous@megous.com>

There is just one sensor for the CPU.

Signed-off-by: Ondrej Jirman <megous@megous.com>
Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
---
 arch/arm/boot/dts/sun8i-h3.dtsi | 26 ++++++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/arch/arm/boot/dts/sun8i-h3.dtsi b/arch/arm/boot/dts/sun8i-h3.dtsi
index e37c30e811d3..42fd0418d678 100644
--- a/arch/arm/boot/dts/sun8i-h3.dtsi
+++ b/arch/arm/boot/dts/sun8i-h3.dtsi
@@ -177,6 +177,26 @@
 			assigned-clocks = <&ccu CLK_GPU>;
 			assigned-clock-rates = <384000000>;
 		};
+
+		ths: ths@1c25000 {
+			compatible = "allwinner,sun8i-h3-ths";
+			reg = <0x01c25000 0x400>;
+			interrupts = <GIC_SPI 31 IRQ_TYPE_LEVEL_HIGH>;
+			resets = <&ccu RST_BUS_THS>;
+			clocks = <&ccu CLK_BUS_THS>, <&ccu CLK_THS>;
+			clock-names = "bus", "mod";
+			nvmem-cells = <&ths_calibration>;
+			nvmem-cell-names = "calibration";
+			#thermal-sensor-cells = <0>;
+		};
+	};
+
+	thermal-zones {
+		cpu_thermal: cpu-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+			thermal-sensors = <&ths 0>;
+		};
 	};
 };
 
@@ -234,4 +254,10 @@
 
 &sid {
 	compatible = "allwinner,sun8i-h3-sid";
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+	ths_calibration: thermal-sensor-calibration@34 {
+		reg = <0x34 4>;
+	};
 };
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
