Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA5F31C6E92
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 12:38:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=aZfLJdMVhhv1jGhHtSd1KgFfKEzppUldQbqLzZYCpKg=; b=ebdJfVGunuLINlAc460zsRuz+L
	dLrn1zPtPSU93vzQnR1N/bNt5n/8qTvyjxmkvuzfjdt7+hGNf6Xn69EBJCxTcOHITMqrObHXmO5dZ
	/hf7Ra7Q8I2LSQUedf4cox+wZ1YR1je/yM3VohA6skL5r5nptkuhKoqyRyyma2FSU608TQy89xKhO
	NGsyMVmfVrv65BeZv8OG/ASL3xaUaXYNIuH9Ms/iA0IAwc8oDJqqt1sc6wBY89U6+TvUx9hIF+afS
	Xhek1lKP2Q4VIrXQfqQL+6itDuhYfBW2BnMGmLXO5E+43Bm1cZ+qfnkLMkm4laMtwL99hlSeERGUJ
	McxkANsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWHRz-0007gU-9C; Wed, 06 May 2020 10:38:51 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWHQC-000696-Td; Wed, 06 May 2020 10:37:05 +0000
Received: by mail-pj1-x1042.google.com with SMTP id h12so2337976pjz.1;
 Wed, 06 May 2020 03:37:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=GRl+cRuJItfX393h+k5FDOGSXXO3n1nRchoc5uvkFw0=;
 b=GQtU4g1Ef3lzCGVFsz5hJfhxLq/JbDHXq2Fnt5aY2jcoz6abJGFAl8TWSLvV5LAiCR
 xq2AIK1ypOIYFB3yKM+F3HTkIFVn1WFgMEoisAQKdN2QohM66H6clyjr7TVwk2x25Dm4
 m2hFaKPGzJA8PoiDq96L1+rOiCe57zXAqqEtLyJ5fXF7wSDtegcXaK43a8I3cVufy7ut
 AkZcfFc1HWiBDfS2873H1l1xUK9a+0AN+PQqvwsjaN2Wakgc76c016kMAUENOIASFB7C
 vdrTnXT9nNVefEzuaYGIjVqfU6QHGPz1S2xqKc3ggSHrpFNOp83NDxaudqyoDzuM8LnS
 w8Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=GRl+cRuJItfX393h+k5FDOGSXXO3n1nRchoc5uvkFw0=;
 b=aksTluw110JPxDCNu5LUCHUWmhwtZtGL+qF3rXPsyi6h1RRzqbsXTuFHncleQpbznh
 +moMBBDLA0B0YSmZEGR+496g4Qdl5WF8HQdYIRg9YJkX9rtgPys22YL93U172X2KJkCi
 SvmH3b7hOHugART52e1d0QXXbkNrh4is0iTiaJaUekwoSAk7YB7yiwDBF0wDU6qb/zW4
 cz7o7EBuIidTsj7RfM70B1klOnJMFXFE0X5M3Wqzb4UQxm8zm6UjWHfagD9GpIRmGanO
 dlsx5tWG+nVdB1fbs0w03BJuDDKsg357hZLtgUrKMG57xejPZp10xGPh3FUkTbApmbuK
 L3Uw==
X-Gm-Message-State: AGi0PuZtqYAbaiQZdSXslGmUTck/HzQ3jkSvcyL206mtSzwPlWGM0jUW
 U5NnmEeRk1t7JFSlrYwcyjLNyLbLfrLHVw==
X-Google-Smtp-Source: APiQypLpxk8AcJgk+dPBHwI9w4FC4I21Xkht0unu7Q97N9db1MwxkgDMsuJhQ7f45VVEMuVfF4YgCw==
X-Received: by 2002:a17:90a:30a5:: with SMTP id
 h34mr8235042pjb.171.1588761419966; 
 Wed, 06 May 2020 03:36:59 -0700 (PDT)
Received: from localhost.localdomain ([106.215.43.48])
 by smtp.gmail.com with ESMTPSA id i72sm1601582pfe.104.2020.05.06.03.36.56
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 06 May 2020 03:36:59 -0700 (PDT)
From: Amit Singh Tomar <amittomer25@gmail.com>
To: andre.przywara@arm.com, afaerber@suse.de, manivannan.sadhasivam@linaro.org,
 robh+dt@kernel.org
