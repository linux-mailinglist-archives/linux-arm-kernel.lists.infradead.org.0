Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B14F541E4F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 09:55:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5v9JVkycR4UtDcjyT63B63S8Zt8Aw/YhXYyypvV1l1s=; b=IUuazGSPGkv78pFD4ZhOroeD8F
	OEapjo+QfnZJvutubpexRtDyydg9aVCoPbTdhryaWYFw8WhlR2btkpbsBOID14LjTYgZbMJFz9xvg
	cr/dgv33sHakSIb/FDQmo664AGqGXYEN5CRS7LU1SNKwRqHz1h5Gmczh9y4ClgxzE2JeCHddBzXa8
	kIMDudMoaIjwTxAvG7tEFk105t5RAZUOBjFsn6FS8jLqzOgWhAGxc46dCPemO1Eyb+JUMRC/EwDK9
	vjR2Apkb0IXmTM/oxyjyUucUJIGV6g3BNWk02JqBWGvq2srBtoVmnst2tu8+BFGk552lkqHn3eiqh
	kLo4TJAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hay6h-000696-E6; Wed, 12 Jun 2019 07:55:43 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hay69-0005v4-LW
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 07:55:11 +0000
Received: by mail-pl1-x644.google.com with SMTP id go2so6273415plb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Jun 2019 00:55:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=WKqEBPsoDpTtAdSfNyFLIMHr8olM8ej+c9mYA02GcCA=;
 b=KnVtUzbn4y5wXK66DHOCEynqGrwFHg1jSDBRV9mhX7i66tKXz9oXFXV6WoxIeHS3GA
 hiyzEVvQXc2Ay0j3OHSaZByQeHO15urTeWhXyUSwe0dDxG+UCoxDxAlqN+lMTOeS0eU2
 KzGt82P+OKm82m1t+ay/HCadfCsmS/nl6KUE6pBQTmMC0efUEiMPLgTbqMe1aPXs+c2Q
 fTC66TVMN6fj64k/p3Je+0+3XrFiZLayZ0TgPM2ifduVi9fnIYK3ehO72rKj+02xtaqn
 4cqMe4YIdiGTbauY1hyUOFP6aU1EJLZUJa9zdAS6Y82XugTFEal1zgZu3VD3v5jg0kUI
 wPkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=WKqEBPsoDpTtAdSfNyFLIMHr8olM8ej+c9mYA02GcCA=;
 b=Ly9FYqoFhUqEmtHkzZsNKQcksQjsz/CR3MdMpLSTedEvQGLRTKC6jlKihgQu/uTAZN
 ToX2/CnTS4lECYIL2WSKVQ8h7FbbdweZYFusq8tMsJ43GmrraUtcEh3RCnFbwDQN93fc
 6B5QCHwncEbChkHPOM82VZG2ib7EyyHppN62FPL50aTSeRn0Qm9k6gYMWaar+8WkHI9C
 r1pyxZSDN5PjkOVW1+9+OjfdTEcfze6aftTDQ7RYEwOSnQJB9ANGtgeJ5jqGnRK0vEyy
 C5YU27Q8yArAuw0SHs6w95cCeTsxEHljYWpDW1nHh1C9JnBXGLswYkZy+OGJiMQEUW3w
 fbQQ==
X-Gm-Message-State: APjAAAVQ6yUQMk4Sc6DuoDCoVeYUGexDe9aGdpUgHdg6IDer5N9gPEGO
 /+Q0qAaZF2klIqCi4x/Q0NtRrPmCngkJ
X-Google-Smtp-Source: APXvYqzcYRWPu0WRf+RAfh3l26x12ZdiBB8Vmej1zRa+PnUBc+108slbJJ9iJJqfpv8tnFes6Kj2Aw==
X-Received: by 2002:a17:902:165:: with SMTP id
 92mr53109313plb.197.1560326108515; 
 Wed, 12 Jun 2019 00:55:08 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:894:d456:15b5:9ca9:e3ec:c06a])
 by smtp.gmail.com with ESMTPSA id b15sm16846399pfi.141.2019.06.12.00.55.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 12 Jun 2019 00:55:08 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: mcoquelin.stm32@gmail.com,
	alexandre.torgue@st.com,
	robh+dt@kernel.org
