Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72A257C170
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 14:36:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ugbmGzpfNfZY3s4MM0d6gP8709x/bc1iuR1D7YODxgk=; b=NEkb4gvt/rEP4/trE+6vjYOa9
	wD3x05cJuclH8UtJPjRyWlbl1fS7ioJtATsqRrawyPXxBEjA9lgu+rCRDCyirTgY6a3JPpzsx3FkZ
	dP1+4prsLbcOT29miu6LJA+8y5EyaA+rBtNClgqnYCA7tU576f5q7j5dYVoxqA7HRalVv+WTX6p4U
	R2u5SkRUgY3LPyQAezSxKTKE3CKcLVbZLnlln+16TfkCKr6l2AZ1aOM/odaT94AvgUDgUPDi2Bns5
	Aa/MOtfys1DHX83Ht///bxhLS7i1LcYtDh66vGnR+gVUP2IzVI0tuZaIxU0I8QT/5p378SgaoevCD
	tdh4SOKXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsnqc-0005QO-SE; Wed, 31 Jul 2019 12:36:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hsnqW-0005Q1-IO
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 12:36:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 18B30344;
 Wed, 31 Jul 2019 05:36:42 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 25AC83F575;
 Wed, 31 Jul 2019 05:36:41 -0700 (PDT)
Subject: Re: [PATCH V4 1/2] perf: imx8_ddr_perf: add AXI ID filter support
To: Joakim Zhang <qiangqing.zhang@nxp.com>, "will@kernel.org"
 <will@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 Frank Li <frank.li@nxp.com>
References: <20190731104351.3117-1-qiangqing.zhang@nxp.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <ad9491ed-24c5-8553-94be-cc96479adaf6@arm.com>
Date: Wed, 31 Jul 2019 13:36:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190731104351.3117-1-qiangqing.zhang@nxp.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_053644_696330_056C156B 
X-CRM114-Status: GOOD (  35.08  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, dl-linux-imx <linux-imx@nxp.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 31/07/2019 11:46, Joakim Zhang wrote:
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
> 
> AXI_ID and AXI_MASKING are mapped on DPCR1 register in performance counter.
> 
> Read and write AXI ID filter should write same value to DPCR1 if want to
> specify at the same time as this filter is shared between counters.
> 
> e.g.
> perf stat -a -e imx8_ddr0/axi-id-read,axi_id=0xMMMMDDDD/,imx8_ddr0/
> axi-id-write,axi_id=0xMMMMDDDD/cmd
> MMMM: AXI_MASKING
> DDDD: AXI_ID
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
> 
> Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>
> ---
>   drivers/perf/fsl_imx8_ddr_perf.c | 58 ++++++++++++++++++++++++++++++--
>   1 file changed, 56 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/perf/fsl_imx8_ddr_perf.c b/drivers/perf/fsl_imx8_ddr_perf.c
> index 63fe21600072..cb90caad6441 100644
> --- a/drivers/perf/fsl_imx8_ddr_perf.c
> +++ b/drivers/perf/fsl_imx8_ddr_perf.c
> @@ -42,9 +42,22 @@
>   
>   static DEFINE_IDA(ddr_ida);
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
>   static const struct of_device_id imx_ddr_pmu_dt_ids[] = {
> -	{ .compatible = "fsl,imx8-ddr-pmu",},
> -	{ .compatible = "fsl,imx8m-ddr-pmu",},
> +	{ .compatible = "fsl,imx8-ddr-pmu", .data = &imx8_devtype_data},
> +	{ .compatible = "fsl,imx8m-ddr-pmu", .data = &imx8m_devtype_data},
>   	{ /* sentinel */ }
>   };
>   
> @@ -57,6 +70,8 @@ struct ddr_pmu {
>   	struct perf_event *events[NUM_COUNTERS];
>   	int active_events;
>   	enum cpuhp_state cpuhp_state;
> +	const struct fsl_ddr_devtype_data *devtype_data;
> +	unsigned int axi_id_read, axi_id_write;

Given that there's apparently only one filter, tracking two different 
IDs seems a bit weird. It would be more intuitive to track one value, 
plus whether it's currently valid or not (unless that's easy to infer by 
just seeing whether any read or write events are currently scheduled).

>   	int irq;
>   	int id;
>   };
> @@ -128,6 +143,8 @@ static struct attribute *ddr_perf_events_attrs[] = {
>   	IMX8_DDR_PMU_EVENT_ATTR(refresh, 0x37),
>   	IMX8_DDR_PMU_EVENT_ATTR(write, 0x38),
>   	IMX8_DDR_PMU_EVENT_ATTR(raw-hazard, 0x39),
> +	IMX8_DDR_PMU_EVENT_ATTR(axi-id-read, 0x41),
> +	IMX8_DDR_PMU_EVENT_ATTR(axi-id-write, 0x42),
>   	NULL,
>   };
>   
> @@ -137,9 +154,11 @@ static struct attribute_group ddr_perf_events_attr_group = {
>   };
>   
>   PMU_FORMAT_ATTR(event, "config:0-7");
> +PMU_FORMAT_ATTR(axi_id, "config1:0-31");
>   
>   static struct attribute *ddr_perf_format_attrs[] = {
>   	&format_attr_event.attr,
> +	&format_attr_axi_id.attr,
>   	NULL,
>   };
>   
> @@ -195,6 +214,18 @@ static int ddr_perf_event_init(struct perf_event *event)
>   	struct hw_perf_event *hwc = &event->hw;
>   	struct perf_event *sibling;
>   
> +	if (pmu->devtype_data->quirks & DDR_CAP_AXI_ID_FILTER) {
> +		if (event->attr.config == 0x41)
> +			pmu->axi_id_read = event->attr.config1;
> +
> +		if (event->attr.config == 0x42)
> +			pmu->axi_id_write = event->attr.config1;
> +
> +		if (pmu->axi_id_read && pmu->axi_id_write &&
> +		    (pmu->axi_id_read != pmu->axi_id_write))
> +			return -EINVAL;
> +	}

