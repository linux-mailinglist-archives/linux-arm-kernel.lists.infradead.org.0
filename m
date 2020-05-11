Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AA961CDBD4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 15:52:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2j2mrN9XvSiHoBVUMN8lg5MJoL4DCbIYBT+U3SBHRSg=; b=Z4RCNOwiwqMgjLt+oITmCGDSH
	daCdpgJCu/pGFB45iZj35pVdr7nqf3AqlAWPf1vZ/UPd1hWlqvD8EICXu06Me/BoUYU22pODKs//s
	pdYf1CXwQHrsppzwJYGzSKkbx78oBTcrD9z1AaZ1DmyjoKpTMxiUVx+/YOI1YdUaFvSZn9zeHC+dE
	MxlDaSj9DNSltM1MhEVessA2991wA57FXh1g/QIjC544P81RXGBHwEN/uM0uOvHMej64Hua3oO83q
	oLEBH6o+lv7SK1o8cuS9FWszEdNi6+4cV0iBx07jJ6VFLOyV0/3Sw96gyr9z2dV5UiQarAPxyhfvM
	GyCiec0jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY8rG-00009r-TB; Mon, 11 May 2020 13:52:38 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY8r8-00009A-5u
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 13:52:31 +0000
Received: from lhreml724-chm.china.huawei.com (unknown [172.18.7.108])
 by Forcepoint Email with ESMTP id 3254351F84B066C3D5AD;
 Mon, 11 May 2020 14:52:24 +0100 (IST)
Received: from [127.0.0.1] (10.47.0.142) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1913.5; Mon, 11 May
 2020 14:52:23 +0100
Subject: Re: [PATCH V1 1/3] perf/imx_ddr: Add system PMU identifier for
 userspace
To: Joakim Zhang <qiangqing.zhang@nxp.com>, <will@kernel.org>,
 <mark.rutland@arm.com>
References: <20200511125713.13536-1-qiangqing.zhang@nxp.com>
 <20200511125713.13536-2-qiangqing.zhang@nxp.com>
From: John Garry <john.garry@huawei.com>
Message-ID: <a4f6075d-9d81-dc81-c574-856a8bdf4087@huawei.com>
Date: Mon, 11 May 2020 14:51:32 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <20200511125713.13536-2-qiangqing.zhang@nxp.com>
Content-Language: en-US
X-Originating-IP: [10.47.0.142]
X-ClientProxiedBy: lhreml705-chm.china.huawei.com (10.201.108.54) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_065230_361914_D5ABCE72 
X-CRM114-Status: GOOD (  17.38  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [185.176.76.210 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-imx@nxp.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/05/2020 13:57, Joakim Zhang wrote:
> The DDR Perf for i.MX8 is a system PMU whose axi id would different from
> SoC to SoC. Need expose system PMU identifier for userspace which refer
> to /sys/bus/event_source/devices/<PMU DEVICE>/identifier.
> 
> Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>

I think that you should have cc'ed DT maintainers/list for this series 
because of the dt parts. I am not sure on any policy of removing compat 
string support (in latter patches).

Apart from that:

Reviewed-by: John Garry <john.garry@huawei.com>

> ---
>   drivers/perf/fsl_imx8_ddr_perf.c | 45 +++++++++++++++++++++++++++++---
>   1 file changed, 42 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/perf/fsl_imx8_ddr_perf.c b/drivers/perf/fsl_imx8_ddr_perf.c
> index 95dca2cb5265..88addbffbbd0 100644
> --- a/drivers/perf/fsl_imx8_ddr_perf.c
> +++ b/drivers/perf/fsl_imx8_ddr_perf.c
> @@ -50,21 +50,38 @@ static DEFINE_IDA(ddr_ida);
>   
>   struct fsl_ddr_devtype_data {
>   	unsigned int quirks;    /* quirks needed for different DDR Perf core */
> +	const char *identifier;	/* system PMU identifier for userspace */
>   };
>   
> -static const struct fsl_ddr_devtype_data imx8_devtype_data;
> +static const struct fsl_ddr_devtype_data imx8_devtype_data = {
> +	.identifier = "i.MX8",
> +};
> +
> +static const struct fsl_ddr_devtype_data imx8mq_devtype_data = {
> +	.quirks = DDR_CAP_AXI_ID_FILTER,
> +	.identifier = "i.MX8MQ",
> +};
> +
> +static const struct fsl_ddr_devtype_data imx8mm_devtype_data = {
> +	.quirks = DDR_CAP_AXI_ID_FILTER,
> +	.identifier = "i.MX8MM",
> +};
>   
> -static const struct fsl_ddr_devtype_data imx8m_devtype_data = {
> +static const struct fsl_ddr_devtype_data imx8mn_devtype_data = {
>   	.quirks = DDR_CAP_AXI_ID_FILTER,
> +	.identifier = "i.MX8MN",
>   };
>   
>   static const struct fsl_ddr_devtype_data imx8mp_devtype_data = {
>   	.quirks = DDR_CAP_AXI_ID_FILTER_ENHANCED,
> +	.identifier = "i.MX8MP",
>   };
>   
>   static const struct of_device_id imx_ddr_pmu_dt_ids[] = {
>   	{ .compatible = "fsl,imx8-ddr-pmu", .data = &imx8_devtype_data},
> -	{ .compatible = "fsl,imx8m-ddr-pmu", .data = &imx8m_devtype_data},
> +	{ .compatible = "fsl,imx8mq-ddr-pmu", .data = &imx8mq_devtype_data},
> +	{ .compatible = "fsl,imx8mm-ddr-pmu", .data = &imx8mm_devtype_data},
> +	{ .compatible = "fsl,imx8mn-ddr-pmu", .data = &imx8mn_devtype_data},
>   	{ .compatible = "fsl,imx8mp-ddr-pmu", .data = &imx8mp_devtype_data},
>   	{ /* sentinel */ }
>   };
> @@ -84,6 +101,27 @@ struct ddr_pmu {
>   	int id;
>   };
>   
> +static ssize_t ddr_perf_identifier_show(struct device *dev,
> +					struct device_attribute *attr,
> +					char *page)
> +{
> +	struct ddr_pmu *pmu = dev_get_drvdata(dev);
> +
> +	return sprintf(page, "%s\n", pmu->devtype_data->identifier);
> +}
> +
> +static struct device_attribute ddr_perf_identifier_attr =
> +	__ATTR(identifier, 0444, ddr_perf_identifier_show, NULL);
> +
> +static struct attribute *ddr_perf_identifier_attrs[] = {
> +	&ddr_perf_identifier_attr.attr,
> +	NULL,

nit: no need for ',' on sentinel

> +};
> +
> +static struct attribute_group ddr_perf_identifier_attr_group = {
> +	.attrs = ddr_perf_identifier_attrs,
> +};
> +
>   enum ddr_perf_filter_capabilities {
>   	PERF_CAP_AXI_ID_FILTER = 0,
>   	PERF_CAP_AXI_ID_FILTER_ENHANCED,
> @@ -237,6 +275,7 @@ static const struct attribute_group *attr_groups[] = {
>   	&ddr_perf_format_attr_group,
>   	&ddr_perf_cpumask_attr_group,
>   	&ddr_perf_filter_cap_attr_group,
> +	&ddr_perf_identifier_attr_group,
>   	NULL,
>   };
>   
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
