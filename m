Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B86C118D77A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 19:41:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q6gCgfD/82bqF3CTymxqOJEhbwWM/mKPUjQ4S21hdeg=; b=McHBkS/OE1aRKl
	a7LLh7v5LSpSqtzU3Jp9OO+2y0fQcsEqSxNMsHvJ5TJHfKgjGRQSfUX93F4tMES0Y7X86zqMOx/Zk
	c9CgOyZc92zRgE1Rh++5U7Gevx0NQ5w6TqdSBR9sKoQhGHViiUSOHIvKV0fKXWu450VkFdYI6r6Rh
	cd1M5cGTjcv6Lra1Icx2S34A/70rXEcKbhlOkg/Ezj6SD0+kTGj/YAqhF6SD6WID0EzGElU7TGHnC
	FqVPFPe3ACt/bh+YFcdCsUmTWrq6oIRsC1nQvyBnIIjOL5ivBSpO+CiiNTYifV0aOoAIvotyi5Onw
	RAYQb5vfcNDVzdnbOUzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFMa6-00011a-Bs; Fri, 20 Mar 2020 18:41:18 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFMZs-00010n-Jq
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 18:41:07 +0000
Received: by mail-lf1-x142.google.com with SMTP id j15so5368073lfk.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Mar 2020 11:41:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Omt/Zoo0Z6GTK5HAJBh6G5EPifqGLKsplZm135hcC5M=;
 b=VQeFTUP2ILcvxt+z8aMXCPKh/Ky671ft/heDo6VGxWUNuN0VSniw69d/qNp3/OthtT
 lVX/anWqQe8i4PYKW6/DP6Cp9Bw0H/vDYEbrr2lelzoQrsa5diNUWKCbWoXhjp5/eMKp
 Zznrt08vs+wjh3f8HsL/udE9bbTJEvXyy7y9RTXzHPAW6Y/a+UzDXyvQvp2ocwQFPChl
 eEpIZHwRvnakUQpw2AeBDj1Y1BiHUjkHQr+ud1x80raogJwDJ5vpjfD3HcSkfA0sfLJ9
 UaCcTwBKN27XY1Gldo5uVXuZa/x2fMvfU+qhNq5AvB1RdSEC8ytDtEJuymZ7IeT8bak7
 3/yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Omt/Zoo0Z6GTK5HAJBh6G5EPifqGLKsplZm135hcC5M=;
 b=P7M2IVuGimpC9mOpMw1iM0aqMLR/b4PAnSfEZ7j4O4MJcfoJgQw+PZ4RuXjt/MbVVf
 PcPkLw99eDAVPu6PnY8tthNruNW0jvpR3HupsJpibNFzu/mMlHVvdM8mmqDd35cEdChA
 XZn0Qx30eBWTXuXzmFF9EMMFDs771CzsZN4bIDGO2gc78D/fojivR2l6NkuEr6wWlGWe
 ikb32EjygQ+mycdFIT53NvdoX4x5FUvFshdhXTeFJ7s1jCdOAHqlpjiwktBqN2e6GyRR
 0Dr5icXPfNEIesLnIH2C/gQ6S8T/3/grJ/+pHA6CbbLH3tMqJ3n4Ko3Zkl2EpZ4R45lY
 MNfA==
X-Gm-Message-State: ANhLgQ0w6HS9d7cZ0dIY7cmMP8HRy0T/EWR2fK9REFC31/R6eahWOoZb
 roU5ZsvuVLP1ENfqP3qp4HvSOv8XoE0sWw==
X-Google-Smtp-Source: ADFU+vvoXNAn4CmimbI7rQkMtvHjIJk74cCfZ6s6vwvYazbPVwKafkkCslvQD6d55fOTx/BSs0aQIg==
X-Received: by 2002:a05:6512:4c2:: with SMTP id
 w2mr6133104lfq.136.1584729662409; 
 Fri, 20 Mar 2020 11:41:02 -0700 (PDT)
