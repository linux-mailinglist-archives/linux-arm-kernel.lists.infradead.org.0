Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AEAA6E43E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jul 2019 12:26:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mbaL5KUWncvkLVYXFcv684A/NDobNejPUqRyIBY/1dw=; b=QrpUY/mv/N2v+qYfQ51dvg1jk
	WyfSu4jdHYlHSphc0qtAnaoaNX5EFcqzaPF3zm0ciWGmP731ZVhpg6ZX4Xxh8KbumyqXtEjcOSlsh
	e4DPp1D/U9FYxQc6a0gqQULGnceEVz4nKk1U1uDwOqjgO+Z5Vk7E7HymFemWSrJB88xEOUcddse7E
	4sq5bTnRuVmep3Ccm290cFgOJiyM094/NEncdBazkh9atQCWtGZwWB3sIQ6gX7aInz4N3ILIicNbG
	UNOIw/elrQ7STk2N1QZswR7460TZdXTAlTmeSLhWE7DgQDEi6AD7zUwQ/YLqO3OCleLTBKjM35Wvy
	Ire/4+lRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoQ6I-0002dD-5d; Fri, 19 Jul 2019 10:26:54 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hoQ5Y-0002RO-2o
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jul 2019 10:26:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D8769337;
 Fri, 19 Jul 2019 03:26:04 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EE6633F59C;
 Fri, 19 Jul 2019 03:26:03 -0700 (PDT)
Subject: Re: [PATCH] perf: imx8_ddr_perf: add AXI ID filter support
To: Joakim Zhang <qiangqing.zhang@nxp.com>, "will@kernel.org"
 <will@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 Frank Li <frank.li@nxp.com>
References: <20190719075421.11093-1-qiangqing.zhang@nxp.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <da9c7509-fc37-c70a-51eb-12c852c735db@arm.com>
Date: Fri, 19 Jul 2019 11:25:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190719075421.11093-1-qiangqing.zhang@nxp.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_032608_322115_F9190056 
X-CRM114-Status: GOOD (  27.30  )
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
Cc: "kernel@pengutronix.de" <kernel@pengutronix.de>,
 dl-linux-imx <linux-imx@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19/07/2019 08:56, Joakim Zhang wrote:
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
> e.g.
> perf stat -a -e imx8_ddr0/axi-id-read,axi_id=0xMMMMDDDD/ cmd
> MMMM: AXI_MASKING
> DDDD: AXI_ID
> 
> Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>
> ---
>   drivers/perf/fsl_imx8_ddr_perf.c | 38 ++++++++++++++++++++++++++++++--
>   1 file changed, 36 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/perf/fsl_imx8_ddr_perf.c b/drivers/perf/fsl_imx8_ddr_perf.c
> index 63fe21600072..cd05f12ed5c4 100644
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
> @@ -57,6 +70,7 @@ struct ddr_pmu {
>   	struct perf_event *events[NUM_COUNTERS];
>   	int active_events;
>   	enum cpuhp_state cpuhp_state;
> +	const struct fsl_ddr_devtype_data *devtype_data;
>   	int irq;
>   	int id;
>   };
> @@ -128,6 +142,8 @@ static struct attribute *ddr_perf_events_attrs[] = {
>   	IMX8_DDR_PMU_EVENT_ATTR(refresh, 0x37),
>   	IMX8_DDR_PMU_EVENT_ATTR(write, 0x38),
>   	IMX8_DDR_PMU_EVENT_ATTR(raw-hazard, 0x39),
> +	IMX8_DDR_PMU_EVENT_ATTR(axi-id-read, 0x41),
> +	IMX8_DDR_PMU_EVENT_ATTR(axi-id-write, 0x42),
>   	NULL,
>   };
>   
> @@ -137,9 +153,11 @@ static struct attribute_group ddr_perf_events_attr_group = {
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
> @@ -274,6 +292,15 @@ static void ddr_perf_event_start(struct perf_event *event, int flags)
>   	struct hw_perf_event *hwc = &event->hw;
>   	int counter = hwc->idx;
>   
> +	if (pmu->devtype_data->quirks & DDR_CAP_AXI_ID_FILTER) {
> +		if (event->attr.config == 0x41 ||
> +		    event->attr.config == 0x42) {
> +			int val = event->attr.config1;
> +
> +			writel(val, pmu->base + COUNTER_DPCR1);

As was touched upon in the original driver review, if this filter is 
shared between counters, then what happens if the user specifies 
EVENT_AXI_READ and EVENT_AXI_WRITE at the same time but with different 
masks?

> +		}
> +	}
> +
>   	local64_set(&hwc->prev_count, 0);
>   
>   	ddr_perf_counter_enable(pmu, event->attr.config, counter, true);
> @@ -445,6 +472,7 @@ static int ddr_perf_offline_cpu(unsigned int cpu, struct hlist_node *node)
>   
>   static int ddr_perf_probe(struct platform_device *pdev)
>   {
> +	const struct of_device_id *of_id;
>   	struct ddr_pmu *pmu;
>   	struct device_node *np;
>   	void __iomem *base;
> @@ -472,6 +500,12 @@ static int ddr_perf_probe(struct platform_device *pdev)
>   	if (!name)
>   		return -ENOMEM;
>   
> +	of_id = of_match_device(imx_ddr_pmu_dt_ids, &pdev->dev);
> +	if (of_id)
> +		pmu->devtype_data = of_id->data;

Use of_device_get_match_data()...

> +	else
> +		return -ENODEV;

...and either way this should be impossible - if there was no match, the 
OF code would never have called our probe routine in the first place.

Robin.

> +
>   	pmu->cpu = raw_smp_processor_id();
>   	ret = cpuhp_setup_state_multi(CPUHP_AP_ONLINE_DYN,
>   				      DDR_CPUHP_CB_NAME,
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
