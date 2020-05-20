Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9A2A1DAC6F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 09:42:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dN+P0dohF0Ymser+CDb+875ywQdkTV7hLwMb0pFcJiw=; b=o9AAeXFs0c+SxB
	aBnWqqyrZiOp8upGDEZQP4arBDXIUekbFO5N1RvFlHNl62oDdatYSgjjXYXHdYNx+A/6GgouGjSyl
	MOpik6i4CZzCTMuqKC/oQsRf5xtO+JuAPnNtkJCCfM1RVxo+bJ+eCnOoVw/2jfjDccv+Pr0PwYpUB
	goKvkq64dQWLSuvIzPqZW1On3Hom2QvcugSz/nzKY4ElaYxDCBj79VDBbrJ+JQQLsjeFOKnrWC8cF
	zfwdzBCVnsOVoqF4slxzs8WxQyVBGZA56jd3UzrmLw+Y3unOqHI9U50awwh9L3IsNzAW6V5uKnLfc
	B2GpNXTcU7fdzjDslSNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbJMe-0000eK-PR; Wed, 20 May 2020 07:42:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbJMV-0000bd-T5
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 07:42:01 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A0B8D207D3;
 Wed, 20 May 2020 07:41:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589960519;
 bh=lF7qPacJPzgODON1dCxvm8X9ZeJrLrmX+CSPXciqLRk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Ia0TwmQnc6ZZdJmV24OWMsg7Vr8OSYGwWaXu49hX7APgJbDlXdtnE8XRmdPZjh+Td
 mFYmbVMbkVbN3pv+cP8dO4Et3zp18+lTpVb30ob/KP+nfQxSRhq06XtSKbJJr8Yi5M
 GeVUWLlfMFOIL0vYqmCLv4LzDGdHbWIH2bBizYf0=
Date: Wed, 20 May 2020 08:41:54 +0100
From: Will Deacon <will@kernel.org>
To: Joakim Zhang <qiangqing.zhang@nxp.com>
Subject: Re: [PATCH V2 2/3] perf/imx_ddr: Add system PMU identifier for
 userspace
Message-ID: <20200520074154.GA23818@willie-the-truck>
References: <20200520025619.687-1-qiangqing.zhang@nxp.com>
 <20200520025619.687-3-qiangqing.zhang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200520025619.687-3-qiangqing.zhang@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_004159_976550_F3FDB936 
X-CRM114-Status: GOOD (  17.93  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, john.garry@huawei.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, linux-imx@nxp.com,
 shawnguo@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 20, 2020 at 10:56:18AM +0800, Joakim Zhang wrote:
> The DDR Perf for i.MX8 is a system PMU whose axi id would different from
> SoC to SoC. Need expose system PMU identifier for userspace which refer
> to /sys/bus/event_source/devices/<PMU DEVICE>/identifier.
> 
> Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>
> ---
>  drivers/perf/fsl_imx8_ddr_perf.c | 29 +++++++++++++++++++++++++++++
>  1 file changed, 29 insertions(+)
> 
> diff --git a/drivers/perf/fsl_imx8_ddr_perf.c b/drivers/perf/fsl_imx8_ddr_perf.c
> index 90884d14f95f..ba523a94f4d7 100644
> --- a/drivers/perf/fsl_imx8_ddr_perf.c
> +++ b/drivers/perf/fsl_imx8_ddr_perf.c
> @@ -76,6 +76,7 @@ struct ddr_pmu {
>  	unsigned int cpu;
>  	struct	hlist_node node;
>  	struct	device *dev;
> +	const char *identifier;
>  	struct perf_event *events[NUM_COUNTERS];
>  	int active_events;
>  	enum cpuhp_state cpuhp_state;
> @@ -84,6 +85,27 @@ struct ddr_pmu {
>  	int id;
>  };
>  
> +static ssize_t ddr_perf_identifier_show(struct device *dev,
> +					struct device_attribute *attr,
> +					char *page)
> +{
> +	struct ddr_pmu *pmu = dev_get_drvdata(dev);
> +
> +	return sprintf(page, "%s\n", pmu->identifier);
> +}
> +
> +static struct device_attribute ddr_perf_identifier_attr =
> +	__ATTR(identifier, 0444, ddr_perf_identifier_show, NULL);
> +
> +static struct attribute *ddr_perf_identifier_attrs[] = {
> +	&ddr_perf_identifier_attr.attr,
> +	NULL,
> +};
> +
> +static struct attribute_group ddr_perf_identifier_attr_group = {
> +	.attrs = ddr_perf_identifier_attrs,
> +};
> +
>  enum ddr_perf_filter_capabilities {
>  	PERF_CAP_AXI_ID_FILTER = 0,
>  	PERF_CAP_AXI_ID_FILTER_ENHANCED,
> @@ -237,6 +259,7 @@ static const struct attribute_group *attr_groups[] = {
>  	&ddr_perf_format_attr_group,
>  	&ddr_perf_cpumask_attr_group,
>  	&ddr_perf_filter_cap_attr_group,
> +	&ddr_perf_identifier_attr_group,
>  	NULL,
>  };
>  
> @@ -601,6 +624,7 @@ static int ddr_perf_probe(struct platform_device *pdev)
>  	struct ddr_pmu *pmu;
>  	struct device_node *np;
>  	void __iomem *base;
> +	const char *identifier = NULL;
>  	char *name;
>  	int num;
>  	int ret;
> @@ -620,6 +644,11 @@ static int ddr_perf_probe(struct platform_device *pdev)
>  
>  	platform_set_drvdata(pdev, pmu);
>  
> +	ret = of_property_read_string(np, "identifier", &identifier);
> +	if (ret < 0)
> +		dev_warn(&pdev->dev, "Failed to get identifier\n");
> +	pmu->identifier = identifier;

I think this is exactly what Rob was objecting to when he said "yet another
way to identify the SoC from userspace". I've asked him on the other thread
as to what the best way to do this is.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
