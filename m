Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D35D191575
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 17:00:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gWWCM2TCh1EOTprUkTkXpSERLABsdy4f1w0V2976NDo=; b=ptVeRcJXPRqiMn
	VotRa/kvXYtYWOWdqHmTzYkXsUZhYIsJVzzYLI75AZ5gyOXLRvhTtI7amqW5IUzjSyoAcPM3Kkskc
	GyBPjxoI9RT6w2ndBqgf5cTdPwiCZGmN5OkIxQiMc3suDkG4ekbIKs+WGuDc1OplcG5QCJXTWyUc2
	3b/Ugckp0CcU3hGrROrfDPciWeMmocYjapn2voEMlCF1n41qWjzrSo6C4cLdXKtz0IuBFBPEem5F4
	YWSP4X0VD/u42mpxXjOZ4ZPsuM6TULrq+Tec5tFAqXzcmZvOeyCLppUBZIoxBMQDmwFIFidZ7nam2
	lwpm18X2hYT0DZWqzlDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGly3-0002gU-Ts; Tue, 24 Mar 2020 15:59:51 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGlx8-0001zp-F2
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 15:58:56 +0000
Received: by mail-wm1-x341.google.com with SMTP id z18so3797055wmk.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Mar 2020 08:58:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=TBYaP2vsyfjpwpmYdocpG4qegwrjQ0C3wk8Hsfu1Y/w=;
 b=SsYgwQaUoSmYVCBWgE9BQzt3RCSVmqXMexs3Ypisb3v86af/zdjtm7+6dQ61ssgEOe
 9LMAgo/FP1YW6hOwLeTRJtSBad2V5g/rJ2p78jIgr+QZdjSR+0ZYDwbAmXC8+QYIQDVX
 H3i2n4b+Tp3orgL7YXDu4nC9Lg/RjYREGSOoS6k7Zzr/wztYxTGvVkRVxya2sVwIq+Fn
 o2sp/PAnCgg/ulkf/iYrOJpKrePmLMHa1Cf5kZ6jvgEektGhojyS9PfsWtJlFJpKHOJi
 YWK8fcYqB2mxAhToD0I/gohFiPkoEyS+WLQDr/LRj1VQwtvYcZhueB6PyuNJHmxR13Jw
 eytg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=TBYaP2vsyfjpwpmYdocpG4qegwrjQ0C3wk8Hsfu1Y/w=;
 b=gRUcxIjejgUEFrYgTUFhcexEQiNqcTqX6tG0nRxyXiQPXE2Gp2rZcZXwb5nYyOjZ7k
 gCiEh12FvgfTU8uE+3XZi+WeuhXdhyAYpYXeF8STmituxKg20YABSw/0C73vucGsZdJc
 T21HMjfT0K2SQFbPFcs6iE4qz1NmvrpyACrdsDc88x+896bdZVAP5DHhx9N/LCgX2slm
 eErbTP4qWzQbnre4GNasV5CZOEsMw1mj57Xz0tFxyeLU3Q43DEkRESCISysZR/ymO5+m
 gMpbS74AuN3bpX6hCemzpoi8vHIsbGFEX1HCv4UYVX/zg4AUGTEAfok6dVKuX+aQiqk+
 SlQQ==
X-Gm-Message-State: ANhLgQ39mXsxac7Rq2QTQ8A2AGVoLMkaqRpBIprNmxV2QgJGp+iF63vJ
 DXuU38EsEOEscGtWp2+bhvfGRQ==
X-Google-Smtp-Source: ADFU+vvYiq9W4c0hmv6urRGxwAanhG7SOtOWDVdqA2ynUrbzpq9wr12pHubZf8XKqIXJ6UOSsR9Xjg==
X-Received: by 2002:a7b:c20d:: with SMTP id x13mr6292071wmi.52.1585065533268; 
 Tue, 24 Mar 2020 08:58:53 -0700 (PDT)
Received: from xps7590.local ([2a02:2450:102f:13b8:e15d:2127:89a:e5dc])
 by smtp.gmail.com with ESMTPSA id t124sm4993321wmg.13.2020.03.24.08.58.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Mar 2020 08:58:52 -0700 (PDT)
From: Robert Foss <robert.foss@linaro.org>
To: agross@kernel.org, bjorn.andersson@linaro.org, robh+dt@kernel.org,
 mark.rutland@arm.com, catalin.marinas@arm.com, will@kernel.org,
 shawnguo@kernel.org, olof@lixom.net, Anson.Huang@nxp.com,
 dinguyen@kernel.org, leonard.crestez@nxp.com,
 marcin.juszkiewicz@linaro.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Loic Poulain <loic.poulain@linaro.org>, Luca Weiss <luca@z3ntu.xyz>
Subject: [v3 3/6] arm64: dts: sdm845: Add i2c-qcom-cci node
Date: Tue, 24 Mar 2020 16:58:39 +0100
Message-Id: <20200324155843.10719-4-robert.foss@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200324155843.10719-1-robert.foss@linaro.org>
References: <20200324155843.10719-1-robert.foss@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_085854_528825_C60EFD05 
X-CRM114-Status: GOOD (  12.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
index eb77aaa6a819..a6b6837c3d68 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
+++ b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
@@ -583,3 +583,7 @@ pinconf-rx {
 		bias-pull-up;
 	};
 };
+
+&cci {
+	status = "ok";
+};
diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
index d42302b8889b..91a60847026f 100644
--- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
@@ -5,6 +5,7 @@
  * Copyright (c) 2018, The Linux Foundation. All rights reserved.
  */
 
+#include <dt-bindings/clock/qcom,camcc-sdm845.h>
 #include <dt-bindings/clock/qcom,dispcc-sdm845.h>
 #include <dt-bindings/clock/qcom,gcc-sdm845.h>
 #include <dt-bindings/clock/qcom,gpucc-sdm845.h>
@@ -1451,6 +1452,42 @@ tlmm: pinctrl@3400000 {
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
@@ -2608,6 +2645,61 @@ videocc: clock-controller@ab00000 {
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
