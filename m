Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD882AB839
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 14:33:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iAZKlWt2fettfiq0roS9xQQ/QX2Ruja3udADSLnj3MI=; b=qK/Zu7OedDgwgb
	OvNZd15j/z9/NRArx6Y0SWh9xMj065ix+aCYR1zQib+jN+T0xkitB9CeOdmREGkCfJHweGUVW8+U2
	jYQwWJ0esJ4FUzH8pk2qsIZvvLlOGqR5qwXTUF8Dz9/LE2J7Ze16IJVhRjBT+m0/e7NTV1O8FCkDm
	6RCPNsDlu7m+a6jQv8kGpPZ9tVAvEqRIlWQ0jJArBRAc5aFLcmdNzxAjPCSu0iPMkAlVFPRlH2lVs
	LYzMjU0JdueBPmBCByYPt534rxcA93SZkUxLmKUFQMghJ+D5ohuIf+ZlvM7A3Z+LXmUq2X+er72Ak
	al/86vZzIlfkAweDS5ZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6DQr-0001sv-I5; Fri, 06 Sep 2019 12:33:41 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6DQd-0001gz-GZ; Fri, 06 Sep 2019 12:33:28 +0000
Received: by mail-pf1-x441.google.com with SMTP id q21so4362356pfn.11;
 Fri, 06 Sep 2019 05:33:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1q69QNZwyCxZwRo3C/LHJfNu0oJxZkgoeKYpJf6LVDA=;
 b=BNvSL3ZAzGJGTokL2No8cyUTNZDT9TLKYOXlxXKNruvFhYssGfuEQ3aLx2wb9tCUCH
 PHEiprtHlcmHALDN+Z2UxkBm6fwd/Sh6O5GfDaLl5t/4UsgQ4UMt6GjfA1NNDYRznHkX
 CxUCbLZfyCDtEOy5GOxF82yE0F6NHMFfkQ3l+8EXYHw+FlQu45TrE+I1LEbID02ILP6k
 xS1Ov+EHQucQadlGMLtKHCwXpmKIFDLCcQvRRfw2G8HnxsRlfioA6uD4gtM+5t1CfA6Q
 tEAJnA4AmoTM6TTOFf6wh1ZdNZvLPPcAkyO4AWut2vrYYZsTKZZrATRqfutNsl8axAxz
 mQaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1q69QNZwyCxZwRo3C/LHJfNu0oJxZkgoeKYpJf6LVDA=;
 b=A1u1VRDr0mq85vq2WsWKdV8OuzSh2OWwE9Ps5IB4oVgyTzxAphFF/l35u8S3QO5ZIt
 f9C0E9UyiaThx1V+VF0QauUA4Yh3ox67N7piFyZ3aUQfGmghCt04JtWulZDIoJQi1QdU
 Y+HEusZcrLL355b+CgbmHcGmsTfw1osRuX4RgqoQTDZHx8+XFuVgO52JQvmLikS4KKWN
 UdwMRe7YrhHsr93j9xl7CQaHBNaKtZ8m5VIYR6/6LwG2CgMMBoHQ34g84cjMSGnWx269
 PXNizj5Co7A8Tl6nK/FUTLmIrWu4KdqdvdLXnOyBXJfJ3l54qNsXRgULyzLDdtbiWzb5
 Mj/g==
X-Gm-Message-State: APjAAAXw/fcCQFgsmDqrInra/wmItsPCdqgSsMykuixiKLTmaeh8NlSn
 RPl8HKeO87laH6LKIOGXPMc=
X-Google-Smtp-Source: APXvYqxUij3K9fJKMk7ZoMDBdfQ/kF2Eu75kBlo9YQSPuiiSdwawYEpUrkHNhhBGqKO+v8oRXbr1oQ==
X-Received: by 2002:a65:654d:: with SMTP id a13mr7600875pgw.196.1567773206808; 
 Fri, 06 Sep 2019 05:33:26 -0700 (PDT)
Received: from localhost.localdomain ([45.114.62.203])
 by smtp.gmail.com with ESMTPSA id h70sm4752933pgc.36.2019.09.06.05.33.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Sep 2019 05:33:26 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Kevin Hilman <khilman@baylibre.com>
Subject: [PATCHv3-next 2/3] arm64: dts: meson: odroid-c2: Add missing
 regulator linked to VDDIO_AO3V3 regulator
Date: Fri,  6 Sep 2019 12:32:58 +0000
Message-Id: <20190906123259.351-3-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190906123259.351-1-linux.amoon@gmail.com>
References: <20190906123259.351-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_053327_576143_8FF86165 
X-CRM114-Status: GOOD (  11.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (linux.amoon[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
index 9ea336c33d00..5624ff034659 100644
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
