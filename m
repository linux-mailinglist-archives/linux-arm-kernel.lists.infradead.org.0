Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC72012681B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 18:29:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JlsJBoFhBaFCxUBSijTsSVmCAdkn9Rl/fHTR598nJTg=; b=aukb3JZQ3iy6sD
	XDZlKrZrCaEHRwjK/hSH0QqaKUOOUouPhKnWF66vZUa5tGZgf8aZIZ224UMEzwginC2QBG2j1fsCA
	kETDvqPim0rf72H4k/2rpzqb+UDy82uZstMHUen+4OFPfGTFbgrEzlwR2OIJR5WmNf0EbgazIkE1y
	orDsRccAtlU0SJK2giJraKZSUJizMkk7S1qSwmMWU/yX6Zan6+epBPhRrRmVFCLC4DhYGdJKOIoYQ
	le4i0TakNr+gK2WbgT6iCI12RHlkl/emCmn4bdzPO6v7fUYSehOtlwcRFEWrmGUOteoHwei0YvM2l
	ucIhACntKKky2bZVbXxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihzcL-0005Sz-Je; Thu, 19 Dec 2019 17:29:41 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihzbJ-0004k5-A4
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 17:28:38 +0000
Received: by mail-pg1-x544.google.com with SMTP id k3so3482192pgc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Dec 2019 09:28:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KISpMLvHz5xVmytt7DhjjbLP2haRM0PkAgFQCpHv2Bk=;
 b=nFtibl5RU+x9j9Hq0TOVcdOAQ92sq7sVY9FDyJbqe0mba7+DJ8o/SMcCb/6ER0s2bo
 tKD1GRsCCkef81g/qyxVU23pdT6lEQ+cARXRKHfu9oHs2pQSpB327YxW/Ux/01QLeBUO
 vchOn/sOHhH7b5O2eu0Xan6AO/8yCJUgZGIKZSu8Naubpl5m09XTPZQcpPZULeTibpY3
 qM5ORWcFWEuDcuhmjL7I2vrVUp6KzDgX3YnVzR9meVxzqQLaM1Am71LQbMNR4AkP4Efs
 DQyGcsHfPmi5hoWZEjVtG3xEIUS0VAGeYo/mZM6rG6hsuJUbwrIW2WfF7euR2TO/v7tZ
 TR5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KISpMLvHz5xVmytt7DhjjbLP2haRM0PkAgFQCpHv2Bk=;
 b=I7Rqxh5rOIoxxlnghv23Y2ye/wfF0X0avFQGQENP9MN7/rAPAnq+Z+Ksx0S3XaW659
 Lx+BI0zPahizmZwhLNM2J2cgGZUFlN/tf8cRnCofQY/WC5sJmDlHXjTKc6t1IxhzWIZf
 etCx473Lqrc7DOjeuIkCFMcRoC0XvfcOCHK6Uz9L4owfhMIT0xvQiBlo64Ib+D8DBxDl
 CUF0GsnLeHvM/+oYpV+9xV7mgzhDvLXs1tTGY1b9ZOKe0mOviSuHpqXfFKOVqUfvmm06
 0wvwSP7zlD5d8UoClP/XL+IdSZNlM5BdjDyToWcrvAooziOVit78DarXpNIxPKRtr3/N
 KgJw==
X-Gm-Message-State: APjAAAVWwyLa+oPVAYa7yT1jcqh4AufMFLoa9tCJEACLayOf0gEOKIaa
 eEo4yVpeVXyOSKpiZqXJ7UE=
X-Google-Smtp-Source: APXvYqzK6gGkt5I0FcQEWOCwDvdo44z01s61+lkF2gcVccoqFSE7MChiFt+vUdKPpanp9u+uJTfsqw==
X-Received: by 2002:aa7:9816:: with SMTP id e22mr11077760pfl.229.1576776516713; 
 Thu, 19 Dec 2019 09:28:36 -0800 (PST)
Received: from anarsoul-thinkpad.lan (216-71-213-236.dyn.novuscom.net.
 [216.71.213.236])
 by smtp.gmail.com with ESMTPSA id v143sm536209pfc.71.2019.12.19.09.28.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Dec 2019 09:28:36 -0800 (PST)
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
Subject: [PATCH v8 3/7] ARM: dts: sun8i-a83t: Add thermal sensor and thermal
 zones
Date: Thu, 19 Dec 2019 09:28:19 -0800
Message-Id: <20191219172823.1652600-4-anarsoul@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191219172823.1652600-1-anarsoul@gmail.com>
References: <20191219172823.1652600-1-anarsoul@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_092837_349427_F7626C17 
X-CRM114-Status: GOOD (  11.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (anarsoul[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
