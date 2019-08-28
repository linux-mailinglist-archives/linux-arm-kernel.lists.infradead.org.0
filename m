Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96F92A03C1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 15:52:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4cEgBh2++V4pMcsfAygJTMMSmbjvCNVtUcmozxWMJ9M=; b=OQ/yaJTUB1Gpnz
	DKfWvF4x+K57nvVrQsAAQAEt5/+Dj5qnCrgnYm4UDVGTPl3TVT9LReoyhL0aZX7YE7xjzsXJ36CSx
	7+t9qEzhJlwF5ng+pedpniv+y443v+SQFnHxNwpxyJ9UnvDs5sCSwFQ9qmMUgiv0PuBKi58dr1w0j
	McT0GtGGGdlbux/n0JU+p8gU5AwTsSV82/3kmJvdleUM7zFAR4X6CDn7JlYHkClZNFWgKUbXIy9B7
	tFJOYfIsyqXzoc6UgT9OEmCv8D2D1zzrUgf9l3Ayvwly9Yg/8JoDAUq+MK5XloxQCUnZzF1y1yZtr
	tZM5H6XnjfqldLo2dZug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2yNW-0008Jf-IR; Wed, 28 Aug 2019 13:52:50 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2yNB-00089d-FT
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 13:52:30 +0000
Received: by mail-lj1-x244.google.com with SMTP id x4so2654730ljj.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 28 Aug 2019 06:52:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=JbG6jJQvBJeaRROn5cSdMAWxjj90yAkON1FqLiEV5e4=;
 b=M0lzAeg3zpgaKJMB1fYmv2qqukischh4ie+jOgKhlIiZJePSCug8mbdn1BlfdxRg9s
 pzBvzSnJizwYfYbJ7GKWsCPEUDZD8XkTWgcfpfGL3aQigI9SLZIdorqTDP9d9u1qOGNc
 4C50n9/nSA3iK0xc5KA5z7EC08DyRnP4A8qfOXGitJEQIrCt3ovw+RDDMVU7UpPFUGGb
 +PZ8z8YgujTJQJaaklabhJMMY5MWiYISNavdsHIb7xeTlhTKQ1DbHz+J35EUP+86i8Xf
 zDS6kbINxDvfNyWS7vUtVUyLFURE0Eqb9bfsMzgLxayN0tSwpaZhjwQU+ZPh44Vjum3q
 h5MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JbG6jJQvBJeaRROn5cSdMAWxjj90yAkON1FqLiEV5e4=;
 b=NJCH9As5ttKzFP1l/ZPV3D2gcsYMtT/ppKzlamllbgm2bxzYphADOredSIvORWzY4o
 Q0PjwKBWf/JrPGpL6NWpwN0r6qNohkHMGQxyys7+dF7P7CT4oonCRsQzD6Z59BDJe25+
 l8IzR143HJamxrkQyrOVfebxmktOuK/clhlsg7g0babVFZx6Hcl37ulXnZE9CVaL7X5f
 WoZwAWuDiw4bGAV4vkVFcApYutYQahkeMaG57JTCsFtIrgmlTI6RzOqfPVb1USV+255A
 kiwPZPxZ0R2Pjk25iyt9Zh4pz0AxVv7FA/SlrIlGopfQdksQzYFcQF4fdgzxIpQgu1TW
 nCdg==
X-Gm-Message-State: APjAAAVq++CQXeHzdTCHGRQEyOtSmBAiQigb/MkoR2y8aHPddzco7C1X
 gF9q0EJu7/AXkMrttYPErmTdw1sADbk=
X-Google-Smtp-Source: APXvYqygBg1Kfl2DkkPAxhC7xMhW/rdULEQ4DFiUwxoRdDJFcF9I01cuLVO/YOaU72GYkBW+oLMMjg==
X-Received: by 2002:a2e:8455:: with SMTP id u21mr2071958ljh.20.1567000347488; 
 Wed, 28 Aug 2019 06:52:27 -0700 (PDT)
Received: from genomnajs.ideon.se ([85.235.10.227])
 by smtp.gmail.com with ESMTPSA id f19sm854709lfk.43.2019.08.28.06.52.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Aug 2019 06:52:26 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: linux-arm-kernel@lists.infradead.org, Ulf Hansson <ulf.hansson@linaro.org>
