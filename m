Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52E2F10AA39
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 06:31:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3ZerTELTLjj7UUlIfQ+0cNnCMfDkn5d7q6xS1GcBTAg=; b=Te3i1F6rLS3yyF
	vIP116XObUmOJ4LuQzWwM28G2JJk1aUfDcDGiwvEmwHwnMPxRQBrYWRfm/uOKiXB7ad5t0ZCMcsCc
	BhsUdB2ig7Litxg6SVTPSrmEQ3j02LtUqIEIUuLvYIs+wx7SP3ZIjiXg3xh/KiqQ0TJ/SAwDKvWM/
	cDCLIZ2Y2MSKYZoq6fzd8IDFGw6AQrMEC3J5h2Ag5Xjbt83s/DMpszIYMz32GITQPhLv3kY0uRtGd
	uN3iGGwLKTYM5tgYLiyufQ2EcwdzV0d1nSWzlzntm0PyejFJbStCFlDvsmBUDTiRK1HkN/4mhIEiS
	05mbwgLA2yTgKZ3CpsEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZpvL-00033j-8G; Wed, 27 Nov 2019 05:31:35 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZpty-0001Jv-NL
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 05:30:12 +0000
Received: by mail-pl1-x644.google.com with SMTP id j12so9213134plt.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 Nov 2019 21:30:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=es+5okh9NS8TG2ZO2TIeJ4gr7E8aOMvh1xmhynBOxJ0=;
 b=fYLCla6VxiSdLxhIX+tOV9FiLnql2QSoN0V37eLRAwt/jUaz1fVC07pqIjcXCWloxI
 jc7L9C4W2UhhYd/QumnwLyI3s1blAn/R7lDsICqQ0uWV5vLr8HiKZYIh+UOo9XIhCV6c
 jOwWm8ctIIjtZLWE3H4I8upcwgZWEPKm/NMv5mAEmkFzyoXAFjyZDO0mPEDs7uqyipPU
 ohTlRSE54YOCLys+z02lkvZiIC9VEagy8yJquEBXKgHAwGdyGdhGoGBBX4sETQCpoDLn
 3DDREwO2KDrLy14DRMK49F+qJrg1el63Ci5fOnB4tUbVrYnGS9bEKfIa+4jQ5Dgc/MyX
 jx4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=es+5okh9NS8TG2ZO2TIeJ4gr7E8aOMvh1xmhynBOxJ0=;
 b=JuHWEnWGas4AMKKc7+xkVDo25aX/fY+uabFxn6gr6hbgIFTB0RLnmrBoHH+Qv7Ni+w
 nMkmvLElYbnsd/qOjmXtygqJc+tetl+2xy9U5G0Y6jIUvjzRJeupseTVwDtCN4CHLjke
 bypwgIu1UOlgGkhYmQnbQoUdOkaddF3KzyYQNsKjccahduRfUxe00NQG5Ni1m+bIoe/L
 z76nLW6fV8TylkJPxGW2uGR3d5iULeHypkKFQaoPhve2dxq+ezATvAFMe8+wUs0j/BCy
 YXBu6dddAmCBD02x8E+hUQOCRJ/R2H2r9gy4AuOZWVJ/zkN2MmDxTN5U7+mtevDMJDQK
 EnlQ==
X-Gm-Message-State: APjAAAVVBRZfMjPZfTZzzorxIBVVqSqke5mNrHlevfkUBcdshqy9elXW
 IuI1+i/y7hlZjhTauoHDtBk=
X-Google-Smtp-Source: APXvYqxqWeCIs+6yPmdynGT8mgYF35CDJXNWdDsV9G7Ufe6WhLxoqDLju9vn+6ZrizPnQ0hgDtcZsg==
X-Received: by 2002:a17:90a:a607:: with SMTP id
 c7mr3716982pjq.61.1574832607717; 
 Tue, 26 Nov 2019 21:30:07 -0800 (PST)
Received: from anarsoul-thinkpad.lan (216-71-213-236.dyn.novuscom.net.
 [216.71.213.236])
 by smtp.gmail.com with ESMTPSA id p38sm4360825pjp.27.2019.11.26.21.30.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 Nov 2019 21:30:07 -0800 (PST)
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
Subject: [PATCH v6 6/7] arm64: dts: allwinner: sun50i-h6: Add thermal sensor
 and thermal zones
Date: Tue, 26 Nov 2019 21:29:34 -0800
Message-Id: <20191127052935.1719897-7-anarsoul@gmail.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191127052935.1719897-1-anarsoul@gmail.com>
References: <20191127052935.1719897-1-anarsoul@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_213010_854718_28988102 
X-CRM114-Status: GOOD (  12.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
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

There are two sensors, one for CPU, one for GPU.

Signed-off-by: Ondrej Jirman <megous@megous.com>
Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
---
 arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi | 33 ++++++++++++++++++++
 1 file changed, 33 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
index 0d5ea19336a1..18288387762f 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
@@ -11,6 +11,7 @@
 #include <dt-bindings/reset/sun50i-h6-ccu.h>
 #include <dt-bindings/reset/sun50i-h6-r-ccu.h>
 #include <dt-bindings/reset/sun8i-de2.h>
+#include <dt-bindings/thermal/thermal.h>
 
 / {
 	interrupt-parent = <&gic>;
@@ -210,6 +211,12 @@
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
@@ -792,5 +799,31 @@
 			#address-cells = <1>;
 			#size-cells = <0>;
 		};
+
+		ths: ths@5070400 {
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
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
