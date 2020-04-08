Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CCF01A22B6
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 15:11:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=arKq3bkUutxn2DMUEojrng9cZ2a6d7hzipSMZAy1ros=; b=P3IOZxXODPorKz
	Nyp8I+AkpJ7BZ6I6TgeNInxIYtj60tKRSHkFXwPKpR9j0T3ezLksAs+OvnpwSeGlAzazeWkSWtjDV
	N8bDudcGKB4sZUzbFBKpVFpUQpjGqWYNeoOWj4C4XrXJg+M3Etuzv3DSlTk/xZXDPa3XN2+cGD36I
	OUAdmEXZ4b4hoEf4DrF0ga+e6ZNKDGapbgLOszmS78F2AW1RYobk0D4JYe7jEHUtYrtyXstyV7UkD
	qwsf4moYe/wczZKnxD+LBIUuCOpZokrdRpOjRbOOPJ/xZ83uynIzrlxcjboCosGcYnjGVoTIUPWLr
	HL0WJwyv4Et9YqmNHh4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMAUY-0008RI-1E; Wed, 08 Apr 2020 13:11:42 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMATj-0007ow-GY
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Apr 2020 13:10:52 +0000
Received: by mail-wr1-x442.google.com with SMTP id 65so7790852wrl.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Apr 2020 06:10:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=obuHiJ7084xLsI7nA8kFM9id9M8y90Fq0uWuJodV6eM=;
 b=zRpDOg2kCRpS2XrqM/rxkPss6quxnK/Q3m+TXbMd8OqPBShaw0PMZB8KBgGa8jSaL/
 7bKe0lPWSKYrm3QZxrrUXVmyT/1YrPcvuQJuGJwIU3U/cRtN8+lvWVMe7Qxa1JGRE4DM
 Pl1a0YmxgqNykLqKogP0YqTUUup2VK8cYwsZMtw3KPYmpUXMITclhbDjEDgPLFyQKMRR
 uTf21XTCL6BukVxPV/w79zked5DKzVmu5LHdJbsMo5W95XgBEAUGLsX1Fn09+qsY16GW
 k6DMRdnbsOFDWUXs9UpptmotPVrKNX6YWJ/4V4ihEjHy4+fpdZ1xxBseZQkegLCk3DP4
 nrxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=obuHiJ7084xLsI7nA8kFM9id9M8y90Fq0uWuJodV6eM=;
 b=T53NunSwzsgzHDWxRXhtjpI2vf4iDPgnBoHT2hUefLbKL+bYQ59Fmhnvdbw/eobVxJ
 50ehp7D6KwL32HgM51Wu1bfAm/UCJLrchdMmOEqKWoOvMVu3CIv27R/KWy+leLQ8v7wj
 aOP3565/8KG5UtmLjlCsLrzlxKtvwFqnQarAYOAIp8hnWAa/vyflGAg5D1vej4JUCEhB
 OlOXPquTTP69x3+hsZCyp11iZpK+IrcQPTZQ/32ncuKx+9rSM+ZL1BG3E6+45z8TehA6
 8Vip+QZYaemhOgqjr2sZzPV2tACr+LEZb+AZLdFZzquQrzd33dWbIplOfV+TICW60OAE
 xiFg==
X-Gm-Message-State: AGi0PuY5jmWiJpbrMcG8o1exx/ach9SPSgssloQAdtwdwVNv86WrF+9P
 NZeMjhT2bm7jIceffidv+rGgNw==
X-Google-Smtp-Source: APiQypLlRqe1vxdnbeesA/18275cB5NgKIQ/LqbHzPm4GlATdf7ZYGiIdlh3Pr/n9yCWR5fPyF2SWg==
X-Received: by 2002:a5d:4d87:: with SMTP id b7mr8112164wru.36.1586351450054;
 Wed, 08 Apr 2020 06:10:50 -0700 (PDT)
Received: from localhost.localdomain ([37.120.50.78])
 by smtp.gmail.com with ESMTPSA id f4sm18428044wrp.80.2020.04.08.06.10.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Apr 2020 06:10:49 -0700 (PDT)
From: Robert Foss <robert.foss@linaro.org>
To: agross@kernel.org, bjorn.andersson@linaro.org, robh+dt@kernel.org,
 catalin.marinas@arm.com, will@kernel.org, shawnguo@kernel.org,
 leoyang.li@nxp.com, Anson.Huang@nxp.com, olof@lixom.net,
 leonard.crestez@nxp.com, geert+renesas@glider.be,
 marcin.juszkiewicz@linaro.org, valentin.schneider@arm.com,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Loic Poulain <loic.poulain@linaro.org>, Luca Weiss <luca@z3ntu.xyz>
