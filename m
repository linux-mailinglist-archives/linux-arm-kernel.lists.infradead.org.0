Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 373E0126EC1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 21:22:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tqy5ZfWqJY9P6dLxwtgkTh7IWCTob9q6BBOV87+lYsU=; b=pdPu+xnBW+Nlk/
	wp/Cn9uS9/1BV812eKxz+UXnSlTM61VdD0Lp95Qe2/Xh3cPho9rgERRXHS3VI1dZotAXta/mEyXu2
	wtNLT5yZnHgT1jcuxiGh7E/REdNkKCFEQJdKYyKwptZm7NAZMUmVDbTFcP69e02lYs5hm4EbOVMLI
	ub0MNO3qusffI3PSVTzBZTEbvWbfuLHkW7PkVpziCNH6hiQ95qrxsLl3mHH4UR8nOnn8QfDktvMP1
	cw4D7EXQvYNNzFgs+cKU2WfSzqUoX9Y1Pr081b/qwJ670M68shMmIBjponDDcmudxRg2jW6JweapM
	78rCSrNW4dN/0x3bETxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii2JY-0008DD-FY; Thu, 19 Dec 2019 20:22:28 +0000
Received: from mo6-p01-ob.smtp.rzone.de ([2a01:238:20a:202:5301::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii2Iw-0007wL-Bz
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 20:21:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1576786907;
 s=strato-dkim-0002; d=gerhold.net;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=Ctz9sULW//zeldx1653eIVZ0o4EECVJHJLMqzED7g8o=;
 b=Powm3EtR/cyA86KD2hOb0KZ5Qxjp0f9VWeQtCeu9lSS8EZ9PhoV3HTEgS7pJ42G1hn
 7zvqlFcwNcux+dC3P/M37t9yTMoEpBx7gdFDUnGQ3g9V5kUKQBylbqlqBTEQ8Dc8d2uH
 Zml2WySy+qHcj4NYgr5d0bh1PKEnCnvnBKf86HwgEyhGghE6e4wuTkOGplUGNaRBm/s3
 IicVuNtNsOC66/wRg5XFco8b4jyuGwGYSv6k8G1D+O6sEpO1hdW7jfTGNF4z+jitUMmm
 SLA4TGvqebt2+6SxwuZhUgEnQRUiapRyC8ntmIYVOAUCwcE2EpZCd3d7ekGqJFl2aXym
 lWrQ==
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVORvLd4SsytBXQrEOHTIXtszvsxM1"
X-RZG-CLASS-ID: mo00
Received: from localhost.localdomain by smtp.strato.de (RZmta 46.1.1 AUTH)
 with ESMTPSA id f021e2vBJKLc3Z8
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
 (Client did not present a certificate);
 Thu, 19 Dec 2019 21:21:38 +0100 (CET)
From: Stephan Gerhold <stephan@gerhold.net>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH 1/9] ARM: dts: ux500: Remove unused ste-href-ab8505.dtsi
Date: Thu, 19 Dec 2019 21:20:44 +0100
Message-Id: <20191219202052.19039-2-stephan@gerhold.net>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191219202052.19039-1-stephan@gerhold.net>
References: <20191219202052.19039-1-stephan@gerhold.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_122150_553931_8BDD78A3 
X-CRM114-Status: GOOD (  10.58  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5301:0:0:1 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Stephan Gerhold <stephan@gerhold.net>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pin configuration for HREF boards with AB8505 was added in
commit 77ad9dfc2c7e ("ARM: ux500: move last AB8505 set-up to DT").
As the commit message notes, it was unused back then and it has
remained so even today, especially considering AB8505 did not have
proper device tree support until recently.

We are now preparing to add support for some Samsung smartphones
that are using AB8505. However, they use different pin configs
because using ste-href-ab8505.dtsi is known to break UART.
There were not many HREFs with AB8505, so at this point it seems
unlikely that we will ever make use of this include. Remove it.

Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
---
 arch/arm/boot/dts/ste-href-ab8505.dtsi | 234 -------------------------
 1 file changed, 234 deletions(-)
 delete mode 100644 arch/arm/boot/dts/ste-href-ab8505.dtsi

diff --git a/arch/arm/boot/dts/ste-href-ab8505.dtsi b/arch/arm/boot/dts/ste-href-ab8505.dtsi
deleted file mode 100644
index 95cf38a008e9..000000000000
--- a/arch/arm/boot/dts/ste-href-ab8505.dtsi
+++ /dev/null
@@ -1,234 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-/*
- * Copyright 2014 Linaro Ltd.
- */
-
-/ {
-	soc {
-		prcmu@80157000 {
-			ab8505 {
-				ab8505-gpio {
-					/* Hog a few default settings */
-					pinctrl-names = "default";
-					pinctrl-0 = <&gpio2_default_mode>,
-						    <&gpio10_default_mode>,
-						    <&gpio11_default_mode>,
-						    <&gpio13_default_mode>,
-						    <&gpio34_default_mode>,
-						    <&gpio50_default_mode>,
-						    <&pwm_default_mode>,
-						    <&adi2_default_mode>,
-						    <&modsclsda_default_mode>,
-						    <&resethw_default_mode>,
-						    <&service_default_mode>;
-
-					/*
-					 * Pins 2, 10, 11, 13, 34 and 50
-					 * are muxed in as GPIO, and configured as INPUT PULL DOWN
-					 */
-					gpio2 {
-						gpio2_default_mode: gpio2_default {
-							default_mux {
-								function = "gpio";
-								groups = "gpio2_a_1";
-							};
-							default_cfg {
-								pins = "GPIO2_R5";
-								input-enable;
-								bias-pull-down;
-							};
-						};
-					};
-					gpio10 {
-						gpio10_default_mode: gpio10_default {
-							default_mux {
-								function = "gpio";
-								groups = "gpio10_d_1";
-							};
-							default_cfg {
-								pins = "GPIO10_B16";
-								input-enable;
-								bias-pull-down;
-							};
-						};
-					};
-					gpio11 {
-						gpio11_default_mode: gpio11_default {
-							default_mux {
-								function = "gpio";
-								groups = "gpio11_d_1";
-							};
-							default_cfg {
-								pins = "GPIO11_B17";
-								input-enable;
-								bias-pull-down;
-							};
-						};
-					};
-					gpio13 {
-						gpio13_default_mode: gpio13_default {
-							default_mux {
-								function = "gpio";
-								groups = "gpio13_d_1";
-							};
-							default_cfg {
-								pins = "GPIO13_D17";
-								input-enable;
-								bias-disable;
-							};
-						};
-					};
-					gpio34 {
-						gpio34_default_mode: gpio34_default {
-							default_mux {
-								function = "gpio";
-								groups = "gpio34_a_1";
-							};
-							default_cfg {
-								pins = "GPIO34_H14";
-								input-enable;
-								bias-pull-down;
-							};
-						};
-					};
-					gpio50 {
-						gpio50_default_mode: gpio50_default {
-							default_mux {
-								function = "gpio";
-								groups = "gpio50_d_1";
-							};
-							default_cfg {
-								pins = "GPIO50_L4";
-								input-enable;
-								bias-disable;
-							};
-						};
-					};
-					/* This sets up the PWM pin 14 */
-					pwm {
-						pwm_default_mode: pwm_default {
-							default_mux {
-								function = "pwmout";
-								groups = "pwmout1_d_1";
-							};
-							default_cfg {
-								pins = "GPIO14_C16";
-								input-enable;
-								bias-pull-down;
-							};
-						};
-					};
-					/* This sets up audio interface 2 */
-					adi2 {
-						adi2_default_mode: adi2_default {
-							default_mux {
-								function = "adi2";
-								groups = "adi2_d_1";
-							};
-							default_cfg {
-								pins = "GPIO17_P2",
-									 "GPIO18_N3",
-									 "GPIO19_T1",
-									 "GPIO20_P3";
-								input-enable;
-								bias-pull-down;
-							};
-						};
-					};
-					/* Modem I2C setup (SCL and SDA pins) */
-					modsclsda {
-						modsclsda_default_mode: modsclsda_default {
-							default_mux {
-								function = "modsclsda";
-								groups = "modsclsda_d_1";
-							};
-							default_cfg {
-								pins = "GPIO40_J15",
-									"GPIO41_J14";
-								input-enable;
-								bias-pull-down;
-							};
-						};
-					};
-					resethw {
-						resethw_default_mode: resethw_default {
-							default_mux {
-								function = "resethw";
-								groups = "resethw_d_1";
-							};
-							default_cfg {
-								pins = "GPIO52_D16";
-								input-enable;
-								bias-pull-down;
-							};
-						};
-					};
-					service {
-						service_default_mode: service_default {
-							default_mux {
-								function = "service";
-								groups = "service_d_1";
-							};
-							default_cfg {
-								pins = "GPIO53_D15";
-								input-enable;
-								bias-pull-down;
-							};
-						};
-					};
-					/*
-					 * Clock output pins associated with regulators.
-					 */
-					sysclkreq2 {
-						sysclkreq2_default_mode: sysclkreq2_default {
-							default_mux {
-								function = "sysclkreq";
-								groups = "sysclkreq2_d_1";
-							};
-							default_cfg {
-								pins = "GPIO1_N4";
-								input-enable;
-								bias-disable;
-							};
-						};
-						sysclkreq2_sleep_mode: sysclkreq2_sleep {
-							default_mux {
-								function = "gpio";
-								groups = "gpio1_a_1";
-							};
-							default_cfg {
-								pins = "GPIO1_N4";
-								input-enable;
-								bias-pull-down;
-							};
-						};
-					};
-					sysclkreq4 {
-						sysclkreq4_default_mode: sysclkreq4_default {
-							default_mux {
-								function = "sysclkreq";
-								groups = "sysclkreq4_d_1";
-							};
-							default_cfg {
-								pins = "GPIO3_P5";
-								input-enable;
-								bias-disable;
-							};
-						};
-						sysclkreq4_sleep_mode: sysclkreq4_sleep {
-							default_mux {
-								function = "gpio";
-								groups = "gpio3_a_1";
-							};
-							default_cfg {
-								pins = "GPIO3_P5";
-								input-enable;
-								bias-pull-down;
-							};
-						};
-					};
-				};
-			};
-		};
-	};
-};
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
