Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A37011A6B93
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 19:41:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NP3YB2gAo93aqwEbLBy5oAroHoePfRm95RpfG4a1NHk=; b=j2amtjkPrBE7Ry
	mJk0kJSFJQGcoqrCrxV73UgsbWBvHZs5lSSbRB+bmsyPDQpohcGtanGidqsyNrXjLqUw6AvP5r1UH
	w2MUh86QkqzuIqxBaOY3meR4cegasfo0x9UGZqoofON37Utvj9+XTdrSQY5mvuu3r03g3nYB5TcXn
	wqnVVjfdTbxfpq1+ps0BedeIHOu/xgIMh3Q6UUqnhJpktFQUx4pXIjYw8DHyVSA7uYdr/2RGqMP1A
	nSz07Jo8bp/zn11jdfrB06S8iYS1HyxSpJLRcooBfLSTtEza99eET9mNBCnrRymjvwOroxCKivwwU
	Cksh8QZe2pQkeNh2F4YA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jO350-0001vQ-TH; Mon, 13 Apr 2020 17:41:06 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jO34q-0001un-1H
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 17:40:58 +0000
Received: by mail-pf1-x444.google.com with SMTP id k15so4812228pfh.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Apr 2020 10:40:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=tlPD1UHZ5TPwfsyG5bE6iGSTL6DRPjv+SQFOkoB6pdU=;
 b=VMRwQM+QFSb2fh2mLojg/MecW7/C9oZYyfLkanBD6XCHTPkgUdp0RQfLhjLuAiWvIc
 mI5ryqcDOO2tuiW2++8A8ANH5jh1YUd2LMi9rJEgA+OvHXK5o8ir+nb6GypRiKyDtqT2
 YTZpDGloMvU9g4rTYshUoIOyuKRAZd2XzY4Qe5Ho43tN3fxsCE+pStLng0ZyPT4bNX1d
 ipCoaAmHy4knzGjQTskmuZq5OMOrGvYTAHESuFgq8UJJB2iQ8GrepM9G4ktgsidsgEgz
 38VgJSIs9d3ABzqL15zQZDSeYEufLQE5WGZkajn9KlziSkZRvbQynTHFMi3Uh48kRDDB
 oXCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=tlPD1UHZ5TPwfsyG5bE6iGSTL6DRPjv+SQFOkoB6pdU=;
 b=Vf7GIf3JuYA9VREkSAnjz1TFINtbql4Km2410F1n4xv5imzCCVOLbhIiRqyuaxCdwT
 ztfuLZ68q0jS671E5EymQWYyhZx9dGc6xny3JnKA8XyE/s15SN1oA2hIbo/dydPGwm2Z
 DRJhk8BI4aTL9/FCWoKfkbkDIWbwkDlShsfIKNC9QyB2Nb8oDHC9CfVTOq6Cul2f7Pvy
 HMO8dzuhEinE1UjUFJspSeubyLWECCPGR24nEFaf+DJT31pgJ7xq1QRCO2r+B0DLtyu5
 L/5IP3Bv3FRdNnJ4vbp4NM//QnAxhi6X/LxqWhGzTV3c2BXSJfBzNY9c8GWCfNVR8R+l
 jXUw==
X-Gm-Message-State: AGi0Pub5PaYC8KQbcd+PnvsRdaCI12wL0usBbnqmc/494j0Hn/iWWRNG
 bPEu4/Sjy6Z2u1j0uGiN0dPsh3ntwV0=
X-Google-Smtp-Source: APiQypL+Dg226VwWY7irzBNsRXLiYb8PXUiS29VylY1vMoeg8xTRCE6Vg2afRaIo53NXpybSQ7u/Hg==
X-Received: by 2002:a62:cd89:: with SMTP id o131mr6041515pfg.145.1586799655016; 
 Mon, 13 Apr 2020 10:40:55 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id z4sm8001952pff.132.2020.04.13.10.40.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Apr 2020 10:40:54 -0700 (PDT)
Date: Mon, 13 Apr 2020 11:40:51 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Subject: Re: [PATCHv2 2/3] arm64: dts: qcom: sc7180: Add Coresight support
Message-ID: <20200413174051.GC28804@xps15>
References: <cover.1586263250.git.saiprakash.ranjan@codeaurora.org>
 <73e4352c19afff4c9ea2041b263a85e68e6eef11.1586263250.git.saiprakash.ranjan@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <73e4352c19afff4c9ea2041b263a85e68e6eef11.1586263250.git.saiprakash.ranjan@codeaurora.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_104056_599078_1B543AB1 
