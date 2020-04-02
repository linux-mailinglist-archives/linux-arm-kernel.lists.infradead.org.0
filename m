Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3273019CCD2
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 00:25:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=N/vaOq0ByFqtgzYySQcOTR4KsONp4JG3MHtcznusqNI=; b=nyFtaKxnDHiU9p
	4ReEChcriRm+rWHdV9QaRVL0nldz7af8hbV5VmknfeS6xz8LPBCIgrALdo+xexcjqMfV1sxGx3AeG
	NXsyfSJA2IklyeN9x+xsriaF0tKcOYtyNnONIVbCTjD+6ziaTPjAfI+7jTzrnTpl4OZk8rYaNgbMl
	5njC8IBFzA8C0vCLOgEzBYKwoRRDaboLWwV/IEn336BVjFckiZBhu8NGpqTt3h1rVQqtk5F4DCVE+
	1DK+rpGtJgWTQngkx/1G6qebcA1B4Ju3xdCh9U4MovUv/UxnRYnemXLrXHFVi0trgQmvVU3H2BgQK
	f5mwzgJnLz7gtK24iJug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jK8Gy-0002X4-Db; Thu, 02 Apr 2020 22:25:16 +0000
Received: from mail-eopbgr70058.outbound.protection.outlook.com ([40.107.7.58]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jK8Gk-0001Mx-IU
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Apr 2020 22:25:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j7VCdZ7tdBJM1VOYDGsLAX5zc+Sssfw4wITNFWr+AG3Wwj/A81zcI4+zQxdIL/IRU0anok5vh/+2diT/GXl8blkKY0BskDTmvXsSmcChFh9nxhky60pCuNL4AFXHi1yHvxPQ0FB6fw+kxPWfYvg/y6RYF71FypPg4t4sIKCGkbb0qmkqLq3n5SKFQWpkfS0kiXW1H7rOClnopzAV9W3HZqc6FfdvgJc+kgXqliADhAeViL90cVuSj26YmiwoBaLAbrw3JtZZI94hW18mdwnmTN/N3U/0/mgnU4nVfhrKesZ3ztl30wK6fN+DsyB7CFd1bDJWCpOhmYBfvKD+E0aWkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=km2BsHMZLhTaxd/4A61/+SWGTKVKvuFNDfPBK7qroqE=;
 b=BayV+i9BzQXeQbShZiCejE3xwKSOn/vijpkeWuJO6mOYvLRIRJEb5n0izHxoXXt+DNi1gZtEO1e3ZF6hFtU1kYRwT79jX8skj/pVLwMpzmxxYsvL2FFecAaSQMwRVjY2GIUo/NRj3iCSBAmpJO4pxU7QTfwkF3ySVogcZV3w8IjKySvMh3T+p0YUPX0U5LbYX50BkCNXr1j6zWhs/g8leoLptEPVpKS85LVDGxW7GpdjuLUDpEqtFZ4phEb/Pt81yd3Pj0b8X6HFJQ6UZv+9vIukJwRMNk3pV5ulu/B2DxZ+viKUUMxoJotDt/20F7DyXCXwlr+6KbjIyYQM8Xrhlg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=km2BsHMZLhTaxd/4A61/+SWGTKVKvuFNDfPBK7qroqE=;
 b=L/Ln6UflczN2Myf2G6Cbfb6BMaAaihzbiasFigFw+aPIhomGWLBuELc5R1Y99BorCGHxYG6L/IIZuitXZlEVNES+SY72IpFOC7+LABBkCbrYV9PWWPcYVHblb2+CqoJXLwDSB/dq+t9HyW5Mz4+jQpKG3isMK3P2yV1DcoThbO8=
Received: from VI1PR04MB6941.eurprd04.prod.outlook.com (2603:10a6:803:12e::23)
 by VI1PR04MB4000.eurprd04.prod.outlook.com (2603:10a6:803:4c::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.16; Thu, 2 Apr
 2020 22:24:58 +0000
Received: from VI1PR04MB6941.eurprd04.prod.outlook.com
 ([fe80::289c:fdf8:faf0:3200]) by VI1PR04MB6941.eurprd04.prod.outlook.com
 ([fe80::289c:fdf8:faf0:3200%2]) with mapi id 15.20.2878.016; Thu, 2 Apr 2020
 22:24:58 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Georgi Djakov <georgi.djakov@linaro.org>
Subject: Re: [PATCH v2 5/8] interconnect: imx: Add platform driver for imx8mm
Thread-Topic: [PATCH v2 5/8] interconnect: imx: Add platform driver for imx8mm
Thread-Index: AQHWCDJ+B2dKXUPn9UGLA0y4/LK8YA==
Date: Thu, 2 Apr 2020 22:24:57 +0000
Message-ID: <VI1PR04MB6941B0A0FE6FA2F3BD9E4574EEC60@VI1PR04MB6941.eurprd04.prod.outlook.com>
References: <cover.1585751281.git.leonard.crestez@nxp.com>
 <823cd307bea7416cf7df804bbcb77ab2887e0687.1585751281.git.leonard.crestez@nxp.com>
 <512ce59a-5718-3fab-1968-bbe3c5b38120@linaro.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [92.121.36.198]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 82d65e4c-edec-4f80-fcd8-08d7d754ad46
x-ms-traffictypediagnostic: VI1PR04MB4000:|VI1PR04MB4000:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB4000B9C7BA1C3BBAA063018EEEC60@VI1PR04MB4000.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 0361212EA8
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR04MB6941.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(346002)(376002)(396003)(136003)(366004)(39860400002)(53546011)(26005)(81166006)(5660300002)(8676002)(478600001)(7416002)(44832011)(81156014)(54906003)(71200400001)(8936002)(4326008)(52536014)(6916009)(7696005)(86362001)(66556008)(186003)(66946007)(66446008)(64756008)(6506007)(9686003)(66476007)(2906002)(76116006)(316002)(55016002)(91956017)(33656002)(32563001);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6BKanj23XycIKITV9m5OfwJ5E9uB5XR1R0u11m3S9dGSX2Bz+LvXdhaYvyfpBAS5dF9ZQ2ccHxIIqnyQ42dKavv17EGXIdjaKMx/mxNpos31qdmz8oeBzD5k072TfxgpiPunlHolioBfwFu/OeAvKQr2a0b2n/JP6sYp8Dh7yibFBLrzCJxlqhAAKLjT6xQdXAQI0q3qeo9KytFlZ8x2PLQSCRQb4uN99RiGoyaUNTid+wqezmijZr1aT7Bov5VFag76cwKy0Bfw3Q4K/LWQr1jQC4dsGPf0lyteIcx3K+JmotvS3a+gmtQmGPvRLj0/24SAapI/qmB435QtlkrpzxgxfD1SyDp9uDysBy2hDNu/0BwyIe1prPMBFAMqUOuXN7w7wI6aLJPCfDJIRbyBZJ6erKhQJ7iLmWEObtvyIgYUK11f5YyDorJ3x5mdWmAuSRND5P/JgC21iXVxTqgcAGlq41o54oScxLcNIFo3Q3o=
x-ms-exchange-antispam-messagedata: ENvHPY+tOXqCi5vT2MHvazWv74FNdhBtiJHSYsgBsfQujCSxwQg4Sk0H3KmffH3XgXCUGMibM5KWrmcZI1GldmGMS7hg74mHTnPoa0ZExXyvZpA7wzQkFKk3zUEiwf3IMNerWPhVs0W0tDgVo4Oyjg==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 82d65e4c-edec-4f80-fcd8-08d7d754ad46
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Apr 2020 22:24:57.8110 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aaag1iSSLzfat9EzMc5Le9mdiQ5Nh2BhUQulwshx3S76Wwgl0deZ0UGJnjDKt8n7akfQYyFPISUl2FIoyQGY2w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_152502_806251_6EB9513A 
X-CRM114-Status: GOOD (  13.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.58 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.7.58 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Jacky Bai <ping.bai@nxp.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Angus Ainslie <angus@akkea.ca>,
 =?iso-8859-2?Q?Artur_=A6wigo=F1?= <a.swigon@samsung.com>,
 Alexandre Bailon <abailon@baylibre.com>, Matthias Kaehlcke <mka@chromium.org>,
 Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, dl-linux-imx <linux-imx@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Martin Kepplinger <martink@posteo.de>,
 Silvano Di Ninno <silvano.dininno@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, Saravana Kannan <saravanak@google.com>,
 Stephen Boyd <sboyd@kernel.org>, Kyungmin Park <kyungmin.park@samsung.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-04-02 2:14 PM, Georgi Djakov wrote:
> Hi Leonard,
> 
> On 4/1/20 17:33, Leonard Crestez wrote:
>> Add a platform driver for the i.MX8MM SoC describing bus topology.
>>
>> Bandwidth adjustments is currently only supported on the DDRC and main
>> NOC. Scaling for the vpu/gpu/display NICs could be added in the future.
>>
>> Signed-off-by: Alexandre Bailon <abailon@baylibre.com>
>> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
>> ---
>>   drivers/interconnect/imx/Kconfig          |   4 +
>>   drivers/interconnect/imx/Makefile         |   2 +
>>   drivers/interconnect/imx/imx8mm.c         | 108 ++++++++++++++++++++++
>>   include/dt-bindings/interconnect/imx8mm.h |  49 ++++++++++
>>   4 files changed, 163 insertions(+)
>>   create mode 100644 drivers/interconnect/imx/imx8mm.c
>>   create mode 100644 include/dt-bindings/interconnect/imx8mm.h
>>
>> diff --git a/drivers/interconnect/imx/Kconfig b/drivers/interconnect/imx/Kconfig
>> index f39336f8d603..2cd4fad4976a 100644
>> --- a/drivers/interconnect/imx/Kconfig
>> +++ b/drivers/interconnect/imx/Kconfig
>> @@ -1,5 +1,9 @@
>>   config INTERCONNECT_IMX
>>   	tristate "i.MX interconnect drivers"
>>   	depends on ARCH_MXC || COMPILE_TEST
>>   	help
>>   	  Generic interconnect drivers for i.MX SOCs
>> +
>> +config INTERCONNECT_IMX8MM
>> +	tristate "i.MX8MM interconnect driver"
>> +	depends on INTERCONNECT_IMX
>> diff --git a/drivers/interconnect/imx/Makefile b/drivers/interconnect/imx/Makefile
>> index 86ae0bd28d8c..c234e5d3dfd1 100644
>> --- a/drivers/interconnect/imx/Makefile
>> +++ b/drivers/interconnect/imx/Makefile
>> @@ -1,3 +1,5 @@
>>   imx-interconnect-objs			:= imx.o
>> +imx8mm-interconnect-objs       		:= imx8mm.o
>>   
>>   obj-$(CONFIG_INTERCONNECT_IMX)		+= imx-interconnect.o
>> +obj-$(CONFIG_INTERCONNECT_IMX8MM)	+= imx8mm-interconnect.o
>> diff --git a/drivers/interconnect/imx/imx8mm.c b/drivers/interconnect/imx/imx8mm.c
>> new file mode 100644
>> index 000000000000..ee3783a98c01
>> --- /dev/null
>> +++ b/drivers/interconnect/imx/imx8mm.c
>> @@ -0,0 +1,108 @@
>> +// SPDX-License-Identifier: GPL-2.0
>> +/*
>> + * Interconnect framework driver for i.MX SoC
>> + *
>> + * Copyright (c) 2019, BayLibre
>> + * Copyright (c) 2019, NXP
>> + * Author: Alexandre Bailon <abailon@baylibre.com>
>> + * Author: Leonard Crestez <leonard.crestez@nxp.com>
>> + */
>> +
>> +#include <linux/device.h>
> 
> Is this used?

>> +#include <linux/module.h>
>> +#include <linux/of_platform.h>
> 
> Is this used?
>> +#include <linux/platform_device.h>
>> +
>> +#include <dt-bindings/interconnect/imx8mm.h>

Trimmed
>> +
>> +#include "imx.h"
>> +
>> +static const struct imx_icc_node_adj_desc imx8mm_dram_adj = {
>> +	.bw_mul = 1,
>> +	.bw_div = 16,
>> +	.phandle_name = "fsl,ddrc",
>> +};
>> +
>> +static const struct imx_icc_node_adj_desc imx8mm_noc_adj = {
>> +	.bw_mul = 1,
>> +	.bw_div = 16,
>> +	.main_noc = true,
>> +};
>> +
>> +/*
>> + * Describe bus masters, slaves and connections between them
>> + *
>> + * This is a simplified subset of the bus diagram, there are several other
>> + * PL301 nics which are skipped/merged into PL301_MAIN
>> + */
>> +static struct imx_icc_node_desc nodes[] = {
>> +	DEFINE_BUS_INTERCONNECT("NOC", IMX8MM_ICN_NOC, &imx8mm_noc_adj,
>> +			IMX8MM_ICS_DRAM, IMX8MM_ICN_MAIN),
>> +
>> +	DEFINE_BUS_SLAVE("DRAM", IMX8MM_ICS_DRAM, &imx8mm_dram_adj),
>> +	DEFINE_BUS_SLAVE("OCRAM", IMX8MM_ICS_OCRAM, NULL),
>> +	DEFINE_BUS_MASTER("A53", IMX8MM_ICM_A53, IMX8MM_ICN_NOC),
>> +
>> +	/* VPUMIX */
>> +	DEFINE_BUS_MASTER("VPU H1", IMX8MM_ICM_VPU_H1, IMX8MM_ICN_VIDEO),
>> +	DEFINE_BUS_MASTER("VPU G1", IMX8MM_ICM_VPU_G1, IMX8MM_ICN_VIDEO),
>> +	DEFINE_BUS_MASTER("VPU G2", IMX8MM_ICM_VPU_G2, IMX8MM_ICN_VIDEO),
>> +	DEFINE_BUS_INTERCONNECT("PL301_VIDEO", IMX8MM_ICN_VIDEO, NULL, IMX8MM_ICN_NOC),
>> +
>> +	/* GPUMIX */
>> +	DEFINE_BUS_MASTER("GPU 2D", IMX8MM_ICM_GPU2D, IMX8MM_ICN_GPU),
>> +	DEFINE_BUS_MASTER("GPU 3D", IMX8MM_ICM_GPU3D, IMX8MM_ICN_GPU),
>> +	DEFINE_BUS_INTERCONNECT("PL301_GPU", IMX8MM_ICN_GPU, NULL, IMX8MM_ICN_NOC),
>> +
>> +	/* DISPLAYMIX */
>> +	DEFINE_BUS_MASTER("CSI", IMX8MM_ICM_CSI, IMX8MM_ICN_MIPI),
>> +	DEFINE_BUS_MASTER("LCDIF", IMX8MM_ICM_LCDIF, IMX8MM_ICN_MIPI),
>> +	DEFINE_BUS_INTERCONNECT("PL301_MIPI", IMX8MM_ICN_MIPI, NULL, IMX8MM_ICN_NOC),
>> +
>> +	/* HSIO */
>> +	DEFINE_BUS_MASTER("USB1", IMX8MM_ICM_USB1, IMX8MM_ICN_HSIO),
>> +	DEFINE_BUS_MASTER("USB2", IMX8MM_ICM_USB2, IMX8MM_ICN_HSIO),
>> +	DEFINE_BUS_MASTER("PCIE", IMX8MM_ICM_PCIE, IMX8MM_ICN_HSIO),
>> +	DEFINE_BUS_INTERCONNECT("PL301_HSIO", IMX8MM_ICN_HSIO, NULL, IMX8MM_ICN_NOC),
>> +
>> +	/* Audio */
>> +	DEFINE_BUS_MASTER("SDMA2", IMX8MM_ICM_SDMA2, IMX8MM_ICN_AUDIO),
>> +	DEFINE_BUS_MASTER("SDMA3", IMX8MM_ICM_SDMA3, IMX8MM_ICN_AUDIO),
>> +	DEFINE_BUS_INTERCONNECT("PL301_AUDIO", IMX8MM_ICN_AUDIO, NULL, IMX8MM_ICN_MAIN),
>> +
>> +	/* Ethernet */
>> +	DEFINE_BUS_MASTER("ENET", IMX8MM_ICM_ENET, IMX8MM_ICN_ENET),
>> +	DEFINE_BUS_INTERCONNECT("PL301_ENET", IMX8MM_ICN_ENET, NULL, IMX8MM_ICN_MAIN),
>> +
>> +	/* Other */
>> +	DEFINE_BUS_MASTER("SDMA1", IMX8MM_ICM_SDMA1, IMX8MM_ICN_MAIN),
>> +	DEFINE_BUS_MASTER("NAND", IMX8MM_ICM_NAND, IMX8MM_ICN_MAIN),
>> +	DEFINE_BUS_MASTER("USDHC1", IMX8MM_ICM_USDHC1, IMX8MM_ICN_MAIN),
>> +	DEFINE_BUS_MASTER("USDHC2", IMX8MM_ICM_USDHC2, IMX8MM_ICN_MAIN),
>> +	DEFINE_BUS_MASTER("USDHC3", IMX8MM_ICM_USDHC3, IMX8MM_ICN_MAIN),
>> +	DEFINE_BUS_INTERCONNECT("PL301_MAIN", IMX8MM_ICN_MAIN, NULL,
>> +			IMX8MM_ICN_NOC, IMX8MM_ICS_OCRAM),
>> +};
>> +
>> +static int imx8mm_icc_probe(struct platform_device *pdev)
>> +{
>> +	return imx_icc_register(pdev, nodes, ARRAY_SIZE(nodes));
>> +}
>> +
>> +static int imx8mm_icc_remove(struct platform_device *pdev)
>> +{
>> +	return imx_icc_unregister(pdev);
>> +}
>> +
>> +static struct platform_driver imx8mm_icc_driver = {
>> +	.probe = imx8mm_icc_probe,
>> +	.remove = imx8mm_icc_remove,
>> +	.driver = {
>> +		.name = "imx8mm-interconnect",
>> +	},
>> +};
>> +
>> +module_platform_driver(imx8mm_icc_driver);
>> +MODULE_AUTHOR("Alexandre Bailon <abailon@baylibre.com>");
>> +MODULE_LICENSE("GPL v2");
>> +MODULE_ALIAS("platform:imx8mm-interconnect");
>> diff --git a/include/dt-bindings/interconnect/imx8mm.h b/include/dt-bindings/interconnect/imx8mm.h
>> new file mode 100644
>> index 000000000000..5404f2af15c3
>> --- /dev/null
>> +++ b/include/dt-bindings/interconnect/imx8mm.h
>> @@ -0,0 +1,49 @@
>> +/* SPDX-License-Identifier: GPL-2.0 */
>> +/*
>> + * Interconnect framework driver for i.MX SoC
>> + *
>> + * Copyright (c) 2019, BayLibre
>> + * Author: Alexandre Bailon <abailon@baylibre.com>
>> + */
>> +
>> +#ifndef __IMX8MM_ICM_INTERCONNECT_IDS_H
>> +#define __IMX8MM_ICM_INTERCONNECT_IDS_H
> 
> Nit: Some people make this match the path, but it's up to you.

OK

>> +
>> +#define IMX8MM_ICN_NOC		1
>> +#define IMX8MM_ICS_DRAM		2
>> +#define IMX8MM_ICS_OCRAM	3
>> +#define IMX8MM_ICM_A53		4
>> +
>> +#define IMX8MM_ICM_VPU_H1	5
>> +#define IMX8MM_ICM_VPU_G1	6
>> +#define IMX8MM_ICM_VPU_G2	7
>> +#define IMX8MM_ICN_VIDEO	8
>> +
>> +#define IMX8MM_ICM_GPU2D	9
>> +#define IMX8MM_ICM_GPU3D	10
>> +#define IMX8MM_ICN_GPU		11
>> +
>> +#define IMX8MM_ICM_CSI		12
>> +#define IMX8MM_ICM_LCDIF	13
>> +#define IMX8MM_ICN_MIPI		14
>> +
>> +#define IMX8MM_ICM_USB1		15
>> +#define IMX8MM_ICM_USB2		16
>> +#define IMX8MM_ICM_PCIE		17
>> +#define IMX8MM_ICN_HSIO		18
>> +
>> +#define IMX8MM_ICM_SDMA2	19
>> +#define IMX8MM_ICM_SDMA3	20
>> +#define IMX8MM_ICN_AUDIO	21
>> +
>> +#define IMX8MM_ICN_ENET		22
>> +#define IMX8MM_ICM_ENET		23
>> +
>> +#define IMX8MM_ICN_MAIN		24
>> +#define IMX8MM_ICM_NAND		25
>> +#define IMX8MM_ICM_SDMA1	26
>> +#define IMX8MM_ICM_USDHC1	27
>> +#define IMX8MM_ICM_USDHC2	28
>> +#define IMX8MM_ICM_USDHC3	29
>> +
>> +#endif /* __IMX8MM_ICM_INTERCONNECT_IDS_H */
>>
> 
> Looks good!
> 
> Thanks,
> Georgi
> 
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
