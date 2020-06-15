Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A21741F9EA2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 19:35:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zcmyLdmsVOv6AdqZn8s+tuAkwuaTRdmhkikYH5n6I/s=; b=Kg+uO2tF/CD0+V
	E2qBaYu0OwcKVXRNfxXRWyM4It00q2UCXzTw6qA9eXu6LdWvP/CEBBFF9J9gNVyV5oYhqOUCM/TYb
	w55M7wqQwEpJkpyZmS2/7C8Ev/g3uVxm1k+7bRTuMyGgtuiYM2Kaxt1B/4fPklYbi71ym4S2JwtuQ
	KyZVJosnwY4HMQ2stzA6rnnkJTt57l13+HqfoSmby1Yhv/kmICjfALlISKr6UitSD5rUcU5xox3jK
	/EvCmTnfEonEnfzc5i2zzcY5x+Ce2A2fIY5XkncUHB1maY6RR8taulcYjJ3rpES0msy2kBsq1O2kp
	EZq3rGfxsfVklFAVmTDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkt1F-0002vD-Dt; Mon, 15 Jun 2020 17:35:37 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkt10-0002uT-Fh
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 17:35:24 +0000
Received: by mail-pg1-x544.google.com with SMTP id s135so7215539pgs.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 10:35:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=plR2vQiwuWnUoKx0PcjsYmttNeVrJ/EdY5nTUVyH9CQ=;
 b=DYd07X7zKlGibJdFOUnZWomhOisctFzxihVgDwll/UCLs4IsC8j7rLc5l0L8bya1NR
 lr9yhlyBSAwXjYBgLU3sfRYtkYntMVltXtB6MeKbwtdXXAzDfgiw25NQScc6sNL7GQN2
 kQPxMmB9VxlFAs4tgSrBhwhPHgfmMqbPDHK9dLZRcIdBEYKkx6otnIySiPW2PngU+3k0
 XjFlHlc7D3+6JOQI7tMyMvFK10yqwPt5b/B8PnzImJjdWggXuzY8mMgvuYNYMle2lPjG
 CSWAT5coUFOOpNhkw2UiKLIxng4LR4WytggYspDM+R0kx/DmfrQhv45uPDzRmg4Al6xu
 6B1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=plR2vQiwuWnUoKx0PcjsYmttNeVrJ/EdY5nTUVyH9CQ=;
 b=lgeYnRFLvWqiIVOX5WLPnZ2CxXWFC5eaBo+i8byXOEJIsCubNyTNwGY6W7+J5PTAJj
 HzD/kneLk8XTDVOvdAiXTWYyX8vgblijg1bNsTKZP7sduFiAVNXkO7eyRMY0RdmrhnjP
 pcaFY9jl9PEr6Czqq51N+LrsKLzKeYP9NFSi6Z8CW93oAtm7sc0sUiqUqQVxgDYTUz1j
 PmW/7DRAm9fUYID3eWwYxoGP31jOfR/1lv5+Jd3lTAY7Hm0hvBTRBPY536kr/ZauWQXw
 BRe+YqE7Q+e9USb5xzCTcixLJccMLUbXUwvCLgLW0bCU/emGwy0l+RkviZEknYyelVyL
 kA+Q==
X-Gm-Message-State: AOAM531fbDRS50bV2hgNMvNVbO3FXW9pSd6Y7lF2eW4muBl9vbu8jpZJ
 YhRT/sIrirUVcqSE4WbCvxx8u6p5z0E=
X-Google-Smtp-Source: ABdhPJx9LCiIjqXAszPtRb9frk/lFcak0YqD4q1RlOqmQZ3OpCLnHUXyts3CECY3ETmF9NAUlJeSnQ==
X-Received: by 2002:aa7:924c:: with SMTP id 12mr23525293pfp.225.1592242521530; 
 Mon, 15 Jun 2020 10:35:21 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id h8sm12316540pgm.16.2020.06.15.10.35.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Jun 2020 10:35:21 -0700 (PDT)
