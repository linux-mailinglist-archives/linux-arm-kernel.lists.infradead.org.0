Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A7261EC134
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 19:39:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=QW5hUCB8CBGrqSOYgTCt4LRZZP6panEoC2+uY4Cc0X0=; b=BZNQfb4EQ0SSdkU7WwMcK9XyLB
	hIpLmMsCNSDQUT75uuZU0ldRKdiGZt9sEnUOgnq3zmLWmPVtVuTTk5EmH/bIKe5gwEL6vcFInWi3P
	fcKKBG+8rweyNrw/mAZY/Zdeu8DvaJbfwwSNcsD+dVZE4tusvdukua8lJbpk69V/DlwkLzUfvAcSw
	hZKq+bPLLMNCMhGC71ehf8/6xe7aMnOCzXUnbj6bkX3pL63XvWOv1yhBg03g9ceywtCXH/kaRIAPB
	ndNf7h+yYU/0tsCQYaOO5+fE29HeYNNpz7zIrjtqZFwyx3Ai4eWX5OYFXRuDulXI5b2qBv4Z6G2Vk
	LI5+ODwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgAsw-00047c-NV; Tue, 02 Jun 2020 17:39:34 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgAs3-0003aQ-UW; Tue, 02 Jun 2020 17:38:46 +0000
Received: by mail-pf1-x441.google.com with SMTP id z64so5387278pfb.1;
 Tue, 02 Jun 2020 10:38:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=HAbgr6zzu7r3PzTp5xRYYLgURACWC5IB5Lo9NqHN5fo=;
 b=u9u62OK0Uz5k1NzgozSXxo36T3wV9tU3tuP7QiUTICd5Z10I5tWt/FC90JijoDefoB
 hv2LAGTV3gI99dRYnbE/XPwDsJnXFEG+gx2NdICxSiBzqA+oaklooUtdmwuP+J9kpbFf
 oK+arfayMtiRluo0rXam4pMeEa8F3yKXQAoDGLYbyDWBkkLRnQRRyOTAjv1l9alSPrm8
 lzguxtttntllPT5yCJ7gcV7nzz8G19UOeseFAlA3TzpNfcIAov+O23C2W2EqtUkTfmsS
 o3ZYmU700zdrxhni6MLHxrAea767urY6Ti3b9v+aUjL1IT1XPa3QU+IYYKzyrsFMp+Z4
 0Xlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=HAbgr6zzu7r3PzTp5xRYYLgURACWC5IB5Lo9NqHN5fo=;
 b=sZGFpbd+m///v+/CxZ5ZEbEmNDWComAumgOIJmCrNPHIZv9i9kqS1J59c9WFQKL7Wy
 Sms4+VxNCxtJ29Tj6q3I3phldpY+3S/efLa89uaoSXW1QVSsPG4Tf2o7EO+UOo7rF1cP
 bdIzByYMNt/qEYfkyr9rEziaz5p+mvCdv4+WOnVmzxgFYqETX9dEm7M29hQnIMYZIj/F
 8gizm/US+ZvQdcvcJfYEiKhS2bWqvOBfS1phPKrypLhDmFriCZCZbpr/wIU8UwFUOrqk
 A7ToV4PLDQfXWcn6Y74twALudAiXYtt2fLNkQYS+yx/tTMmnpkCwaeBrGKCTq9ldNkSv
 6xNA==
X-Gm-Message-State: AOAM530LPPW7dW8MhwN2JPGERHlpc4yCZNEytaVytpq5wqzsoGOUk4n0
 NFhGaEuJ1j50yeVweokNvl4=
X-Google-Smtp-Source: ABdhPJxAbqcmXVF8wyXKbHqP1xkJnZ4nuq6VrQpjX+86dyaNozOCQsWXCGFL4FJIV2YghvUde/YaSA==
X-Received: by 2002:a63:658:: with SMTP id 85mr24337043pgg.181.1591119518467; 
 Tue, 02 Jun 2020 10:38:38 -0700 (PDT)
Received: from localhost.localdomain ([223.235.152.125])
 by smtp.gmail.com with ESMTPSA id i22sm2864382pfo.92.2020.06.02.10.38.34
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 02 Jun 2020 10:38:37 -0700 (PDT)
From: Amit Singh Tomar <amittomer25@gmail.com>
To: andre.przywara@arm.com, afaerber@suse.de, manivannan.sadhasivam@linaro.org,
 robh+dt@kernel.org
Subject: [PATCH v3 10/10] arm64: dts: actions: Add uSD support for Cubieboard7
Date: Tue,  2 Jun 2020 23:03:12 +0530
Message-Id: <1591119192-18538-11-git-send-email-amittomer25@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1591119192-18538-1-git-send-email-amittomer25@gmail.com>
References: <1591119192-18538-1-git-send-email-amittomer25@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_103841_408996_8EE2690B 
X-CRM114-Status: GOOD (  12.67  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [amittomer25[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [amittomer25[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
index b1a34f95d44c..2bb29bc683ef 100644
--- a/arch/arm64/boot/dts/actions/s700.dtsi
+++ b/arch/arm64/boot/dts/actions/s700.dtsi
@@ -4,6 +4,7 @@
  */
 
 #include <dt-bindings/clock/actions,s700-cmu.h>
+#include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/reset/actions,s700-reset.h>
 #include <dt-bindings/power/owl-s700-powergate.h>
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
