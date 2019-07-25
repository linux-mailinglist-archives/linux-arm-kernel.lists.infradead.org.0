Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 072A47537B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 18:03:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9ATmYfjn4IYwh2rcL6yGMf3hTnxHjPeGj8LikskMiOo=; b=E4oWHqWQOWYFWF
	21vEe1EA1ZxDRB0iNo/LNJM6xFoX/3OHj9cGiD4ABL4DX+AhzAgH55t94OXmJ5ao094jXNyaXp7Qj
	H6UEpnJXCg+NLXoml3KoSEu4CA7+BdBUdI/YQiv+8DJI+xGcRPBwvGTUAULqvrOXNosHdUoX593oj
	s3lAKUu5F6r0Km/1PzM8V8I7vzHPHQvYtZCl6pjC78mBPv1CocPnCh5UYRBPZdLxmhaUG71iG4iEK
	9pzq1cHGifwYlQKh8VpxoNzSk6PfZGL8pSfuU8EWECk3sx4MvbVbs/BxGulhWpEj8vbc13EWR1x8o
	J70rV1KcPHpPgPrjaO0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqgDb-0002jO-V9; Thu, 25 Jul 2019 16:03:48 +0000
Received: from mail-eopbgr40058.outbound.protection.outlook.com ([40.107.4.58]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqgDN-0002iy-NK
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 16:03:36 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kJMRoDHx1DxXEDgSfUX/6M2a32huzdh4RKx0FgteOL5rxpamQWsCX7YOOaWK5nYDDn5sie/oFfn4kt9PuUsqI40Y9u0t7pyeOXJwLRWWWSoFxThnjMnbPikjuhwM76AHG7ngEnz5tODfhXaFKqW+jrtmSkluQxy2qG8dLgD2Qw0AHEiYQLgq5gC/SBmTU3FWc9JA8F7ojHllnDmCCcpuTyKCJlOmc+U+pfurV8TGfZYsUHUVfgUkPpFzY6QqOiuzYkwohxyEqdrE+iDfjWZC5Lu3HRhQkSvqJs+jf7mZPqtwDBL7HeaNHhC1fSvWTKvQE4oSg9dOlYt80rmYlcKGDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ralz0qqPvOR1fpaOlG0bafwb9Y+r/UabQ7AQQFxAg5k=;
 b=URbq0bOJM3/CBbEK7ZZo2ttEJNgfNRUk5bEurQKG/8uLHBIYCGzBWbN+M4quGGG72R3S7lD4s7jgrq7NC7UG470ylP037OT3CUhjIGcMxL9MafRPbXTLz3HGp5wuSEUxFOGOG8ba11EnAA1R/oWIaLAohjZDTrTKxwP201znAVbjI5trNP9x3P0TLgsNEXwzbh5JatuJDrvCtbTOcV0QST+GIHLhXGzJGtiKmnMJsh3+DD+DmaQ/gS28zPxudBYXKbPA63UlgG1jJmJydHdfMoGlvxw5lxAOSIHz6DnjK56PGNrnDVLOmqiv1qNuu2LwjYiiTAQLK2sQUT+YF9CSjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ralz0qqPvOR1fpaOlG0bafwb9Y+r/UabQ7AQQFxAg5k=;
 b=PkGQpDTwobcjXBBsc5LDP5+Nvmt3JbBip1iEXCeC9GLLwqO1Z7h4ghzYFFndtmCqOokCSOR429lcNYbCjHIHvoTDmSFVXhx8CAwIO+bX4roci0w93qIdjF9ST1+ZfNNfPiR0xf0VZh6wbXR0u+MtHw2G2GXRS2jqQhypAbjO648=
Received: from VI1PR04MB4910.eurprd04.prod.outlook.com (20.177.49.159) by
 VI1PR04MB6111.eurprd04.prod.outlook.com (20.179.26.19) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.11; Thu, 25 Jul 2019 16:03:26 +0000
Received: from VI1PR04MB4910.eurprd04.prod.outlook.com
 ([fe80::8577:908d:d4fa:67f4]) by VI1PR04MB4910.eurprd04.prod.outlook.com
 ([fe80::8577:908d:d4fa:67f4%4]) with mapi id 15.20.2094.013; Thu, 25 Jul 2019
 16:03:26 +0000
From: Frank Li <frank.li@nxp.com>
To: Joakim Zhang <qiangqing.zhang@nxp.com>, "robin.murphy@arm.com"
 <robin.murphy@arm.com>, "will@kernel.org" <will@kernel.org>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>
Subject: RE: [PATCH V2] perf: imx8_ddr_perf: add AXI ID filter support
Thread-Topic: [PATCH V2] perf: imx8_ddr_perf: add AXI ID filter support
Thread-Index: AQHVQrmwg8LLFjQP3USIMmib/ZNviKbbfp7g
Date: Thu, 25 Jul 2019 16:03:26 +0000
Message-ID: <VI1PR04MB4910C1B15907CD831F6D11C188C10@VI1PR04MB4910.eurprd04.prod.outlook.com>
References: <20190725071955.19117-1-qiangqing.zhang@nxp.com>
In-Reply-To: <20190725071955.19117-1-qiangqing.zhang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=frank.li@nxp.com; 
x-originating-ip: [64.157.242.222]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d7652a02-578d-4cba-7871-08d71119a09f
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB6111; 
x-ms-traffictypediagnostic: VI1PR04MB6111:
x-microsoft-antispam-prvs: <VI1PR04MB6111955CB72C117FF2710EC288C10@VI1PR04MB6111.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 0109D382B0
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(366004)(136003)(396003)(39860400002)(189003)(199004)(54534003)(13464003)(2501003)(74316002)(478600001)(486006)(476003)(76176011)(256004)(66066001)(229853002)(6246003)(6436002)(305945005)(7736002)(71190400001)(71200400001)(66946007)(14444005)(2906002)(11346002)(446003)(66556008)(81156014)(81166006)(7696005)(66476007)(76116006)(4326008)(3846002)(64756008)(54906003)(53936002)(53546011)(6506007)(68736007)(99286004)(26005)(8936002)(14454004)(186003)(25786009)(102836004)(66446008)(86362001)(2201001)(5660300002)(52536014)(44832011)(33656002)(316002)(55016002)(6116002)(9686003)(8676002)(110136005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB6111;
 H:VI1PR04MB4910.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: /pbsyRMR+11ZYXUNaWedFVGsK4khxm0oXS1/78+wsFJmmIJjlnR0kg5eYoRIGHDhumkVr0TdC65d4EiDvFg3FFIITRDrLTKAYOHIFPU7Be7ZqWETPT71RIjGq+ZdLB4KKbZ7AF2vUl4q+MI6/fkKicEWAhiI376+Es4xPbY0o8TMW7caDSbsVGw/GyeYn6bc5M+liGWPmUzRhppvf4GGJ7MkmN247lgW30Z7e4WPG1KJ4UcN8FVWkCGMBvUEJ6Njr2wQIIknQkPZ9UDqGz7x65RYFsWivWSq1a8QOyxSmlcpjN8nSfRjYo58QFFymEV7WX926mnqNVUTRMmUaf7UcLmb2bwNTb0eBic+Hk752qtNyWNhNYe2gRtgZgEf3hcErKFsfXQFX/nVKETqoBMAzghZirBZMZfIQrFN3+FS26g=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d7652a02-578d-4cba-7871-08d71119a09f
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jul 2019 16:03:26.1445 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: frank.li@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB6111
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_090334_058046_528E9A7D 
X-CRM114-Status: GOOD (  22.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.58 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: Joakim Zhang
> Sent: Thursday, July 25, 2019 2:22 AM
> To: robin.murphy@arm.com; will@kernel.org; mark.rutland@arm.com; Frank Li
> <frank.li@nxp.com>
> Cc: linux-arm-kernel@lists.infradead.org; dl-linux-imx <linux-imx@nxp.com>;
> kernel@pengutronix.de; Joakim Zhang <qiangqing.zhang@nxp.com>
> Subject: [PATCH V2] perf: imx8_ddr_perf: add AXI ID filter support
> 
> AXI filtering is used by CSV modes 0x41 and 0x42 to count reads or writes with
> an ARID or AXID matching filter setting. Granularity is at subsystem level.
> Implementation does not allow filtring between masters within a subsystem.
> Filter is defined with 2 configuration registers.
> 
> --AXI_ID defines AxID matching value
> --AXI_MASKING defines which bits of AxID are meaningful for the matching
> 
> When non-masked bits are matching corresponding AXI_ID bits then counter is
> incremented. This filter allows counting read or write access from a subsystem
> or multiple subsystems.
> 
> Perf counter is incremented if AxID && AXI_MASKING == AXI_ID &&
> AXI_MASKING
> 
> AXI_ID and AXI_MASKING are mapped on DPCR1 register in performance
> counter.
> 
> Read and write AXI ID filter can't be specified at the same time as this filter is
> shared between counters.
> 
> e.g.
> perf stat -a -e imx8_ddr0/axi-id-read,axi_id=0xMMMMDDDD/ cmd
> MMMM: AXI_MASKING
> DDDD: AXI_ID
> 
> ChangeLog:
> V1 -> V2:
> 	* add error log if user specifies read/write AXI ID filter at
> 	the same time.
> 	* of_device_get_match_data() instead of of_match_device(), and
> 	remove the check of return value.
> 
> Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>
> ---
>  drivers/perf/fsl_imx8_ddr_perf.c | 48 ++++++++++++++++++++++++++++++--
>  1 file changed, 46 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/perf/fsl_imx8_ddr_perf.c b/drivers/perf/fsl_imx8_ddr_perf.c
> index 63fe21600072..da851da74cbd 100644
> --- a/drivers/perf/fsl_imx8_ddr_perf.c
> +++ b/drivers/perf/fsl_imx8_ddr_perf.c
> @@ -42,9 +42,22 @@
> 
>  static DEFINE_IDA(ddr_ida);
> 
> +/* DDR Perf hardware feature */
> +#define DDR_CAP_AXI_ID_FILTER		0x1	/* support AXI ID filter
> */
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
> 
> @@ -57,6 +70,8 @@ struct ddr_pmu {
>  	struct perf_event *events[NUM_COUNTERS];
>  	int active_events;
>  	enum cpuhp_state cpuhp_state;
> +	const struct fsl_ddr_devtype_data *devtype_data;
> +	bool axi_id_read, axi_id_write;
>  	int irq;
>  	int id;
>  };
> @@ -128,6 +143,8 @@ static struct attribute *ddr_perf_events_attrs[] = {
>  	IMX8_DDR_PMU_EVENT_ATTR(refresh, 0x37),
>  	IMX8_DDR_PMU_EVENT_ATTR(write, 0x38),
>  	IMX8_DDR_PMU_EVENT_ATTR(raw-hazard, 0x39),
> +	IMX8_DDR_PMU_EVENT_ATTR(axi-id-read, 0x41),
> +	IMX8_DDR_PMU_EVENT_ATTR(axi-id-write, 0x42),
>  	NULL,
>  };
> 
> @@ -137,9 +154,11 @@ static struct attribute_group
> ddr_perf_events_attr_group = {  };
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
> @@ -274,6 +293,22 @@ static void ddr_perf_event_start(struct perf_event
> *event, int flags)
>  	struct hw_perf_event *hwc = &event->hw;
>  	int counter = hwc->idx;
> 
> +	if (pmu->devtype_data->quirks & DDR_CAP_AXI_ID_FILTER) {
> +		if (event->attr.config == 0x41)
> +			pmu->axi_id_read = true;
> +
> +		if (event->attr.config == 0x42)
> +			pmu->axi_id_write = true;
> +
> +		if (pmu->axi_id_read && pmu->axi_id_write) {
> +			dev_err(pmu->dev, "axi-id-read/write event can't be
> specified at the same time\n");

 axi_id can be the same value for 0x41 and 0x42.
 It should be checked at event_add. 
 So it provide user early error information.  

Best regards
Frank Li

> +		} else {
> +			int val = event->attr.config1;
> +
> +			writel(val, pmu->base + COUNTER_DPCR1);
> +		}
> +	}
> +
>  	local64_set(&hwc->prev_count, 0);
> 
>  	ddr_perf_counter_enable(pmu, event->attr.config, counter, true); @@ -
> 316,6 +351,11 @@ static void ddr_perf_event_stop(struct perf_event *event,
> int flags)
>  	ddr_perf_event_update(event);
> 
>  	hwc->state |= PERF_HES_STOPPED;
> +
> +	if (pmu->devtype_data->quirks & DDR_CAP_AXI_ID_FILTER) {
> +		pmu->axi_id_read = false;
> +		pmu->axi_id_write = false;
> +	}
>  }
> 
>  static void ddr_perf_event_del(struct perf_event *event, int flags) @@ -445,6
> +485,7 @@ static int ddr_perf_offline_cpu(unsigned int cpu, struct hlist_node
> *node)
> 
>  static int ddr_perf_probe(struct platform_device *pdev)  {
> +	const struct fsl_ddr_devtype_data *data;
>  	struct ddr_pmu *pmu;
>  	struct device_node *np;
>  	void __iomem *base;
> @@ -472,6 +513,9 @@ static int ddr_perf_probe(struct platform_device *pdev)
>  	if (!name)
>  		return -ENOMEM;
> 
> +	data = of_device_get_match_data(&pdev->dev);
> +	pmu->devtype_data = data;
> +
>  	pmu->cpu = raw_smp_processor_id();
>  	ret = cpuhp_setup_state_multi(CPUHP_AP_ONLINE_DYN,
>  				      DDR_CPUHP_CB_NAME,
> --
> 2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
