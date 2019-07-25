Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 303917540C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 18:29:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w0shL1HuqUE9J9B3J/DoBYUbUq6ocYxV7kv5UzQWxag=; b=edrQnOcmk2iEP5
	JIvWrJvklxmdxhiV/+TDl1SEA1LY7FLK9RZByPUUYFIhLjvPWEAqxlu3r/42csK6DyGMSU1rBxqp3
	lMMUA1CD98rQHrcpHYkjKEPul+jXFd4k/HXKkorq293NqldAN8FKQ8l7Jwc/wLanPRMH/ZCR5knxL
	0Sn4XA64qSKRdf4MkNt9tubnlzmMAQfKCMWk0FC15Sd5OzeC4ww4ErpUsZjoczyGn8+uEI0JnAHzm
	YphPOBwDmLVeZfMcIIiBwbByCScNpqagplFpI1TM2GqITnY2lOZMtII+zSa2PPgBw436RYMQ6C0/P
	zf8/H+g3cnWs7ZlukZYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqgcV-00056F-OV; Thu, 25 Jul 2019 16:29:31 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqga0-0003hk-5J
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 16:26:59 +0000
Received: by mail-pf1-x442.google.com with SMTP id q10so23007223pff.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 25 Jul 2019 09:26:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bqpcsXZmBNcNCZ+dJ5YsfXapSa3gvNcFkNQXkC4vToI=;
 b=RKyMMI/Kn9+HymtnLVsfU62zok5NKwyMWy080+tuDHrjHg3CQdVIunMlikxImeB+13
 epl7Mz5md669zlsqUunFSV1SBFPTHWkxl1I7XtyjWoDRJBa0m63qwLI4Yt7vCIjEX3Cd
 9ghZBAG9xWMiyEH9kbwGmHsT++TunZU02kHxY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bqpcsXZmBNcNCZ+dJ5YsfXapSa3gvNcFkNQXkC4vToI=;
 b=BJOkR37uPfia8fMsNh40AXoDr0mCaB2hWYvaZmvB3oLDrDprBdD68k1EOdGftfIPrf
 X5YpM1htpswponqsbYDMTiSkQUdN4jl6R4Ab2+oAfXO1kgNpMzRT657EO7mRuvKHhn14
 2X+iB14jTbqIAXJFuHcUdXApE6S80qrefXlznZVEHkrNsLMFe4OXTP64nm65eIji++V2
 wb/vV0RSMlKRIXnzPueV/EaUBUxGIQe9Mz7y5kK/6QYCjGOSuNVtGJQNc7ld3iVvFNPv
 KRn+m4Rv1tLrPC0st7AmhiGZr6txdJv+4g9dbheCBlt3ovmZtCvv1UzhOjLhqhFA+Zpl
 Kq3A==
X-Gm-Message-State: APjAAAXt/yo4Na6yjiFR0WcASt8+XUit7B+bMjjHImZDvkfQyw7IYScM
 OKkyNmLt8KfIpNTLKzJPRbVWHrsw0qw=
X-Google-Smtp-Source: APXvYqyhnLfzaeqlRMgj+1CqP/hxlhYEVfu77cZafSafbH23Lhved39ayAYvsJ5mZyG6HybRfWSf7A==
X-Received: by 2002:a17:90a:20c6:: with SMTP id
 f64mr94433218pjg.57.1564072015359; 
 Thu, 25 Jul 2019 09:26:55 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
 by smtp.gmail.com with ESMTPSA id y12sm58898004pfn.187.2019.07.25.09.26.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 25 Jul 2019 09:26:54 -0700 (PDT)