Subject: [PATCH v4 3/6] arm64: dts: sdm845: Add i2c-qcom-cci node
Date: Wed,  8 Apr 2020 15:09:56 +0200
Message-Id: <20200408130959.2717409-4-robert.foss@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200408130959.2717409-1-robert.foss@linaro.org>
References: <20200408130959.2717409-1-robert.foss@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_061051_548544_2D5169CB 
X-CRM114-Status: GOOD (  12.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Robert Foss <robert.foss@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The sdm845 SOC ships with a CCI controller, which
has two CCI/I2C buses.

Signed-off-by: Robert Foss <robert.foss@linaro.org>
Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---

Changes since v1:
 - Pad addresses to 8 bytes
 - Sort clock_camcc by address
 - Change cciX pinctrl node names
 - Remove pinmux/pinconf nodes from pinctrl nodes
 - Remove clk suffix from CCI node clock-names
 - Give CCI i2c-bus nodes labels

 arch/arm64/boot/dts/qcom/sdm845-db845c.dts |  4 +
 arch/arm64/boot/dts/qcom/sdm845.dtsi       | 92 ++++++++++++++++++++++
 2 files changed, 96 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
index a2e05926b429..8644a2f6095a 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
+++ b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
@@ -866,3 +866,7 @@ pinconf-rx {
 		bias-pull-up;
 	};
 };
+
+&cci {
+	status = "ok";
+};
diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
index 8f926b5234d4..f3eb1dc11ac6 100644
--- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
@@ -5,6 +5,7 @@
  * Copyright (c) 2018, The Linux Foundation. All rights reserved.
  */
 
+#include <dt-bindings/clock/qcom,camcc-sdm845.h>
 #include <dt-bindings/clock/qcom,dispcc-sdm845.h>
 #include <dt-bindings/clock/qcom,gcc-sdm845.h>
 #include <dt-bindings/clock/qcom,gpucc-sdm845.h>
@@ -1813,6 +1814,42 @@ tlmm: pinctrl@3400000 {
 			gpio-ranges = <&tlmm 0 0 150>;
 			wakeup-parent = <&pdc_intc>;
 
+			cci0_default: cci0-default {
+				/* SDA, SCL */
+				pins = "gpio17", "gpio18";
+				function = "cci_i2c";
+
+				bias-pull-up;
+				drive-strength = <2>; /* 2 mA */
+			};
+
+			cci0_sleep: cci0-sleep {
+				/* SDA, SCL */
+				pins = "gpio17", "gpio18";
+				function = "cci_i2c";
+
+				drive-strength = <2>; /* 2 mA */
+				bias-pull-down;
+			};
+
+			cci1_default: cci1-default {
+				/* SDA, SCL */
+				pins = "gpio19", "gpio20";
+				function = "cci_i2c";
+
+				bias-pull-up;
+				drive-strength = <2>; /* 2 mA */
+			};
+
+			cci1_sleep: cci1-sleep {
+				/* SDA, SCL */
+				pins = "gpio19", "gpio20";
+				function = "cci_i2c";
+
+				drive-strength = <2>; /* 2 mA */
+				bias-pull-down;
+			};
+
 			qspi_clk: qspi-clk {
 				pinmux {
 					pins = "gpio95";
@@ -3194,6 +3231,61 @@ videocc: clock-controller@ab00000 {
 			#reset-cells = <1>;
 		};
 
+		cci: cci@ac4a000 {
+			compatible = "qcom,sdm845-cci";
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			reg = <0 0x0ac4a000 0 0x4000>;
+			interrupts = <GIC_SPI 460 IRQ_TYPE_EDGE_RISING>;
+			power-domains = <&clock_camcc TITAN_TOP_GDSC>;
+
+			clocks = <&clock_camcc CAM_CC_CAMNOC_AXI_CLK>,
+				<&clock_camcc CAM_CC_SOC_AHB_CLK>,
+				<&clock_camcc CAM_CC_SLOW_AHB_CLK_SRC>,
+				<&clock_camcc CAM_CC_CPAS_AHB_CLK>,
+				<&clock_camcc CAM_CC_CCI_CLK>,
+				<&clock_camcc CAM_CC_CCI_CLK_SRC>;
+			clock-names = "camnoc_axi",
+				"soc_ahb",
+				"slow_ahb_src",
+				"cpas_ahb",
+				"cci",
+				"cci_src";
+
+			assigned-clocks = <&clock_camcc CAM_CC_CAMNOC_AXI_CLK>,
+				<&clock_camcc CAM_CC_CCI_CLK>;
+			assigned-clock-rates = <80000000>, <37500000>;
+
+			pinctrl-names = "default", "sleep";
+			pinctrl-0 = <&cci0_default &cci1_default>;
+			pinctrl-1 = <&cci0_sleep &cci1_sleep>;
+
+			status = "disabled";
+
+			cci_i2c0: i2c-bus@0 {
+				reg = <0>;
+				clock-frequency = <1000000>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+			};
+
+			cci_i2c1: i2c-bus@1 {
+				reg = <1>;
+				clock-frequency = <1000000>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+			};
+		};
+
+		clock_camcc: clock-controller@ad00000 {
+			compatible = "qcom,sdm845-camcc";
+			reg = <0 0x0ad00000 0 0x10000>;
+			#clock-cells = <1>;
+			#reset-cells = <1>;
+			#power-domain-cells = <1>;
+		};
+
 		mdss: mdss@ae00000 {
 			compatible = "qcom,sdm845-mdss";
 			reg = <0 0x0ae00000 0 0x1000>;
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