Subject: [PATCH RFC 8/8] arm64: dts: actions: Add uSD support for Cubieboard7
Date: Wed,  6 May 2020 16:06:10 +0530
Message-Id: <1588761371-9078-9-git-send-email-amittomer25@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1588761371-9078-1-git-send-email-amittomer25@gmail.com>
References: <1588761371-9078-1-git-send-email-amittomer25@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_033701_022625_C032AB17 
X-CRM114-Status: GOOD (  12.61  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [amittomer25[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [amittomer25[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-actions@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, cristian.ciocaltea@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This commit adds uSD support for Cubieboard7 board based on Actions Semi
S700 SoC. SD0 is connected to uSD slot. Since there is no PMIC support
added yet, fixed regulator has been used as a regulator node.

Signed-off-by: Amit Singh Tomar <amittomer25@gmail.com>
---
 arch/arm64/boot/dts/actions/s700-cubieboard7.dts | 41 ++++++++++++++++++++++++
 arch/arm64/boot/dts/actions/s700.dtsi            |  1 +
 2 files changed, 42 insertions(+)

diff --git a/arch/arm64/boot/dts/actions/s700-cubieboard7.dts b/arch/arm64/boot/dts/actions/s700-cubieboard7.dts
index 63e375cd9eb4..ec117eb12f3a 100644
--- a/arch/arm64/boot/dts/actions/s700-cubieboard7.dts
+++ b/arch/arm64/boot/dts/actions/s700-cubieboard7.dts
@@ -13,6 +13,7 @@
 
 	aliases {
 		serial3 = &uart3;
+		mmc0 = &mmc0;
 	};
 
 	chosen {
@@ -28,6 +29,23 @@
 		device_type = "memory";
 		reg = <0x1 0xe0000000 0x0 0x0>;
 	};
+
+	/* Fixed regulator used in the absence of PMIC */
+	vcc_3v1: vcc-3v1 {
+		compatible = "regulator-fixed";
+		regulator-name = "fixed-3.1V";
+		regulator-min-microvolt = <3100000>;
+		regulator-max-microvolt = <3100000>;
+	};
+
+	/* Fixed regulator used in the absence of PMIC */
+	sd_vcc: sd-vcc {
+		compatible = "regulator-fixed";
+		regulator-name = "fixed-3.1V";
+		regulator-min-microvolt = <3100000>;
+		regulator-max-microvolt = <3100000>;
+		regulator-always-on;
+	};
 };
 
 &i2c0 {
@@ -81,6 +99,14 @@
 			bias-pull-up;
 		};
 	};
+
+	mmc0_default: mmc0_default {
+		pinmux {
+			groups = "sd0_d0_mfp", "sd0_d1_mfp", "sd0_d2_d3_mfp",
+				 "sd0_cmd_mfp", "sd0_clk_mfp";
+			function = "sd0";
+		};
+	};
 };
 
 &timer {
@@ -90,3 +116,18 @@
 &uart3 {
 	status = "okay";
 };
+
+/* uSD */
+&mmc0 {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&mmc0_default>;
+	cd-gpios = <&pinctrl 120 GPIO_ACTIVE_LOW>;
+	no-sdio;
+	no-mmc;
+	no-1-8-v;
+	bus-width = <4>;
+	vmmc-supply = <&sd_vcc>;
+	vqmmc-supply = <&sd_vcc>;
+};
+
diff --git a/arch/arm64/boot/dts/actions/s700.dtsi b/arch/arm64/boot/dts/actions/s700.dtsi
index 3f1fc3e48415..8a541dd48f61 100644
--- a/arch/arm64/boot/dts/actions/s700.dtsi
+++ b/arch/arm64/boot/dts/actions/s700.dtsi
@@ -4,6 +4,7 @@
  */
 
 #include <dt-bindings/clock/actions,s700-cmu.h>
+#include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/reset/actions,s700-reset.h>
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