Received: from localhost.bredbandsbolaget
 (c-5ac9225c.014-348-6c756e10.bbcust.telenor.se. [92.34.201.90])
 by smtp.gmail.com with ESMTPSA id g3sm3873563ljl.44.2020.03.20.11.41.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Mar 2020 11:41:01 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/2] ARM: dts: gemini: Add thermal zone to DIR-685
Date: Fri, 20 Mar 2020 19:40:54 +0100
Message-Id: <20200320184054.5408-2-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200320184054.5408-1-linus.walleij@linaro.org>
References: <20200320184054.5408-1-linus.walleij@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_114105_203044_AEA40B54 
X-CRM114-Status: GOOD (  17.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
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
Cc: Linus Walleij <linus.walleij@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The DIR-685 can now exploit the thermal zone added by the
drive temperature sensor inside the hard drive. We have
patched the libata subsystem to assign the device nodes
properly to the SCSI devices and this is what the drivetemp
driver will use to populate the sensor and the thermal
zone, so pick that up into the thermal zone and let this
control the fan.

The hardware lacks an embedded temperature sensor so the
D-Link vendor firmware uses this method to control the
temperature of the NAS enclosure using the thermal sensor
inside the hard drive.

The drive temperature trigger points to be used comes from
the vendor firmware.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 arch/arm/boot/dts/gemini-dlink-dir-685.dts | 48 ++++++++++++++++++++--
 1 file changed, 45 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/gemini-dlink-dir-685.dts b/arch/arm/boot/dts/gemini-dlink-dir-685.dts
index 055b03440bdb..cc39289e99dd 100644
--- a/arch/arm/boot/dts/gemini-dlink-dir-685.dts
+++ b/arch/arm/boot/dts/gemini-dlink-dir-685.dts
@@ -119,13 +119,11 @@
 
 	/*
 	 * This is a Sunon Maglev GM0502PFV2-8 cooling fan @10000 RPM.
-	 * Since the platform has no temperature sensor, this is controlled
-	 * from userspace by using the hard disks S.M.A.R.T. temperature
 	 * sensor. It is turned on when the temperature exceeds 46 degrees
 	 * and turned off when the temperatures goes below 41 degrees
 	 * (celsius).
 	 */
-	gpio-fan {
+	fan0: gpio-fan {
 		compatible = "gpio-fan";
 		/* Collides with IDE */
 		gpios = <&gpio1 6 GPIO_ACTIVE_HIGH>;
@@ -133,6 +131,40 @@
 		#cooling-cells = <2>;
 	};
 
+	thermal-zones {
+		chassis-thermal {
+			/* Poll every 20 seconds */
+			polling-delay = <20000>;
+			/* Poll every 2nd second when cooling */
+			polling-delay-passive = <2000>;
+			/*  Use the thermal sensor in the hard drive */
+			thermal-sensors = <&drive0>;
+
+			/* Tripping points from the fan.script in the rootfs */
+			trips {
+				alert: chassis-alert {
+					/* At 43 degrees turn on the fan */
+					temperature = <43000>;
+					hysteresis = <3000>;
+					type = "active";
+				};
+				crit: chassis-crit {
+					/* Just shut down at 60 degrees */
+					temperature = <60000>;
+					hysteresis = <2000>;
+					type = "critical";
+				};
+			};
+
+			cooling-maps {
+				map0 {
+					trip = <&alert>;
+					cooling-device = <&fan0 1 1>;
+				};
+			};
+		};
+	};
+
 	/*
 	 * The touchpad input is connected to a GPIO bit-banged
 	 * I2C bus.
@@ -445,6 +477,16 @@
 
 		ide@63000000 {
 			status = "okay";
+
+			/*
+			 * This drive may have a temperature sensor with a
+			 * thermal zone we can use for thermal control of the
+			 * chassis temperature using the fan.
+			 */
+			drive0: ide-port@0 {
+				reg = <0>;
+				#thermal-sensor-cells = <0>;
+			};
 		};
 
 		display-controller@6a000000 {
-- 
2.21.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
