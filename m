Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1150C123E77
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 05:22:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZrVuhFWXkztw6Z1rMotom4aG4IQXOi4tGY5Isje/0jc=; b=hFexjHxEJWmfMN
	zHxYLV4vOavp122TR98ZKKLUrZOdbsurNO5U0t8RAiQGfeNcaKQ4ZKCP5oMGgQ6e528XO4Cw8aKTM
	2xHP8rtJSoqVXN/LKcdReNl4u9dttX+zUSjO/T9yjjePB/JWIgg6jk4vCkQ69uZ3TfAXjgq1NLUiZ
	zzYlAEjjhHxJ85LxygtKcB0etnBpV5SLVvghGSH9WBOq2kJr9QKk+7hdRwxDY7xtLyLsN+8dbc8Wt
	AGnTXcXOpOzk4wTKV762AFYtLR/Z3b4YtCo568egNnHs4diyUJOefYTK7D+Sn+kJoNe/ZROWh1BXV
	LOLfflKTkOOrYUx1jEDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihQrK-0001aZ-OD; Wed, 18 Dec 2019 04:22:50 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihQq4-0000f8-G6
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 04:21:34 +0000
Received: by mail-pg1-x541.google.com with SMTP id q127so532316pga.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Dec 2019 20:21:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=PkNqtr4xDaqPvN6Vsjd/SlEQaI+42QLqvwGVf2EVSjU=;
 b=oDxvUotxmEnupXyRIMaKZb9E3c2EvhpTe0MkxDhUYMbTrig9phgJLAXLjKVoPr57GD
 QOVpKPOFlxOBxc1+Nzn5n7tQtmzSiQwpBNxCbmNOC8GVdrp5McZBQbtJoOpQ0/7NPROz
 Fv1POekWpX8Np2TcRBtsDRA3ohyQA6lPJemVWtsnSqk5ilvOrME0rniXZPXoYMoZeBO6
 C9epm3/dwt7YlCEl5KxY2zxnrD5NkW0YuEsHwJ6WCIm0LKg26l6cIIj3QqFTisDNrWvu
 2O3OcLCKd+LPlNPaKdjznGI+Q5sD31Sz1itjaOvnwHerMHQXGjP/8YmLDQYUxzaiDbvi
 ouMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=PkNqtr4xDaqPvN6Vsjd/SlEQaI+42QLqvwGVf2EVSjU=;
 b=Se4cCyK45yuO44eY9P9TkmPutDChKBasq0kTXiWS0ZZ3sNRh4T9Z0yKe+n6SlJIW3c
 VX5OAU3nLWijQgDfKmYcmshs1zj7ueCZoNbkwpanDnsN++4J8QyZaGnWVq+az3WgQWkO
 wtmNNajM8d3V+E+yLUdICfA0gr/InfNBmFdJmy7qZhFL8+vj1mQvU+Kotc3px1zmQEQQ
 sIXuNuXxRQic7QNOLjl+JT9sSMXpA4fmspDBvkwdYriJiU8kRN4zmciSPfzIGiYXHkdW
 jm1RJwNCFtzu+7a/g6O4LYobYo2h7XiA1zhyyP8JJexj7mOwRW45RXR+T1oBAkV6QIz8
 W8fA==
X-Gm-Message-State: APjAAAVu1EkdehfsE9BZ2Kdj2UjnGxdqiG6wWR0U7mIdJFbPUAXcW4pY
 11W01r4Gp98UQ5nk0ctYkjk=
X-Google-Smtp-Source: APXvYqyaLIhC1zlYgDPB3PJwRcp6N6iXGD7adEnC/8FzIjMzlcznWf5ZIojHmwGv0rifSIQZS00k9w==
X-Received: by 2002:a63:504f:: with SMTP id q15mr636016pgl.8.1576642891885;
 Tue, 17 Dec 2019 20:21:31 -0800 (PST)
Received: from anarsoul-thinkpad.lan (216-71-213-236.dyn.novuscom.net.
 [216.71.213.236])
 by smtp.gmail.com with ESMTPSA id g17sm775380pfb.180.2019.12.17.20.21.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Dec 2019 20:21:31 -0800 (PST)
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
Subject: [PATCH v7 4/7] ARM: dts: sun8i-h3: Add thermal sensor and thermal
 zones
Date: Tue, 17 Dec 2019 20:21:18 -0800
Message-Id: <20191218042121.1471954-5-anarsoul@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191218042121.1471954-1-anarsoul@gmail.com>
References: <20191218042121.1471954-1-anarsoul@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_202132_567873_DD9CFE15 
X-CRM114-Status: GOOD (  12.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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
