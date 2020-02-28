Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7797D173709
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 13:16:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OlzJiMUsuos3jkUbCYpBXfVHBtjbgmTHl5LyomPceNs=; b=BHL4wMaq2L6/nb
	1db9g3Hej7RzP0XOd4dAgY1qd6N+oO4gimCeqKaIliuw/xBUOsZZh2a+VuylXm8uEQa8OVwmdK083
	iETI73JQtRvi+6DlqafArE2FGuHQoYOQxam7fH+5xaoyyejk2dR7XN0oCise3d3pRH105b9hehbAe
	PJXWTWRXz72f4ykxEjDKToLJQJfoUOZtU4O8oMri1/IMQDIA5iltyvf+2nHOd3VrN9qj8FFrCN5bN
	K90WdP1wqJMhGNQBK1Re8cHsJggqokrVFDmEPNiEXZhnNFercEX7nB9NVtOqMTwTNygSN+XWZJd2j
	1uxoNU9m9Zp/ut4h324A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7eYV-0004NY-WB; Fri, 28 Feb 2020 12:15:48 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7eYM-0004Mv-I5
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 12:15:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7A7374B2;
 Fri, 28 Feb 2020 04:15:37 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AF4F93F7B4;
 Fri, 28 Feb 2020 04:15:36 -0800 (PST)
Date: Fri, 28 Feb 2020 12:15:34 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH v2 4/5] arm64: perf: Refactor PMU init callbacks
Message-ID: <20200228121534.GE36089@lakrids.cambridge.arm.com>
References: <cover.1582312530.git.robin.murphy@arm.com>
 <acd2f12447f8ca2fdfe2b161fc41dc84fee90471.1582312530.git.robin.murphy@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <acd2f12447f8ca2fdfe2b161fc41dc84fee90471.1582312530.git.robin.murphy@arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_041538_687070_243C09FF 
