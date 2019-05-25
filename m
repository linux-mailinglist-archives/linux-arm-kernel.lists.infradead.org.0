Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A55F92A6B0
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 May 2019 21:02:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7Vf1MEPDNLtWM7kV5UUcuUAkFQCOQUYveO5P1Ai6EwU=; b=jzb7Fm68zBVBbA
	oGDbq/3R9f5xM9XtN2CehLh/j2gHR7czzDNMguYRzVmC7h1d3fAv3svt4m4/XgXH3SCZC6X+orKUp
	l0aVYB+QlMT5s+Swh3bf0DWCNPS0Ot6YWBi9U7Le90Efz4QNh5nZTnH4fD65JYvVMqT/LJyDNV5G8
	ayrRWYm0I0MZU6PfqqG//JnqyCx9rdR0U3xhkSc2gXw9k0NC4Ma4PHXcYsUN8noH8b0lfINmKzD9p
	S84iVnhNNIL7KZbPUyk/knaLCPWrbG+mOAMobB4qUcX+OqjrvNI1Rzmr2W77hXEHiL4dCE4G/hh7j
	18UAt9qIMDiA0MYyo/AA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUbwR-0002Ci-RE; Sat, 25 May 2019 19:02:51 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUbvq-0001Vw-OI; Sat, 25 May 2019 19:02:16 +0000
Received: by mail-wm1-x343.google.com with SMTP id i3so12384034wml.4;
 Sat, 25 May 2019 12:02:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hY4EIUIoxiYvaBszmOR28DF6dFcPx/awzYZQzheAKOs=;
 b=DFZwmXQ/WZsUQ8790l/6LLAUvVGJsQLtKP+hM/Tx6KqV4CvLbK0CftcSe3GvzigTpv
 qYDRqflxgNvukMWNLI9E+gp9qdoy8kuo2DgpBv6cJT+kfQTCgksyj25VtKWsFnEC64R9
 TIoZFTYPmUbZ2eDirtgK8RdeDQ1XLxitqvXKWS7z817uW+x5stjJpaQuHF3tBt6fgovj
 DnMXNCz7Y8YovDM+vmJA1EGss2MleIi8qPTPhL8oFsQKvQkW3+ycu21EgY3lswrtmz9u
 ngBHsDAYK+/6XqLjEOZtKqpT1z3LWF+2Uc+K9H/LJirb06BPJ4cVkhq0JF962OjwoHyp
 rLtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hY4EIUIoxiYvaBszmOR28DF6dFcPx/awzYZQzheAKOs=;
 b=Fp2TyxfvcjuT2rlYxJLsgRBrwMJkNGNVlENIBv/F1a4lAYRUCpqcIcBJyze4KHlow3
 +BiXtnivFGKdI/KYVxa6RGQKP5B+0rrzpKYlkbMDH3WDV1B0+9NAu1wDtMsuh8DSYmbo
 k0c8B2eIDqq0qeKzkfT/neQcebybPQNs5Pnr6gVRXz4nt1Q47ZSztet98eiLV1EGoRoL
 1Q3dTFxyLdu8gz2OfJ2qZsUcoN54EJj9TdgzwTWIMk0SJ5MLhy64m7RcB8E07tIfUlPG
 P4dfk3eO6HBv9bDShWlMgvGG7MCwOEg8xYye1sdvQzXj18JDyU3wKMcF8MNGSo0Sia22
 ylhg==
X-Gm-Message-State: APjAAAUAQF6EW8aseZU00qpXPO6Hh7l32w8GxcEXS+0nBaSyxOfhS/vA
 UB1X5vVg/8IWUtj9sIKzAqQTsfHa
X-Google-Smtp-Source: APXvYqzmjBfdzJH/hUQysMgtf43ZkY9RhyN22HEKGjOHDwOy9AMBulBsqjRe0cWrYmkC5ZBKrC4zmg==
X-Received: by 2002:a1c:3287:: with SMTP id y129mr4303123wmy.153.1558810933099; 
 Sat, 25 May 2019 12:02:13 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133DDA4007CB8841254CD64FD.dip0.t-ipconnect.de.
 [2003:f1:33dd:a400:7cb8:8412:54cd:64fd])
 by smtp.googlemail.com with ESMTPSA id f2sm6870426wme.12.2019.05.25.12.02.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 25 May 2019 12:02:12 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org,
	khilman@baylibre.com
Subject: [PATCH 3/4] ARM: dts: meson8b: odroidc1: add the VDDEE regulator
Date: Sat, 25 May 2019 21:02:03 +0200
Message-Id: <20190525190204.7897-4-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190525190204.7897-1-martin.blumenstingl@googlemail.com>
References: <20190525190204.7897-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190525_120214_788178_DE5B82E5 
X-CRM114-Status: GOOD (  13.16  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
index f3ad9397f670..893a3aa5ec36 100644
--- a/arch/arm/boot/dts/meson8b-odroidc1.dts
+++ b/arch/arm/boot/dts/meson8b-odroidc1.dts
@@ -194,6 +194,23 @@
 		vin-supply = <&p5v0>;
 	};
 
+	vddee: regulator-vcck {
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
@@ -315,6 +332,10 @@
 	pinctrl-names = "default";
 };
 
+&mali {
+	mali-supply = <&vddee>;
+};
+
 &saradc {
 	status = "okay";
 	vref-supply = <&vcc_1v8>;
@@ -347,10 +368,10 @@
 
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
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
