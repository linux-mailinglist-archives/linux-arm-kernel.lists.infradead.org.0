Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C8C4139BB4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 22:36:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ug6788IRzKlo7T1htCQKYgV6A8qLzeZ03nlF8JOKqaY=; b=WxxRh0TxYjH+nfLL8A6e+D/WlU
	hk2qsYDreurV8+fW7lQ1O1FH5i5NcspWLny2I/OBwTjTPXZ79YD+I9MKoBPkbrSY+KtfaRgBlMWNF
	eJ6o2fgG/actYJTW5y/2xUg4kSBvxt3KplESMOulS9yHON2TZqmmNgQsp1ZDutzvXnuRYudoU/XbM
	4I/LFIapxjzxdWo1Pdd6ocuOPg+Miyq8LDBjmDwRa62cmXk1mYBB0l4qTa3W0lPBlzjkHgLAvSTv3
	gKGirZDAazLclEZ1N6Hb0II92oi2qA+nFzRGJf0N5e4Hm4HaaqKb1OeaFYk+ZCcnWGUCSSH3YCU8i
	w/CaaE4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir7NQ-0007w7-Vg; Mon, 13 Jan 2020 21:36:01 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir7Jt-00043Q-1O
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 21:32:24 +0000
Received: by mail-wr1-x442.google.com with SMTP id w15so10201232wru.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Jan 2020 13:32:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=kgPv1xhL+mbW9NmJe5kryNqVes+1z2lPlIFwnRL1YA0=;
 b=HM2LZN+3/orf9sjpRegQ81thSCHgdFwb/UzmaNX+QHUwbxCWUhzqsnkkAj8+vNG+iY
 ePoSaN940WLnYlswPKDmvKrJdENs7S+r7imVx7AWTfGTBSneRmjIb1dE2E1mtWT0IEZ4
 3Lzh8WJKSDKW/3WqVKLNajWx1lvGlx4Z+VlzTaCeYkBekxmM/2Oaarc41oeC1Gz+4ca2
 x86Sy0m/36APq1BsNfi4c/FBTN17ZlXz/kEE+DRXOp6OjW1oyTZUpop76ewV8Kx68QHl
 6FLTI0hOmXHGsdQc/6lI9Bh3eY9Hzfrszw0tB57D1aaQl8iRKENsNkJ1QzBzxoBrmwZ1
 IwVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=kgPv1xhL+mbW9NmJe5kryNqVes+1z2lPlIFwnRL1YA0=;
 b=r1fXwMn0pNUu/iXqLZKy2v6Mnm2YqWuLH0Pb8ESfz7vMhx8OS2WznQCEVPWw788Ot9
 VRRRxH8x1rLWJ6CwICVGOyMm5QEM3lJOal0gcPxVwGw5Wr/i78FnKNYYdYQNw+tXri9B
 uAg2NJrqKYfO6nZcoFoOVIwL/qB6x/n57fwHsFlAZiXlpCUgOWkHlOHGn6sULjpFfXsX
 gBwu+q7L4O/hoOPlnI7vM/brqTNLdg6QQZUMAAI6h3u19uwC6tnKuRrrhaS2sJ4JNeUN
 yBLgjbCwKRmPmGOnFVCcQPXZwkINqUZOBLW3Nh2eeqH+wjXFwokfT1K6sLO/0XOaBqdn
 QDxw==
X-Gm-Message-State: APjAAAUuT0Ip9qvnDJM4aCMFlRFGzCHz7zaRQSYPvj4UyFN9iMhBINX5
 zgimLpp5sAecaeQLkVUhEDztYQ==
X-Google-Smtp-Source: APXvYqwL22f4eEJQJrViI+6F/Qt8xR72frc7pPNev/xJ92Gyriw+mkHj9Z8ZXa4vkVJ4q5miIDI8IQ==
X-Received: by 2002:adf:dd52:: with SMTP id u18mr20913661wrm.131.1578951139623; 
 Mon, 13 Jan 2020 13:32:19 -0800 (PST)
