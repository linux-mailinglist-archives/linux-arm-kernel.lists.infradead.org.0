Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68C0E6E50E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jul 2019 13:30:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SVZ/5chcVEYyJu6W4Legl+0oIYnGluzYDDPWGLjxF8k=; b=tiwlra54kCYz7u
	7svmwkd2d2UY8GC4tj5ZY7RzsTtoz05FvKHG2aZIgfdMGaUcv3M3sHA7WqScyowLcP7efT20zMogw
	qYtBOVGGp5K0CSNqZ7BqwAs2j+1pUfbm9uHg6O3LIgYcxfoeWobItaHF+975kwKSE3wSC0toHnzJe
	GwSMCpk7Jl7ZKTfj3U/EDz6jc81oqrD5jX+zoWGqouLwWnQM8l2Su8spUh3gPJgpffK61awj7cCNL
	F9vHDcCSaciLp2xOWVzPfkHdspbwPpobDN1Bf6ncJ+ApcCNxGbD6tB18IkhK+F7oiEleBZ8YEGoc8
	eXl/EGSXhZu5B2HOslkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoR5k-0003Zc-0o; Fri, 19 Jul 2019 11:30:24 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hoR5U-0003Rx-PP
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jul 2019 11:30:10 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B46D0337;
 Fri, 19 Jul 2019 04:30:07 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (unknown [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F245C3F71A;
 Fri, 19 Jul 2019 04:30:04 -0700 (PDT)
Date: Fri, 19 Jul 2019 12:29:56 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH 01/18] dt: psci: Update DT bindings to support
 hierarchical PSCI states
Message-ID: <20190719112947.GA22746@e121166-lin.cambridge.arm.com>
References: <20190513192300.653-1-ulf.hansson@linaro.org>
 <20190513192300.653-2-ulf.hansson@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190513192300.653-2-ulf.hansson@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_043008_921720_2883C788 
X-CRM114-Status: GOOD (  21.81  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Kevin Hilman <khilman@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>, linux-pm@vger.kernel.org,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 Amit Kucheria <amit.kucheria@linaro.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Tony Lindgren <tony@atomide.com>,
 linux-arm-msm@vger.kernel.org, Lina Iyer <ilina@codeaurora.org>,
 Sudeep Holla <sudeep.holla@arm.com>, Niklas Cassel <niklas.cassel@linaro.org>,
 Souvik Chakravarty <souvik.chakravarty@arm.com>,
 "Raju P . L . S . S . S . N" <rplsssn@codeaurora.org>,
 Lina Iyer <lina.iyer@linaro.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 13, 2019 at 09:22:43PM +0200, Ulf Hansson wrote:
> From: Lina Iyer <lina.iyer@linaro.org>
> 
> Update DT bindings to represent hierarchical CPU and CPU PM domain idle
> states for PSCI. Also update the PSCI examples to clearly show how
> flattened and hierarchical idle states can be represented in DT.
> 
> Signed-off-by: Lina Iyer <lina.iyer@linaro.org>
> Reviewed-by: Rob Herring <robh@kernel.org>
> Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>
> Co-developed-by: Ulf Hansson <ulf.hansson@linaro.org>
> Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> ---
> 
> Changes:
> 	- None.
> 
> ---
>  .../devicetree/bindings/arm/psci.txt          | 166 ++++++++++++++++++
>  1 file changed, 166 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/psci.txt b/Documentation/devicetree/bindings/arm/psci.txt
> index a2c4f1d52492..e6d3553c8df8 100644
> --- a/Documentation/devicetree/bindings/arm/psci.txt
> +++ b/Documentation/devicetree/bindings/arm/psci.txt
> @@ -105,7 +105,173 @@ Case 3: PSCI v0.2 and PSCI v0.1.
>  		...
>  	};
>  
> +ARM systems can have multiple cores sometimes in hierarchical arrangement.
> +This often, but not always, maps directly to the processor power topology of
> +the system. Individual nodes in a topology have their own specific power states
> +and can be better represented in DT hierarchically.
> +
> +For these cases, the definitions of the idle states for the CPUs and the CPU
> +topology, must conform to the domain idle state specification [3]. The domain
> +idle states themselves, must be compatible with the defined 'domain-idle-state'
> +binding [1], and also need to specify the arm,psci-suspend-param property for
> +each idle state.
> +
> +DT allows representing CPUs and CPU idle states in two different ways -
> +
> +The flattened model as given in Example 1, lists CPU's idle states followed by
> +the domain idle state that the CPUs may choose. Note that the idle states are
> +all compatible with "arm,idle-state". Additionally, for the domain idle state
> +the "arm,psci-suspend-param" represents a superset of the CPU's idle state.
> +
> +Example 2 represents the hierarchical model of CPUs and domain idle states.
> +CPUs define their domain provider in their psci DT node. The domain controls
> +the power to the CPU and possibly other h/w blocks that would enter an idle
> +state along with the CPU. The CPU's idle states may therefore be considered as
> +the domain's idle states and have the compatible "arm,idle-state". Such domains
> +may also be embedded within another domain that may represent common h/w blocks
> +between these CPUs. The idle states of the CPU topology shall be represented as
> +the domain's idle states. Note that for the domain idle state, the
> +"arm,psci-suspend-param" represents idle states hierarchically.
> +
> +In PSCI firmware v1.0, the OS-Initiated mode is introduced. However, the
> +flattened vs hierarchical DT representation is orthogonal to the OS-Initiated
> +vs the platform-coordinated PSCI CPU suspend modes, thus should be considered
> +independent of each other.
> +
> +The hierarchical representation helps and makes it easy to implement OSI mode
> +and OS implementations may choose to mandate it. For the default platform-
> +coordinated mode, both representations are viable options.
> +
> +Example 1: Flattened representation of CPU and domain idle states
> +	cpus {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		CPU0: cpu@0 {
> +			device_type = "cpu";
> +			compatible = "arm,cortex-a53", "arm,armv8";
> +			reg = <0x0>;
> +			enable-method = "psci";
> +			cpu-idle-states = <&CPU_PWRDN>, <&CLUSTER_RET>,
> +					  <&CLUSTER_PWRDN>;
> +		};
> +
> +		CPU1: cpu@1 {
> +			device_type = "cpu";
> +			compatible = "arm,cortex-a57", "arm,armv8";
> +			reg = <0x100>;
> +			enable-method = "psci";
> +			cpu-idle-states = <&CPU_PWRDN>, <&CLUSTER_RET>,
> +					  <&CLUSTER_PWRDN>;
> +		};
> +
> +		idle-states {
> +			CPU_PWRDN: cpu-power-down {
> +				compatible = "arm,idle-state";
> +				arm,psci-suspend-param = <0x0000001>;

This value is wrong, StateType must be 1 for CPU power down states.

> +				entry-latency-us = <10>;
> +				exit-latency-us = <10>;
> +				min-residency-us = <100>;
> +			};
> +
> +			CLUSTER_RET: cluster-retention {
> +				compatible = "arm,idle-state";
> +				arm,psci-suspend-param = <0x1000011>;

It must be made crystal clear that this is the *full* power_state
that is passed to the CPU_SUSPEND call. It is already specified
in the bindings.

As Sudeep pointed out already, OR'ing the power_state parameters values
across power domains is wrong, in that there is nothing in the PSCI
specifications that enforces a power_state parameter scheme whereby
different "levels" are assigned different bitfields, in particular with
the extended format a power_state parameter for eg "system" level is not
necessarily OR'ed value of cluster|cpu|system values.

So, to sum it up, arm,psci-suspend-param must be the full power_state
parameter to be passed to CPU_SUSPEND and must be specified in full for
every CPU and power domain idle state.

Thanks,
Lorenzo

> +				entry-latency-us = <500>;
> +				exit-latency-us = <500>;
> +				min-residency-us = <2000>;
> +			};
> +
> +			CLUSTER_PWRDN: cluster-power-down {
> +				compatible = "arm,idle-state";
> +				arm,psci-suspend-param = <0x1000031>;
> +				entry-latency-us = <2000>;
> +				exit-latency-us = <2000>;
> +				min-residency-us = <6000>;
> +			};
> +	};
> +
> +	psci {
> +		compatible = "arm,psci-0.2";
> +		method = "smc";
> +	};
> +
> +Example 2: Hierarchical representation of CPU and domain idle states
> +
> +	cpus {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		CPU0: cpu@0 {
> +			device_type = "cpu";
> +			compatible = "arm,cortex-a53", "arm,armv8";
> +			reg = <0x0>;
> +			enable-method = "psci";
> +			power-domains = <&CPU_PD0>;
> +			power-domain-names = "psci";
> +		};
> +
> +		CPU1: cpu@1 {
> +			device_type = "cpu";
> +			compatible = "arm,cortex-a57", "arm,armv8";
> +			reg = <0x100>;
> +			enable-method = "psci";
> +			power-domains = <&CPU_PD1>;
> +			power-domain-names = "psci";
> +		};
> +
> +		idle-states {
> +			CPU_PWRDN: cpu-power-down {
> +				compatible = "arm,idle-state";
> +				arm,psci-suspend-param = <0x0000001>;
> +				entry-latency-us = <10>;
> +				exit-latency-us = <10>;
> +				min-residency-us = <100>;
> +			};
> +
> +			CLUSTER_RET: cluster-retention {
> +				compatible = "domain-idle-state";
> +				arm,psci-suspend-param = <0x1000010>;
> +				entry-latency-us = <500>;
> +				exit-latency-us = <500>;
> +				min-residency-us = <2000>;
> +			};
> +
> +			CLUSTER_PWRDN: cluster-power-down {
> +				compatible = "domain-idle-state";
> +				arm,psci-suspend-param = <0x1000030>;
> +				entry-latency-us = <2000>;
> +				exit-latency-us = <2000>;
> +				min-residency-us = <6000>;
> +			};
> +		};
> +	};
> +
> +	psci {
> +		compatible = "arm,psci-1.0";
> +		method = "smc";
> +
> +		CPU_PD0: cpu-pd0 {
> +			#power-domain-cells = <0>;
> +			domain-idle-states = <&CPU_PWRDN>;
> +			power-domains = <&CLUSTER_PD>;
> +		};
> +
> +		CPU_PD1: cpu-pd1 {
> +			#power-domain-cells = <0>;
> +			domain-idle-states =  <&CPU_PWRDN>;
> +			power-domains = <&CLUSTER_PD>;
> +		};
> +
> +		CLUSTER_PD: cluster-pd {
> +			#power-domain-cells = <0>;
> +			domain-idle-states = <&CLUSTER_RET>, <&CLUSTER_PWRDN>;
> +		};
> +	};
> +
>  [1] Kernel documentation - ARM idle states bindings
>      Documentation/devicetree/bindings/arm/idle-states.txt
>  [2] Power State Coordination Interface (PSCI) specification
>      http://infocenter.arm.com/help/topic/com.arm.doc.den0022c/DEN0022C_Power_State_Coordination_Interface.pdf
> +[3]. PM Domains description
> +    Documentation/devicetree/bindings/power/power_domain.txt
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