Date: Mon, 15 Jun 2020 11:35:19 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Subject: Re: [PATCH 4/4] arm64: dts: qcom: sm8150: Add Coresight support
Message-ID: <20200615173519.GC225607@xps15>
References: <cover.1591708204.git.saiprakash.ranjan@codeaurora.org>
 <fffd5f623ad9d609433d05e3b56f33b7582517fa.1591708204.git.saiprakash.ranjan@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fffd5f623ad9d609433d05e3b56f33b7582517fa.1591708204.git.saiprakash.ranjan@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_103522_532605_BACFA7CE 
X-CRM114-Status: GOOD (  13.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Jonathan Marek <jonathan@marek.ca>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Andy Gross <agross@kernel.org>, Stephen Boyd <swboyd@chromium.org>,
 linux-arm-kernel@lists.infradead.org, mike.leach@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 09, 2020 at 07:00:31PM +0530, Sai Prakash Ranjan wrote:
> Add coresight components found on Qualcomm SM8150 SoC.
> 
> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> ---
> 
> Depends on following coresight driver and SM8150 SMMU support:
>  - https://git.linaro.org/kernel/coresight.git/commit/?h=next-v5.8-rc1&id=159e248e75b1b548276b6571d7740a35cab1f5be
>  - https://git.linaro.org/kernel/coresight.git/commit/?h=next-v5.8-rc1&id=1b6cddfb7ebb5ed293124698f147e914b15315a1
>  - https://lore.kernel.org/lkml/20200524023815.21789-2-jonathan@marek.ca/
> 
> ---
>  arch/arm64/boot/dts/qcom/sm8150.dtsi | 591 +++++++++++++++++++++++++++
>  1 file changed, 591 insertions(+)

Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>

> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8150.dtsi b/arch/arm64/boot/dts/qcom/sm8150.dtsi
> index 141c21dfa68c..a2fc77211cc3 100644
> --- a/arch/arm64/boot/dts/qcom/sm8150.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8150.dtsi
> @@ -538,6 +538,597 @@
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
> +						remote-endpoint = <&swao_replicator_out>;
> +					};
> +				};
> +			};
> +		};
> +
> +		funnel@6043000 {
> +			compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
> +			reg = <0 0x06043000 0 0x1000>;
> +
> +			clocks = <&aoss_qmp>;
> +			clock-names = "apb_pclk";
> +
> +			out-ports {
> +				port {
> +					funnel2_out: endpoint {
> +						remote-endpoint = <&merge_funnel_in2>;
> +					};
> +				};
> +			};
> +
> +			in-ports {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +
> +				port@2 {
> +					reg = <2>;
> +					funnel2_in2: endpoint {
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
> +						remote-endpoint = <&etf_in>;
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
> +
> +				port@2 {
> +					reg = <2>;
> +					merge_funnel_in2: endpoint {
> +						remote-endpoint = <&funnel2_out>;
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
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +
> +				port@0 {
> +					reg = <0>;
> +					replicator_out0: endpoint {
> +						remote-endpoint = <&etr_in>;
> +					};
> +				};
> +
> +				port@1 {
> +					reg = <1>;
> +					replicator_out1: endpoint {
> +						remote-endpoint = <&replicator1_in>;
> +					};
> +				};
> +			};
> +
> +			in-ports {
> +				port {
> +					replicator_in0: endpoint {
> +						remote-endpoint = <&etf_out>;
> +					};
> +				};
> +			};
> +		};
> +
> +		etf@6047000 {
> +			compatible = "arm,coresight-tmc", "arm,primecell";
> +			reg = <0 0x06047000 0 0x1000>;
> +
> +			clocks = <&aoss_qmp>;
> +			clock-names = "apb_pclk";
> +
> +			out-ports {
> +				port {
> +					etf_out: endpoint {
> +						remote-endpoint = <&replicator_in0>;
> +					};
> +				};
> +			};
> +
> +			in-ports {
> +				port {
> +					etf_in: endpoint {
> +						remote-endpoint = <&merge_funnel_out>;
> +					};
> +				};
> +			};
> +		};
> +
> +		etr@6048000 {
> +			compatible = "arm,coresight-tmc", "arm,primecell";
> +			reg = <0 0x06048000 0 0x1000>;
> +			iommus = <&apps_smmu 0x05e0 0x0>;
> +
> +			clocks = <&aoss_qmp>;
> +			clock-names = "apb_pclk";
> +			arm,scatter-gather;
> +
> +			in-ports {
> +				port {
> +					etr_in: endpoint {
> +						remote-endpoint = <&replicator_out0>;
> +					};
> +				};
> +			};
> +		};
> +
> +		replicator@604a000 {
> +			compatible = "arm,coresight-dynamic-replicator", "arm,primecell";
> +			reg = <0 0x0604a000 0 0x1000>;
> +
> +			clocks = <&aoss_qmp>;
> +			clock-names = "apb_pclk";
> +
> +			out-ports {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +
> +				port@1 {
> +					reg = <1>;
> +					replicator1_out: endpoint {
> +						remote-endpoint = <&swao_funnel_in>;
> +					};
> +				};
> +			};
> +
> +			in-ports {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +
> +				port@1 {
> +					reg = <1>;
> +					replicator1_in: endpoint {
> +						remote-endpoint = <&replicator_out1>;
> +					};
> +				};
> +			};
> +		};
> +
> +		funnel@6b08000 {
> +			compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
> +			reg = <0 0x06b08000 0 0x1000>;
> +
> +			clocks = <&aoss_qmp>;
> +			clock-names = "apb_pclk";
> +
> +			out-ports {
> +				port {
> +					swao_funnel_out: endpoint {
> +						remote-endpoint = <&swao_etf_in>;
> +					};
> +				};
> +			};
> +
> +			in-ports {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +
> +				port@6 {
> +					reg = <6>;
> +					swao_funnel_in: endpoint {
> +						remote-endpoint = <&replicator1_out>;
> +					};
> +				};
> +			};
> +		};
> +
> +		etf@6b09000 {
> +			compatible = "arm,coresight-tmc", "arm,primecell";
> +			reg = <0 0x06b09000 0 0x1000>;
> +
> +			clocks = <&aoss_qmp>;
> +			clock-names = "apb_pclk";
> +
> +			out-ports {
> +				port {
> +					swao_etf_out: endpoint {
> +						remote-endpoint = <&swao_replicator_in>;
> +					};
> +				};
> +			};
> +
> +			in-ports {
> +				port {
> +					swao_etf_in: endpoint {
> +						remote-endpoint = <&swao_funnel_out>;
> +					};
> +				};
> +			};
> +		};
> +
> +		replicator@6b0a000 {
> +			compatible = "arm,coresight-dynamic-replicator", "arm,primecell";
> +			reg = <0 0x06b0a000 0 0x1000>;
> +
> +			clocks = <&aoss_qmp>;
> +			clock-names = "apb_pclk";
> +			qcom,replicator-loses-context;
> +
> +			out-ports {
> +				port {
> +					swao_replicator_out: endpoint {
> +						remote-endpoint = <&funnel1_in4>;
> +					};
> +				};
> +			};
> +
> +			in-ports {
> +				port {
> +					swao_replicator_in: endpoint {
> +						remote-endpoint = <&swao_etf_out>;
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
> +			arm,coresight-loses-context-with-cpu;
> +			qcom,skip-power-up;
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
> +			arm,coresight-loses-context-with-cpu;
> +			qcom,skip-power-up;
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
> +			arm,coresight-loses-context-with-cpu;
> +			qcom,skip-power-up;
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
> +			arm,coresight-loses-context-with-cpu;
> +			qcom,skip-power-up;
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
> +			arm,coresight-loses-context-with-cpu;
> +			qcom,skip-power-up;
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
> +			arm,coresight-loses-context-with-cpu;
> +			qcom,skip-power-up;
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
> +			arm,coresight-loses-context-with-cpu;
> +			qcom,skip-power-up;
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
> +			arm,coresight-loses-context-with-cpu;
> +			qcom,skip-power-up;
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
> +						remote-endpoint = <&funnel2_in2>;
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
>  		tlmm: pinctrl@3100000 {
>  			compatible = "qcom,sm8150-pinctrl";
>  			reg = <0x0 0x03100000 0x0 0x300000>,
> -- 
> QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
> of Code Aurora Forum, hosted by The Linux Foundation
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