Received: from linaro.org ([2a00:23c5:6815:3901:a1cf:b00b:5683:ed40])
 by smtp.gmail.com with ESMTPSA id j12sm16725120wrt.55.2020.01.13.13.32.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Jan 2020 13:32:17 -0800 (PST)
From: Mike Leach <mike.leach@linaro.org>
To: mike.leach@linaro.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, coresight@lists.linaro.org,
 linux-doc@vger.kernel.org
Subject: [PATCH v8 11/15] dt-bindings: arm: Juno platform - add CTI entries to
 device tree.
Date: Mon, 13 Jan 2020 21:31:45 +0000
Message-Id: <20200113213149.25599-12-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200113213149.25599-1-mike.leach@linaro.org>
References: <20200113213149.25599-1-mike.leach@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_133221_635509_B52DBD73 
X-CRM114-Status: GOOD (  12.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: lorenzo.pieralisi@arm.com, mathieu.poirier@linaro.org,
 suzuki.poulose@arm.com, linux-arm-msm@vger.kernel.org, corbet@lwn.net,
 liviu.dudau@arm.com, agross@kernel.org, robh+dt@kernel.org, maxime@cerno.tech,
 sudeep.holla@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add in CTI entries for Juno r0, r1 and r2 to device tree entries.

Signed-off-by: Mike Leach <mike.leach@linaro.org>
Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 arch/arm64/boot/dts/arm/juno-base.dtsi    | 162 +++++++++++++++++++++-
 arch/arm64/boot/dts/arm/juno-cs-r1r2.dtsi |  37 ++++-
 arch/arm64/boot/dts/arm/juno-r1.dts       |  25 ++++
 arch/arm64/boot/dts/arm/juno-r2.dts       |  25 ++++
 arch/arm64/boot/dts/arm/juno.dts          |  25 ++++
 5 files changed, 269 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/arm/juno-base.dtsi b/arch/arm64/boot/dts/arm/juno-base.dtsi
index 1f3c80aafbd7..fffd75cd2fd9 100644
--- a/arch/arm64/boot/dts/arm/juno-base.dtsi
+++ b/arch/arm64/boot/dts/arm/juno-base.dtsi
@@ -119,7 +119,7 @@
 	 * The actual size is just 4K though 64K is reserved. Access to the
 	 * unmapped reserved region results in a DECERR response.
 	 */
-	etf@20010000 { /* etf0 */
+	etf_sys0: etf@20010000 { /* etf0 */
 		compatible = "arm,coresight-tmc", "arm,primecell";
 		reg = <0 0x20010000 0 0x1000>;
 
@@ -143,7 +143,7 @@
 		};
 	};
 
-	tpiu@20030000 {
+	tpiu_sys: tpiu@20030000 {
 		compatible = "arm,coresight-tpiu", "arm,primecell";
 		reg = <0 0x20030000 0 0x1000>;
 
@@ -196,7 +196,7 @@
 		};
 	};
 
-	etr@20070000 {
+	etr_sys: etr@20070000 {
 		compatible = "arm,coresight-tmc", "arm,primecell";
 		reg = <0 0x20070000 0 0x1000>;
 		iommus = <&smmu_etr 0>;
@@ -214,7 +214,7 @@
 		};
 	};
 
-	stm@20100000 {
+	stm_sys: stm@20100000 {
 		compatible = "arm,coresight-stm", "arm,primecell";
 		reg = <0 0x20100000 0 0x1000>,
 		      <0 0x28000000 0 0x1000000>;
@@ -291,6 +291,18 @@
 		};
 	};
 
+	cti0: cti@22020000 {
+		compatible = "arm,coresight-cti-v8-arch", "arm,coresight-cti",
+			     "arm,primecell";
+		reg = <0 0x22020000 0 0x1000>;
+
+		clocks = <&soc_smc50mhz>;
+		clock-names = "apb_pclk";
+		power-domains = <&scpi_devpd 0>;
+
+		arm,cs-dev-assoc = <&etm0>;
+	};
+
 	funnel@220c0000 { /* cluster0 funnel */
 		compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
 		reg = <0 0x220c0000 0 0x1000>;
@@ -351,6 +363,18 @@
 		};
 	};
 