X-CRM114-Status: GOOD (  17.84  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: catalin.marinas@arm.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 21, 2020 at 07:35:31PM +0000, Robin Murphy wrote:
> The PMU init callbacks are already drowning in boilerplate, so before
> doubling the number of supported PMU models, give it a sensible refactor
> to significantly reduce the bloat, both in source and object code.
> Although nobody uses non-default sysfs attributes today, there's minimal
> impact to preserving the notion that maybe, some day, somebody might, so
> we may as well keep up appearances.
> 
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>

Acked-by: Mark Rutland <mark.rutland@arm.com>

Mark.

> ---
> 
> v2: new
> 
>  arch/arm64/kernel/perf_event.c | 124 +++++++--------------------------
>  1 file changed, 27 insertions(+), 97 deletions(-)
> 
> diff --git a/arch/arm64/kernel/perf_event.c b/arch/arm64/kernel/perf_event.c
> index e40b65645c86..1e0b04da2f3a 100644
> --- a/arch/arm64/kernel/perf_event.c
> +++ b/arch/arm64/kernel/perf_event.c
> @@ -953,7 +953,10 @@ static int armv8pmu_probe_pmu(struct arm_pmu *cpu_pmu)
>  	return probe.present ? 0 : -ENODEV;
>  }
>  
> -static int armv8_pmu_init(struct arm_pmu *cpu_pmu)
> +static int armv8_pmu_init(struct arm_pmu *cpu_pmu, char *name,
> +			  int (*map_event)(struct perf_event *event),
> +			  const struct attribute_group *events,
> +			  const struct attribute_group *format)
>  {
>  	int ret = armv8pmu_probe_pmu(cpu_pmu);
>  	if (ret)
> @@ -972,135 +975,62 @@ static int armv8_pmu_init(struct arm_pmu *cpu_pmu)
>  	cpu_pmu->set_event_filter	= armv8pmu_set_event_filter;
>  	cpu_pmu->filter_match		= armv8pmu_filter_match;
>  
> +	cpu_pmu->name			= name;
> +	cpu_pmu->map_event		= map_event;
> +	cpu_pmu->attr_groups[ARMPMU_ATTR_GROUP_EVENTS] = events ?
> +			events : &armv8_pmuv3_events_attr_group;
> +	cpu_pmu->attr_groups[ARMPMU_ATTR_GROUP_FORMATS] = format ?
> +			format : &armv8_pmuv3_format_attr_group;
> +
>  	return 0;
>  }
>  
>  static int armv8_pmuv3_init(struct arm_pmu *cpu_pmu)
>  {
> -	int ret = armv8_pmu_init(cpu_pmu);
> -	if (ret)
> -		return ret;
> -
> -	cpu_pmu->name			= "armv8_pmuv3";
> -	cpu_pmu->map_event		= armv8_pmuv3_map_event;
> -	cpu_pmu->attr_groups[ARMPMU_ATTR_GROUP_EVENTS] =
> -		&armv8_pmuv3_events_attr_group;
> -	cpu_pmu->attr_groups[ARMPMU_ATTR_GROUP_FORMATS] =
> -		&armv8_pmuv3_format_attr_group;
> -
> -	return 0;
> +	return armv8_pmu_init(cpu_pmu, "armv8_pmuv3",
> +			      armv8_pmuv3_map_event, NULL, NULL);
>  }
>  
>  static int armv8_a35_pmu_init(struct arm_pmu *cpu_pmu)
>  {
> -	int ret = armv8_pmu_init(cpu_pmu);
> -	if (ret)
> -		return ret;
> -
> -	cpu_pmu->name			= "armv8_cortex_a35";
> -	cpu_pmu->map_event		= armv8_a53_map_event;
> -	cpu_pmu->attr_groups[ARMPMU_ATTR_GROUP_EVENTS] =
> -		&armv8_pmuv3_events_attr_group;
> -	cpu_pmu->attr_groups[ARMPMU_ATTR_GROUP_FORMATS] =
> -		&armv8_pmuv3_format_attr_group;
> -
> -	return 0;
> +	return armv8_pmu_init(cpu_pmu, "armv8_cortex_a35",
> +			      armv8_a53_map_event, NULL, NULL);
>  }
>  
>  static int armv8_a53_pmu_init(struct arm_pmu *cpu_pmu)
>  {
> -	int ret = armv8_pmu_init(cpu_pmu);
> -	if (ret)
> -		return ret;
> -
> -	cpu_pmu->name			= "armv8_cortex_a53";
> -	cpu_pmu->map_event		= armv8_a53_map_event;
> -	cpu_pmu->attr_groups[ARMPMU_ATTR_GROUP_EVENTS] =
> -		&armv8_pmuv3_events_attr_group;
> -	cpu_pmu->attr_groups[ARMPMU_ATTR_GROUP_FORMATS] =
> -		&armv8_pmuv3_format_attr_group;
> -
> -	return 0;
> +	return armv8_pmu_init(cpu_pmu, "armv8_cortex_a53",
> +			      armv8_a53_map_event, NULL, NULL);
>  }
>  
>  static int armv8_a57_pmu_init(struct arm_pmu *cpu_pmu)
>  {
> -	int ret = armv8_pmu_init(cpu_pmu);
> -	if (ret)
> -		return ret;
> -
> -	cpu_pmu->name			= "armv8_cortex_a57";
> -	cpu_pmu->map_event		= armv8_a57_map_event;
> -	cpu_pmu->attr_groups[ARMPMU_ATTR_GROUP_EVENTS] =
> -		&armv8_pmuv3_events_attr_group;
> -	cpu_pmu->attr_groups[ARMPMU_ATTR_GROUP_FORMATS] =
> -		&armv8_pmuv3_format_attr_group;
> -
> -	return 0;
> +	return armv8_pmu_init(cpu_pmu, "armv8_cortex_a57",
> +			      armv8_a57_map_event, NULL, NULL);
>  }
>  
>  static int armv8_a72_pmu_init(struct arm_pmu *cpu_pmu)
>  {
> -	int ret = armv8_pmu_init(cpu_pmu);
> -	if (ret)
> -		return ret;
> -
> -	cpu_pmu->name			= "armv8_cortex_a72";
> -	cpu_pmu->map_event		= armv8_a57_map_event;
> -	cpu_pmu->attr_groups[ARMPMU_ATTR_GROUP_EVENTS] =
> -		&armv8_pmuv3_events_attr_group;
> -	cpu_pmu->attr_groups[ARMPMU_ATTR_GROUP_FORMATS] =
> -		&armv8_pmuv3_format_attr_group;
> -
> -	return 0;
> +	return armv8_pmu_init(cpu_pmu, "armv8_cortex_a72",
> +			      armv8_a57_map_event, NULL, NULL);
>  }
>  
>  static int armv8_a73_pmu_init(struct arm_pmu *cpu_pmu)
>  {
> -	int ret = armv8_pmu_init(cpu_pmu);
> -	if (ret)
> -		return ret;
> -
> -	cpu_pmu->name			= "armv8_cortex_a73";
> -	cpu_pmu->map_event		= armv8_a73_map_event;
> -	cpu_pmu->attr_groups[ARMPMU_ATTR_GROUP_EVENTS] =
> -		&armv8_pmuv3_events_attr_group;
> -	cpu_pmu->attr_groups[ARMPMU_ATTR_GROUP_FORMATS] =
> -		&armv8_pmuv3_format_attr_group;
> -
> -	return 0;
> +	return armv8_pmu_init(cpu_pmu, "armv8_cortex_a73",
> +			      armv8_a73_map_event, NULL, NULL);
>  }
>  
>  static int armv8_thunder_pmu_init(struct arm_pmu *cpu_pmu)
>  {
> -	int ret = armv8_pmu_init(cpu_pmu);
> -	if (ret)
> -		return ret;
> -
> -	cpu_pmu->name			= "armv8_cavium_thunder";
> -	cpu_pmu->map_event		= armv8_thunder_map_event;
> -	cpu_pmu->attr_groups[ARMPMU_ATTR_GROUP_EVENTS] =
> -		&armv8_pmuv3_events_attr_group;
> -	cpu_pmu->attr_groups[ARMPMU_ATTR_GROUP_FORMATS] =
> -		&armv8_pmuv3_format_attr_group;
> -
> -	return 0;
> +	return armv8_pmu_init(cpu_pmu, "armv8_cavium_thunder",
> +			      armv8_thunder_map_event, NULL, NULL);
>  }
>  
>  static int armv8_vulcan_pmu_init(struct arm_pmu *cpu_pmu)
>  {
> -	int ret = armv8_pmu_init(cpu_pmu);
> -	if (ret)
> -		return ret;
> -
> -	cpu_pmu->name			= "armv8_brcm_vulcan";
> -	cpu_pmu->map_event		= armv8_vulcan_map_event;
> -	cpu_pmu->attr_groups[ARMPMU_ATTR_GROUP_EVENTS] =
> -		&armv8_pmuv3_events_attr_group;
> -	cpu_pmu->attr_groups[ARMPMU_ATTR_GROUP_FORMATS] =
> -		&armv8_pmuv3_format_attr_group;
> -
> -	return 0;
> +	return armv8_pmu_init(cpu_pmu, "armv8_brcm_vulcan",
> +			      armv8_vulcan_map_event, NULL, NULL);
>  }
>  
>  static const struct of_device_id armv8_pmu_of_device_ids[] = {
> -- 
> 2.23.0.dirty
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
