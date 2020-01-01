Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A749712DF85
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Jan 2020 17:32:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=mMZCdu/sfgh5pUEQwAUI3omctCIfhWrBvhGrhZb7AuI=; b=NGRFtiY3WpoFI3LpsyGshbak/6
	xmTaK3E9AubiSbo5ls+NWJjBGnUc73lbwQs6V4KrWKMqyxPObatHJ/98lVvFfYLI1ZStLLhYFmrRi
	XNFwE06cqnkwoR613i1qlRM+Vlw96XCKE1pJzCodClS8ByC7eXx4d4DOEihCK4GD0RiIDikspsrQK
	3Ufov7bj7XPjkX4cOZu1uQqnumHq9pNLOkZWTJUE62bb8iBloLzBMog5ka6RDofaG2YrC4vkwV5TV
	Ppq3Ub/H3ya0z4Ps0/4ejlzjNDaokARhDSddRgv8c5GQlj5gyeRJKqAVWIdNVI8mfK6TtZ8GfKZ89
	8yhEEOPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imgv8-0002cU-Vi; Wed, 01 Jan 2020 16:32:30 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imguO-0001yd-NR
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Jan 2020 16:31:46 +0000
Received: by mail-wm1-x343.google.com with SMTP id f129so3815652wmf.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 01 Jan 2020 08:31:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=0FtJRvYoh9q2xNKRzVf3Zc+0eiYysgU3x6WIKkWsIjw=;
 b=hp+dQqpauRcTWXe7d7Bs+XBu7BAh1P7y4cscKHejI9NSq3wYic3U/SvcPZZlP5RRtI
 GymzFS+BeeC2vL0nLX95WlZ1939z9jrVJsiawpHveS/VOEvQbrLEBxvvTzkuXeVr0arh
 xVWvmQXQykzAxTV/NXHpnyw8Rv0DVRC5pLrsU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=0FtJRvYoh9q2xNKRzVf3Zc+0eiYysgU3x6WIKkWsIjw=;
 b=kKnegBswW8GLEviLCAVB6SJNErRCG3TUQmwONiznvSv0kktPpEqEG98ageayRmVCi0
 bybzAMB669s5G9G33Su4gnMB2TNAWMfA3ezZkH/qHZZ8+xh+postkHcm0lPVo5RZERkJ
 Xk99jlnChOMCe09oCwRNy5ytsTLtgmivtMPR/mdLcotlrq6IwAlW7r2YvLMBxmYx2DOc
 tDJzyiRqUktiuEFDGP5dfsOAVtQh2UBlVryKvh3UZ5lAyEsu9FOG7dL4IiQX95hAsDI4
 woYJ6kUc3PwdO9qFb+ut9q6s9f5VzPs2aCQrObZRcEQqYSLJ134M7D99lsW6GniRNPXO
 bR0g==
X-Gm-Message-State: APjAAAVQFOX1Lfc8EnFwNl/mnMruJbSjqdvTCqFG21by7u8RgkPmklBa
 TeCEQFCGNN5qNt7sZ845NCUYsQ==
X-Google-Smtp-Source: APXvYqwnzMEJJ+SPGaqW/TD6mWsxkHENHtRUYQ8D7TWsJAz4BFnTHQ45khvMiDb7JM9kBxIMPqa9Kw==
X-Received: by 2002:a7b:cfc9:: with SMTP id f9mr10515511wmm.1.1577896301541;
 Wed, 01 Jan 2020 08:31:41 -0800 (PST)
Received: from panicking.lan (93-46-124-24.ip107.fastwebnet.it. [93.46.124.24])
 by smtp.gmail.com with ESMTPSA id u13sm6108580wmd.36.2020.01.01.08.31.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Jan 2020 08:31:41 -0800 (PST)
