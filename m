Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7540F1DA000
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 20:51:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gAPGEHDAogtEsacv6Ce/PDG3loP9qCU5NJW5LsWvI2Y=; b=CMsgmslA0c8Yjh
	OzbOYgaOqSu3iXdYa08hhq2h7U54OhjYO4VcpmovgRSqS2wlRAx6Wyj0lsfGuts6usHPjEItx2Lhi
	zP3O7r+swis5qUwJYs8fDCTu2eKE/KInZd5bij46fBAPiT6+ic++IlOglJqeYWmEx3SRBezWy0pkR
	fjky8NdEAV4uOD6DPfS+F7QI52t8v6hDNUr1EnFQxyXJY14eJkTLJc5NB5hvDsjm4ekCZqMqia7f+
	V5aYiLZxY/WB0pHiFPu4aTiMiqEJrV2JXNyfwsgh2NxWx6D0BaV0S2879ExM2YS8RNT4bRMvVqIcf
	5YJ1cG2LO5F8SpGZoRgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb7L3-0007tf-7i; Tue, 19 May 2020 18:51:41 +0000
Received: from mail-io1-f66.google.com ([209.85.166.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb7Kp-0007sw-LB
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 18:51:28 +0000
Received: by mail-io1-f66.google.com with SMTP id w25so261824iol.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 May 2020 11:51:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=y+rThpqnouaarZJBNHrzhWUMK5mQzFEpA9EtnE8iwrE=;
 b=teWwSDjmh7x0HNmezs1FXsNh8ysnsqeyERbbR0DtRXGuEkvrUNfCIYEBxhI2rBr7lL
 E2oBlMSV8YsKXyUSf2dK5S/Y/Yf6kor0TncxnuvWZemK31FKecQjSoFC7EVoIxwS407W
 wjumws1KW2wdW0/Mo7pk42d7at4oYJFParKm8Xuq1Sp5SGID1h0MFzpAvGRLEVo6eql9
 R/VUUX0mwYFx7XmSSpTm3w1y1WjXTShfpNDe8ckOvS4/Mq5q+b63J0jnFwWEOsHRGmDU
 ynaa4Zkl/pZMQ0tV5JIVqkizfWzayhaAK9E1Rz5EVg5O+V9nOH3E18pAOAtu7C/ZRF+Z
 cNqw==
X-Gm-Message-State: AOAM530/7oZKv40hh2YSezp/6iM/TiUjSk9eb/InWrI5j673f3E83F4M
 cdPpS1GpYYxQZd6vcJqBgQ==
X-Google-Smtp-Source: ABdhPJwPb2x/YMEXlek6x8vMJYuRaAHgny4Tr3Xx9zRdVi6oySA91PyJNTmhCwbd10bu5cIqYa1+5Q==
X-Received: by 2002:a5d:9d51:: with SMTP id k17mr300495iok.85.1589914286772;
 Tue, 19 May 2020 11:51:26 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id f18sm176314ioh.30.2020.05.19.11.51.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 May 2020 11:51:26 -0700 (PDT)
Received: (nullmailer pid 463879 invoked by uid 1000);
 Tue, 19 May 2020 18:51:25 -0000
Date: Tue, 19 May 2020 12:51:25 -0600
From: Rob Herring <robh@kernel.org>
To: Joakim Zhang <qiangqing.zhang@nxp.com>
Subject: Re: [PATCH V1 RESEND 1/3] perf/imx_ddr: Add system PMU identifier
 for userspace
Message-ID: <20200519185125.GB453195@bogus>
References: <20200512073115.14177-1-qiangqing.zhang@nxp.com>
 <20200512073115.14177-2-qiangqing.zhang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200512073115.14177-2-qiangqing.zhang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_115127_690059_806228DC 
X-CRM114-Status: GOOD (  18.31  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.66 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, will@kernel.org,
 john.garry@huawei.com, linux-kernel@vger.kernel.org, linux-imx@nxp.com,
 shawnguo@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 12, 2020 at 03:31:13PM +0800, Joakim Zhang wrote:
> The DDR Perf for i.MX8 is a system PMU whose axi id would different from
> SoC to SoC. Need expose system PMU identifier for userspace which refer
> to /sys/bus/event_source/devices/<PMU DEVICE>/identifier.

Why not just expose the AXI ID if that's what's different?

> 
> Reviewed-by: John Garry <john.garry@huawei.com>
> Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>
> ---
>  drivers/perf/fsl_imx8_ddr_perf.c | 45 +++++++++++++++++++++++++++++---
>  1 file changed, 42 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/perf/fsl_imx8_ddr_perf.c b/drivers/perf/fsl_imx8_ddr_perf.c
> index 95dca2cb5265..88addbffbbd0 100644
> --- a/drivers/perf/fsl_imx8_ddr_perf.c
> +++ b/drivers/perf/fsl_imx8_ddr_perf.c
> @@ -50,21 +50,38 @@ static DEFINE_IDA(ddr_ida);
>  
>  struct fsl_ddr_devtype_data {
>  	unsigned int quirks;    /* quirks needed for different DDR Perf core */
> +	const char *identifier;	/* system PMU identifier for userspace */
>  };
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
>  	.quirks = DDR_CAP_AXI_ID_FILTER,
> +	.identifier = "i.MX8MN",
>  };
>  
>  static const struct fsl_ddr_devtype_data imx8mp_devtype_data = {
>  	.quirks = DDR_CAP_AXI_ID_FILTER_ENHANCED,
> +	.identifier = "i.MX8MP",
>  };
>  
>  static const struct of_device_id imx_ddr_pmu_dt_ids[] = {
>  	{ .compatible = "fsl,imx8-ddr-pmu", .data = &imx8_devtype_data},
> -	{ .compatible = "fsl,imx8m-ddr-pmu", .data = &imx8m_devtype_data},

You need to keep the old one for compatibility.

> +	{ .compatible = "fsl,imx8mq-ddr-pmu", .data = &imx8mq_devtype_data},
> +	{ .compatible = "fsl,imx8mm-ddr-pmu", .data = &imx8mm_devtype_data},
> +	{ .compatible = "fsl,imx8mn-ddr-pmu", .data = &imx8mn_devtype_data},
>  	{ .compatible = "fsl,imx8mp-ddr-pmu", .data = &imx8mp_devtype_data},
>  	{ /* sentinel */ }
>  };
> @@ -84,6 +101,27 @@ struct ddr_pmu {
>  	int id;
>  };
>  
> +static ssize_t ddr_perf_identifier_show(struct device *dev,
> +					struct device_attribute *attr,
> +					char *page)
> +{
> +	struct ddr_pmu *pmu = dev_get_drvdata(dev);
> +
> +	return sprintf(page, "%s\n", pmu->devtype_data->identifier);

Why do we need yet another way to identify the SoC from userspace?

> +}
> +
> +static struct device_attribute ddr_perf_identifier_attr =
> +	__ATTR(identifier, 0444, ddr_perf_identifier_show, NULL);

sysfs attributes are supposed to be documented.

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
> @@ -237,6 +275,7 @@ static const struct attribute_group *attr_groups[] = {
>  	&ddr_perf_format_attr_group,
>  	&ddr_perf_cpumask_attr_group,
>  	&ddr_perf_filter_cap_attr_group,
> +	&ddr_perf_identifier_attr_group,
>  	NULL,
>  };
>  
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
