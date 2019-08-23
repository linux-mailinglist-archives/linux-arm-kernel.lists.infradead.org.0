Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 752259B014
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 14:57:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/0P4iIX3qAMUozCUVq42Y1c2HitdmTZgvTJTMgGT4b0=; b=r7nU8An2dEtuEs
	r4BwyQDPD/FljitIolD9iIJWo5lK3XtPEqeKXmC6GdIvjBoYCha4jo4MPQUPDIJf3sgA9SOcUTWYm
	9k4+kMY+ghuQXuTh3gQeXBlr+cZZX6Tded/h2QH2w+xFZsWejv15oj7rzr4IdmHylgmR6CCyRcb9s
	MsmsKHPcrVeSsX78coWyF8o416kXP6DCxQuDYQuB4GIK3WsY3QqHKCQIRSfFkyvUBMgxq+pdhod+k
	DzYhJju9T6ALIQ678Fk/pbFunt3rGt627MXuMkvPYeFOWRO9tlk2g/KhcjwYxrpzI/wBtIpGL9nfT
	JpKqA7cxzObyqsF8NF1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i198H-0001Jo-UZ; Fri, 23 Aug 2019 12:57:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i1987-0001Ea-Kq
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 12:57:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C18B01570;
 Fri, 23 Aug 2019 05:57:22 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D994F3F718;
 Fri, 23 Aug 2019 05:57:21 -0700 (PDT)
Date: Fri, 23 Aug 2019 13:57:19 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Joakim Zhang <qiangqing.zhang@nxp.com>
Subject: Re: [PATCH V5 1/3] perf: imx8_ddr_perf: add AXI ID filter support
Message-ID: <20190823125719.GD55480@lakrids.cambridge.arm.com>
References: <20190808064216.6950-1-qiangqing.zhang@nxp.com>
 <20190808064216.6950-2-qiangqing.zhang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190808064216.6950-2-qiangqing.zhang@nxp.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_055723_772489_A98BDC26 
X-CRM114-Status: GOOD (  30.50  )
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
Cc: "will@kernel.org" <will@kernel.org>,
 "robin.murphy@arm.com" <robin.murphy@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Frank Li <frank.li@nxp.com>, dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 08, 2019 at 06:45:29AM +0000, Joakim Zhang wrote:
> AXI filtering is used by CSV modes 0x41 and 0x42 to count reads or
> writes with an ARID or AXID matching filter setting. Granularity is at
> subsystem level. Implementation does not allow filtring between masters
> within a subsystem. Filter is defined with 2 configuration registers.
> 
> --AXI_ID defines AxID matching value
> --AXI_MASKING defines which bits of AxID are meaningful for the matching
> 
> When non-masked bits are matching corresponding AXI_ID bits then counter
> is incremented. This filter allows counting read or write access from a
> subsystem or multiple subsystems.
> 
> Perf counter is incremented if AxID && AXI_MASKING == AXI_ID && AXI_MASKING

Just to check, the filter does not affect other events, right?

> 
> AXI_ID and AXI_MASKING are mapped on DPCR1 register in performance counter.
> 
> Read and write AXI ID filter should write same value to DPCR1 if want to
> specify at the same time as this filter is shared between counters.
> 
> e.g.
> perf stat -a -e imx8_ddr0/axi-id-read,axi_id=0xMMMMDDDD/,imx8_ddr0/axi-id-write,axi_id=0xMMMMDDDD/ cmd
> MMMM: AXI_MASKING
> DDDD: AXI_ID

You might want to expose this to userspace as two fields:

	axi_id=DDDD
	axi_mask=MMMM

... where axi_mask is inverted (i.e. set bits are bits to ignore), so
that the user can just specify axi_id to monitor a specific id, rather
than having to specifiy axi_id=0xffff<id>.