+	cti1: cti@22120000 {
+		compatible = "arm,coresight-cti-v8-arch", "arm,coresight-cti",
+			     "arm,primecell";
+		reg = <0 0x22120000 0 0x1000>;
+
+		clocks = <&soc_smc50mhz>;
+		clock-names = "apb_pclk";
+		power-domains = <&scpi_devpd 0>;
+
+		arm,cs-dev-assoc = <&etm1>;
+	};
+
 	cpu_debug2: cpu-debug@23010000 {
 		compatible = "arm,coresight-cpu-debug", "arm,primecell";
 		reg = <0x0 0x23010000 0x0 0x1000>;
@@ -376,6 +400,18 @@
 		};
 	};
 
+	cti2: cti@23020000 {
+		compatible = "arm,coresight-cti-v8-arch", "arm,coresight-cti",
+			     "arm,primecell";
+		reg = <0 0x23020000 0 0x1000>;
+
+		clocks = <&soc_smc50mhz>;
+		clock-names = "apb_pclk";
+		power-domains = <&scpi_devpd 0>;
+
+		arm,cs-dev-assoc = <&etm2>;
+	};
+
 	funnel@230c0000 { /* cluster1 funnel */
 		compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
 		reg = <0 0x230c0000 0 0x1000>;
@@ -448,6 +484,18 @@
 		};
 	};
 
+	cti3: cti@23120000 {
+		compatible = "arm,coresight-cti-v8-arch", "arm,coresight-cti",
+			     "arm,primecell";
+		reg = <0 0x23120000 0 0x1000>;
+
+		clocks = <&soc_smc50mhz>;
+		clock-names = "apb_pclk";
+		power-domains = <&scpi_devpd 0>;
+
+		arm,cs-dev-assoc = <&etm3>;
+	};
+
 	cpu_debug4: cpu-debug@23210000 {
 		compatible = "arm,coresight-cpu-debug", "arm,primecell";
 		reg = <0x0 0x23210000 0x0 0x1000>;
@@ -473,6 +521,18 @@
 		};
 	};
 
+	cti4: cti@23220000 {
+		compatible = "arm,coresight-cti-v8-arch", "arm,coresight-cti",
+			     "arm,primecell";
+		reg = <0 0x23220000 0 0x1000>;
+
+		clocks = <&soc_smc50mhz>;
+		clock-names = "apb_pclk";
+		power-domains = <&scpi_devpd 0>;
+
+		arm,cs-dev-assoc = <&etm4>;
+	};
+
 	cpu_debug5: cpu-debug@23310000 {
 		compatible = "arm,coresight-cpu-debug", "arm,primecell";
 		reg = <0x0 0x23310000 0x0 0x1000>;
@@ -498,6 +558,100 @@
 		};
 	};
 
