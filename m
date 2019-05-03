Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31A4C12D10
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 13:59:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TdeL6+3kBgxmJ+p1NREkChGCxFJ0cqe0P5I4v3j/FoE=; b=fZt3vZuewYhTni
	1zvlQO9Q+9HHhwUegvQWUD7I6nMU8ApZ5rT+cqdExDbeWvgOYN6Ut1tX6nhdArGPomIhLXl7b8RV8
	GSPHkYS9GfxXpWppbGrq9LDrJsM4EGGH7uJZyUWykDH74p3o1N/OvpNiH4EyJBDXUdNi+t+/gjljE
	rdv6Od+jao0XA5PFw+BDVLIRCa0InMFv0f3Nd5ix3Eej6I+E1Im9/QyQHNy167BnHXtvFU3aPgg9E
	PBZ1b+8lRzrPkTrilZe3Odc2aHZkr8qsVPFIId16fdShV6PRLCyEVlB2iZoitCe9/ZJn+Qfe3kAac
	dw1l6alvEBwbsFw5aaww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMWr6-0007vz-WA; Fri, 03 May 2019 11:59:57 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMWqy-0007tQ-MF
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 11:59:50 +0000
Received: by mail-pf1-x444.google.com with SMTP id g3so2800423pfi.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 May 2019 04:59:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vJmfFw0q35lTjOMKi7JKfHPrHE1C5yCWa/soMCMhwUs=;
 b=I7fOhnOZJa+A0py26DsoUKzEdhCQ1Na8LcD3krdUX08liXV16VPm+vpVVvESTUGXqb
 raRABPxt/2QfdgUMAnAmMAZLdEoKSABgxP23+lYRierkNQgvlukHAOs1btvDIbNaZgzy
 dqWrouzbFseyrMB0cLM1C1o38DY6+iQEYa98Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vJmfFw0q35lTjOMKi7JKfHPrHE1C5yCWa/soMCMhwUs=;
 b=lv843zeCSIeQ/yxsfavbOdXWwNyBp5EwOueqdwh2ib8GlHMncFwL4qObJgIfc7GKwh
 jLb5nWUWvFoQJBWPlgzmJlfDyz/PyeIhyZtwqYCYZwr3sixyvFFDyjDbUuBIpBFuH39o
 MCryNe4zRpNBueDSDwIbpy36629F83RHpyvBMmhWeQJB2euXWOk4GniFlnOvOYtNhOts
 3zmVZI0QNVo2TDU8JZ7g6ys+JWw3msqkEKIo7Bl12rfGOpg3dSdBJHxanqymqgHJRkex
 j4GWiCHLD7AlVM32KtCfVqCNyD+Xm/RGwJYCTySb1p00yI79WjtE6PTjrUSWgXSfIRyB
 7HVw==
X-Gm-Message-State: APjAAAXdIPx4UqWO5xnKTqcppJ5nhvR/BkQS2txr/WCE+KwweAqk7MjQ
 wWDfUXxyrrFn7gbkpG45h9KvOw==
X-Google-Smtp-Source: APXvYqw45KysPDN37fptBttFYc0YSEKsnoAUh7GJerGfOPX/+DYNbUqT6l2ZfOY6T9cbIlI5Yeeltg==
X-Received: by 2002:a63:1604:: with SMTP id w4mr9850811pgl.148.1556884787760; 
 Fri, 03 May 2019 04:59:47 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.165])
 by smtp.gmail.com with ESMTPSA id f5sm2235940pgo.75.2019.05.03.04.59.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 03 May 2019 04:59:47 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v2] arm64: allwinner: h6: orangepi-one-plus: Add Ethernet
 support
Date: Fri,  3 May 2019 17:29:28 +0530
Message-Id: <20190503115928.27662-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_045948_754037_65F46B2E 
X-CRM114-Status: GOOD (  13.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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

Add Ethernet support for orangepi-one-plus board,

- Ethernet port connected via RTL8211E PHY
- PHY suppiled with
  GMAC-2V5, fixed regulator with GMAC_EN pin via PD6
  GMAC-3V, which is supplied by VCC3V3-MAC via aldo2
- RGMII-RESET pin connected via PD14

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v2:
- emac changes on top of https://patchwork.kernel.org/cover/10899529/
  series

 .../allwinner/sun50i-h6-orangepi-one-plus.dts |  8 ++++
 .../dts/allwinner/sun50i-h6-orangepi.dtsi     | 42 +++++++++++++++++++
 2 files changed, 50 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-one-plus.dts b/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-one-plus.dts
index 12e17567ab56..9e8ed1053715 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-one-plus.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-one-plus.dts
@@ -9,4 +9,12 @@
 / {
 	model = "OrangePi One Plus";
 	compatible = "xunlong,orangepi-one-plus", "allwinner,sun50i-h6";
+
+	aliases {
+		ethernet0 = &emac;
+	};
+};
+
+&emac {
+	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi.dtsi
index 62e27948a3fa..c48e24acaf8a 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi.dtsi
@@ -45,6 +45,48 @@
 		regulator-max-microvolt = <5000000>;
 		regulator-always-on;
 	};
+
+	/*
+	 * The board uses 2.5V RGMII signalling. Power sequence to enable
+	 * the phy is to enable GMAC-2V5 and GMAC-3V (aldo2) power rails
+	 * at the same time and to wait 100ms.
+	 */
+	reg_gmac_2v5: gmac-2v5 {
+		compatible = "regulator-fixed";
+		regulator-name = "gmac-2v5";
+		regulator-min-microvolt = <2500000>;
+		regulator-max-microvolt = <2500000>;
+		startup-delay-us = <100000>;
+		enable-active-high;
+		gpio = <&pio 3 6 GPIO_ACTIVE_HIGH>; /* GMAC_EN: PD6 */
+
+		/* The real parent of gmac-2v5 is reg_vcc5v, but we need to
+		 * enable two regulators to power the phy. This is one way
+		 * to achieve that.
+		 */
+		vin-supply = <&reg_aldo2>; /* VCC3V3-MAC: GMAC-3V */
+	};
+};
+
+&emac {
+	pinctrl-names = "default";
+	pinctrl-0 = <&ext_rgmii_pins>;
+	phy-mode = "rgmii";
+	phy-handle = <&ext_rgmii_phy>;
+	phy-supply = <&reg_gmac_2v5>;
+	allwinner,rx-delay-ps = <1500>;
+	allwinner,tx-delay-ps = <700>;
+};
+
+&mdio {
+	ext_rgmii_phy: ethernet-phy@1 {
+		compatible = "ethernet-phy-ieee802.3-c22";
+		reg = <1>;
+
+		reset-gpios = <&pio 3 14 GPIO_ACTIVE_LOW>; /* RGMII-RESET: PD14 */
+		reset-assert-us = <15000>;
+		reset-deassert-us = <40000>;
+	};
 };
 
 &ehci0 {
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
