Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 514BD1272C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 07:32:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xtTCghH/0g2B7bR/P+kGVjNl5FjX3w7E/KT9oEzJQkk=; b=eOPSosKuv2+bbtT6ZeeH9Nh1gu
	9ob7bOW7Enm3jNq+nETWGzQpu9hUdTJ5zhKd3dHSndFdofxrvaCgqTTMRF4VJMkIr/Ng+6BRVZDJO
	wL6uZDFDYYsL77ertwvwdA9ziTKL8jLYM7no/kiJ/JVM6fx5GpCFi/0wRzG0v+4wmlZozHEovFxKz
	qlRS7jZWbYop6j9/V2F6PSV8QXMwZT+p/LzvVyPuEWaauM2WnlNjnSKkQg3K+9X5unsUTfzw6nCTi
	Y8YHPGPyTwXfa4kgU0GtEfQpWbkdayTGb5puddvDJYAloj5/CwPzc2PXC4ZBda3m09X9zqvKG9bNG
	ELCXTOTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMQno-0002Eh-U0; Fri, 03 May 2019 05:32:08 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMQnV-0001xj-7s
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 05:31:51 +0000
Received: by mail-pg1-x544.google.com with SMTP id f6so2162457pgs.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 May 2019 22:31:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=o2KnYtWi5SLktJn2op8zkW2H4ncbiGRKRjw+VMEkUnU=;
 b=HMBjz4VxsRY0GQSmLRIjcd/LPfpLc9xSHhYK+CETWHZGNTwq8RwHcbROkiHwm+6Ghi
 EDy0OWzoxVBy78gHvt5bKH9BZYqXNeXa3khB1qmIh/wgfyptgf1NEurtoc+Y9Ey4uEsW
 HVOWDx7mFk+nhWnVsunMPSj+1aYqaVbeRyUloYlht+SgOoLtw3TSpsDEFOn1rdSh0mRN
 l7RUjBmSJ+Yg04dgR7S12gOyQzgSYKqHCTkXY0rL5w+3tvpAPh9yWZT8QVEJivWTJPee
 N1umIS//rg3Drebciyt+JRxHGe2eUrLIPVHz1ys0xSsXqm2TndPy1/gDWRybFpTVpCfl
 V8kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=o2KnYtWi5SLktJn2op8zkW2H4ncbiGRKRjw+VMEkUnU=;
 b=SgCx7jf0GVe17GmKC9exgNkhQVQP8pxk7l7idFGVftHoNcQqE2ilBDs/kVNyM4ijmE
 /OnGEph9ji5MO4QmctGWxc1fxXyNip/Q+qJhy8880QkTrLx9YS56oNFQ2caopJR846tH
 EagvH7bjcZn1hIUosruV6bTdZ7WnKtJ0yod1gon3jNG7nDs+lqEXMdLCnNOSGnLYRscH
 9aJ1UPaTYz3NTRguXmdGZzfKeyqczXNKtr03aEI7hfPVNbZblBqL0lgaAP+XTEGJ5frE
 drvEip8ygqzYUqSBpfQAimx7q1riWLgHX/iRhNLPdCNM8yoVOueAG30EenSxmdBSBxKY
 hVvw==
X-Gm-Message-State: APjAAAX59+uP5zNqLgMqEUchgdLfW6Df7Kh8rP62pgvNAk/DR757RqEa
 VFUaQ1OH8FScGOWqyTL1zKpu
X-Google-Smtp-Source: APXvYqxABA9lxDSm2LKatJUanyxVDJb7MJrFiBSyTE90tiesPer2oZLAcR7IjsvsZ4bxW1EYHkaDog==
X-Received: by 2002:a63:6fc1:: with SMTP id k184mr8099288pgc.239.1556861508351; 
 Thu, 02 May 2019 22:31:48 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:72c7:3835:31df:f367:f70b:ed86])
 by smtp.gmail.com with ESMTPSA id l15sm1152226pgb.71.2019.05.02.22.31.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 02 May 2019 22:31:47 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: mcoquelin.stm32@gmail.com,
	alexandre.torgue@st.com,
	robh+dt@kernel.org
Subject: [PATCH 2/3] ARM: dts: stm32mp157: Add missing pinctrl definitions
Date: Fri,  3 May 2019 11:01:22 +0530
Message-Id: <20190503053123.6828-3-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190503053123.6828-1-manivannan.sadhasivam@linaro.org>
References: <20190503053123.6828-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_223149_306919_3286C852 
X-CRM114-Status: GOOD (  11.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 arch/arm/boot/dts/stm32mp157-pinctrl.dtsi | 62 +++++++++++++++++++++++
 1 file changed, 62 insertions(+)

diff --git a/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi b/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi
index 85c417d9983b..0b5bcf6a7c97 100644
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
@@ -258,6 +275,23 @@
 				};
 			};
 
+			i2c2_pins_b: i2c2-2 {
+				pins {
+					pinmux = <STM32_PINMUX('Z', 0, AF3)>, /* I2C2_SCL */
+						 <STM32_PINMUX('H', 5, AF4)>; /* I2C2_SDA */
+					bias-disable;
+					drive-open-drain;
+					slew-rate = <0>;
+				};
+			};
+
+			i2c2_pins_sleep_b: i2c2-3 {
+				pins {
+					pinmux = <STM32_PINMUX('Z', 0, ANALOG)>, /* I2C2_SCL */
+						 <STM32_PINMUX('H', 5, ANALOG)>; /* I2C2_SDA */
+				};
+			};
+
 			i2c5_pins_a: i2c5-0 {
 				pins {
 					pinmux = <STM32_PINMUX('A', 11, AF4)>, /* I2C5_SCL */
@@ -599,6 +633,34 @@
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
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