From: Matthias Kaehlcke <mka@chromium.org>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH v3 5/5] ARM: dts: rockchip: add veyron-tiger board
Date: Thu, 25 Jul 2019 09:26:42 -0700
Message-Id: <20190725162642.250709-6-mka@chromium.org>
X-Mailer: git-send-email 2.22.0.709.g102302147b-goog
In-Reply-To: <20190725162642.250709-1-mka@chromium.org>
References: <20190725162642.250709-1-mka@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_092656_305237_DE23799E 
X-CRM114-Status: GOOD (  16.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, Matthias Kaehlcke <mka@chromium.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Also known as the AOpen Chromebase Mini.

tiger and fievel are share the same board, tiger has a display and
touchscreen, fievel not. Use the fievel .dts as base and add the
extra bits.

Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
---
Changes in v3:
- patch added to the series
---
 arch/arm/boot/dts/Makefile                |   1 +
 arch/arm/boot/dts/rk3288-veyron-tiger.dts | 125 ++++++++++++++++++++++
 2 files changed, 126 insertions(+)
 create mode 100644 arch/arm/boot/dts/rk3288-veyron-tiger.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index 9fd1e075c624..64b08922e75d 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -927,6 +927,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += \
 	rk3288-veyron-minnie.dtb \
 	rk3288-veyron-pinky.dtb \
 	rk3288-veyron-speedy.dtb \
+	rk3288-veyron-tiger.dtb \
 	rk3288-vyasa.dtb
 dtb-$(CONFIG_ARCH_S3C24XX) += \
 	s3c2416-smdk2416.dtb
diff --git a/arch/arm/boot/dts/rk3288-veyron-tiger.dts b/arch/arm/boot/dts/rk3288-veyron-tiger.dts
new file mode 100644
index 000000000000..fae26d530841
--- /dev/null
+++ b/arch/arm/boot/dts/rk3288-veyron-tiger.dts
@@ -0,0 +1,125 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Google Veyron Tiger Rev 0+ board device tree source
+ *
+ * Copyright 2016 Google, Inc
+ */
+
+/dts-v1/;
+#include "rk3288-veyron-fievel.dts"
+#include "rk3288-veyron-edp.dtsi"
+
+/ {
+	model = "Google Tiger";
+	compatible = "google,veyron-tiger-rev8", "google,veyron-tiger-rev7",
+		     "google,veyron-tiger-rev6", "google,veyron-tiger-rev5",
+		     "google,veyron-tiger-rev4", "google,veyron-tiger-rev3",
+		     "google,veyron-tiger-rev2", "google,veyron-tiger-rev1",
+		     "google,veyron-tiger-rev0", "google,veyron-tiger",
+		     "google,veyron", "rockchip,rk3288";
+
+	/delete-node/ vcc18-lcd;
+
+	vccsys: vccsys {
+		compatible = "regulator-fixed";
+		regulator-name = "vccsys";
+		regulator-boot-on;
+		regulator-always-on;
+	};
+};
+
+&backlight {
+	/* Tiger panel PWM must be >= 1%, so start non-zero brightness at 3 */
+	brightness-levels = <
+		  0   3   4   5   6   7
+		  8   9  10  11  12  13  14  15
+		 16  17  18  19  20  21  22  23
+		 24  25  26  27  28  29  30  31
+		 32  33  34  35  36  37  38  39
+		 40  41  42  43  44  45  46  47
+		 48  49  50  51  52  53  54  55
+		 56  57  58  59  60  61  62  63
+		 64  65  66  67  68  69  70  71
+		 72  73  74  75  76  77  78  79
+		 80  81  82  83  84  85  86  87
+		 88  89  90  91  92  93  94  95
+		 96  97  98  99 100 101 102 103
+		104 105 106 107 108 109 110 111
+		112 113 114 115 116 117 118 119
+		120 121 122 123 124 125 126 127
+		128 129 130 131 132 133 134 135
+		136 137 138 139 140 141 142 143
+		144 145 146 147 148 149 150 151
+		152 153 154 155 156 157 158 159
+		160 161 162 163 164 165 166 167
+		168 169 170 171 172 173 174 175
+		176 177 178 179 180 181 182 183
+		184 185 186 187 188 189 190 191
+		192 193 194 195 196 197 198 199
+		200 201 202 203 204 205 206 207
+		208 209 210 211 212 213 214 215
+		216 217 218 219 220 221 222 223
+		224 225 226 227 228 229 230 231
+		232 233 234 235 236 237 238 239
+		240 241 242 243 244 245 246 247
+		248 249 250 251 252 253 254 255>;
+};
+
+&backlight_regulator {
+	vin-supply = <&vccsys>;
+};
+
+&i2c3 {
+	status = "okay";
+
+	clock-frequency = <400000>;
+	i2c-scl-falling-time-ns = <50>;
+	i2c-scl-rising-time-ns = <300>;
+
+	touchscreen@10 {
+		compatible = "elan,ekth3500";
+		reg = <0x10>;
+		interrupt-parent = <&gpio2>;
+		interrupts = <RK_PB6 IRQ_TYPE_EDGE_FALLING>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&touch_int &touch_rst>;
+		reset-gpios = <&gpio2 RK_PB7 GPIO_ACTIVE_LOW>;
+		vcc33-supply = <&vcc33_io>;
+		vccio-supply = <&vcc33_io>;
+		wakeup-source;
+	};
+};
+
+&panel {
+	compatible = "auo,b101ean01", "simple-panel";
+
+	/delete-node/ panel-timing;
+
+	panel-timing {
+		clock-frequency = <66666667>;
+		hactive = <1280>;
+		hfront-porch = <18>;
+		hback-porch = <21>;
+		hsync-len = <32>;
+		vactive = <800>;
+		vfront-porch = <4>;
+		vback-porch = <8>;
+		vsync-len = <18>;
+	};
+};
+
+&pinctrl {
+	lcd {
+		/delete-node/ avdd-1v8-disp-en;
+	};
+
+	touchscreen {
+		touch_int: touch-int {
+			rockchip,pins = <2 RK_PB6 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		touch_rst: touch-rst {
+			rockchip,pins = <2 RK_PB7 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
-- 
2.22.0.709.g102302147b-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
