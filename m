Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A179C9EE6
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 14:53:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+hDixKX+9rzL24z6VXSUgsjSqqQWMYYzv4vGdxqeb+M=; b=FfUnJkGh5bsSVO
	x0KoTuiJZfIei898ubkalwY6S7zsZgSpn+y6CsQJ59w/NT6yOQl9sD7E/dIXo2XSCl/2r4kjoyL8N
	Pvl+qXz3cMxoXaMn0I+g0r4whLLh6XX2BaSTSqjqY8HwCff1fylK/yhtW5Uy1bblbxFAmTAtDI9K2
	Z0OkNq76MmfAHGl7memihbQuTegssAIQbr2p2E+7+TcPOaKhZFe1zNI8eZYgz0SupJcfWcFSh54dV
	aAP26XfsMQggRfIbZR/8EfTe1+dm8sPOCOk2jcPQH6y2LnKQxVWvxeAqAD09PvaUGFj0pSF9tXg6/
	suiRy0HKNoEbgusnIG6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG0bk-0005H5-Da; Thu, 03 Oct 2019 12:53:24 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG0ba-0005CO-BJ
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 12:53:17 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id 6158520B92;
 Thu,  3 Oct 2019 14:53:11 +0200 (CEST)
Received: from [192.168.108.37] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id 40E361FF2C;
 Thu,  3 Oct 2019 14:53:11 +0200 (CEST)