> 
> ChangeLog:
> V1 -> V2:
> 	* add error log if user specifies read/write AXI ID filter at
> 	the same time.
> 	* of_device_get_match_data() instead of of_match_device(), and
> 	remove the check of return value.
> V2 -> V3:
> 	* move the AXI ID check to event_add().
> 	* add support for same value of axi_id.
> V3 -> V4:
> 	* move the AXI ID check to event_init().
> V4 -> V5:
> 	* reject event group if AXI ID not consistent in event_init().
> 
> Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>
> ---
>  drivers/perf/fsl_imx8_ddr_perf.c | 63 +++++++++++++++++++++++++++++++-
>  1 file changed, 61 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/perf/fsl_imx8_ddr_perf.c b/drivers/perf/fsl_imx8_ddr_perf.c
> index 63fe21600072..f25cf5cbe156 100644
> --- a/drivers/perf/fsl_imx8_ddr_perf.c
> +++ b/drivers/perf/fsl_imx8_ddr_perf.c
> @@ -42,9 +42,22 @@
>  
>  static DEFINE_IDA(ddr_ida);
>  
> +/* DDR Perf hardware feature */
> +#define DDR_CAP_AXI_ID_FILTER		0x1	/* support AXI ID filter */
> +
> +struct fsl_ddr_devtype_data {
> +	unsigned int quirks;	/* quirks needed for different DDR Perf core */
> +};
> +
> +static const struct fsl_ddr_devtype_data imx8_devtype_data;
> +
> +static const struct fsl_ddr_devtype_data imx8m_devtype_data = {
> +	.quirks = DDR_CAP_AXI_ID_FILTER,
> +};
> +
>  static const struct of_device_id imx_ddr_pmu_dt_ids[] = {
> -	{ .compatible = "fsl,imx8-ddr-pmu",},
> -	{ .compatible = "fsl,imx8m-ddr-pmu",},
> +	{ .compatible = "fsl,imx8-ddr-pmu", .data = &imx8_devtype_data},
> +	{ .compatible = "fsl,imx8m-ddr-pmu", .data = &imx8m_devtype_data},
>  	{ /* sentinel */ }
>  };

Are new DDR PMUs going to lack this feature?

If all PMUs the driver supports have it, then we don't need this
quirk/feature list.

That would make the subsequent code a bit nicer, as all the filtering
code would lose a level of indentation.

>  
> @@ -57,6 +70,7 @@ struct ddr_pmu {
>  	struct perf_event *events[NUM_COUNTERS];
>  	int active_events;
>  	enum cpuhp_state cpuhp_state;
> +	const struct fsl_ddr_devtype_data *devtype_data;
>  	int irq;
>  	int id;
>  };
> @@ -128,6 +142,8 @@ static struct attribute *ddr_perf_events_attrs[] = {
>  	IMX8_DDR_PMU_EVENT_ATTR(refresh, 0x37),
>  	IMX8_DDR_PMU_EVENT_ATTR(write, 0x38),
>  	IMX8_DDR_PMU_EVENT_ATTR(raw-hazard, 0x39),
> +	IMX8_DDR_PMU_EVENT_ATTR(axi-id-read, 0x41),
> +	IMX8_DDR_PMU_EVENT_ATTR(axi-id-write, 0x42),
>  	NULL,
>  };
>  
> @@ -137,9 +153,11 @@ static struct attribute_group ddr_perf_events_attr_group = {
>  };
>  
>  PMU_FORMAT_ATTR(event, "config:0-7");
> +PMU_FORMAT_ATTR(axi_id, "config1:0-31");
>  
>  static struct attribute *ddr_perf_format_attrs[] = {
>  	&format_attr_event.attr,
> +	&format_attr_axi_id.attr,
>  	NULL,
>  };
>  
> @@ -189,6 +207,16 @@ static u32 ddr_perf_read_counter(struct ddr_pmu *pmu, int counter)
>  	return readl_relaxed(pmu->base + COUNTER_READ + counter * 4);
>  }
>  
> +static bool ddr_perf_is_filtered(struct perf_event *event)
> +{
> +	return event->attr.config == 0x41 || event->attr.config == 0x42;
> +}
> +
> +static u32 ddr_perf_filter_val(struct perf_event *event)
> +{
> +	return event->attr.config1;
> +}
> +

