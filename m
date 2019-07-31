Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABA687B95D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 07:59:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PtUcTNcg8H09yVa9uuunyvBnUAYxM3QDpO3G2ceFRqw=; b=NXDZX85/n/iJC7
	kawytHBlHLVr8OnKGUo5ZTSKn1HII6RxNHu9vKtscxBwg5Y9zknbn9omRyvmf6MFWgyGyMCuEDT7Q
	a8Pve3DWm86axgnpRL2cqzqVegqQOsSTxTQW2ScnNS2DIKzgFifOnx9IDJ9PCSEtwkDQf94KcYS/L
	koIwHGjCl5fFKY5Xjx2QCUsDf6XYRgYdrX36nWUqXbjiqWd8Kq6qrwY4IymJd565lHnmGOr0zvRXW
	BwakcXAA4XwE6jfOA2NzyT/BzZA7BPm4dxK6pgQLufiUXuifrqBgAB3OYb2kTPSMjEuyOe6/YSAnu
	vPJgga8E0GkmRsib9GAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsheD-0001qL-6d; Wed, 31 Jul 2019 05:59:37 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hshdL-0001IT-Fi
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 05:58:45 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 31ADB60F38; Wed, 31 Jul 2019 05:58:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1564552723;
 bh=BD+gbeeY//1Vk+nSPZc6bbcrAx6rJw3OHDMYu4lTGlo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=HHwoQMS317lFlkth32lgF8g4H1lyNfaHJlLVAeWk0ccM4f/OQ6nTLieMtnbEyKJfR
 5z31n2cZl1io8CO3YmyS1Hx82ausGufUD7OSq+Oax5bDcMR2IMfp80HDtzT+OdG7uR
 4HaQpmbn4nHiMGLTx3ME7l7fIMpeltXkGkQVKb0E=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from blr-ubuntu-253.qualcomm.com
 (blr-bdr-fw-01_globalnat_allzones-outside.qualcomm.com [103.229.18.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan@codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id A6C3F60E5F;
 Wed, 31 Jul 2019 05:58:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1564552721;
 bh=BD+gbeeY//1Vk+nSPZc6bbcrAx6rJw3OHDMYu4lTGlo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=JZozMyr3NlDT9QOsHvEmzL/hOOzMRXvBbbhXxK80JeqCnvLG6f1qCdQFceWwoKDyM
 Diwo6+oQmroUQjSTd1TC7Jk7f8TG/02gSBGGcSdzWPT5mruLHqL1NbhK9ofMZqTH0H
 cXji2nuP+HRiq1uU4uX30QAnnz/uUX1vMmSZNG4M=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org A6C3F60E5F
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org; spf=none
 smtp.mailfrom=saiprakash.ranjan@codeaurora.org
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Leo Yan <leo.yan@linaro.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Andy Gross <agross@kernel.org>, David Brown <david.brown@linaro.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCHv9 3/3] arm64: dts: qcom: msm8996: Add Coresight support
Date: Wed, 31 Jul 2019 11:28:02 +0530
Message-Id: <42edcabd4597b07cf8fb6a683bda9add5ff0381a.1564550873.git.saiprakash.ranjan@codeaurora.org>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <cover.1564550873.git.saiprakash.ranjan@codeaurora.org>
References: <cover.1564550873.git.saiprakash.ranjan@codeaurora.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_225843_657935_E94C3389 
X-CRM114-Status: GOOD (  11.10  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 Rajendra Nayak <rnayak@codeaurora.org>,
 Marc Gonzalez <marc.w.gonzalez@free.fr>, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Sibi Sankar <sibis@codeaurora.org>,
 Vivek Gautam <vivek.gautam@codeaurora.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Vivek Gautam <vivek.gautam@codeaurora.org>

Enable coresight support by adding device nodes for the
available source, sinks and channel blocks on msm8996.

This also adds coresight cpu debug nodes.

Signed-off-by: Vivek Gautam <vivek.gautam@codeaurora.org>
Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Acked-by: Suzuki K Poulose <suzuki.poulose@arm.com>
---
 arch/arm64/boot/dts/qcom/msm8996.dtsi | 468 ++++++++++++++++++++++++++
 1 file changed, 468 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/msm8996.dtsi b/arch/arm64/boot/dts/qcom/msm8996.dtsi
index 96c0a481f454..1533df63f056 100644
--- a/arch/arm64/boot/dts/qcom/msm8996.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8996.dtsi
@@ -633,6 +633,474 @@
 			reg = <0x300000 0x90000>;
 		};
 
+		stm@3002000 {
+			compatible = "arm,coresight-stm", "arm,primecell";
+			reg = <0x3002000 0x1000>,
+			      <0x8280000 0x180000>;
+			reg-names = "stm-base", "stm-stimulus-base";
+
+			clocks = <&rpmcc RPM_QDSS_CLK>, <&rpmcc RPM_QDSS_A_CLK>;
+			clock-names = "apb_pclk", "atclk";
+
+			out-ports {
+				port {
+					stm_out: endpoint {
+						remote-endpoint =
+						  <&funnel0_in>;
+					};
+				};
+			};
+		};
+
+		tpiu@3020000 {
+			compatible = "arm,coresight-tpiu", "arm,primecell";
+			reg = <0x3020000 0x1000>;
+
+			clocks = <&rpmcc RPM_QDSS_CLK>, <&rpmcc RPM_QDSS_A_CLK>;
+			clock-names = "apb_pclk", "atclk";
+
+			in-ports {
+				port {
+					tpiu_in: endpoint {
+						remote-endpoint =
+						  <&replicator_out1>;
+					};
+				};
+			};
+		};
+
+		funnel@3021000 {
+			compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
+			reg = <0x3021000 0x1000>;
+
+			clocks = <&rpmcc RPM_QDSS_CLK>, <&rpmcc RPM_QDSS_A_CLK>;
+			clock-names = "apb_pclk", "atclk";
+
+			in-ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@7 {
+					reg = <7>;
+					funnel0_in: endpoint {
+						remote-endpoint =
+						  <&stm_out>;
+					};
+				};
+			};
+
+			out-ports {
+				port {
+					funnel0_out: endpoint {
+						remote-endpoint =
+						  <&merge_funnel_in0>;
+					};
+				};
+			};
+		};
+
+		funnel@3022000 {
+			compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
+			reg = <0x3022000 0x1000>;
+
+			clocks = <&rpmcc RPM_QDSS_CLK>, <&rpmcc RPM_QDSS_A_CLK>;
+			clock-names = "apb_pclk", "atclk";
+
+			in-ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@6 {
+					reg = <6>;
+					funnel1_in: endpoint {
+						remote-endpoint =
+						  <&apss_merge_funnel_out>;
+					};
+				};
+			};
+
+			out-ports {
+				port {
+					funnel1_out: endpoint {
+						remote-endpoint =
+						  <&merge_funnel_in1>;
+					};
+				};
+			};
+		};
+
+		funnel@3023000 {
+			compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
+			reg = <0x3023000 0x1000>;
+
+			clocks = <&rpmcc RPM_QDSS_CLK>, <&rpmcc RPM_QDSS_A_CLK>;
+			clock-names = "apb_pclk", "atclk";
+
+
+			out-ports {
+				port {
+					funnel2_out: endpoint {
+						remote-endpoint =
+						  <&merge_funnel_in2>;
+					};
+				};
+			};
+		};
+
+		funnel@3025000 {
+			compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
+			reg = <0x3025000 0x1000>;
+
+			clocks = <&rpmcc RPM_QDSS_CLK>, <&rpmcc RPM_QDSS_A_CLK>;
+			clock-names = "apb_pclk", "atclk";
+
+			in-ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+					merge_funnel_in0: endpoint {
+						remote-endpoint =
+						  <&funnel0_out>;
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+					merge_funnel_in1: endpoint {
+						remote-endpoint =
+						  <&funnel1_out>;
+					};
+				};
+
+				port@2 {
+					reg = <2>;
+					merge_funnel_in2: endpoint {
+						remote-endpoint =
+						  <&funnel2_out>;
+					};
+				};
+			};
+
+			out-ports {
+				port {
+					merge_funnel_out: endpoint {
+						remote-endpoint =
+						  <&etf_in>;
+					};
+				};
+			};
+		};
+
+		replicator@3026000 {
+			compatible = "arm,coresight-dynamic-replicator", "arm,primecell";
+			reg = <0x3026000 0x1000>;
+
+			clocks = <&rpmcc RPM_QDSS_CLK>, <&rpmcc RPM_QDSS_A_CLK>;
+			clock-names = "apb_pclk", "atclk";
+
+			in-ports {
+				port {
+					replicator_in: endpoint {
+						remote-endpoint =
+						  <&etf_out>;
+					};
+				};
+			};
+
+			out-ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+					replicator_out0: endpoint {
+						remote-endpoint =
+						  <&etr_in>;
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+					replicator_out1: endpoint {
+						remote-endpoint =
+						  <&tpiu_in>;
+					};
+				};
+			};
+		};
+
+		etf@3027000 {
+			compatible = "arm,coresight-tmc", "arm,primecell";
+			reg = <0x3027000 0x1000>;
+
+			clocks = <&rpmcc RPM_QDSS_CLK>, <&rpmcc RPM_QDSS_A_CLK>;
+			clock-names = "apb_pclk", "atclk";
+
+			in-ports {
+				port {
+					etf_in: endpoint {
+						remote-endpoint =
+						  <&merge_funnel_out>;
+					};
+				};
+			};
+
+			out-ports {
+				port {
+					etf_out: endpoint {
+						remote-endpoint =
+						  <&replicator_in>;
+					};
+				};
+			};
+		};
+
+		etr@3028000 {
+			compatible = "arm,coresight-tmc", "arm,primecell";
+			reg = <0x3028000 0x1000>;
+
+			clocks = <&rpmcc RPM_QDSS_CLK>, <&rpmcc RPM_QDSS_A_CLK>;
+			clock-names = "apb_pclk", "atclk";
+			arm,scatter-gather;
+
+			in-ports {
+				port {
+					etr_in: endpoint {
+						remote-endpoint =
+						  <&replicator_out0>;
+					};
+				};
+			};
+		};
+
+		debug@3810000 {
+			compatible = "arm,coresight-cpu-debug", "arm,primecell";
+			reg = <0x3810000 0x1000>;
+
+			clocks = <&rpmcc RPM_QDSS_CLK>;
+			clock-names = "apb_pclk";
+
+			cpu = <&CPU0>;
+		};
+
+		etm@3840000 {
+			compatible = "arm,coresight-etm4x", "arm,primecell";
+			reg = <0x3840000 0x1000>;
+
+			clocks = <&rpmcc RPM_QDSS_CLK>, <&rpmcc RPM_QDSS_A_CLK>;
+			clock-names = "apb_pclk", "atclk";
+
+			cpu = <&CPU0>;
+
+			out-ports {
+				port {
+					etm0_out: endpoint {
+						remote-endpoint =
+						  <&apss_funnel0_in0>;
+					};
+				};
+			};
+		};
+
+		debug@3910000 {
+			compatible = "arm,coresight-cpu-debug", "arm,primecell";
+			reg = <0x3910000 0x1000>;
+
+			clocks = <&rpmcc RPM_QDSS_CLK>;
+			clock-names = "apb_pclk";
+
+			cpu = <&CPU1>;
+		};
+
+		etm@3940000 {
+			compatible = "arm,coresight-etm4x", "arm,primecell";
+			reg = <0x3940000 0x1000>;
+
+			clocks = <&rpmcc RPM_QDSS_CLK>, <&rpmcc RPM_QDSS_A_CLK>;
+			clock-names = "apb_pclk", "atclk";
+
+			cpu = <&CPU1>;
+
+			out-ports {
+				port {
+					etm1_out: endpoint {
+						remote-endpoint =
+						  <&apss_funnel0_in1>;
+					};
+				};
+			};
+		};
+
+		funnel@39b0000 { /* APSS Funnel 0 */
+			compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
+			reg = <0x39b0000 0x1000>;
+
+			clocks = <&rpmcc RPM_QDSS_CLK>, <&rpmcc RPM_QDSS_A_CLK>;
+			clock-names = "apb_pclk", "atclk";
+
+			in-ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+					apss_funnel0_in0: endpoint {
+						remote-endpoint = <&etm0_out>;
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+					apss_funnel0_in1: endpoint {
+						remote-endpoint = <&etm1_out>;
+					};
+				};
+			};
+
+			out-ports {
+				port {
+					apss_funnel0_out: endpoint {
+						remote-endpoint =
+						  <&apss_merge_funnel_in0>;
+					};
+				};
+			};
+		};
+
+		debug@3a10000 {
+			compatible = "arm,coresight-cpu-debug", "arm,primecell";
+			reg = <0x3a10000 0x1000>;
+
+			clocks = <&rpmcc RPM_QDSS_CLK>;
+			clock-names = "apb_pclk";
+
+			cpu = <&CPU2>;
+		};
+
+		etm@3a40000 {
+			compatible = "arm,coresight-etm4x", "arm,primecell";
+			reg = <0x3a40000 0x1000>;
+
+			clocks = <&rpmcc RPM_QDSS_CLK>, <&rpmcc RPM_QDSS_A_CLK>;
+			clock-names = "apb_pclk", "atclk";
+
+			cpu = <&CPU2>;
+
+			out-ports {
+				port {
+					etm2_out: endpoint {
+						remote-endpoint =
+						  <&apss_funnel1_in0>;
+					};
+				};
+			};
+		};
+
+		debug@3b10000 {
+			compatible = "arm,coresight-cpu-debug", "arm,primecell";
+			reg = <0x3b10000 0x1000>;
+
+			clocks = <&rpmcc RPM_QDSS_CLK>;
+			clock-names = "apb_pclk";
+
+			cpu = <&CPU3>;
+		};
+
+		etm@3b40000 {
+			compatible = "arm,coresight-etm4x", "arm,primecell";
+			reg = <0x3b40000 0x1000>;
+
+			clocks = <&rpmcc RPM_QDSS_CLK>, <&rpmcc RPM_QDSS_A_CLK>;
+			clock-names = "apb_pclk", "atclk";
+
+			cpu = <&CPU3>;
+
+			out-ports {
+				port {
+					etm3_out: endpoint {
+						remote-endpoint =
+						  <&apss_funnel1_in1>;
+					};
+				};
+			};
+		};
+
+		funnel@3bb0000 { /* APSS Funnel 1 */
+			compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
+			reg = <0x3bb0000 0x1000>;
+
+			clocks = <&rpmcc RPM_QDSS_CLK>, <&rpmcc RPM_QDSS_A_CLK>;
+			clock-names = "apb_pclk", "atclk";
+
+			in-ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+					apss_funnel1_in0: endpoint {
+						remote-endpoint = <&etm2_out>;
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+					apss_funnel1_in1: endpoint {
+						remote-endpoint = <&etm3_out>;
+					};
+				};
+			};
+
+			out-ports {
+				port {
+					apss_funnel1_out: endpoint {
+						remote-endpoint =
+						  <&apss_merge_funnel_in1>;
+					};
+				};
+			};
+		};
+
+		funnel@3bc0000 {
+			compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
+			reg = <0x3bc0000 0x1000>;
+
+			clocks = <&rpmcc RPM_QDSS_CLK>, <&rpmcc RPM_QDSS_A_CLK>;
+			clock-names = "apb_pclk", "atclk";
+
+			in-ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+					apss_merge_funnel_in0: endpoint {
+						remote-endpoint =
+						  <&apss_funnel0_out>;
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+					apss_merge_funnel_in1: endpoint {
+						remote-endpoint =
+						  <&apss_funnel1_out>;
+					};
+				};
+			};
+
+			out-ports {
+				port {
+					apss_merge_funnel_out: endpoint {
+						remote-endpoint =
+						  <&funnel1_in>;
+					};
+				};
+			};
+		};
+
 		kryocc: clock-controller@6400000 {
 			compatible = "qcom,apcc-msm8996";
 			reg = <0x6400000 0x90000>;
-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
of Code Aurora Forum, hosted by The Linux Foundation


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