Subject: Re: [PATCH] arm64: dts: qcom: msm8998: Disable coresight by default
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
References: <20191003064449.2201-1-saiprakash.ranjan@codeaurora.org>
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Message-ID: <aecbc7a2-05fd-f30f-81c7-81947dc31c9f@free.fr>
Date: Thu, 3 Oct 2019 14:53:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191003064449.2201-1-saiprakash.ranjan@codeaurora.org>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Thu Oct  3 14:53:11 2019 +0200 (CEST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_055314_682567_D6391E10 
X-CRM114-Status: GOOD (  18.66  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marc.w.gonzalez[at]free.fr)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, DT <devicetree@vger.kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, MSM <linux-arm-msm@vger.kernel.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 03/10/2019 08:44, Sai Prakash Ranjan wrote:

> Boot failure has been reported on MSM8998 based laptop when
> coresight is enabled. This is most likely due to lack of
> firmware support for coresight on production device when
> compared to debug device like MTP where this issue is not
> observed. So disable coresight by default for MSM8998 and
> enable it only for MSM8998 MTP.
> 
> Reported-and-tested-by: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
> Fixes: 783abfa2249a ("arm64: dts: qcom: msm8998: Add Coresight support")
> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> ---
>  arch/arm64/boot/dts/qcom/msm8998-mtp.dtsi | 68 +++++++++++++++++++++++
>  arch/arm64/boot/dts/qcom/msm8998.dtsi     | 51 +++++++++++------
>  2 files changed, 102 insertions(+), 17 deletions(-)

Just wanted to toss an alternative, based on Suzuki's suggestion
(i.e. move the coresight nodes to a separate file)


 arch/arm64/boot/dts/qcom/msm8998-coresight.dtsi | 439 ++++++++++++++++++++++++
 arch/arm64/boot/dts/qcom/msm8998-mtp.dtsi       |   1 +
 arch/arm64/boot/dts/qcom/msm8998.dtsi           | 435 -----------------------
 3 files changed, 440 insertions(+), 435 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8998-coresight.dtsi b/arch/arm64/boot/dts/qcom/msm8998-coresight.dtsi
new file mode 100644
index 000000000000..eabf4e4194fd
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/msm8998-coresight.dtsi
@@ -0,0 +1,439 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (c) 2019, The Linux Foundation. All rights reserved. */
+
+&soc {
+	stm@6002000 {
+		compatible = "arm,coresight-stm", "arm,primecell";
+		reg = <0x06002000 0x1000>,
+		      <0x16280000 0x180000>;
+		reg-names = "stm-base", "stm-data-base";
+
+		clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
+		clock-names = "apb_pclk", "atclk";
+
+		out-ports {
+			port {
+				stm_out: endpoint {
+					remote-endpoint = <&funnel0_in7>;
+				};
+			};
+		};
+	};
+
+	funnel@6041000 {
+		compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
+		reg = <0x06041000 0x1000>;
+
+		clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
+		clock-names = "apb_pclk", "atclk";
+
+		out-ports {
+			port {
+				funnel0_out: endpoint {
+					remote-endpoint =
+					  <&merge_funnel_in0>;
+				};
+			};
+		};
+
+		in-ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@7 {
+				reg = <7>;
+				funnel0_in7: endpoint {
+					remote-endpoint = <&stm_out>;
+				};
+			};
+		};
+	};
+
+	funnel@6042000 {
+		compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
+		reg = <0x06042000 0x1000>;
+
+		clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
+		clock-names = "apb_pclk", "atclk";
+
+		out-ports {
+			port {
+				funnel1_out: endpoint {
+					remote-endpoint =
+					  <&merge_funnel_in1>;
+				};
+			};
+		};
+
+		in-ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@6 {
+				reg = <6>;
+				funnel1_in6: endpoint {
+					remote-endpoint =
+					  <&apss_merge_funnel_out>;
+				};
+			};
+		};
+	};
+
+	funnel@6045000 {
+		compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
+		reg = <0x06045000 0x1000>;
+
+		clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
+		clock-names = "apb_pclk", "atclk";
+
+		out-ports {
+			port {
+				merge_funnel_out: endpoint {
+					remote-endpoint =
+					  <&etf_in>;
+				};
+			};
+		};
+
+		in-ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+				merge_funnel_in0: endpoint {
+					remote-endpoint =
+					  <&funnel0_out>;
+				};
+			};
+
+			port@1 {
+				reg = <1>;
+				merge_funnel_in1: endpoint {
+					remote-endpoint =
+					  <&funnel1_out>;
+				};
+			};
+		};
+	};
+
+	replicator@6046000 {
+		compatible = "arm,coresight-dynamic-replicator", "arm,primecell";
+		reg = <0x06046000 0x1000>;
+
+		clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
+		clock-names = "apb_pclk", "atclk";
+
+		out-ports {
+			port {
+				replicator_out: endpoint {
+					remote-endpoint = <&etr_in>;
+				};
+			};
+		};
+
+		in-ports {
+			port {
+				replicator_in: endpoint {
+					remote-endpoint = <&etf_out>;
+				};
+			};
+		};
+	};
+
+	etf@6047000 {
+		compatible = "arm,coresight-tmc", "arm,primecell";
+		reg = <0x06047000 0x1000>;
+
+		clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
+		clock-names = "apb_pclk", "atclk";
+
+		out-ports {
+			port {
+				etf_out: endpoint {
+					remote-endpoint =
+					  <&replicator_in>;
+				};
+			};
+		};
+
+		in-ports {
+			port {
+				etf_in: endpoint {
+					remote-endpoint =
+					  <&merge_funnel_out>;
+				};
+			};
+		};
+	};
+
+	etr@6048000 {
+		compatible = "arm,coresight-tmc", "arm,primecell";
+		reg = <0x06048000 0x1000>;
+
+		clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
+		clock-names = "apb_pclk", "atclk";
+		arm,scatter-gather;
+
+		in-ports {
+			port {
+				etr_in: endpoint {
+					remote-endpoint =
+					  <&replicator_out>;
+				};
+			};
+		};
+	};
+
+	etm@7840000 {
+		compatible = "arm,coresight-etm4x", "arm,primecell";
+		reg = <0x07840000 0x1000>;
+
+		clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
+		clock-names = "apb_pclk", "atclk";
+
+		cpu = <&CPU0>;
+
+		out-ports {
+			port {
+				etm0_out: endpoint {
+					remote-endpoint =
+					  <&apss_funnel_in0>;
+				};
+			};
+		};
+	};
+
+	etm@7940000 {
+		compatible = "arm,coresight-etm4x", "arm,primecell";
+		reg = <0x07940000 0x1000>;
+
+		clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
+		clock-names = "apb_pclk", "atclk";
+
+		cpu = <&CPU1>;
+
+		out-ports {
+			port {
+				etm1_out: endpoint {
+					remote-endpoint =
+					  <&apss_funnel_in1>;
+				};
+			};
+		};
+	};
+
+	etm@7a40000 {
+		compatible = "arm,coresight-etm4x", "arm,primecell";
+		reg = <0x07a40000 0x1000>;
+
+		clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
+		clock-names = "apb_pclk", "atclk";
+
+		cpu = <&CPU2>;
+
+		out-ports {
+			port {
+				etm2_out: endpoint {
+					remote-endpoint =
+					  <&apss_funnel_in2>;
+				};
+			};
+		};
+	};
+
+	etm@7b40000 {
+		compatible = "arm,coresight-etm4x", "arm,primecell";
+		reg = <0x07b40000 0x1000>;
+
+		clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
+		clock-names = "apb_pclk", "atclk";
+
+		cpu = <&CPU3>;
+
+		out-ports {
+			port {
+				etm3_out: endpoint {
+					remote-endpoint =
+					  <&apss_funnel_in3>;
+				};
+			};
+		};
+	};
+
+	funnel@7b60000 { /* APSS Funnel */
+		compatible = "arm,coresight-etm4x", "arm,primecell";
+		reg = <0x07b60000 0x1000>;
+
+		clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
+		clock-names = "apb_pclk", "atclk";
+
+		out-ports {
+			port {
+				apss_funnel_out: endpoint {
+					remote-endpoint =
+					  <&apss_merge_funnel_in>;
+				};
+			};
+		};
+
+		in-ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+				apss_funnel_in0: endpoint {
+					remote-endpoint =
+					  <&etm0_out>;
+				};
+			};
+
+			port@1 {
+				reg = <1>;
+				apss_funnel_in1: endpoint {
+					remote-endpoint =
+					  <&etm1_out>;
+				};
+			};
+
+			port@2 {
+				reg = <2>;
+				apss_funnel_in2: endpoint {
+					remote-endpoint =
+					  <&etm2_out>;
+				};
+			};
+
+			port@3 {
+				reg = <3>;
+				apss_funnel_in3: endpoint {
+					remote-endpoint =
+					  <&etm3_out>;
+				};
+			};
+
+			port@4 {
+				reg = <4>;
+				apss_funnel_in4: endpoint {
+					remote-endpoint =
+					  <&etm4_out>;
+				};
+			};
+
+			port@5 {
+				reg = <5>;
+				apss_funnel_in5: endpoint {
+					remote-endpoint =
+					  <&etm5_out>;
+				};
+			};
+
+			port@6 {
+				reg = <6>;
+				apss_funnel_in6: endpoint {
+					remote-endpoint =
+					  <&etm6_out>;
+				};
+			};
+
+			port@7 {
+				reg = <7>;
+				apss_funnel_in7: endpoint {
+					remote-endpoint =
+					  <&etm7_out>;
+				};
+			};
+		};
+	};
+
+	funnel@7b70000 {
+		compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
+		reg = <0x07b70000 0x1000>;
+
+		clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
+		clock-names = "apb_pclk", "atclk";
+
+		out-ports {
+			port {
+				apss_merge_funnel_out: endpoint {
+					remote-endpoint =
+					  <&funnel1_in6>;
+				};
+			};
+		};
+
+		in-ports {
+			port {
+				apss_merge_funnel_in: endpoint {
+					remote-endpoint =
+					  <&apss_funnel_out>;
+				};
+			};
+		};
+	};
+
+	etm@7c40000 {
+		compatible = "arm,coresight-etm4x", "arm,primecell";
+		reg = <0x07c40000 0x1000>;
+
+		clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
+		clock-names = "apb_pclk", "atclk";
+
+		cpu = <&CPU4>;
+
+		port{
+			etm4_out: endpoint {
+				remote-endpoint = <&apss_funnel_in4>;
+			};
+		};
+	};
+
+	etm@7d40000 {
+		compatible = "arm,coresight-etm4x", "arm,primecell";
+		reg = <0x07d40000 0x1000>;
+
+		clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
+		clock-names = "apb_pclk", "atclk";
+
+		cpu = <&CPU5>;
+
+		port{
+			etm5_out: endpoint {
+				remote-endpoint = <&apss_funnel_in5>;
+			};
+		};
+	};
+
+	etm@7e40000 {
+		compatible = "arm,coresight-etm4x", "arm,primecell";
+		reg = <0x07e40000 0x1000>;
+
+		clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
+		clock-names = "apb_pclk", "atclk";
+
+		cpu = <&CPU6>;
+
+		port{
+			etm6_out: endpoint {
+				remote-endpoint = <&apss_funnel_in6>;
+			};
+		};
+	};
+
+	etm@7f40000 {
+		compatible = "arm,coresight-etm4x", "arm,primecell";
+		reg = <0x07f40000 0x1000>;
+
+		clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
+		clock-names = "apb_pclk", "atclk";
+
+		cpu = <&CPU7>;
+
+		port{
+			etm7_out: endpoint {
+				remote-endpoint = <&apss_funnel_in7>;
+			};
+		};
+	};
+};
diff --git a/arch/arm64/boot/dts/qcom/msm8998-mtp.dtsi b/arch/arm64/boot/dts/qcom/msm8998-mtp.dtsi
index 108667ce4f31..9b586b3206fc 100644
--- a/arch/arm64/boot/dts/qcom/msm8998-mtp.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8998-mtp.dtsi
@@ -5,6 +5,7 @@
 #include "pm8998.dtsi"
 #include "pmi8998.dtsi"
 #include "pm8005.dtsi"
