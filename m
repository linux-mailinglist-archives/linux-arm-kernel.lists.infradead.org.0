Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BF17FCA39
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 16:48:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9RyabL3VEO0z38DFhcqve5E9ZWNL3/wDe/nRGAcMYuo=; b=qZ/5wmDqGeFPdZiLPG218K4k8e
	uroL7bwQsyuDKBI7rNXqDy+La4Snw63tDuz8NfbFlmyZRtF75lDUeZpotg4CsUPijiSgZHguBiwrT
	eBC+enpkipNoEclNcgCM6dP5Gez5jc/7qdZCEDFBl3Mch4m7yCGk0M6Z42t3A+QyXg7oOxnPIRX6f
	ksEoyrkhOQL1B7b8BPaFdIwFI1ogKiSK/A7iKgoJb56hSXniyGY1nrp8lhwzuHIgO7wJXndtv4HJw
	q+yfk+ckO9Xc0OHzwd5CVp6XgQlibWliz7nY74Us0UfTtHvWvoZsF/v/u3zSaPVtectm6eaAj6PxS
	KlzzGpAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVHLs-0000Fs-0q; Thu, 14 Nov 2019 15:48:08 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVHLS-00006m-PI
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 15:47:44 +0000
Received: by mail-wm1-x341.google.com with SMTP id l17so6177947wmh.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 Nov 2019 07:47:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=FMdwb0GkjN/863eB8ydpcDF4O7vjdrP7/MP3jMy+gok=;
 b=AjtNRjgAlMo9NwMvoyE91i/RISmCP0kW2oZO3LUiDdUrCzpMG8yma/pdy6EKqplZXh
 YGwHQ4/MBxL8vl3bHK0CJsB0vo1yFA0YYtIhzhju0m91Coo7SnMSwLCH5r0nbmwiaZb+
 yLc/oJ8DRLMqsTvMhqrMZf1aBKOFOU98vaUEkjyXWN2ckJbjCKp2IVoU6Ki3gIUsgFAH
 abQ0T/dCSNuw8BZ7zwuiEypeqnwrM3zgqMlTSyAAngRYHPk5jfxgvc4lWlu0VUPpEC/b
 Z7mCpACj/apQabM0Mha7Umbnmo4eN7YzYaDXit3YJt4nexXzwBbaf4g5smXn6Bc0Rerh
 HiRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=FMdwb0GkjN/863eB8ydpcDF4O7vjdrP7/MP3jMy+gok=;
 b=Ji3eGM4sZm+v0suz/Bi4MvR1pamm5dGDkvELRf/vojPH8bZTMXcyINOtidsBv8btW4
 W6AxvECf/0AAkgHWKwsgotm43zCZpJWWZj/Ylbwk5b9fVA9tRQdfz8ilAPwP2+HRmX+A
 zADIl9l6FqRSfRLZkv8uRGVCSGQXDHJwGbSSCSsnogjukocP9+vfr7DrAa2828d00fZh
 gXfdj462Kd9Mva4Qc8Q6ZIA14HwnSmwTP6MlO+0Sukd1P34UUG+KY1OhgwVPyBLPENM9
 0O7PbNyl0U03Oly/yt2rPHyP/MTL8Bqj0leWXRRK9k/0GK62kLgCn5UmD4CK9lX2ebrZ
 maBQ==
X-Gm-Message-State: APjAAAVpJhyfvUTSwU1H0tm1PqGLy3sJmZjurtPYRozFWSKIVqWusHYm
 yWkQkIXzC7RxhBx7BCAbc29ZNg==
X-Google-Smtp-Source: APXvYqxqX2fAfGozzDH9BZRJk9u9wwr6e1Y5LVZg92H6oDy/60I/ofmvxOf/13b2qzXGGVs+7XGM2w==
X-Received: by 2002:a1c:2342:: with SMTP id j63mr8181168wmj.56.1573746460880; 
 Thu, 14 Nov 2019 07:47:40 -0800 (PST)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id l4sm6428629wml.33.2019.11.14.07.47.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 14 Nov 2019 07:47:40 -0800 (PST)