Let's add another helper:

static bool ddr_perf_filters_compatible(struct perf_event *a,
					struct perf_event *b)
{
	if (!ddr_perf_is_filtered(a))
		return true;
	if (!ddr_perf_is_filtered(b))
		return true;
	return ddr_perf_filter_val(a) == ddr_perf_filter_val(b);
}

>  static int ddr_perf_event_init(struct perf_event *event)
>  {
>  	struct ddr_pmu *pmu = to_ddr_pmu(event->pmu);
> @@ -215,6 +243,18 @@ static int ddr_perf_event_init(struct perf_event *event)
>  			!is_software_event(event->group_leader))
>  		return -EINVAL;
>  
> +	if (pmu->devtype_data->quirks & DDR_CAP_AXI_ID_FILTER) {
> +		bool is_filtered = ddr_perf_is_filtered(event);
> +		u32 filter_val = ddr_perf_filter_val(event);
> +
> +		for_each_sibling_event(sibling, event->group_leader) {
> +			if (is_filtered && ddr_perf_is_filtered(sibling) &&
> +			    ddr_perf_filter_val(sibling) != filter_val) {
> +				return -EINVAL;
> +			}
> +		}
> +	}

... so this can be:

	if (pmu->devtype_data->quirks & DDR_CAP_AXI_ID_FILTER) {
		if (!ddr_perf_filters_compatible(event, event->group_leader))
			return -EINVAL;
		for_each_sibling_event(sibling, event->group_leader) {
			if (!ddr_perf_filters_compatible(event, sibling))
				return -EINVAL;
		}
	}

Note: that checks group_leader, which you mised above. When the event is
the group leader, it's trivially compatible with itself, so we don't
need a special case there.

> +
>  	for_each_sibling_event(sibling, event->group_leader) {
>  		if (sibling->pmu != event->pmu &&
>  				!is_software_event(sibling))
> @@ -288,6 +328,23 @@ static int ddr_perf_event_add(struct perf_event *event, int flags)
>  	int counter;
>  	int cfg = event->attr.config;
>  
> +	if (pmu->devtype_data->quirks & DDR_CAP_AXI_ID_FILTER) {
> +		int i;
> +		bool is_filtered = ddr_perf_is_filtered(event);
> +		u32 filter_val = ddr_perf_filter_val(event);
> +
> +		for (i = 1; i < NUM_COUNTERS; i++) {
> +			if (is_filtered && pmu->events[i] &&
> +			    ddr_perf_is_filtered(pmu->events[i]) &&
> +			    ddr_perf_filter_val(pmu->events[i]) != filter_val) {
> +				dev_dbg(pmu->dev, "Contradictory axi id filter value\n");
> +				return -EINVAL;
> +			}
> +		}

... and likewise:

	if (pmu->devtype_data->quirks & DDR_CAP_AXI_ID_FILTER) {
		int i;

		for (i = 1; i < NUM_COUNTERS; i++) {
			if (!ddr_perf_filters_compatible(event, pmu->events[i]))
				return -EINVAL;
		}
	}

Please drop the dev_dbg() here, since when perf rotates events this can
happen many times per second, and it's entirely legitimate.

Otherwise, this looks good to me.

Thanks,
Mark.

> +
> +		writel(filter_val, pmu->base + COUNTER_DPCR1);
> +	}
> +
>  	counter = ddr_perf_alloc_counter(pmu, cfg);
>  	if (counter < 0) {
>  		dev_dbg(pmu->dev, "There are not enough counters\n");
> @@ -472,6 +529,8 @@ static int ddr_perf_probe(struct platform_device *pdev)
>  	if (!name)
>  		return -ENOMEM;
>  
> +	pmu->devtype_data = of_device_get_match_data(&pdev->dev);
> +
>  	pmu->cpu = raw_smp_processor_id();
>  	ret = cpuhp_setup_state_multi(CPUHP_AP_ONLINE_DYN,
>  				      DDR_CPUHP_CB_NAME,
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