Subject: [PATCH 2/2] ARM: dts: ux500: Update thermal zone
Date: Wed, 28 Aug 2019 15:52:18 +0200
Message-Id: <20190828135218.7307-2-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190828135218.7307-1-linus.walleij@linaro.org>
References: <20190828135218.7307-1-linus.walleij@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_065229_531260_E9AF842A 
X-CRM114-Status: GOOD (  15.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

After moving the DB8500 thermal driver to use device tree
we define the default thermal zone for the Ux500 in the
device tree replacing the oldstyle hardcoded trigger
points.

This default thermal zone utilizes the cpufreq driver
(using the generic OF cpufreq back-end) as a passive
cooling device, and defines a critical trip point when
the temperature goes above 85 degrees celsius which will
(hopefully) make the system shut down if the temperature
cannot be controlled.

This default policy can later be augmented for specific
subdevices if these have tighter temperature conditions.

After this patch we get:

/sys/class/thermal/thermal_zone0 (CPU thermal zone)
This reports the rough temperature and trip points
from the thermal zone in the device tree.

By executing two yes > /dev/null & jobs fully utilizing
the two CPU cores we can notice the temperature climbing
in the thermal zone in response and falling when we kill
the jobs.

/syc/class/thermal/cooling_device0 (cpufreq cooling)
this reports all 4 available cpufreq frequencies as
states.

Suggested-by: Daniel Lezcano <daniel.lezcano@linaro.org>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 arch/arm/boot/dts/ste-dbx5x0.dtsi | 57 +++++++++++++++++++------------
 1 file changed, 36 insertions(+), 21 deletions(-)

diff --git a/arch/arm/boot/dts/ste-dbx5x0.dtsi b/arch/arm/boot/dts/ste-dbx5x0.dtsi
index 7953eea7c486..9ee50f339e7a 100644
--- a/arch/arm/boot/dts/ste-dbx5x0.dtsi
+++ b/arch/arm/boot/dts/ste-dbx5x0.dtsi
@@ -44,6 +44,7 @@
 			clocks = <&prcmu_clk PRCMU_ARMSS>;
 			clock-names = "cpu";
 			clock-latency = <20000>;
+			#cooling-cells = <2>;
 		};
 		CPU1: cpu@301 {
 			device_type = "cpu";
@@ -52,6 +53,39 @@
 		};
 	};
 
+	thermal-zones {
+		/*
+		 * Thermal zone for the SoC, using the thermal sensor in the
+		 * PRCMU for temperature and the cpufreq driver for passive
+		 * cooling.
+		 */
+		cpu_thermal: cpu-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <1000>;
+
+			thermal-sensors = <&thermal>;
+
+			trips {
+				cpu_alert: cpu-alert {
+					temperature = <70000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+				cpu-crit {
+					temperature = <85000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+
+			cooling-maps {
+				trip = <&cpu_alert>;
+				cooling-device = <&CPU0 0 2>;
+				contribution = <100>;
+			};
+		};
+	};
+
 	soc {
 		#address-cells = <1>;
 		#size-cells = <1>;
@@ -502,33 +536,14 @@
 				reg = <0x80157450 0xC>;
 			};
 
-			thermal@801573c0 {
+			thermal: thermal@801573c0 {
 				compatible = "stericsson,db8500-thermal";
 				reg = <0x801573c0 0x40>;
 				interrupt-parent = <&prcmu>;
 				interrupts = <21 IRQ_TYPE_LEVEL_HIGH>,
 					     <22 IRQ_TYPE_LEVEL_HIGH>;
 				interrupt-names = "IRQ_HOTMON_LOW", "IRQ_HOTMON_HIGH";
-				num-trips = <4>;
-
-				trip0-temp = <70000>;
-				trip0-type = "active";
-				trip0-cdev-num = <1>;
-				trip0-cdev-name0 = "thermal-cpufreq-0";
-
-				trip1-temp = <75000>;
-				trip1-type = "active";
-				trip1-cdev-num = <1>;
-				trip1-cdev-name0 = "thermal-cpufreq-0";
-
-				trip2-temp = <80000>;
-				trip2-type = "active";
-				trip2-cdev-num = <1>;
-				trip2-cdev-name0 = "thermal-cpufreq-0";
-
-				trip3-temp = <85000>;
-				trip3-type = "critical";
-				trip3-cdev-num = <0>;
+				#thermal-sensor-cells = <0>;
 			};
 
 			db8500-prcmu-regulators {
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