From: Corentin Labbe <clabbe@baylibre.com>
To: mark.rutland@arm.com, mripard@kernel.org, robh+dt@kernel.org, wens@csie.org
Subject: [PATCH v5 1/2] ARM64: dts: sun50i-h6-pine-h64: state that the DT
 supports the modelA
Date: Thu, 14 Nov 2019 15:47:32 +0000
Message-Id: <1573746453-5123-2-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1573746453-5123-1-git-send-email-clabbe@baylibre.com>
References: <1573746453-5123-1-git-send-email-clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_074742_819430_39096C2C 
X-CRM114-Status: GOOD (  17.54  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Corentin Labbe <clabbe@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The current sun50i-h6-pine-h64 DT does not specify which model (A or B)
it supports.
When this file was created, only modelA was existing, but now both model
exists and with the time, this DT drifted to support the model B since it is
the most common one.
Furtheremore, some part of the model A does not work with it like ethernet and
HDMI connector (as confirmed by Jernej on IRC).

So it is time to settle the issue, and the easiest way was to state that
this DT is for model B.
Easiest since only a small name changes is required.
Doing the opposite (stating this file is for model A) will add changes (for
ethernet and HDMI) and so, will break too many setup.

But as asked by the maintainer this patch state this file is for model A.
In the process this patch adds the missing compoments to made it work on
model A.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 .../devicetree/bindings/arm/sunxi.yaml          |  2 +-
 .../boot/dts/allwinner/sun50i-h6-pine-h64.dts   | 17 ++++++++++++++---
 2 files changed, 15 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/sunxi.yaml b/Documentation/devicetree/bindings/arm/sunxi.yaml
index 8a1e38a1d7ab..a02baa374adc 100644
--- a/Documentation/devicetree/bindings/arm/sunxi.yaml
+++ b/Documentation/devicetree/bindings/arm/sunxi.yaml
@@ -599,7 +599,7 @@ properties:
           - const: pine64,pine64-plus
           - const: allwinner,sun50i-a64
 
-      - description: Pine64 PineH64
+      - description: Pine64 PineH64 model A
         items:
           - const: pine64,pine-h64
           - const: allwinner,sun50i-h6
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts b/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts
index 74899ede00fb..4fcda71f1688 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts
@@ -10,7 +10,7 @@
 #include <dt-bindings/gpio/gpio.h>
 
 / {
-	model = "Pine H64";
+	model = "Pine H64 model A";
 	compatible = "pine64,pine-h64", "allwinner,sun50i-h6";
 
 	aliases {
@@ -22,9 +22,10 @@
 		stdout-path = "serial0:115200n8";
 	};
 
-	connector {
+	hdmi_connector: connector {
 		compatible = "hdmi-connector";
 		type = "a";
+		ddc-en-gpios = <&pio 7 2 GPIO_ACTIVE_HIGH>; /* PH2 */
 
 		port {
 			hdmi_con_in: endpoint {
@@ -52,6 +53,16 @@
 		};
 	};
 
+	reg_gmac_3v3: gmac-3v3 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc-gmac-3v3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		startup-delay-us = <100000>;
+		gpio = <&pio 2 16 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+	};
+
 	reg_usb_vbus: vbus {
 		compatible = "regulator-fixed";
 		regulator-name = "usb-vbus";
@@ -68,7 +79,7 @@
 	pinctrl-0 = <&ext_rgmii_pins>;
 	phy-mode = "rgmii";
 	phy-handle = <&ext_rgmii_phy>;
-	phy-supply = <&reg_aldo2>;
+	phy-supply = <&reg_gmac_3v3>;
 	allwinner,rx-delay-ps = <200>;
 	allwinner,tx-delay-ps = <200>;
 	status = "okay";
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
