Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 136F19A9F1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 10:16:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JzIlmaW1PRGU2+V9238JjY+aTyGcdDDTIyKSDN+OxXM=; b=tCHD6UxDxMAnXZ
	z0gxP4s+Bfq8YE/RZ/f4wbSIf0l+cRu7KBz0jCk6JBFFcO+lpGdHn0kfW7SVJdCTYSBZHjpU8M/pZ
	GzGjnHno5zoVR3aYSF0Go4lpNW2PucklHTbwA15Npr/UBsatBANcKfolV5/CfKFE4wqJoEiXWl9VB
	xWXQgHhXVZeR//c4Q0rTbUldTeu0Xey4/Z/TuCKxH0zKWRs7LrkmE43KcrgB+tAmOGNrKOFSch3mo
	4S/7tnwh3fZEVzIceZWIihysEAeFxE+bmig4lqbM/Uc4yvAUhK9wxmqxOVj/BB59rvi2bSZur+q6b
	a/BpnWK+EMS2zPWrnxcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i14jn-00023A-CU; Fri, 23 Aug 2019 08:15:59 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i14iQ-0008QW-0B
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 08:14:36 +0000
Received: by mail-wm1-x341.google.com with SMTP id m125so8197541wmm.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 23 Aug 2019 01:14:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=tWIXIHsRRnjSYQ3AsI0iEQhYAJ00xnlwPbNZjsDVxCk=;
 b=psJnyGdCUXOnfYhGt0XNOWkMUB9iTLmvzy2FunTubobkCZMC/dGNrnlFFi24eGzliT
 BztwYjuP49mrhDHf0UBfGn5WW5yy3WIWcp6h4zGhOoPpGj4sRGjRqrBahzfEpMIHgD5t
 b97JICc4ZeulSUnS2spPGRerGT8lXEpm4ScewXrf4OMcYp3JMZN8vWxmUH5i37ZQq04n
 KLwG3LBPOtMBj6qDdgE9sPSgDsrliznHHFc+cFAOCLQmDCmu7ZU07czDmLBWjv4g7VGm
 JmXwl4pjAsNDqHSfAxPAyUu8aqwEJkcysERuGTyVz396wNuOe936uhdy75Gtnui1hFhj
 dGbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=tWIXIHsRRnjSYQ3AsI0iEQhYAJ00xnlwPbNZjsDVxCk=;
 b=pG2bkpyVSc7fYZ8XM2qLgWfSDxttlA0JgMwUZb/MmaoQIs50vi+I9pWeAuL5zsvXfa
 bkJf4OFa67SBvOQv4c1vDg7jO2Mj3+g4RzmPmN/KS6SYR0UPbJx441pZEDVeXaKY9qzo
 A/7FFbxdulVraXEF+m+YBI9QDFpeWfL3Y0SSVVRGpVn/15W+20rUmpRIaPYs7h0G/Kro
 3ieYknq82IQ38lsylRU4+Xa1kguzCU4J+RBOTvzxvTi7S48AGfEDCZoQX5XC8PChMHXH
 Tr0d+WrN12y6axeVEqwA+qDnpBCZwmEr+ZlGYkPwmJvG4lp4lCPUw7x6SdICuBPlKdNs
 TTzw==
X-Gm-Message-State: APjAAAXNIUDkTDIbvX/dROcntHAlPaEgTgehzpUqwGj8DWRCyvqoKa6o
 rcevrqoy19EflC0vmdEh/p9ezXY2TwWeQQ==
X-Google-Smtp-Source: APXvYqw/tJbGfOMT0u4Ry9S5gyhMfZG5NLVl9v2ufDFsaia6+nJjrVPT+0ExheOJXEdqvRW6bnQPyQ==
X-Received: by 2002:a7b:cf11:: with SMTP id l17mr3522090wmg.158.1566548072267; 
 Fri, 23 Aug 2019 01:14:32 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id 74sm3632535wma.15.2019.08.23.01.14.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Aug 2019 01:14:31 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH 3/3] arm64: dts: khadas-vim3: add support for the SM1 based
 VIM3
