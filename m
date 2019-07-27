Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B973778A6
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 27 Jul 2019 14:13:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6NTAjUfn8fKG/nsG0gACIUJ9PD6PtH8oxCMXruv5t8I=; b=ngFdYg9Y3w2DkJ
	ZuD2HRZxQ4+wb5gCk2BAGcDMBhSjWdCuSda+ddvs8GfnbLp3O7u8kI+8mH4y20FVmfaWh20R4peFn
	pGh9S/1UoAE48zdZ8FVlD/tlr0ciddhYZgM+JEATKE0TK9LtlG/ZaQzFulQU91KntijW+JhOYRBXu
	O0piNruUUtI3lFJzl+QUgLi6pZXz4Yd9TIErOZKwi5pEL9uj2GIXszmoC/JcCM6JS/DC1JR2I3pNk
	j/qisR6ZmLW9W/g6urn1SGHo9ZsdDGDAL52QQmDpKO0mOUrf+KF8cHplcPA0DeWMHM6v1axNuOpX+
	0zL27EzWgmiyti6sgXZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrLa6-0001qU-Ag; Sat, 27 Jul 2019 12:13:46 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrLZS-0001Dh-T0; Sat, 27 Jul 2019 12:13:08 +0000
Received: by mail-wm1-x343.google.com with SMTP id h19so39734670wme.0;
 Sat, 27 Jul 2019 05:13:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zjlCoClPn+D5FtsYbuSMIRYDvq5CiGUidcCupd7dJ90=;
 b=EQ90Eqq29nsB2bd9Ao/E9BDvc34M6m2OUORIMOGkQInOkxt8F+vZTze3ALhPN5U//z
 5qZBaZBl0IU8hJ2gVN9KoZUdQAJyXmclk/HW3+ofk3eSJ2D6fBbtiaHaSWVdCZ4Qi/Av
 l4RpXo7W6Sbnp0CXOPaTF5oB5lopksyqVTJRzoBhzMmyZURS2Nh2VIzThcxLAXao3rmr
 O3VCe4SngwbQ/Fu0F6YnPW+zpQ5iy2Pci0LOX5czlku5Bst/8Wx94aPop6LCYzYr6p2P
 dDVieoEWxHr+pTdw7DHK1YdGBtL2d/KywrovVKbCvqk/Xa1cuZAe4Rj1o8YXoSGjPDcf
 y2SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zjlCoClPn+D5FtsYbuSMIRYDvq5CiGUidcCupd7dJ90=;
 b=t4CoBQ2L82cgYtnmGkeo1Y36aTKDmrXZNUFXj7PG8gBERcpvmzGcZL7r453Cp+80Vs
 +Mi5coeKQSsQmP7zQzaSh43TwITltvnQr1ygLcCZd3ory+EQYKtog7OwOlNw752A75Od
 BTZqCPP+pQ3xgMwsEXGqA4Ww6Ajw47m+ih/EmVFMz+CNS0ZmdngEGP29mQI+jnQ8L3g/
 Z1NkhOLYZUDhR2LC7hBFNQdo3eRMua9SEEthNJkWMKjR7ncSiabrZyQmYKsJm017J1z9
 aoD4jXy6IKn54vMgyaDPHg7g4tgzB+bbtNKIJRGsaNQ8acOIJHEks/9lXr29fc8rmzmU
 BHFA==
X-Gm-Message-State: APjAAAUx4GQuzOw7W1W1Hbq8rIlqCKZQd1NMvWvKm0aCOEusUCER3T1s
 i9YelfkuLZVbKYMlJTQGQLyHWTD3
X-Google-Smtp-Source: APXvYqy+qq3YOx5KKzeDY893qKSGWhvt8/1aA0TqVr6FY9sy46M3iJUKGQzpmPYsEiqOHSu6EZKLJw==
X-Received: by 2002:a1c:acc8:: with SMTP id
 v191mr92720425wme.177.1564229585104; 
 Sat, 27 Jul 2019 05:13:05 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133C65C00B418D0F4A25A19EC.dip0.t-ipconnect.de.
 [2003:f1:33c6:5c00:b418:d0f4:a25a:19ec])
 by smtp.googlemail.com with ESMTPSA id
 o26sm111786569wro.53.2019.07.27.05.13.04
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 27 Jul 2019 05:13:04 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org,
	khilman@baylibre.com
Subject: [PATCH v2 2/4] ARM: dts: meson8b: ec100: add the VDDEE regulator
Date: Sat, 27 Jul 2019 14:12:55 +0200
Message-Id: <20190727121257.18017-3-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190727121257.18017-1-martin.blumenstingl@googlemail.com>
References: <20190727121257.18017-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190727_051306_931049_D401F939 
X-CRM114-Status: GOOD (  12.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The VDDEE regulator is basically a copy of the VCCK regulator. VDDEE
supplies for example the Mali GPU and is controlled by PWM_D instead of
PWM_C.

Add the VDDEE PWM regulator and make it the supply of the Mali GPU.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 arch/arm/boot/dts/meson8b-ec100.dts | 31 ++++++++++++++++++++++++++---
 1 file changed, 28 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/meson8b-ec100.dts b/arch/arm/boot/dts/meson8b-ec100.dts
index 96d239d8334e..bed1dfef1985 100644
--- a/arch/arm/boot/dts/meson8b-ec100.dts
+++ b/arch/arm/boot/dts/meson8b-ec100.dts
@@ -219,6 +219,27 @@
 		 */
 		vin-supply = <&vcc_3v3>;
 	};
+
+	vddee: regulator-vddee {
+		/*
+		 * Silergy SY8089AAC-GP 2A continuous, 3A peak, 1MHz
+		 * Synchronous Step Down Regulator. Also called VDDAO
+		 * in a part of the schematics.
+		 */
+		compatible = "pwm-regulator";
+
+		regulator-name = "VDDEE";
+		regulator-min-microvolt = <860000>;
+		regulator-max-microvolt = <1140000>;
+
+		vin-supply = <&vcc_5v>;
+
+		pwms = <&pwm_cd 1 1148 0>;
+		pwm-dutycycle-range = <100 0>;
+
+		regulator-boot-on;
+		regulator-always-on;
+	};
 };
 
 &cpu0 {
@@ -269,6 +290,10 @@
 	};
 };
 
+&mali {
+	mali-supply = <&vddee>;
+};
+
 &saradc {
 	status = "okay";
 	vref-supply = <&vcc_1v8>;
@@ -350,10 +375,10 @@
 
 &pwm_cd {
 	status = "okay";
-	pinctrl-0 = <&pwm_c1_pins>;
+	pinctrl-0 = <&pwm_c1_pins>, <&pwm_d_pins>;
 	pinctrl-names = "default";
-	clocks = <&clkc CLKID_XTAL>;
-	clock-names = "clkin0";
+	clocks = <&clkc CLKID_XTAL>, <&clkc CLKID_XTAL>;
+	clock-names = "clkin0", "clkin1";
 };
 
 &rtc {
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
