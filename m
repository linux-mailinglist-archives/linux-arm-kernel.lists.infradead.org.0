Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41FC8CCA6D
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  5 Oct 2019 16:21:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MbG1mxHhshbFnCed8feO4oZbMmwfJoPgg2V+haohVk4=; b=CvVXg+nFOCNJI5
	7mE8fEVxSlQwjE1U+yA7sI5GB1xFvzkEVR+0qPrkkCSROW1A9tjwu7RGB0VJpUMQ5MlNn+7mZfYI6
	CZyU5dnIvczL4qtYTQSr28UxPzc4DYOKrKACS03ssmvmkBcdTNm2efnhxrv0M/WqNAh2RF8TiDLkf
	u5p9nrMvd34OTKtyKv041AyCecDcj0QC4iOqCSukfRPjjEJp7Wg6oXnq7s7ZppXVDLZbuceRgyjfV
	GzfjhvlLT/bO2e1X/8ep2vPipayvIi02IpfRaVk1YZtaRmnWlQ3J4NWbh0icwXun4u/HmcFDPr6a/
	DbmEJYhMW/ZN7vu5KTpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGkvy-0006I5-UU; Sat, 05 Oct 2019 14:21:22 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGkuU-0003z8-6V
 for linux-arm-kernel@lists.infradead.org; Sat, 05 Oct 2019 14:19:51 +0000
Received: by mail-pl1-x641.google.com with SMTP id d22so4551968pls.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 05 Oct 2019 07:19:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=mkXpYcbeC0bnNO0q+6BYbbUdKRmj3eZu6k2PkyZZ+20=;
 b=JrWVESZBcJgWFEPXetGcmowjNz2MF3jNDBTKbFar5RnY+PKgHXH8eVvgNRCq9tlvfO
 sKG5H5kI7PcBS7Gls0j4X8ssaVUr5p59L464hKLCuEhhbwBeITGMto8GYRngMviExJ/G
 p/oUnL8vpohQ+vwmALgGFNaH661mTU6zP/cUY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mkXpYcbeC0bnNO0q+6BYbbUdKRmj3eZu6k2PkyZZ+20=;
 b=qlma0zIGqgX3h7eg35L44oEiJP1h9kfaxTE/lUWMHjyWzsRUkuRPIrT8CPWMOy+yez
 E9mbQXS4bS1mHEC4gQT1nCCBjOqVbIMj1VpT5LBIUX6wdzGeXKIjqM1UjWQ08kKJ0gay
 CReusE17kipYIRwuGUKhEVdrXTEUEdrU6ggYM4lKfpU36MsWPRPP2NhtFQ+VzJXVWOh6
 Q4sTmhyU3WdmpEmvYQ8CyB4XF5Fk5mQR3fTGuUBYpB+Zi3QSuEiN+cr0efwh2W+wfq6T
 1hDiRI9HbRZSIhbskLxbGCAbz2c9sF3KdtbxbG2jltWdx3nIKedBvqX3UOB1rquDBpEl
 YuMg==
X-Gm-Message-State: APjAAAWdNrEsBagOZfzM4KF2xGpFpZ0T0ZkARti+a73xIq+rfvGsM44T
 0eya9sS4D3AngZ4EPOGuQFj6/w==
X-Google-Smtp-Source: APXvYqzPnYTsblSf60TZovxlUVlvSuc+XFLl1zKjvdo1Yvwqtsr2H7uR3x61W/FY7WkWYe/J6M0wOQ==
X-Received: by 2002:a17:902:684a:: with SMTP id
 f10mr9295764pln.91.1570285189302; 
 Sat, 05 Oct 2019 07:19:49 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.31])
 by smtp.gmail.com with ESMTPSA id y138sm8977604pfb.174.2019.10.05.07.19.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 05 Oct 2019 07:19:48 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [DO NOT MERGE] [PATCH v10 6/6] arm64: dts: allwinner: bananapi-m64:
 Enable Bananapi S070WV20-CT16 DSI panel
Date: Sat,  5 Oct 2019 19:49:13 +0530
Message-Id: <20191005141913.22020-7-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191005141913.22020-1-jagan@amarulasolutions.com>
References: <20191005141913.22020-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191005_071950_263720_DBEB0398 
X-CRM114-Status: GOOD (  11.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-sunxi <linux-sunxi@googlegroups.com>,
 Jagan Teki <jagan@amarulasolutions.com>, michael@amarulasolutions.com,
 linux-arm-kernel@lists.infradead.org, Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch add support for Bananapi S070WV20-CT16 DSI panel to
BPI-M64 board.

DSI panel connected via board DSI port with,
- DLDO1 as VCC-DSI supply
- DCDC1 as VDD supply
- PD7 gpio for lcd enable pin
- PD6 gpio for lcd reset pin
- PD5 gpio for backlight enable pin

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 .../dts/allwinner/sun50i-a64-bananapi-m64.dts | 31 +++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-bananapi-m64.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-bananapi-m64.dts
index 208373efee49..6beaecdd802a 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-bananapi-m64.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-bananapi-m64.dts
@@ -45,6 +45,7 @@
 #include "sun50i-a64.dtsi"
 
 #include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/pwm/pwm.h>
 
 / {
 	model = "BananaPi-M64";
@@ -56,6 +57,14 @@
 		serial1 = &uart1;
 	};
 
+	backlight: backlight {
+		compatible = "pwm-backlight";
+		pwms = <&r_pwm 0 50000 PWM_POLARITY_INVERTED>;
+		brightness-levels = <1 2 4 8 16 32 64 128 255>;
+		default-brightness-level = <2>;
+		enable-gpios = <&pio 3 5 GPIO_ACTIVE_HIGH>; /* LCD-BL-EN: PD5 */
+	};
+
 	chosen {
 		stdout-path = "serial0:115200n8";
 	};
@@ -116,6 +125,24 @@
 	status = "okay";
 };
 
+&dphy {
+	status = "okay";
+};
+
+&dsi {
+	vcc-dsi-supply = <&reg_dldo1>;		/* VCC3V3-DSI */
+	status = "okay";
+
+	panel@0 {
+		compatible = "bananapi,s070wv20-ct16-icn6211";
+		reg = <0>;
+		enable-gpios = <&pio 3 7 GPIO_ACTIVE_HIGH>; /* LCD-PWR-EN: PD7 */
+		reset-gpios = <&pio 3 6 GPIO_ACTIVE_HIGH>; /* LCD-RST: PD6 */
+		vdd-supply = <&reg_dcdc1>;
+		backlight = <&backlight>;
+	};
+};
+
 &ehci0 {
 	status = "okay";
 };
@@ -206,6 +233,10 @@
 	status = "okay";
 };
 
+&r_pwm {
+	status = "okay";
+};
+
 &r_rsb {
 	status = "okay";
 
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
