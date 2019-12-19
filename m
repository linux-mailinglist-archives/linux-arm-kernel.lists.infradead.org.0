Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F160412681D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 18:30:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZrVuhFWXkztw6Z1rMotom4aG4IQXOi4tGY5Isje/0jc=; b=XoZgJ23aVou2d6
	XGposBy57g4WCVv41Ebk+IRy6GGP2Z1MBvvUb42Aj373NOjeNKprVhHILqKk+TWUKaLbuV2sCQTCW
	yA3NMLMAuQgLmKScq/wwFTGS8bVCqjLPlcOqV07P5FStEsyqLghDp+MuTJHIalbLx10V1SsRRnpIh
	S0dJ0IBpErhBNqrM65OrkrGd7iFnUQ7PYuS2tZzK3LH0DF9MYAq26ZI4/Fc0CfAn1RZKhPnx2/xzG
	ub0DEYkU6/yDnt+tDIrcO9MK4Mw92Oep2MvyamIz2S+0v5HDAnjhR5GNU02ns3losYWQQCw1EUDu3
	L4hxyZ18QIEtFC3o7ddA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihzca-0005iJ-6G; Thu, 19 Dec 2019 17:29:56 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihzbK-0004kV-31
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 17:28:40 +0000
Received: by mail-pf1-x442.google.com with SMTP id q10so3646121pfs.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Dec 2019 09:28:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=PkNqtr4xDaqPvN6Vsjd/SlEQaI+42QLqvwGVf2EVSjU=;
 b=A8WKkHjgMjO9lYnzetKkZVflOAc4LP08kIWqHRxOM86qXG7wzpd5ylfGwqBY3rTTtp
 XP8dNkC1cDopPzttDX7A+W+JaEhHDfnT9DhjE5EWa6JwrUDO1P9TIwW4Z0NbkbYFdfsP
 L3rOtzqHFgx1NPUo0h1mV3aoE4ZsJzesUIXVWR8tx3meyyu5le64yu2xjjWB2soI/pQn
 xqwwBVscx7C1W7s7/5LQ/wrG4B0JG47P/7Yn3HI3EpI2EY3MzwBgHZ0Zf5N8FO/t/ZbD
 HZXjRgkjJ6tH/svSMp4XlVVrEnloOwhA2Oco59k9F9F9V7he/qf9zMsjdkhXaxEU+X9J
 BWyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=PkNqtr4xDaqPvN6Vsjd/SlEQaI+42QLqvwGVf2EVSjU=;
 b=O8vxSlX/VsF2krabDRAKD295IxMFpiUdh/LF+MjS3GU0A25dC4Rtxp6suiEIgFR9bS
 ky24WBLordCXowuZvoq8Ts5w8HisG0ybsqDCFcstaHoYhBxDPPR5S2mk8ORrEc1c+2JU
 cbB7PFRpgvQRBaXy8BDCTg4yqZvmjKOPjEhbvp1AeL+16+g4KnDoclCQ/6i9olDi0T2j
 PnpIIUhTAyf+N19VfQFh1En20mTzTH8p/Y4ii6DF7KjDC7qGyKjaELIhU0gLTYvhoTH+
 jSQBSWPE8os0fNH4fOKRJvuetvOcxrSa4bFCNT7BZTEyFP3uK8nQkdJVlpe5lmlVH50V
 QTIA==
X-Gm-Message-State: APjAAAW/RRv7rHmJBfljiR8Jr2X83vgXq2v/xO+DrZsoCFMHP9K4ufGA
 JMZxLfagsiNFGHHbjDE3cYk=
X-Google-Smtp-Source: APXvYqzdaGLjH+p1iK/lsf/2RbMuIf5/AaD9ZMle/RdJ1ljBPI+3ZTkZaByhMP4ycU45gLNpiIdCaA==
X-Received: by 2002:aa7:8a8b:: with SMTP id a11mr11164923pfc.207.1576776517736; 
 Thu, 19 Dec 2019 09:28:37 -0800 (PST)
Received: from anarsoul-thinkpad.lan (216-71-213-236.dyn.novuscom.net.
 [216.71.213.236])
 by smtp.gmail.com with ESMTPSA id v143sm536209pfc.71.2019.12.19.09.28.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Dec 2019 09:28:37 -0800 (PST)
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
Subject: [PATCH v8 4/7] ARM: dts: sun8i-h3: Add thermal sensor and thermal
 zones
Date: Thu, 19 Dec 2019 09:28:20 -0800
Message-Id: <20191219172823.1652600-5-anarsoul@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191219172823.1652600-1-anarsoul@gmail.com>
References: <20191219172823.1652600-1-anarsoul@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_092838_127028_4E6DCE3F 
X-CRM114-Status: GOOD (  11.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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

There is just one sensor for the CPU.

Signed-off-by: Ondrej Jirman <megous@megous.com>
Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
---
 arch/arm/boot/dts/sun8i-h3.dtsi    | 20 ++++++++++++++++++++
 arch/arm/boot/dts/sunxi-h3-h5.dtsi |  6 ++++++
 2 files changed, 26 insertions(+)

diff --git a/arch/arm/boot/dts/sun8i-h3.dtsi b/arch/arm/boot/dts/sun8i-h3.dtsi
index fe773c72a69b..be8f601ab8cf 100644
--- a/arch/arm/boot/dts/sun8i-h3.dtsi
+++ b/arch/arm/boot/dts/sun8i-h3.dtsi
@@ -199,6 +199,26 @@ mali: gpu@1c40000 {
 			assigned-clocks = <&ccu CLK_GPU>;
 			assigned-clock-rates = <384000000>;
 		};
+
+		ths: thermal-sensor@1c25000 {
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
 
diff --git a/arch/arm/boot/dts/sunxi-h3-h5.dtsi b/arch/arm/boot/dts/sunxi-h3-h5.dtsi
index 0afea59486c2..6e68ed831015 100644
--- a/arch/arm/boot/dts/sunxi-h3-h5.dtsi
+++ b/arch/arm/boot/dts/sunxi-h3-h5.dtsi
@@ -231,6 +231,12 @@ mmc2: mmc@1c11000 {
 		sid: eeprom@1c14000 {
 			/* compatible is in per SoC .dtsi file */
 			reg = <0x1c14000 0x400>;
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			ths_calibration: thermal-sensor-calibration@34 {
+				reg = <0x34 4>;
+			};
 		};
 
 		usb_otg: usb@1c19000 {
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
