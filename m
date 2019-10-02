Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7322DC4511
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 02:37:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=YPTFkqRQNzP+2cQMfwa+FzdAMZvBbh10opyFBPP8ez0=; b=KO7
	Z8/aB8nXVHhyCJVFvy3AhImkS8ZvOnMp50mG27cfengLwE5tLO8IABucQB9i6HBMQTeSuYeIcqjYe
	O8YFmwwxOAF7z6H/7mKuaaSlZrKuMaJO5ABSFOByOquDxf4sdDZ8gKY1xeUmW/BgFImMm8zNFxihW
	iRSKbyRUrEbHl9jD1tFKc78AYWpel2IZwdwfx3QgyFiY1hCO5VoYm+6pOdMWuHVokPm36Xal1V3ce
	mIh9wtULrKE+zxdLk3HEUyCq5mmtngm7TJPR1zhDtBDduuF3s0MfW37ADdRYHSM2LuKR97MP8OHL1
	eBZVUlGpki5hDK8JvWN8IraJauXo/Cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFSeG-00082j-NL; Wed, 02 Oct 2019 00:37:44 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFSe6-00081m-Se
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 00:37:36 +0000
Received: by mail-io1-xd42.google.com with SMTP id w12so24765167iol.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 01 Oct 2019 17:37:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=jcliF93zjSpaTafpPEiTUMAs8EwGUjS9FawXIfHTmOk=;
 b=Wrn2n5OReD+a85dWS1z7k055rb5DZ8+oHi3v3I8tzx3TblLi/iebka8KYugxSfKaFh
 lbfEX5veNkmxm81GjQr3aZAm6qrHhm45WPJEuTHcjnqIKe2T0peL14H3fvJiTzwc/704
 8nA6VV6rtsQAhwcUtN2hJ8srdCKtr7/EYOoEn8HtJmBVafwqmjLt4e5OztHBPRZqfZAD
 utGaV3q/2zuwHn/9ZMfABfAgMj2ksstLKbCifueWL5Chx3u0ygwisbW6GKdOncQzvKbV
 vAI8j7vGrALYNdhZAf8Su69kjNhHrVQNyrh6dBM4avxg/MfuSqs7opuDqPP/NaQVTaNM
 89BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=jcliF93zjSpaTafpPEiTUMAs8EwGUjS9FawXIfHTmOk=;
 b=FExr0mgRstNMtSfrw8aGJorgf5Fp84yiTAwFZsYRNFNFuNvj0ydPeQvpdxn13X2uIx
 labiaQE0KH3OpS+KIm67iH1TU7DrLH0twZGdFKnjXJgNpUqRXcB/IWwwzV4jdzqMM/Vl
 p6uVjtM8k0wgeZQvmF9kQ1CH8OTMaXBmGYPbQuvxIU5IjdnlknyGDi7ZFYJMpa1Rd6DG
 ylhBZmsnZfQ9Lb/QJsTR1dDso+Ku8wVsjEZPx1bOgGwJWKPN//DgNGESexHGcU5XtTWS
 YHDlER5QGMM0DiM5p9UY0oAXeeZPlMgJHdgEzWu6NYUjG+bjf5XTOf8TanhkQ9eTWJRd
 3wsw==
X-Gm-Message-State: APjAAAU/aFBdLVH8RpUDkVrElwWvwJxHZ0HIKfbPQV/Bma7ETtu+yDOr
 18jpeEj9ZvGVbpgOVpWU4fTKQOvm5ww=
X-Google-Smtp-Source: APXvYqxKW2GcgOaxeK5224SHDsGkHzbQJTQX93RjK75sn/scNHmOLmbaQwd1RmNm9DzZM5chvQMwmw==
X-Received: by 2002:a6b:2b91:: with SMTP id r139mr996811ior.293.1569976653514; 
 Tue, 01 Oct 2019 17:37:33 -0700 (PDT)
Received: from localhost.localdomain (c-73-37-219-234.hsd1.mn.comcast.net.
 [73.37.219.234])
 by smtp.gmail.com with ESMTPSA id v69sm8149604ila.6.2019.10.01.17.37.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Oct 2019 17:37:32 -0700 (PDT)
From: Adam Ford <aford173@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM: dts: imx6q-logicpd: Fix 3.3V regulator on SDHC1
Date: Tue,  1 Oct 2019 19:37:12 -0500
Message-Id: <20191002003713.21332-1-aford173@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_173734_948239_8A45C4FB 
X-CRM114-Status: GOOD (  10.21  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aford173[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (aford173[at]gmail.com)
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Fabio Estevam <festevam@gmail.com>, shawnguo@kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 adam.ford@logicpd.com, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Adam Ford <aford173@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

NVCC_SD1 is driven by a selector which chooses between 3.3V and
1.8.  Currently, this is pulled down by a 10k resistor, but
occasionally, voltage spikes on this rail cause the regulator to
jump between 1.8 and 3.3V.

This patch explicitly sets GPIO_19 to choose the 3.3V rail by
forcing this IO pin low to stabilize NVCC_SD1.

Signed-off-by: Adam Ford <aford173@gmail.com>

diff --git a/arch/arm/boot/dts/imx6-logicpd-som.dtsi b/arch/arm/boot/dts/imx6-logicpd-som.dtsi
index 547fb141ec0c..233762acbaaf 100644
--- a/arch/arm/boot/dts/imx6-logicpd-som.dtsi
+++ b/arch/arm/boot/dts/imx6-logicpd-som.dtsi
@@ -15,6 +15,18 @@
 		reg = <0x10000000 0x80000000>;
 	};
 
+	reg_sdhc1: regulator-sdhc1 {
+		compatible = "regulator-fixed";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_reg_sdhc1>;
+		regulator-name = "reg_sdhc1";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		gpio = <&gpio4 5 GPIO_ACTIVE_LOW>;
+		startup-delay-us = <70000>;
+		enable-active-high;
+	};
+
 	reg_wl18xx_vmmc: regulator-wl18xx {
 		compatible = "regulator-fixed";
 		regulator-name = "vwl1837";
@@ -267,6 +279,12 @@
 		>;
 	};
 
+	pinctrl_reg_sdhc1: regsdhc1grp {
+		fsl,pins = <
+			MX6QDL_PAD_GPIO_19__GPIO4_IO05	0x1b0b0
+		>;
+	};
+
 	pinctrl_tempsense: tempsensegrp {
 		fsl,pins = <
 			MX6QDL_PAD_NANDF_CS2__GPIO6_IO15 0x1b0b0
@@ -343,7 +361,9 @@
 	non-removable;
 	keep-power-in-suspend;
 	wakeup-source;
+	no-1-8-v;
 	vmmc-supply = <&sw2_reg>;
+	vqmmc-supply = <&reg_sdhc1>;
 	status = "okay";
 };
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