+#include "msm8998-coresight.dtsi"
 
 / {
 	aliases {
diff --git a/arch/arm64/boot/dts/qcom/msm8998.dtsi b/arch/arm64/boot/dts/qcom/msm8998.dtsi
index c6f81431983e..4b66a1c588f8 100644
--- a/arch/arm64/boot/dts/qcom/msm8998.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8998.dtsi
@@ -998,441 +998,6 @@
 			#interrupt-cells = <0x2>;
 		};
 
-		stm@6002000 {
-			compatible = "arm,coresight-stm", "arm,primecell";
-			reg = <0x06002000 0x1000>,
-			      <0x16280000 0x180000>;
-			reg-names = "stm-base", "stm-data-base";
-
-			clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
-			clock-names = "apb_pclk", "atclk";
-
-			out-ports {
-				port {
-					stm_out: endpoint {
-						remote-endpoint = <&funnel0_in7>;
-					};
-				};
-			};
-		};
-
-		funnel@6041000 {
-			compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
-			reg = <0x06041000 0x1000>;
-
-			clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
-			clock-names = "apb_pclk", "atclk";
-
-			out-ports {
-				port {
-					funnel0_out: endpoint {
-						remote-endpoint =
-						  <&merge_funnel_in0>;
-					};
-				};
-			};
-
-			in-ports {
-				#address-cells = <1>;
-				#size-cells = <0>;
-
-				port@7 {
-					reg = <7>;
-					funnel0_in7: endpoint {
-						remote-endpoint = <&stm_out>;
-					};
-				};
-			};
-		};
-
-		funnel@6042000 {
-			compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
-			reg = <0x06042000 0x1000>;
-
-			clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
-			clock-names = "apb_pclk", "atclk";
-
-			out-ports {
-				port {
-					funnel1_out: endpoint {
-						remote-endpoint =
-						  <&merge_funnel_in1>;
-					};
-				};
-			};
-
-			in-ports {
-				#address-cells = <1>;
-				#size-cells = <0>;
-
-				port@6 {
-					reg = <6>;
-					funnel1_in6: endpoint {
-						remote-endpoint =
-						  <&apss_merge_funnel_out>;
-					};
-				};
-			};
-		};
-
-		funnel@6045000 {
-			compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
-			reg = <0x06045000 0x1000>;
-
-			clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
-			clock-names = "apb_pclk", "atclk";
-
-			out-ports {
-				port {
-					merge_funnel_out: endpoint {
-						remote-endpoint =
-						  <&etf_in>;
-					};
-				};
-			};
-
-			in-ports {
-				#address-cells = <1>;
-				#size-cells = <0>;
-
-				port@0 {
-					reg = <0>;
-					merge_funnel_in0: endpoint {
-						remote-endpoint =
-						  <&funnel0_out>;
-					};
-				};
-
-				port@1 {
-					reg = <1>;
-					merge_funnel_in1: endpoint {
-						remote-endpoint =
-						  <&funnel1_out>;
-					};
-				};
-			};
-		};
-
-		replicator@6046000 {
-			compatible = "arm,coresight-dynamic-replicator", "arm,primecell";
-			reg = <0x06046000 0x1000>;
-
-			clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
-			clock-names = "apb_pclk", "atclk";
-
-			out-ports {
-				port {
-					replicator_out: endpoint {
-						remote-endpoint = <&etr_in>;
-					};
-				};
-			};
-
-			in-ports {
-				port {
-					replicator_in: endpoint {
-						remote-endpoint = <&etf_out>;
-					};
-				};
-			};
-		};
-
-		etf@6047000 {
-			compatible = "arm,coresight-tmc", "arm,primecell";
-			reg = <0x06047000 0x1000>;
-
-			clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
-			clock-names = "apb_pclk", "atclk";
-
-			out-ports {
-				port {
-					etf_out: endpoint {
-						remote-endpoint =
-						  <&replicator_in>;
-					};
-				};
-			};
-
-			in-ports {
-				port {
-					etf_in: endpoint {
-						remote-endpoint =
-						  <&merge_funnel_out>;
-					};
-				};
-			};
-		};
-
-		etr@6048000 {
-			compatible = "arm,coresight-tmc", "arm,primecell";
-			reg = <0x06048000 0x1000>;
-
-			clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
-			clock-names = "apb_pclk", "atclk";
-			arm,scatter-gather;
-
-			in-ports {
-				port {
-					etr_in: endpoint {
-						remote-endpoint =
-						  <&replicator_out>;
-					};
-				};
-			};
-		};
-
-		etm@7840000 {
-			compatible = "arm,coresight-etm4x", "arm,primecell";
-			reg = <0x07840000 0x1000>;
-
-			clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
-			clock-names = "apb_pclk", "atclk";
-
-			cpu = <&CPU0>;
-
-			out-ports {
-				port {
-					etm0_out: endpoint {
-						remote-endpoint =
-						  <&apss_funnel_in0>;
-					};
-				};
-			};
-		};
-
-		etm@7940000 {
-			compatible = "arm,coresight-etm4x", "arm,primecell";
-			reg = <0x07940000 0x1000>;
-
-			clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
-			clock-names = "apb_pclk", "atclk";
-
-			cpu = <&CPU1>;
-
-			out-ports {
-				port {
-					etm1_out: endpoint {
-						remote-endpoint =
-						  <&apss_funnel_in1>;
-					};
-				};
-			};
-		};
-
-		etm@7a40000 {
-			compatible = "arm,coresight-etm4x", "arm,primecell";
-			reg = <0x07a40000 0x1000>;
-
-			clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
-			clock-names = "apb_pclk", "atclk";
-
-			cpu = <&CPU2>;
-
-			out-ports {
-				port {
-					etm2_out: endpoint {
-						remote-endpoint =
-						  <&apss_funnel_in2>;
-					};
-				};
-			};
-		};
-
-		etm@7b40000 {
-			compatible = "arm,coresight-etm4x", "arm,primecell";
-			reg = <0x07b40000 0x1000>;
-
-			clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
-			clock-names = "apb_pclk", "atclk";
-
-			cpu = <&CPU3>;
-
-			out-ports {
-				port {
-					etm3_out: endpoint {
-						remote-endpoint =
-						  <&apss_funnel_in3>;
-					};
-				};
-			};
-		};
-
-		funnel@7b60000 { /* APSS Funnel */
-			compatible = "arm,coresight-etm4x", "arm,primecell";
-			reg = <0x07b60000 0x1000>;
-
-			clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
-			clock-names = "apb_pclk", "atclk";
-
-			out-ports {
-				port {
-					apss_funnel_out: endpoint {
-						remote-endpoint =
-						  <&apss_merge_funnel_in>;
-					};
-				};
-			};
-
-			in-ports {
-				#address-cells = <1>;
-				#size-cells = <0>;
-
-				port@0 {
-					reg = <0>;
-					apss_funnel_in0: endpoint {
-						remote-endpoint =
-						  <&etm0_out>;
-					};
-				};
-
-				port@1 {
-					reg = <1>;
-					apss_funnel_in1: endpoint {
-						remote-endpoint =
-						  <&etm1_out>;
-					};
-				};
-
-				port@2 {
-					reg = <2>;
-					apss_funnel_in2: endpoint {
-						remote-endpoint =
-						  <&etm2_out>;
-					};
-				};
-
-				port@3 {
-					reg = <3>;
-					apss_funnel_in3: endpoint {
-						remote-endpoint =
-						  <&etm3_out>;
-					};
-				};
-
-				port@4 {
-					reg = <4>;
-					apss_funnel_in4: endpoint {
-						remote-endpoint =
-						  <&etm4_out>;
-					};
-				};
-
-				port@5 {
-					reg = <5>;
-					apss_funnel_in5: endpoint {
-						remote-endpoint =
-						  <&etm5_out>;
-					};
-				};
-
-				port@6 {
-					reg = <6>;
-					apss_funnel_in6: endpoint {
-						remote-endpoint =
-						  <&etm6_out>;
-					};
-				};
-
-				port@7 {
-					reg = <7>;
-					apss_funnel_in7: endpoint {
-						remote-endpoint =
-						  <&etm7_out>;
-					};
-				};
-			};
-		};
-
-		funnel@7b70000 {
-			compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
-			reg = <0x07b70000 0x1000>;
-
-			clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
-			clock-names = "apb_pclk", "atclk";
-
-			out-ports {
-				port {
-					apss_merge_funnel_out: endpoint {
-						remote-endpoint =
-						  <&funnel1_in6>;
-					};
-				};
-			};
-
-			in-ports {
-				port {
-					apss_merge_funnel_in: endpoint {
-						remote-endpoint =
-						  <&apss_funnel_out>;
-					};
-				};
-			};
-		};
-
-		etm@7c40000 {
-			compatible = "arm,coresight-etm4x", "arm,primecell";
-			reg = <0x07c40000 0x1000>;
-
-			clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
-			clock-names = "apb_pclk", "atclk";
-
-			cpu = <&CPU4>;
-
-			port{
-				etm4_out: endpoint {
-					remote-endpoint = <&apss_funnel_in4>;
-				};
-			};
-		};
-
-		etm@7d40000 {
-			compatible = "arm,coresight-etm4x", "arm,primecell";
-			reg = <0x07d40000 0x1000>;
-
-			clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
-			clock-names = "apb_pclk", "atclk";
-
-			cpu = <&CPU5>;
-
-			port{
-				etm5_out: endpoint {
-					remote-endpoint = <&apss_funnel_in5>;
-				};
-			};
-		};
-
-		etm@7e40000 {
-			compatible = "arm,coresight-etm4x", "arm,primecell";
-			reg = <0x07e40000 0x1000>;
-
-			clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
-			clock-names = "apb_pclk", "atclk";
-
-			cpu = <&CPU6>;
-
-			port{
-				etm6_out: endpoint {
-					remote-endpoint = <&apss_funnel_in6>;
-				};
-			};
-		};
-
-		etm@7f40000 {
-			compatible = "arm,coresight-etm4x", "arm,primecell";
-			reg = <0x07f40000 0x1000>;
-
-			clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
-			clock-names = "apb_pclk", "atclk";
-
-			cpu = <&CPU7>;
-
-			port{
-				etm7_out: endpoint {
-					remote-endpoint = <&apss_funnel_in7>;
-				};
-			};
-		};
-
 		spmi_bus: spmi@800f000 {
 			compatible = "qcom,spmi-pmic-arb";
 			reg =	<0x0800f000 0x1000>,

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
