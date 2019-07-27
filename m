Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 402E8778A9
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 27 Jul 2019 14:14:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CqLLq7dj2gozqkiZamugoARD0gpnoUQAYA9WPup7K7o=; b=ZFbez0Pd2csFc0
	OZI5dbxDUu1WWu+gC/tbrbA41zumn+XQnnn1uU61QtYxN2J519r7RSaY1u4vaTG8VJEV6WBBG0eFn
	EUw1V7nEu1e9Wh1JYWqcJish1LUFH0QISoMZvEDD+81qVVco69fCG2FqOQWMte4BDmlNUhB6hcYqO
	6zNKj059YTODvEj0pQdZ8oMyuXWY52gTW9lhSauXQVIwuGqz9QcC/CCtbB9/1kot225iPHlj998Er
	cgXCPuQAjPsVfTif1wnAGIOIzXvm6MPCOrZBcUWCU9DI8gw4NCbLVBfM6PLCbsS9iqxS6OgUgKru8
	uafJunMz4mInPOVQ3X+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrLaT-0002M6-H2; Sat, 27 Jul 2019 12:14:09 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrLZV-0001Dv-Ee; Sat, 27 Jul 2019 12:13:10 +0000
Received: by mail-wm1-x341.google.com with SMTP id l2so49692276wmg.0;
 Sat, 27 Jul 2019 05:13:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=M5VJ77HzSYMyOnNSU34/RgfTpL1VyZ0UT5tc7uiCpts=;
 b=bOyXsaODj+oGFDXnUUVuZUhUfBLQL2o2uw0ObAXJqabol6/LNMKy8PQiUMWDezAeCm
 nKDX37UApFaq3ykUpHVBNKpdBHdVxNdepU+1Kz+PAc9IyUonr7WqJ/WjaPFFp9cjZFfr
 yiF2qlYqsHcSyPsCYJFFGLl2QmtMnP7PDb7yoSq/RBvOAlyrcAvHOvgIaq7eUwXnz/lr
 FlTlDq/5INFPHfh1mo0p+hBWYKge9eD8+6TuZ4CoCQALMq3GbE6/gkzAIyfucXPeanSn
 tQk6BFgv1mrjIAdChmyHzQTLqH/Hzs5e1spOAfENPe1+UCYPF318Ee3AagW4taHmsnWr
 18xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=M5VJ77HzSYMyOnNSU34/RgfTpL1VyZ0UT5tc7uiCpts=;
 b=qh5fyeUR5k5AW+97P+rgSDms9Woa5swSHv2n5ApysBi+lQeH3Ch6ZsVPRKkAEkgtis
 aBcyTPjvnZUEjocnTxrKNSrcxMY0drJIcR/WSJfIjfigpNkjROXy7VuMTfiGUWfpGa//
 A5Wb4m4HHyRy9t4JcenrRZ9zYnxe+n73PeE2SQyvugCiO2rUCBEQgfkliRGn2cViJdFQ
 VY8SX2gO7vmzUKJHC59vsF11CCzmCr3aQ1vjtWPCKaOXns0fEVjzpsRPs/1bxkOVf/OL
 GgPquhkpuzdLCr+JoujHmVl4L9md/JWWNw1zw5WQ7nUIcGKG9QUgn4E2Xhkk+0i2OF/H
 gliw==
X-Gm-Message-State: APjAAAUzSNQGY+j6GjIN1grP5vOJlN5psooMGRQvS+Q+lLWXEYIEemBU
 WYw47eu2Qyw8dM3OyYFflY8mGT8u
X-Google-Smtp-Source: APXvYqxbZtZTQGMBIkUPVU7HbCAa3FLI7lq62O0oi2gTvqH7vtlDPfKNmRXpqxz193SKwUhMWl7l/g==
X-Received: by 2002:a1c:544d:: with SMTP id p13mr93863021wmi.78.1564229586042; 
 Sat, 27 Jul 2019 05:13:06 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133C65C00B418D0F4A25A19EC.dip0.t-ipconnect.de.
 [2003:f1:33c6:5c00:b418:d0f4:a25a:19ec])
 by smtp.googlemail.com with ESMTPSA id
 o26sm111786569wro.53.2019.07.27.05.13.05
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 27 Jul 2019 05:13:05 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org,
	khilman@baylibre.com
Subject: [PATCH v2 3/4] ARM: dts: meson8b: odroidc1: add the VDDEE regulator
Date: Sat, 27 Jul 2019 14:12:56 +0200
Message-Id: <20190727121257.18017-4-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190727121257.18017-1-martin.blumenstingl@googlemail.com>
References: <20190727121257.18017-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190727_051309_497946_6D10706C 
X-CRM114-Status: GOOD (  12.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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
 arch/arm/boot/dts/meson8b-odroidc1.dts | 27 +++++++++++++++++++++++---
 1 file changed, 24 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/meson8b-odroidc1.dts b/arch/arm/boot/dts/meson8b-odroidc1.dts
index 86c4614e0a38..90f66dc45115 100644
--- a/arch/arm/boot/dts/meson8b-odroidc1.dts
+++ b/arch/arm/boot/dts/meson8b-odroidc1.dts
@@ -154,6 +154,23 @@
 		vin-supply = <&p5v0>;
 	};
 
+	vddee: regulator-vddee {
+		/* Monolithic Power Systems MP2161 */
+		compatible = "pwm-regulator";
+
+		regulator-name = "VDDEE";
+		regulator-min-microvolt = <860000>;
+		regulator-max-microvolt = <1140000>;
+
+		vin-supply = <&p5v0>;
+
+		pwms = <&pwm_cd 1 12218 0>;
+		pwm-dutycycle-range = <91 0>;
+
+		regulator-boot-on;
+		regulator-always-on;
+	};
+
 	vdd_rtc: regulator-vdd-rtc {
 		/*
 		 * Torex Semiconductor XC6215 configured for a fixed output of
@@ -276,6 +293,10 @@
 	pinctrl-names = "default";
 };
 
+&mali {
+	mali-supply = <&vddee>;
+};
+
 &saradc {
 	status = "okay";
 	vref-supply = <&vcc_1v8>;
@@ -308,10 +329,10 @@
 
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
