Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D1F91EED27
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 23:13:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DNuiE8+9tBB+uBqoZGfNkg7+Ek/nFf3xIpDcOS1aoRY=; b=NrziheLXdOZVHL
	r5E6yLKgq61CVUhaMmZxNrOBz0Ui9VXHMGR1R33ZM50b0HS/2MUY7QBprJvdm+KoWU1SlsucGtVKs
	ygA9ROrE94sAmSzGLnSSMrdMi/xUi1oJHE2joqFGEYy62rl1tpWpyJIT3XRy+8gyoEhQLE5BWD6VH
	SMueMO2WaAnLGWJZRMaseoznzNQnJt8D2pNwp3M1VSO5gOfSu2CYdgmHakTNRZv4qvBMfm2XAW/IF
	OhKShPidyCTGEaaKaqRGLBQyoXLRcNUwmMHDSOwyVhbC16kqI/T7dLJRw0oOJtgkeaERljUgTE3f3
	CgJdC54V1Srum5Htm5oQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgxAh-0000An-6r; Thu, 04 Jun 2020 21:13:07 +0000
Received: from ssl.serverraum.org ([2a01:4f8:151:8464::1:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgx96-0007H2-Io
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 21:11:31 +0000
Received: from apollo.fritz.box (unknown
 [IPv6:2a02:810c:c200:2e91:6257:18ff:fec4:ca34])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-384) server-signature RSA-PSS (2048 bits) server-digest
 SHA256) (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id 351FC22FF5;
 Thu,  4 Jun 2020 23:11:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1591305086;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=RWArDHiolCJTumoboB4Zgi8UNDIKAigY3oAQ9g/838E=;
 b=t86DPgJS1ouPHWYmgKjzz1Hwh/gN4kps0XfHMTEb1T4pY6q+aq/Q9H5iu7922mgoWXoxkE
 HaNQaQJHgTcwG00xkom6vyYdLpCdgI/v8NjAOuksMvTNswG2hA5JE6PMYUdOZWVyNIx5oL
 67y6fh78UK5pWpQCYdCqNDR90OQmv3Y=
From: Michael Walle <michael@walle.cc>
To: linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-hwmon@vger.kernel.org,
 linux-pwm@vger.kernel.org, linux-watchdog@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 09/11] arm64: dts: freescale: sl28: map GPIOs to input
 events
Date: Thu,  4 Jun 2020 23:10:37 +0200
Message-Id: <20200604211039.12689-10-michael@walle.cc>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200604211039.12689-1-michael@walle.cc>
References: <20200604211039.12689-1-michael@walle.cc>
MIME-Version: 1.0
X-Spam: Yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_141128_793087_153FFFEE 
X-CRM114-Status: UNSURE (   9.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a01:4f8:151:8464:0:0:1:2 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Marc Zyngier <maz@kernel.org>, Jean Delvare <jdelvare@suse.com>,
 Jason Cooper <jason@lakedaemon.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Shawn Guo <shawnguo@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Li Yang <leoyang.li@nxp.com>, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Michael Walle <michael@walle.cc>, Rob Herring <robh+dt@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>, Mark Brown <broonie@kernel.org>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Lee Jones <lee.jones@linaro.org>,
 Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that we have support for GPIO lines of the SMARC connector, map the
sleep, power and lid switch signals to the corresponding keys using the
gpio-keys and gpio-keys-polled drivers. The power and sleep signals have
dedicated interrupts, thus we use these ones. The lid switch is just
mapped to a GPIO input and needs polling.

Signed-off-by: Michael Walle <michael@walle.cc>
---
 .../freescale/fsl-ls1028a-kontron-sl28.dts    | 32 +++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28.dts b/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28.dts
index 8712fe82727b..c4fd99efdbba 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28.dts
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28.dts
@@ -9,6 +9,8 @@
 /dts-v1/;
 #include "fsl-ls1028a.dtsi"
 #include <dt-bindings/interrupt-controller/irq.h>
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
 
 / {
 	model = "Kontron SMARC-sAL28";
@@ -23,6 +25,36 @@
 		spi1 = &dspi2;
 	};
 
+	buttons0 {
+		compatible = "gpio-keys";
+
+		power-button {
+			interrupts-extended = <&sl28cpld_intc
+					       4 IRQ_TYPE_EDGE_BOTH>;
+			linux,code = <KEY_POWER>;
+			label = "Power";
+		};
+
+		sleep-button {
+			interrupts-extended = <&sl28cpld_intc
+					       5 IRQ_TYPE_EDGE_BOTH>;
+			linux,code = <KEY_SLEEP>;
+			label = "Sleep";
+		};
+	};
+
+	buttons1 {
+		compatible = "gpio-keys-polled";
+		poll-interval = <200>;
+
+		lid-switch {
+			linux,input-type = <EV_SW>;
+			linux,code = <SW_LID>;
+			gpios = <&sl28cpld_gpio3 4 GPIO_ACTIVE_LOW>;
+			label = "Lid";
+		};
+	};
+
 	chosen {
 		stdout-path = "serial0:115200n8";
 	};
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