X-CRM114-Status: GOOD (  14.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Stephen Boyd <swboyd@chromium.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-arm-kernel@lists.infradead.org, mike.leach@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 09, 2020 at 05:13:37PM +0530, Sai Prakash Ranjan wrote:
> Add coresight components found on Qualcomm SC7180 SoC.
> 
> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> Reviewed-by: Stephen Boyd <swboyd@chromium.org>
> Tested-by: Stephen Boyd <swboyd@chromium.org>

Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>

> ---
>  arch/arm64/boot/dts/qcom/sc7180.dtsi | 471 +++++++++++++++++++++++++++
>  1 file changed, 471 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> index 998f101ad623..aa3bfda9337b 100644
> --- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> @@ -1294,6 +1294,477 @@
>  			};
>  		};
>  
> +		stm@6002000 {
> +			compatible = "arm,coresight-stm", "arm,primecell";
> +			reg = <0 0x06002000 0 0x1000>,
> +			      <0 0x16280000 0 0x180000>;
> +			reg-names = "stm-base", "stm-stimulus-base";
> +
> +			clocks = <&aoss_qmp>;
> +			clock-names = "apb_pclk";
> +
> +			out-ports {
> +				port {
> +					stm_out: endpoint {
> +						remote-endpoint = <&funnel0_in7>;
> +					};
> +				};
> +			};
> +		};
> +
> +		funnel@6041000 {
> +			compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
> +			reg = <0 0x06041000 0 0x1000>;
> +
> +			clocks = <&aoss_qmp>;
> +			clock-names = "apb_pclk";
> +
> +			out-ports {
> +				port {
> +					funnel0_out: endpoint {
> +						remote-endpoint = <&merge_funnel_in0>;
> +					};
> +				};
> +			};
> +
> +			in-ports {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +
> +				port@7 {
> +					reg = <7>;
> +					funnel0_in7: endpoint {
> +						remote-endpoint = <&stm_out>;
> +					};
> +				};
> +			};
> +		};
> +
> +		funnel@6042000 {
> +			compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
> +			reg = <0 0x06042000 0 0x1000>;
> +
> +			clocks = <&aoss_qmp>;
> +			clock-names = "apb_pclk";
> +
> +			out-ports {
> +				port {
> +					funnel1_out: endpoint {
> +						remote-endpoint = <&merge_funnel_in1>;
> +					};
> +				};
> +			};
> +
> +			in-ports {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +
> +				port@4 {
> +					reg = <4>;
> +					funnel1_in4: endpoint {
> +						remote-endpoint = <&apss_merge_funnel_out>;
> +					};
> +				};
> +			};
> +		};
> +
> +		funnel@6045000 {
> +			compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
> +			reg = <0 0x06045000 0 0x1000>;
> +
> +			clocks = <&aoss_qmp>;
> +			clock-names = "apb_pclk";
> +
> +			out-ports {
> +				port {
> +					merge_funnel_out: endpoint {
> +						remote-endpoint = <&swao_funnel_in>;
> +					};
> +				};
> +			};
> +
> +			in-ports {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +
> +				port@0 {
> +					reg = <0>;
> +					merge_funnel_in0: endpoint {
> +						remote-endpoint = <&funnel0_out>;
> +					};
> +				};
> +
> +				port@1 {
> +					reg = <1>;
> +					merge_funnel_in1: endpoint {
> +						remote-endpoint = <&funnel1_out>;
> +					};
> +				};
> +			};
> +		};
> +
> +		replicator@6046000 {
> +			compatible = "arm,coresight-dynamic-replicator", "arm,primecell";
> +			reg = <0 0x06046000 0 0x1000>;
> +
> +			clocks = <&aoss_qmp>;
> +			clock-names = "apb_pclk";
> +
> +			out-ports {
> +				port {
> +					replicator_out: endpoint {
> +						remote-endpoint = <&etr_in>;
> +					};
> +				};
> +			};
> +
> +			in-ports {
> +				port {
> +					replicator_in: endpoint {
> +						remote-endpoint = <&swao_replicator_out>;
> +					};
> +				};
> +			};
> +		};
> +
> +		etr@6048000 {
> +			compatible = "arm,coresight-tmc", "arm,primecell";
> +			reg = <0 0x06048000 0 0x1000>;
> +
> +			clocks = <&aoss_qmp>;
> +			clock-names = "apb_pclk";
> +			arm,scatter-gather;
> +
> +			in-ports {
> +				port {
> +					etr_in: endpoint {
> +						remote-endpoint = <&replicator_out>;
> +					};
> +				};
> +			};
> +		};
> +
> +		funnel@6b04000 {
> +			compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
> +			reg = <0 0x06b04000 0 0x1000>;
> +
> +			clocks = <&aoss_qmp>;
> +			clock-names = "apb_pclk";
> +
> +			out-ports {
> +				port {
> +					swao_funnel_out: endpoint {
> +						remote-endpoint = <&etf_in>;
> +					};
> +				};
> +			};
> +
> +			in-ports {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +
> +				port@7 {
> +					reg = <7>;
> +					swao_funnel_in: endpoint {
> +						remote-endpoint = <&merge_funnel_out>;
> +					};
> +				};
> +			};
> +		};
> +
> +		etf@6b05000 {
> +			compatible = "arm,coresight-tmc", "arm,primecell";
> +			reg = <0 0x06b05000 0 0x1000>;
> +
> +			clocks = <&aoss_qmp>;
> +			clock-names = "apb_pclk";
> +
> +			out-ports {
> +				port {
> +					etf_out: endpoint {
> +						remote-endpoint = <&swao_replicator_in>;
> +					};
> +				};
> +			};
> +
> +			in-ports {
> +				port {
> +					etf_in: endpoint {
> +						remote-endpoint = <&swao_funnel_out>;
> +					};
> +				};
> +			};
> +		};
> +
> +		replicator@6b06000 {
> +			compatible = "arm,coresight-dynamic-replicator", "arm,primecell";
> +			reg = <0 0x06b06000 0 0x1000>;
> +
> +			clocks = <&aoss_qmp>;
> +			clock-names = "apb_pclk";
> +
> +			out-ports {
> +				port {
> +					swao_replicator_out: endpoint {
> +						remote-endpoint = <&replicator_in>;
> +					};
> +				};
> +			};
> +
> +			in-ports {
> +				port {
> +					swao_replicator_in: endpoint {
> +						remote-endpoint = <&etf_out>;
> +					};
> +				};
> +			};
> +		};
> +
> +		etm@7040000 {
> +			compatible = "arm,coresight-etm4x", "arm,primecell";
> +			reg = <0 0x07040000 0 0x1000>;
> +
> +			cpu = <&CPU0>;
> +
> +			clocks = <&aoss_qmp>;
> +			clock-names = "apb_pclk";
> +
> +			out-ports {
> +				port {
> +					etm0_out: endpoint {
> +						remote-endpoint = <&apss_funnel_in0>;
> +					};
> +				};
> +			};
> +		};
> +
> +		etm@7140000 {
> +			compatible = "arm,coresight-etm4x", "arm,primecell";
> +			reg = <0 0x07140000 0 0x1000>;
> +
> +			cpu = <&CPU1>;
> +
> +			clocks = <&aoss_qmp>;
> +			clock-names = "apb_pclk";
> +
> +			out-ports {
> +				port {
> +					etm1_out: endpoint {
> +						remote-endpoint = <&apss_funnel_in1>;
> +					};
> +				};
> +			};
> +		};
> +
> +		etm@7240000 {
> +			compatible = "arm,coresight-etm4x", "arm,primecell";
> +			reg = <0 0x07240000 0 0x1000>;
> +
> +			cpu = <&CPU2>;
> +
> +			clocks = <&aoss_qmp>;
> +			clock-names = "apb_pclk";
> +
> +			out-ports {
> +				port {
> +					etm2_out: endpoint {
> +						remote-endpoint = <&apss_funnel_in2>;
> +					};
> +				};
> +			};
> +		};
> +
> +		etm@7340000 {
> +			compatible = "arm,coresight-etm4x", "arm,primecell";
> +			reg = <0 0x07340000 0 0x1000>;
> +
> +			cpu = <&CPU3>;
> +
> +			clocks = <&aoss_qmp>;
> +			clock-names = "apb_pclk";
> +
> +			out-ports {
> +				port {
> +					etm3_out: endpoint {
> +						remote-endpoint = <&apss_funnel_in3>;
> +					};
> +				};
> +			};
> +		};
> +
> +		etm@7440000 {
> +			compatible = "arm,coresight-etm4x", "arm,primecell";
> +			reg = <0 0x07440000 0 0x1000>;
> +
> +			cpu = <&CPU4>;
> +
> +			clocks = <&aoss_qmp>;
> +			clock-names = "apb_pclk";
> +
> +			out-ports {
> +				port {
> +					etm4_out: endpoint {
> +						remote-endpoint = <&apss_funnel_in4>;
> +					};
> +				};
> +			};
> +		};
> +
> +		etm@7540000 {
> +			compatible = "arm,coresight-etm4x", "arm,primecell";
> +			reg = <0 0x07540000 0 0x1000>;
> +
> +			cpu = <&CPU5>;
> +
> +			clocks = <&aoss_qmp>;
> +			clock-names = "apb_pclk";
> +
> +			out-ports {
> +				port {
> +					etm5_out: endpoint {
> +						remote-endpoint = <&apss_funnel_in5>;
> +					};
> +				};
> +			};
> +		};
> +
> +		etm@7640000 {
> +			compatible = "arm,coresight-etm4x", "arm,primecell";
> +			reg = <0 0x07640000 0 0x1000>;
> +
> +			cpu = <&CPU6>;
> +
> +			clocks = <&aoss_qmp>;
> +			clock-names = "apb_pclk";
> +
> +			out-ports {
> +				port {
> +					etm6_out: endpoint {
> +						remote-endpoint = <&apss_funnel_in6>;
> +					};
> +				};
> +			};
> +		};
> +
> +		etm@7740000 {
> +			compatible = "arm,coresight-etm4x", "arm,primecell";
> +			reg = <0 0x07740000 0 0x1000>;
> +
> +			cpu = <&CPU7>;
> +
> +			clocks = <&aoss_qmp>;
> +			clock-names = "apb_pclk";
> +
> +			out-ports {
> +				port {
> +					etm7_out: endpoint {
> +						remote-endpoint = <&apss_funnel_in7>;
> +					};
> +				};
> +			};
> +		};
> +
> +		funnel@7800000 { /* APSS Funnel */
> +			compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
> +			reg = <0 0x07800000 0 0x1000>;
> +
> +			clocks = <&aoss_qmp>;
> +			clock-names = "apb_pclk";
> +
> +			out-ports {
> +				port {
> +					apss_funnel_out: endpoint {
> +						remote-endpoint = <&apss_merge_funnel_in>;
> +					};
> +				};
> +			};
> +
> +			in-ports {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +
> +				port@0 {
> +					reg = <0>;
> +					apss_funnel_in0: endpoint {
> +						remote-endpoint = <&etm0_out>;
> +					};
> +				};
> +
> +				port@1 {
> +					reg = <1>;
> +					apss_funnel_in1: endpoint {
> +						remote-endpoint = <&etm1_out>;
> +					};
> +				};
> +
> +				port@2 {
> +					reg = <2>;
> +					apss_funnel_in2: endpoint {
> +						remote-endpoint = <&etm2_out>;
> +					};
> +				};
> +
> +				port@3 {
> +					reg = <3>;
> +					apss_funnel_in3: endpoint {
> +						remote-endpoint = <&etm3_out>;
> +					};
> +				};
> +
> +				port@4 {
> +					reg = <4>;
> +					apss_funnel_in4: endpoint {
> +						remote-endpoint = <&etm4_out>;
> +					};
> +				};
> +
> +				port@5 {
> +					reg = <5>;
> +					apss_funnel_in5: endpoint {
> +						remote-endpoint = <&etm5_out>;
> +					};
> +				};
> +
> +				port@6 {
> +					reg = <6>;
> +					apss_funnel_in6: endpoint {
> +						remote-endpoint = <&etm6_out>;
> +					};
> +				};
> +
> +				port@7 {
> +					reg = <7>;
> +					apss_funnel_in7: endpoint {
> +						remote-endpoint = <&etm7_out>;
> +					};
> +				};
> +			};
> +		};
> +
> +		funnel@7810000 {
> +			compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
> +			reg = <0 0x07810000 0 0x1000>;
> +
> +			clocks = <&aoss_qmp>;
> +			clock-names = "apb_pclk";
> +
> +			out-ports {
> +				port {
> +					apss_merge_funnel_out: endpoint {
> +						remote-endpoint = <&funnel1_in4>;
> +					};
> +				};
> +			};
> +
> +			in-ports {
> +				port {
> +					apss_merge_funnel_in: endpoint {
> +						remote-endpoint = <&apss_funnel_out>;
> +					};
> +				};
> +			};
> +		};
> +
>  		sdhc_2: sdhci@8804000 {
>  			compatible = "qcom,sc7180-sdhci", "qcom,sdhci-msm-v5";
>  			reg = <0 0x08804000 0 0x1000>;
> -- 
> QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
> of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