Date: Fri, 23 Aug 2019 10:14:27 +0200
Message-Id: <20190823081427.17228-4-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190823081427.17228-1-narmstrong@baylibre.com>
References: <20190823081427.17228-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_011434_041783_A1E95117 
X-CRM114-Status: GOOD (  15.33  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the Amlogic SM1 based Khadas VIM3, sharing all the same features
as the G12B based one, but:
- a different DVFS support since only a single cluster is available
- audio is still not available on SM1

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/Makefile          |  1 +
 .../dts/amlogic/meson-sm1-khadas-vim3.dts     | 69 +++++++++++++++++++
 2 files changed, 70 insertions(+)
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-sm1-khadas-vim3.dts

diff --git a/arch/arm64/boot/dts/amlogic/Makefile b/arch/arm64/boot/dts/amlogic/Makefile
index edbf128e7707..33690b2ae2e1 100644
--- a/arch/arm64/boot/dts/amlogic/Makefile
+++ b/arch/arm64/boot/dts/amlogic/Makefile
@@ -35,3 +35,4 @@ dtb-$(CONFIG_ARCH_MESON) += meson-gxm-q201.dtb
 dtb-$(CONFIG_ARCH_MESON) += meson-gxm-rbox-pro.dtb
 dtb-$(CONFIG_ARCH_MESON) += meson-gxm-vega-s96.dtb
 dtb-$(CONFIG_ARCH_MESON) += meson-sm1-sei610.dtb
+dtb-$(CONFIG_ARCH_MESON) += meson-sm1-khadas-vim3.dtb
diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1-khadas-vim3.dts b/arch/arm64/boot/dts/amlogic/meson-sm1-khadas-vim3.dts
new file mode 100644
index 000000000000..3eb9cc5915d9
--- /dev/null
+++ b/arch/arm64/boot/dts/amlogic/meson-sm1-khadas-vim3.dts
@@ -0,0 +1,69 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2019 BayLibre, SAS
+ * Author: Neil Armstrong <narmstrong@baylibre.com>
+ */
+
+/dts-v1/;
+
+#include "meson-sm1.dtsi"
+#include "meson-khadas-vim3.dtsi"
+
+/ {
+	compatible = "khadas,vim3", "amlogic,sm1";
+
+	vddcpu: regulator-vddcpu {
+		/*
+		 * Silergy SY8030DEC Regulator.
+		 */
+		compatible = "pwm-regulator";
+
+		regulator-name = "VDDCPU";
+		regulator-min-microvolt = <690000>;
+		regulator-max-microvolt = <1050000>;
+
+		vin-supply = <&vsys_3v3>;
+
+		pwms = <&pwm_AO_cd 1 1250 0>;
+		pwm-dutycycle-range = <100 0>;
+
+		regulator-boot-on;
+		regulator-always-on;
+	};
+};
+
+&cpu0 {
+	cpu-supply = <&vddcpu>;
+	operating-points-v2 = <&cpu_opp_table>;
+	clocks = <&clkc CLKID_CPU_CLK>;
+	clock-latency = <50000>;
+};
+
+&cpu1 {
+	cpu-supply = <&vddcpu>;
+	operating-points-v2 = <&cpu_opp_table>;
+	clocks = <&clkc CLKID_CPU1_CLK>;
+	clock-latency = <50000>;
+};
+
+&cpu2 {
+	cpu-supply = <&vddcpu>;
+	operating-points-v2 = <&cpu_opp_table>;
+	clocks = <&clkc CLKID_CPU2_CLK>;
+	clock-latency = <50000>;
+};
+
+&cpu3 {
+	cpu-supply = <&vddcpu>;
+	operating-points-v2 = <&cpu_opp_table>;
+	clocks = <&clkc CLKID_CPU3_CLK>;
+	clock-latency = <50000>;
+};
+
+&pwm_AO_cd {
+	pinctrl-0 = <&pwm_ao_d_e_pins>;
+	pinctrl-names = "default";
+	clocks = <&xtal>;
+	clock-names = "clkin1";
+	status = "okay";
+};
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