From: Michael Trimarchi <michael@amarulasolutions.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH 3/3] arm64: dts: imx8mm: properly describe IRQ hierarchy
Date: Wed,  1 Jan 2020 17:31:36 +0100
Message-Id: <20200101163136.1586-4-michael@amarulasolutions.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200101163136.1586-1-michael@amarulasolutions.com>
References: <20200101163136.1586-1-michael@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200101_083144_761534_7CD6216E 
X-CRM114-Status: GOOD (  13.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-amarula@amarulasolutions.com,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The GPCv2 sits between most of the peripherals and the GIC and
functions as a wakeup controller for the CPU cores. Add already
two power domains. Those domains was tested on imx8mm board

Signed-off-by: Michael Trimarchi <michael@amarulasolutions.com>
---
 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 31 ++++++++++++++++++++++-
 1 file changed, 30 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index 6edbdfe2d0d7..7360dc0685eb 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -4,6 +4,7 @@
  */
 
 #include <dt-bindings/clock/imx8mm-clock.h>
+#include <dt-bindings/power/imx8mm-power.h>
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/input.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
@@ -12,7 +13,7 @@
 #include "imx8mm-pinfunc.h"
 
 / {
-	interrupt-parent = <&gic>;
+	interrupt-parent = <&gpc>;
 	#address-cells = <2>;
 	#size-cells = <2>;
 
@@ -197,6 +198,7 @@
 		interrupts = <GIC_PPI 7
 			     (GIC_CPU_MASK_SIMPLE(6) | IRQ_TYPE_LEVEL_HIGH)>;
 		interrupt-affinity = <&A53_0>, <&A53_1>, <&A53_2>, <&A53_3>;
+		interrupt-parent = <&gic>;
 	};
 
 	timer {
@@ -206,6 +208,7 @@
 			     <GIC_PPI 11 (GIC_CPU_MASK_SIMPLE(6) | IRQ_TYPE_LEVEL_LOW)>, /* Virtual */
 			     <GIC_PPI 10 (GIC_CPU_MASK_SIMPLE(6) | IRQ_TYPE_LEVEL_LOW)>; /* Hypervisor */
 		clock-frequency = <8000000>;
+		interrupt-parent = <&gic>;
 		arm,no-tick-in-suspend;
 	};
 
@@ -498,6 +501,29 @@
 				interrupts = <GIC_SPI 89 IRQ_TYPE_LEVEL_HIGH>;
 				#reset-cells = <1>;
 			};
+
+			gpc: gpc@303a0000 {
+				compatible = "fsl,imx8mm-gpc";
+				reg = <0x303a0000 0x10000>;
+				interrupt-parent = <&gic>;
+				interrupt-controller;
+				#interrupt-cells = <3>;
+
+				pgc {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					pgc_otg1: power-domain@2 {
+						#power-domain-cells = <0>;
+						reg = <IMX8MM_POWER_DOMAIN_USB_OTG1>;
+					};
+
+					pgc_otg2: power-domain@3 {
+						#power-domain-cells = <0>;
+						reg = <IMX8MM_POWER_DOMAIN_USB_OTG2>;
+					};
+				};
+			};
 		};
 
 		aips2: bus@30400000 {
@@ -790,6 +816,7 @@
 				assigned-clock-parents = <&clk IMX8MM_SYS_PLL2_500M>;
 				fsl,usbphy = <&usbphynop1>;
 				fsl,usbmisc = <&usbmisc1 0>;
+				power-domains = <&pgc_otg1>;
 				status = "disabled";
 			};
 
@@ -809,6 +836,7 @@
 				assigned-clock-parents = <&clk IMX8MM_SYS_PLL2_500M>;
 				fsl,usbphy = <&usbphynop2>;
 				fsl,usbmisc = <&usbmisc2 0>;
+				power-domains = <&pgc_otg2>;
 				status = "disabled";
 			};
 
@@ -856,6 +884,7 @@
 			#interrupt-cells = <3>;
 			interrupt-controller;
 			interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-parent = <&gic>;
 		};
 
 		ddr-pmu@3d800000 {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