This isn't the correct approach that Mark outlined :(

In event_init, you should validate that any filtering for the given 
event is compatible with any other sibling events in the same group, but 
you should not consider (and should definitely not change) the current 
state of the PMU at that point. This step is about rejecting event 
configurations which could *never* be successfully scheduled (since a 
group represents a set of events which must be scheduled all at the same 
time).

In event_add, you know the given event/group is sufficiently valid to 
*potentially* be scheduled, given that it has passed the event_init 
checks, but you then need to check that the filtering is compatible with 
all other events *currently* counting on the PMU. If this fails, perf 
core will try to reschedule the current events until the new one is able 
to run. That's why you need the additional step of validating groups 
beforehand, because otherwise you could end up with contradictory 
scheduling constraints at this point and never make progress.

> +
>   	if (event->attr.type != event->pmu->type)
>   		return -ENOENT;
>   
> @@ -274,6 +305,15 @@ static void ddr_perf_event_start(struct perf_event *event, int flags)
>   	struct hw_perf_event *hwc = &event->hw;
>   	int counter = hwc->idx;
>   
> +	if (pmu->devtype_data->quirks & DDR_CAP_AXI_ID_FILTER) {
> +		if (event->attr.config == 0x41 ||
> +		    event->attr.config == 0x42) {
> +			int val = event->attr.config1;
> +
> +			writel(val, pmu->base + COUNTER_DPCR1);
> +		}
> +	}
> +
>   	local64_set(&hwc->prev_count, 0);
>   
>   	ddr_perf_counter_enable(pmu, event->attr.config, counter, true);
> @@ -324,6 +364,11 @@ static void ddr_perf_event_del(struct perf_event *event, int flags)
>   	struct hw_perf_event *hwc = &event->hw;
>   	int counter = hwc->idx;
>   
> +	if (pmu->devtype_data->quirks & DDR_CAP_AXI_ID_FILTER) {
> +		pmu->axi_id_read = 0;
> +		pmu->axi_id_write = 0;
> +	}
> +
>   	ddr_perf_event_stop(event, PERF_EF_UPDATE);
>   
>   	ddr_perf_free_counter(pmu, counter);
> @@ -445,6 +490,7 @@ static int ddr_perf_offline_cpu(unsigned int cpu, struct hlist_node *node)
>   
>   static int ddr_perf_probe(struct platform_device *pdev)
>   {
> +	const struct fsl_ddr_devtype_data *data;

You don't do anything meaningful with this variable, so you may as well 
just get rid of it.

>   	struct ddr_pmu *pmu;
>   	struct device_node *np;
>   	void __iomem *base;
> @@ -472,6 +518,14 @@ static int ddr_perf_probe(struct platform_device *pdev)
>   	if (!name)
>   		return -ENOMEM;
>   
> +	data = of_device_get_match_data(&pdev->dev);
> +	pmu->devtype_data = data;
> +
> +	if (pmu->devtype_data->quirks & DDR_CAP_AXI_ID_FILTER) {
> +		pmu->axi_id_read = 0;
> +		pmu->axi_id_write = 0;

You've just kzalloc()ed the structure, so these are already initialised 
to zero.

Robin.

> +	}
> +
>   	pmu->cpu = raw_smp_processor_id();
>   	ret = cpuhp_setup_state_multi(CPUHP_AP_ONLINE_DYN,
>   				      DDR_CPUHP_CB_NAME,
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
