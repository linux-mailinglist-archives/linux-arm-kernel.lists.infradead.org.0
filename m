Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF1D4E386F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 18:43:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h1g9GVY3Wd8kgtO9tQpbTg+bP75VydSObQBospvtwbU=; b=Y8/RRSvcHxikv5
	VaAst2jLit85elrYnz5kAl5UnJgpnkSMhQ3QzrfYhXBd2t2zAMdiyVXeKw/zRg5Z9kcCVyLhKBm7x
	O3qCnhQ9NuG3wCYKhy2EgJZoVnpcMrY38iMUrSKXeXsCTiqwMa+AQYY2Lk8UdkNk47+aYBvJMj7BI
	Tuzfo8CWx1sgIWog79Dvgj+JRG9aTi4OQC8KvJjqw9UnrS1TBcFf2EzfZy3LYbWgOgTuGBlin+7I8
	Iqm4yTwS3/ueygsHaCkfGbVAyYkCruxp/A9+T89y8g+5c3YwFInQJGfbj8xTf07Us81ajPITPudcy
	k7rN/9E5I6akCDgWtWKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNgCb-0001rt-8H; Thu, 24 Oct 2019 16:43:09 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNgAw-0000RS-Sw
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 16:41:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 927AC328;
 Thu, 24 Oct 2019 09:41:14 -0700 (PDT)
Received: from bogus (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7590B3F71F;
 Thu, 24 Oct 2019 09:41:12 -0700 (PDT)
Date: Thu, 24 Oct 2019 17:41:06 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH 13/13] arm64: dts: Convert to the hierarchical CPU
 topology layout for MSM8916
Message-ID: <20191024164106.GA24887@bogus>
References: <20191010113937.15962-1-ulf.hansson@linaro.org>
 <20191010113937.15962-14-ulf.hansson@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191010113937.15962-14-ulf.hansson@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_094126_992428_3A4A734E 
X-CRM114-Status: GOOD (  15.12  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Lina Iyer <ilina@codeaurora.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kevin Hilman <khilman@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Lina Iyer <lina.iyer@linaro.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Andy Gross <andy.gross@linaro.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 10, 2019 at 01:39:37PM +0200, Ulf Hansson wrote:
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
> Cc: Andy Gross <andy.gross@linaro.org>
> Co-developed-by: Lina Iyer <lina.iyer@linaro.org>
> Signed-off-by: Lina Iyer <lina.iyer@linaro.org>
> Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/msm8916.dtsi | 57 +++++++++++++++++++++++++--
>  1 file changed, 53 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/msm8916.dtsi b/arch/arm64/boot/dts/qcom/msm8916.dtsi
> index 5ea9fb8f2f87..1ece0c763592 100644
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

As mentioned in the patch: Do we really need to make power-domain-names
compulsory ?

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
