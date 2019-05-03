Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F299E12BDA
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 12:48:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sbxfbHK0voAHRqZ3087cdQBMOzE6wqcZ1g7E6qrlgXQ=; b=cf8lRd9bgijGln
	7XF12Uydaaa+wL//YQXxEjO68w+W9zBP679v3AqvMQkZqKaLLtazxkTJ27p+97ljhY0e3XU0z605c
	RjvlNjLrLXg4b4R2izTufEF+34j9ls308nS0Tu3xSwe+Bi7925J7C25LX0oO4tNnM/Y2AgehrTCSe
	OnT2vE6fu0nKGyFMAm0n+41Kkc7baO6uVHjNe1otW0MGKUSDjm5LNlLbTPQARkqYfwFH+xLpR8Ogw
	8zstJ6FBKWJ4PxSN7FLYu2PqgAVuRVIjTIRySG8DYDLHld609rxpdFpKyu6OmeXYqyg7JMz4BYbOR
	OZuZIWAYqg5BKMybUtKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMVkC-0001W9-Lx; Fri, 03 May 2019 10:48:44 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMVjq-0001EN-Q8
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 10:48:28 +0000
Received: by mail-pf1-x441.google.com with SMTP id 10so2717101pfo.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 May 2019 03:48:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bzeisKrbd3NVmsuHkycqQpZOOZrTkWkXq9WqgrEgfB0=;
 b=JaYHuUbP9s75WQ/WiGrEuulQNNGYORAeMSOkH3HzsxPQrs/nzwS9L4hUoDT34F2xfn
 9e99AfPrndhTYVchadnaUZeewH6jOAqvWEaqck/WTr5Gy6slmD3ZksNS5ZnOuE5P9Zli
 TtpYK7WSP1/TBxYtukB9xjN9sh4up41WU7Siw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bzeisKrbd3NVmsuHkycqQpZOOZrTkWkXq9WqgrEgfB0=;
 b=A26glB7fi5MuwY2UxTG/tKdHKSRLLmjR2oyjuiRNUUiRnOhfSzRpaM5oajE8LOFmF5
 JXZlvLtDLhR4yh08Zv6+udz/GIP9nLjv/MCQUentG0iQs5F8IYCQRcVHv/pgblYXhol1
 jrRKil2g4CJGJFzIAywUJm+06rxs+5E2decTEy2Rke55Qjvg/fN7P1X4Wi765h6cUzHt
 Amc5xvC3hUqRo+WxteJujKdUe9WeBPJaCQrKq2LwzpRxC1+ZmglFC/a54ky4JCGGLTKB
 VI0lE3EJs73U5dNYy2bBdSaD39sPmh4ElvZJ7A3OzE7o0aVcqzSNigk3Lj7FWRi8s6fx
 SlRA==
X-Gm-Message-State: APjAAAU/47t4wSKuS2gDmb6KrHCoKtYDkmIdWPEZIEoaclJJPzUmS9sL
 qAbbX372s1k4r7+Cul4mdDNbag==
X-Google-Smtp-Source: APXvYqxyS/Viee8AeBaGT8IO9dn1bdGJz/q7gyZVY+P0K1JdPh+FtA+JdVDYOCKK3s8CgrrCjEdZUQ==
X-Received: by 2002:a62:b418:: with SMTP id h24mr9669983pfn.145.1556880502238; 
 Fri, 03 May 2019 03:48:22 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.165])
 by smtp.gmail.com with ESMTPSA id k9sm1965479pga.22.2019.05.03.03.48.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 03 May 2019 03:48:21 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v5 3/3] arm64: dts: allwinner: a64-oceanic-5205-5inmfd: Enable
 GT911 CTP
Date: Fri,  3 May 2019 16:17:53 +0530
Message-Id: <20190503104753.27562-3-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190503104753.27562-1-jagan@amarulasolutions.com>
References: <20190503104753.27562-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_034823_237812_ACE93125 
X-CRM114-Status: GOOD (  13.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 linux-sunxi@googlegroups.com, Jagan Teki <jagan@amarulasolutions.com>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Goodix GT911 CTP is bound with Oceanic 5205 5inMFD board.

The CTP connected to board with,
- SDA, SCK from i2c0
- GPIO-LD0 as AVDD28 supply
- PH4 gpio as interrupt pin
- PH11 gpio as reset pin
- X axis is inverted
- Y axis is inverted

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v5:
- none
Changes for v4:
- drop i2c1 pinctrl
Changes for v3:
- Use 2.8v for reg_ldo_io0
Changes for v2:
- drop i2c1, bias-pull-up


 .../sun50i-a64-oceanic-5205-5inmfd.dts        | 23 +++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-oceanic-5205-5inmfd.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-oceanic-5205-5inmfd.dts
index 6a2154525d1e..787ebd805a3b 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-oceanic-5205-5inmfd.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-oceanic-5205-5inmfd.dts
@@ -37,6 +37,22 @@
 	status = "okay";
 };
 
+&i2c0 {
+	status = "okay";
+
+	touchscreen@5d {
+		compatible = "goodix,gt911";
+		reg = <0x5d>;
+		AVDD28-supply = <&reg_ldo_io0>;			/* VDD_CTP: GPIO0-LDO */
+		interrupt-parent = <&pio>;
+		interrupts = <7 4 IRQ_TYPE_EDGE_FALLING>;
+		irq-gpios = <&pio 7 4 GPIO_ACTIVE_HIGH>;	/* CTP-INT: PH4 */
+		reset-gpios = <&pio 7 11 GPIO_ACTIVE_HIGH>;	/* CTP-RST: PH11 */
+		touchscreen-inverted-x;
+		touchscreen-inverted-y;
+	};
+};
+
 &mdio {
 	ext_rgmii_phy: ethernet-phy@1 {
 		compatible = "ethernet-phy-ieee802.3-c22";
@@ -52,6 +68,13 @@
 	regulator-name = "vcc-phy";
 };
 
+&reg_ldo_io0 {
+	regulator-min-microvolt = <2800000>;
+	regulator-max-microvolt = <2800000>;
+	regulator-name = "vdd-ctp";
+	status = "okay";
+};
+
 &uart0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&uart0_pb_pins>;
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
