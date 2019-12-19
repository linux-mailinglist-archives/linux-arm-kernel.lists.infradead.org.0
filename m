Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21AB71264EA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 15:35:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P5gjpePZ9MERb+tQQT0EC2BlKbxgi/sujmMKPPaVe6Q=; b=c5oITTYM0GZsGM
	/HwgpQWAseViEQKPFzQXALGso03qdX9sg8DgVw4wu/qz+sC74YjxLI7B5aCdSpSqVDrX8200Hw/tO
	AAY8TUSGPeWfxY0bdBLV0OSu59yvLG7TYu88kXbD8wQzGlr/XhCCMa5Fw6Qo3wLOmXq44A3g5aM53
	OVT5ogKtkMHpclcE78vaVW7tOfwnAyqVq6fmi0+VMdb/b0QXwZGkHdXcROJxUzBGgNvorm9X230hG
	BBuH5stmFUItsXobBjeUNHc+0Sri27TXyuABDMVl/JyB4TMQ1gRe7wRLElphz0CGeRUouajNS4+UV
	j0axuPgVnaZprybw+koA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihwtT-0005TR-0y; Thu, 19 Dec 2019 14:35:11 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihwt9-0005SH-BZ
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 14:34:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BE38E31B;
 Thu, 19 Dec 2019 06:34:50 -0800 (PST)
Received: from bogus (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C522D3F6CF;
 Thu, 19 Dec 2019 06:34:48 -0800 (PST)
Date: Thu, 19 Dec 2019 14:34:46 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH v4 14/14] arm64: dts: Convert to the hierarchical CPU
 topology layout for MSM8916
Message-ID: <20191219143446.GG20746@bogus>
References: <20191211154343.29765-1-ulf.hansson@linaro.org>
 <20191211154343.29765-15-ulf.hansson@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191211154343.29765-15-ulf.hansson@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_063451_505333_DC8B57A8 
X-CRM114-Status: GOOD (  16.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>, linux-pm@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, linux-arm-msm@vger.kernel.org,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Andy Gross <agross@kernel.org>,
 Lina Iyer <ilina@codeaurora.org>, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kevin Hilman <khilman@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 11, 2019 at 04:43:43PM +0100, Ulf Hansson wrote:
> To enable the OS to better support PSCI OS initiated CPU suspend mode,
> let's convert from the flattened layout to the hierarchical layout.
>
> In the hierarchical layout, let's create a power domain provider per CPU
> and describe the idle states for each CPU inside the power domain provider
> node. To group the CPUs into a cluster, let's add another power domain
> provider and make it act as the master domain. Note that, the CPU's idle
> states remains compatible with "arm,idle-state", while the cluster's idle
> state becomes compatible with "domain-idle-state".
>
> Co-developed-by: Lina Iyer <lina.iyer@linaro.org>
> Signed-off-by: Lina Iyer <lina.iyer@linaro.org>
> Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> ---
>
> Changes in v4:
> 	- None.
>
> ---
>  arch/arm64/boot/dts/qcom/msm8916.dtsi | 57 +++++++++++++++++++++++++--
>  1 file changed, 53 insertions(+), 4 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/qcom/msm8916.dtsi b/arch/arm64/boot/dts/qcom/msm8916.dtsi
> index 8686e101905c..282c36c8fa3b 100644
> --- a/arch/arm64/boot/dts/qcom/msm8916.dtsi
> +++ b/arch/arm64/boot/dts/qcom/msm8916.dtsi
> @@ -102,10 +102,11 @@
>  			reg = <0x0>;
>  			next-level-cache = <&L2_0>;
>  			enable-method = "psci";
> -			cpu-idle-states = <&CPU_SLEEP_0>;
>  			clocks = <&apcs>;
>  			operating-points-v2 = <&cpu_opp_table>;
>  			#cooling-cells = <2>;
> +			power-domains = <&CPU_PD0>;
> +			power-domain-names = "psci";
>  		};
>
>  		CPU1: cpu@1 {
> @@ -114,10 +115,11 @@
>  			reg = <0x1>;
>  			next-level-cache = <&L2_0>;
>  			enable-method = "psci";
> -			cpu-idle-states = <&CPU_SLEEP_0>;
>  			clocks = <&apcs>;
>  			operating-points-v2 = <&cpu_opp_table>;
>  			#cooling-cells = <2>;
> +			power-domains = <&CPU_PD1>;
> +			power-domain-names = "psci";
>  		};
>
>  		CPU2: cpu@2 {
> @@ -126,10 +128,11 @@
>  			reg = <0x2>;
>  			next-level-cache = <&L2_0>;
>  			enable-method = "psci";
> -			cpu-idle-states = <&CPU_SLEEP_0>;
>  			clocks = <&apcs>;
>  			operating-points-v2 = <&cpu_opp_table>;
>  			#cooling-cells = <2>;
> +			power-domains = <&CPU_PD2>;
> +			power-domain-names = "psci";
>  		};
>
>  		CPU3: cpu@3 {
> @@ -138,10 +141,11 @@
>  			reg = <0x3>;
>  			next-level-cache = <&L2_0>;
>  			enable-method = "psci";
> -			cpu-idle-states = <&CPU_SLEEP_0>;
>  			clocks = <&apcs>;
>  			operating-points-v2 = <&cpu_opp_table>;
>  			#cooling-cells = <2>;
> +			power-domains = <&CPU_PD3>;
> +			power-domain-names = "psci";
>  		};
>
>  		L2_0: l2-cache {
> @@ -161,12 +165,57 @@
>  				min-residency-us = <2000>;
>  				local-timer-stop;
>  			};
> +
> +			CLUSTER_RET: cluster-retention {
> +				compatible = "domain-idle-state";
> +				arm,psci-suspend-param = <0x41000012>;

If I followed the thread correctly, we are now just using the param as is
without any extra logic like ORing like before. i.e. The domain state
parameter overrides the any param below it in the hierarchy.

If that's correct, then
Acked-by: Sudeep Holla <sudeep.holla@arm.com>

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