+	cti5: cti@23320000 {
+		compatible = "arm,coresight-cti-v8-arch", "arm,coresight-cti",
+			     "arm,primecell";
+		reg = <0 0x23320000 0 0x1000>;
+
+		clocks = <&soc_smc50mhz>;
+		clock-names = "apb_pclk";
+		power-domains = <&scpi_devpd 0>;
+
+		arm,cs-dev-assoc = <&etm5>;
+	};
+
+	cti@20020000 { /* sys_cti_0 */
+		compatible = "arm,coresight-cti", "arm,primecell";
+		reg = <0 0x20020000 0 0x1000>;
+
+		clocks = <&soc_smc50mhz>;
+		clock-names = "apb_pclk";
+		power-domains = <&scpi_devpd 0>;
+
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		trig-conns@0 {
+			reg = <0>;
+			arm,trig-in-sigs=<2 3>;
+			arm,trig-in-types=<SNK_FULL SNK_ACQCOMP>;
+			arm,trig-out-sigs=<0 1>;
+			arm,trig-out-types=<SNK_FLUSHIN SNK_TRIGIN>;
+			arm,cs-dev-assoc = <&etr_sys>;
+		};
+
+		trig-conns@1 {
+			reg = <1>;
+			arm,trig-in-sigs=<0 1>;
+			arm,trig-in-types=<SNK_FULL SNK_ACQCOMP>;
+			arm,trig-out-sigs=<7 6>;
+			arm,trig-out-types=<SNK_FLUSHIN SNK_TRIGIN>;
+			arm,cs-dev-assoc = <&etf_sys0>;
+		};
+
+		trig-conns@2 {
+			reg = <2>;
+			arm,trig-in-sigs=<4 5 6 7>;
+			arm,trig-in-types=<STM_TOUT_SPTE STM_TOUT_SW
+					   STM_TOUT_HETE STM_ASYNCOUT>;
+			arm,trig-out-sigs=<4 5>;
+			arm,trig-out-types=<STM_HWEVENT STM_HWEVENT>;
+			arm,cs-dev-assoc = <&stm_sys>;
+		};
+
+		trig-conns@3 {
+			reg = <3>;
+			arm,trig-out-sigs=<2 3>;
+			arm,trig-out-types=<SNK_FLUSHIN SNK_TRIGIN>;
+			arm,cs-dev-assoc = <&tpiu_sys>;
+		};
+	};
+
+	cti@20110000 { /* sys_cti_1 */
+		compatible = "arm,coresight-cti", "arm,primecell";
+		reg = <0 0x20110000 0 0x1000>;
+
+		clocks = <&soc_smc50mhz>;
+		clock-names = "apb_pclk";
+		power-domains = <&scpi_devpd 0>;
+
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		trig-conns@0 {
+			reg = <0>;
+			arm,trig-in-sigs=<0>;
+			arm,trig-in-types=<GEN_INTREQ>;
+			arm,trig-out-sigs=<0>;
+			arm,trig-out-types=<GEN_HALTREQ>;
+			arm,trig-conn-name = "sys_profiler";
+		};
+
+		trig-conns@1 {
+			reg = <1>;
+			arm,trig-out-sigs=<2 3>;
+			arm,trig-out-types=<GEN_HALTREQ GEN_RESTARTREQ>;
+			arm,trig-conn-name = "watchdog";
+		};
+
+		trig-conns@2 {
+			reg = <2>;
+			arm,trig-out-sigs=<1 6>;
+			arm,trig-out-types=<GEN_HALTREQ GEN_RESTARTREQ>;
+			arm,trig-conn-name = "g_counter";
+		};
+	};
+
 	gpu: gpu@2d000000 {
 		compatible = "arm,juno-mali", "arm,mali-t624";
 		reg = <0 0x2d000000 0 0x10000>;
diff --git a/arch/arm64/boot/dts/arm/juno-cs-r1r2.dtsi b/arch/arm64/boot/dts/arm/juno-cs-r1r2.dtsi
index eda3d9e18af6..752b05f8bf31 100644
--- a/arch/arm64/boot/dts/arm/juno-cs-r1r2.dtsi
+++ b/arch/arm64/boot/dts/arm/juno-cs-r1r2.dtsi
@@ -23,7 +23,7 @@
 		};
 	};
 
-	etf@20140000 { /* etf1 */
+	etf_sys1: etf@20140000 { /* etf1 */
 		compatible = "arm,coresight-tmc", "arm,primecell";
 		reg = <0 0x20140000 0 0x1000>;
 
@@ -82,4 +82,39 @@
 
 		};
 	};
+
+	cti@20160000 { /* sys_cti_2 */
+		compatible = "arm,coresight-cti", "arm,primecell";
+		reg = <0 0x20160000 0 0x1000>;
+
+		clocks = <&soc_smc50mhz>;
+		clock-names = "apb_pclk";
+		power-domains = <&scpi_devpd 0>;
+
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		trig-conns@0 {
+			reg = <0>;
+			arm,trig-in-sigs=<0 1>;
+			arm,trig-in-types=<SNK_FULL SNK_ACQCOMP>;
+			arm,trig-out-sigs=<0 1>;
+			arm,trig-out-types=<SNK_FLUSHIN SNK_TRIGIN>;
+			arm,cs-dev-assoc = <&etf_sys1>;
+		};
+
+		trig-conns@1 {
+			reg = <1>;
+			arm,trig-in-sigs=<2 3 4>;
+			arm,trig-in-types=<ELA_DBGREQ ELA_TSTART ELA_TSTOP>;
+			arm,trig-conn-name = "ela_clus_0";
+		};
+
+		trig-conns@2 {
+			reg = <2>;
+			arm,trig-in-sigs=<5 6 7>;
+			arm,trig-in-types=<ELA_DBGREQ ELA_TSTART ELA_TSTOP>;
+			arm,trig-conn-name = "ela_clus_1";
+		};
+	};
 };
