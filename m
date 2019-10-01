Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E0EAC2DE9
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 09:40:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5DH5g2+6t9ch0bMDLDxqx4pmdvstPROw/5Fmm81rlGw=; b=DOiVdQqz9KWG/N
	mWkx1vHH4BBkhpAyM4Yo4ooTL3zwG98QpLO3/40t7Wep/YVvViMzPEiozz46oxCJEPYd3c5hlkQJI
	3rAKpVmr0ZhTAnyDYFKm1InlUI0S4BJjVHIoC1jkz5rXC1GFIXSKOnYoISLtmw7ntIorDgMqVTOGp
	e7WeQb9Xg0XvmhP3ReI03rDklxH9OLu1jXIcJDac3Kxg5i/pQ8RYgRsvWjNEqSwSYxkj3rBM8+qk/
	/WF+prWess0DWikC+MlfzP5JQD48bhL2VDHcmFCrjJPgvQ1M/dKu3ma+ZpDLFbkYUhIgkLgQRn1JM
	uts2dfh1VBy/4lAyraTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFClH-0002FL-KY; Tue, 01 Oct 2019 07:39:55 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFCko-0001p5-5Q; Tue, 01 Oct 2019 07:39:27 +0000
Received: by mail-pf1-x442.google.com with SMTP id y5so7303004pfo.4;
 Tue, 01 Oct 2019 00:39:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=fNc5aCo2FNNct4zlj4DcbJphk7+e/9lUuXxqxufNkHM=;
 b=CdT8HQ33dsPzUsXPrl2pUysW+nAUIfYSBw5M/dw2jbw9tTwfuq6w8ox0zRwcNwFPfh
 3NhFDaeIFn2/nMCZePcYXFKQveCrQAmIANCCb7D1qedvb1mdK5fFIh4TYxpK6OkkrvOw
 z74bDX8y0nmtWeAXMs+hT+g7PzWnsX+BEjA083HT1S7d9q/znrbZGixkTnHLhuRWDrUp
 2aJYPGjluhi3+ylADb+R2T7avwkxXhdbuU8rDVvO91rL2VL4mWWcdfW4lbC+258taKey
 vC/fb0cSxX6bTlVjWHEuJi8zgHk/iIeT2IGeqJmR7TQhMPLJj224om5QQhetW9vdfPRO
 u3xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fNc5aCo2FNNct4zlj4DcbJphk7+e/9lUuXxqxufNkHM=;
 b=iIw9Z0ONwV3kCD8p/mj4XB5mWspvfF0tqNrO+qORWSdQEI2OHynv8PD7eY+40zbtFu
 MA+Zwn10qkH6UHRhs4myegFr8i9ygvuo3Gc772aElnuMH9jMZ51wmMbZFChf/v3WfVpR
 eeLKtrTRYZPWmRqAKE4tDxrB6CRX5XpaPouyEzli1kWvwZq8XW3vrV10Rs0jvtCCIZ5M
 VGVSdpw+g7DKULkU+GXGurYRvGFwv6DS7EqUgWpP/6l3Gxt9oawiPGE26zm6Uf5AkTzH
 Ql6nQm2LHmXu/MnE6CuAS7xbBe8IFXXZfB7rbvP+sQszQJL5z0/tB13oxHrO9FiZkrEH
 b1eQ==
X-Gm-Message-State: APjAAAXuI6mus0w3Y25Ubn7nPSYcUuVopRRUzn4T1WgEldeH0PJCMwkn
 D8ZSfQfwojV5HWd+NlfjSx8=
X-Google-Smtp-Source: APXvYqwgtK/7jldY+PAliS3rvplMP8Emk6WfbG3i1Hz6v+88R0MQjrfRwFI6nYy3omOa+rOI8cd5lA==
X-Received: by 2002:a63:5144:: with SMTP id r4mr5888508pgl.339.1569915564230; 
 Tue, 01 Oct 2019 00:39:24 -0700 (PDT)
Received: from localhost.localdomain ([103.51.74.191])
 by smtp.gmail.com with ESMTPSA id g19sm23133024pgm.63.2019.10.01.00.39.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Oct 2019 00:39:23 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Kevin Hilman <khilman@baylibre.com>
Subject: [PATCHv3 RESEND-next 2/3] arm64: dts: meson: odroid-c2: Add missing
 regulator linked to VDDIO_AO3V3 regulator
Date: Tue,  1 Oct 2019 07:39:00 +0000
Message-Id: <20191001073901.372-3-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191001073901.372-1-linux.amoon@gmail.com>
References: <20191001073901.372-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_003926_211937_FACC24ED 
X-CRM114-Status: GOOD (  11.83  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [103.51.74.191 listed in dnsbl.sorbs.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (linux.amoon[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As per schematics TFLASH_VDD, TF_IO, VCC3V3 fixed regulator output which
is supplied by VDDIO_AO3V3.

While here, move the comment name with the signal name in the
schematics above the gpio property to make it consistent with other
regulators.

Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: Jerome Brunet <jbrunet@baylibre.com>
Cc: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
changes from previous.
Patchv1
- Fix the typo.
- Add the comment as per Martin's suggestion.
- Added Martin's review tags
Patchv2
- Added missing Neil's Reviewed-by tags.
---
 arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts b/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
index 5adecdf3b175..2fcd512373a3 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
@@ -67,17 +67,19 @@
 	};
 
 	tflash_vdd: regulator-tflash_vdd {
-		/*
-		 * signal name from schematics: TFLASH_VDD_EN
-		 */
 		compatible = "regulator-fixed";
 
 		regulator-name = "TFLASH_VDD";
 		regulator-min-microvolt = <3300000>;
 		regulator-max-microvolt = <3300000>;
 
+		/*
+		 * signal name from schematics: TFLASH_VDD_EN
+		 */
 		gpio = <&gpio GPIOY_12 GPIO_ACTIVE_HIGH>;
 		enable-active-high;
+		/* U16 RT9179GB */
+		vin-supply = <&vddio_ao3v3>;
 	};
 
 	tf_io: gpio-regulator-tf_io {
@@ -95,6 +97,8 @@
 
 		states = <3300000 0>,
 			 <1800000 1>;
+		/* U12/U13 RT9179GB */
+		vin-supply = <&vddio_ao3v3>;
 	};
 
 	vcc1v8: regulator-vcc1v8 {
@@ -102,6 +106,9 @@
 		regulator-name = "VCC1V8";
 		regulator-min-microvolt = <1800000>;
 		regulator-max-microvolt = <1800000>;
+		regulator-always-on;
+		/* U18 RT9179GB */
+		vin-supply = <&vddio_ao3v3>;
 	};
 
 	vcc3v3: regulator-vcc3v3 {
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
