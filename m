Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38C181F37EE
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 12:21:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=SqTJRLTsoTCmoY/+TpE5XXbls1yapYtgh0C3lsYskh0=; b=bmf7M6YHb+YzeH5489EG48ZXVx
	7GPoxw41vZtL+ymOnLNIDuxzgJcHTU4g+kPX6oyQ/VzmTblnqQYDjmHr2tHJC0gDAwwWP0YBNPmn2
	tI0l4nreeeLiUS+9n0At9yeiKwxpKFF45xTt0+ppxzmxgugvNx6LMOfqAZPKZ644EruLyVZ4PP0Qe
	6EE/GmAgrlPVd/5L9+zZ3dGVPFYy2Xq/kB8hj7AeTxWqyuLlLpmTa6VG2ugrRglvZX3oRqJGTo4as
	8TAHcNCRkUcdikH4uWoSugcsoFSkfRr23iwCxnRot7+dZ855fDxm3713LhE7A00AAQQSoDvf05/pC
	i3bH11Eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jibNK-0001eH-Av; Tue, 09 Jun 2020 10:20:58 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jibKq-0005f1-CU; Tue, 09 Jun 2020 10:18:27 +0000
Received: by mail-pg1-x544.google.com with SMTP id w20so10099553pga.6;
 Tue, 09 Jun 2020 03:18:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=/0d16ZSjZXDVB9XnoF7g8/C8LhZpWELESeA2tbYD7eQ=;
 b=AG/UsiXYoOJYlHtPerABlcHwszE5UoF6nbuNIqAJuXbLtI546Ko7bh9KoLmTyGYjSr
 tUWIgn1RMafwryN11ejY/TV7c8AX2NUCKaxRRjc57gcUjWf9bBi1WmE0vurTemfnsPas
 RZcBLC8PDd+sYXmjfuJ/0l/X4tsmNI/3f1U6jst0F/rUg+1dYxaHwem9J1Ik8tTi7CI6
 fKMrt5lmS7hEVGIdEBwT4i27WGg5sBKfey9EeYkOy4HsMjolaZ+eKmtFFMkYy4E9Ffoc
 DThy8oQFum0fYYwxYy4WIaqdo20RLLLE2hl3OUyhFYWlL81LTO0YfRq0+v0bvylmIaSi
 DrVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=/0d16ZSjZXDVB9XnoF7g8/C8LhZpWELESeA2tbYD7eQ=;
 b=KUCVcfAMu5AcB86SPI3KGgZg1atNXdvVZZEj8IBIGCvwUNCeRSu/nNdQrnImmdS+Ei
 /CjssOhMHwG8bzm7cyMCpDvxIcHm1/YrDL2iPHePTpENdMaXLH2s2CioV5bUNxzVcwYV
 1/SjEzl8TYxsRf0L8s6kE6nbHQfF1EULd/Ah0vh/XB7xKgmMQEAXKJaY5rQWR2y7ojXn
 vxJcPUfp6WdElQl0Kv81HrwMQYVtp/zAIc0xQyEzwvJtgvN+Zkbwyk6rqUVIqaVQKcDE
 f0PwHYq7mGN8JH8mKol77f+PPd7bips8hg1TJ+Qh9AQrSQl8+9CG++VnPVq95mVX532h
 D9JA==
X-Gm-Message-State: AOAM532SNHiSuGz/rs4Cad5nJj25C99rXeV4Qlr3Otx0xE6ejDeyjTAV
 ov5NdhtzFqx3Qd9MuBYbBj0=
X-Google-Smtp-Source: ABdhPJxXx5Nq3IGHo7wWKQw5zUcrDvnpBG2qlLfjMRL4bSyiW6rcHZW18FEGdq1l+goPWwa1qW1StA==
X-Received: by 2002:a63:af02:: with SMTP id w2mr23067058pge.116.1591697903285; 
 Tue, 09 Jun 2020 03:18:23 -0700 (PDT)
Received: from localhost.localdomain ([223.190.87.90])
 by smtp.gmail.com with ESMTPSA id d189sm9637253pfc.51.2020.06.09.03.18.19
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 09 Jun 2020 03:18:22 -0700 (PDT)
From: Amit Singh Tomar <amittomer25@gmail.com>
To: andre.przywara@arm.com, afaerber@suse.de, manivannan.sadhasivam@linaro.org,
 robh+dt@kernel.org
Subject: [PATCH v4 10/10] arm64: dts: actions: Add uSD support for Cubieboard7
Date: Tue,  9 Jun 2020 15:47:10 +0530
Message-Id: <1591697830-16311-11-git-send-email-amittomer25@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1591697830-16311-1-git-send-email-amittomer25@gmail.com>
References: <1591697830-16311-1-git-send-email-amittomer25@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_031824_438141_1B4EE127 
X-CRM114-Status: GOOD (  12.53  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [amittomer25[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [amittomer25[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-actions@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 cristian.ciocaltea@gmail.com
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
Changes since v3:
	* No change.
Changes since v2:
        * No change.
Changes since v1:
        * No change.
Changes since RFC:
        * No change.
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
index 9ed88aafc2da..ba498cf9217d 100644
--- a/arch/arm64/boot/dts/actions/s700.dtsi
+++ b/arch/arm64/boot/dts/actions/s700.dtsi
@@ -4,6 +4,7 @@
  */
 
 #include <dt-bindings/clock/actions,s700-cmu.h>
+#include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/power/owl-s700-powergate.h>
 #include <dt-bindings/reset/actions,s700-reset.h>
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