Subject: [PATCH v4 1/4] ARM: dts: stm32mp157: Add missing pinctrl definitions
Date: Wed, 12 Jun 2019 13:24:48 +0530
Message-Id: <20190612075451.8643-2-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190612075451.8643-1-manivannan.sadhasivam@linaro.org>
References: <20190612075451.8643-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_005509_834064_2889300D 
X-CRM114-Status: GOOD (  10.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, loic.pallardy@st.com,
 linux-kernel@vger.kernel.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add missing pinctrl definitions for STM32MP157 MPU.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm/boot/dts/stm32mp157-pinctrl.dtsi | 75 +++++++++++++++++++++++
 1 file changed, 75 insertions(+)

diff --git a/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi b/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi
index 85c417d9983b..5efae4b4b37f 100644
--- a/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi
+++ b/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi
@@ -241,6 +241,23 @@
 				};
 			};
 
+			i2c1_pins_b: i2c1-2 {
+				pins {
+					pinmux = <STM32_PINMUX('F', 14, AF5)>, /* I2C1_SCL */
+						 <STM32_PINMUX('F', 15, AF5)>; /* I2C1_SDA */
+					bias-disable;
+					drive-open-drain;
+					slew-rate = <0>;
+				};
+			};
+
+			i2c1_pins_sleep_b: i2c1-3 {
+				pins {
+					pinmux = <STM32_PINMUX('F', 14, ANALOG)>, /* I2C1_SCL */
+						 <STM32_PINMUX('F', 15, ANALOG)>; /* I2C1_SDA */
+				};
+			};
+
 			i2c2_pins_a: i2c2-0 {
 				pins {
 					pinmux = <STM32_PINMUX('H', 4, AF4)>, /* I2C2_SCL */
@@ -258,6 +275,21 @@
 				};
 			};
 
+			i2c2_pins_b1: i2c2-2 {
+				pins {
+					pinmux = <STM32_PINMUX('H', 5, AF4)>; /* I2C2_SDA */
+					bias-disable;
+					drive-open-drain;
+					slew-rate = <0>;
+				};
+			};
+
+			i2c2_pins_sleep_b1: i2c2-3 {
+				pins {
+					pinmux = <STM32_PINMUX('H', 5, ANALOG)>; /* I2C2_SDA */
+				};
+			};
+
 			i2c5_pins_a: i2c5-0 {
 				pins {
 					pinmux = <STM32_PINMUX('A', 11, AF4)>, /* I2C5_SCL */
@@ -599,6 +631,34 @@
 					bias-disable;
 				};
 			};
+
+			uart4_pins_b: uart4-1 {
+				pins1 {
+					pinmux = <STM32_PINMUX('D', 1, AF8)>; /* UART4_TX */
+					bias-disable;
+					drive-push-pull;
+					slew-rate = <0>;
+				};
+				pins2 {
+					pinmux = <STM32_PINMUX('B', 2, AF8)>; /* UART4_RX */
+					bias-disable;
+				};
+			};
+
+			uart7_pins_a: uart7-0 {
+				pins1 {
+					pinmux = <STM32_PINMUX('E', 8, AF7)>; /* UART4_TX */
+					bias-disable;
+					drive-push-pull;
+					slew-rate = <0>;
+				};
+				pins2 {
+					pinmux = <STM32_PINMUX('E', 7, AF7)>, /* UART4_RX */
+						 <STM32_PINMUX('E', 10, AF7)>, /* UART4_CTS */
+						 <STM32_PINMUX('E', 9, AF7)>; /* UART4_RTS */
+					bias-disable;
+				};
+			};
 		};
 
 		pinctrl_z: pin-controller-z@54004000 {
@@ -623,6 +683,21 @@
 				gpio-ranges = <&pinctrl_z 0 400 8>;
 			};
 
+			i2c2_pins_b2: i2c2-0 {
+				pins {
+					pinmux = <STM32_PINMUX('Z', 0, AF3)>; /* I2C2_SCL */
+					bias-disable;
+					drive-open-drain;
+					slew-rate = <0>;
+				};
+			};
+
+			i2c2_pins_sleep_b2: i2c2-1 {
+				pins {
+					pinmux = <STM32_PINMUX('Z', 0, ANALOG)>; /* I2C2_SCL */
+				};
+			};
+
 			i2c4_pins_a: i2c4-0 {
 				pins {
 					pinmux = <STM32_PINMUX('Z', 4, AF6)>, /* I2C4_SCL */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