diff --git a/arch/arm64/boot/dts/arm/juno-r1.dts b/arch/arm64/boot/dts/arm/juno-r1.dts
index 5f290090b0cf..02aa51eb311d 100644
--- a/arch/arm64/boot/dts/arm/juno-r1.dts
+++ b/arch/arm64/boot/dts/arm/juno-r1.dts
@@ -9,6 +9,7 @@
 /dts-v1/;
 
 #include <dt-bindings/interrupt-controller/arm-gic.h>
+#include <dt-bindings/arm/coresight-cti-dt.h>
 #include "juno-base.dtsi"
 #include "juno-cs-r1r2.dtsi"
 
@@ -309,3 +310,27 @@
 &cpu_debug5 {
 	cpu = <&A53_3>;
 };
+
+&cti0 {
+	cpu = <&A57_0>;
+};
+
+&cti1 {
+	cpu = <&A57_1>;
+};
+
+&cti2 {
+	cpu = <&A53_0>;
+};
+
+&cti3 {
+	cpu = <&A53_1>;
+};
+
+&cti4 {
+	cpu = <&A53_2>;
+};
+
+&cti5 {
+	cpu = <&A53_3>;
+};
diff --git a/arch/arm64/boot/dts/arm/juno-r2.dts b/arch/arm64/boot/dts/arm/juno-r2.dts
index 305300dd521c..75bb27c2d4dc 100644
--- a/arch/arm64/boot/dts/arm/juno-r2.dts
+++ b/arch/arm64/boot/dts/arm/juno-r2.dts
@@ -9,6 +9,7 @@
 /dts-v1/;
 
 #include <dt-bindings/interrupt-controller/arm-gic.h>
+#include <dt-bindings/arm/coresight-cti-dt.h>
 #include "juno-base.dtsi"
 #include "juno-cs-r1r2.dtsi"
 
@@ -315,3 +316,27 @@
 &cpu_debug5 {
 	cpu = <&A53_3>;
 };
+
+&cti0 {
+	cpu = <&A72_0>;
+};
+
+&cti1 {
+	cpu = <&A72_1>;
+};
+
+&cti2 {
+	cpu = <&A53_0>;
+};
+
+&cti3 {
+	cpu = <&A53_1>;
+};
+
+&cti4 {
+	cpu = <&A53_2>;
+};
+
+&cti5 {
+	cpu = <&A53_3>;
+};
diff --git a/arch/arm64/boot/dts/arm/juno.dts b/arch/arm64/boot/dts/arm/juno.dts
index f00cffbd032c..dbc22e70b62c 100644
--- a/arch/arm64/boot/dts/arm/juno.dts
+++ b/arch/arm64/boot/dts/arm/juno.dts
@@ -9,6 +9,7 @@
 /dts-v1/;
 
 #include <dt-bindings/interrupt-controller/arm-gic.h>
+#include <dt-bindings/arm/coresight-cti-dt.h>
 #include "juno-base.dtsi"
 
 / {
@@ -295,3 +296,27 @@
 &cpu_debug5 {
 	cpu = <&A53_3>;
 };
+
+&cti0 {
+	cpu = <&A57_0>;
+};
+
+&cti1 {
+	cpu = <&A57_1>;
+};
+
+&cti2 {
+	cpu = <&A53_0>;
+};
+
+&cti3 {
+	cpu = <&A53_1>;
+};
+
+&cti4 {
+	cpu = <&A53_2>;
+};
+
+&cti5 {
+	cpu = <&A53_3>;
+};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
