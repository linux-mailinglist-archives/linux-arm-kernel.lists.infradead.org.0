Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15324C9AED
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 11:40:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sA8+kGkjV9M6TbxyX986fCU3zW0bQ1L6lRZl7FyYHcM=; b=Lf9qYxtM5rc8xP
	Lsq0uG3TYmChH7QTbIhQSn2kvnVjT79F5Kpaq6wfmgaumQxLcJjcg2azH5DeVEsl5IP90+HtPvEko
	+rk/utpJI3i/TRsCk90FUhYBIEi0FvkHhSgncZypoFFYvKUZ5ZJsT8sVxSpikugM08HyPkb5zk5tG
	eJwjp9hoGnbY2lXZUkuOUcDRJ8dq2WibiTlBNq6xTpkdij3I5wTWajOvXVW40WWSLrcLEuOX4Uhyw
	yYY6CA6J3a7vMEX3CV9j98ys7822qeMZ/YIFQImT6yPvNDNj0ax++IsNoR5Jgf4oNnT+Dw9qM5Rq3
	cfZsExlGar2UKNvYgvrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFxbA-0003yZ-L5; Thu, 03 Oct 2019 09:40:36 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFxb2-0003xM-Hr
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 09:40:30 +0000
Received-SPF: Pass (esa5.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa5.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa5.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Tudor.Ambarus@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: Npn+nvUrXCzz5lwTWH8EkJMyWId7BQvuVEcjFz5Kx2D4iPfh3GXeW3oQrwg9NvJD8iOSkrwy8e
 YYt+or+B4+i1v8wF3MJPRvGuUzRWni8OumFI5AjWs1w3r9wUFKl5QYq0qF4tEoEBDcdnboBmp6
 TTS5NtZR7DeXoa2KFn/fS9M2vRjmbQt2WWqghaATVTVKrkiio+lFgmiAuZ28PZYsjnvUwseAwp
 yku0VQpAS38AW6ykZjweF3J8q/m2P4C2/9UmPEgX3SeATy4kLNs2hNGoSTiDuf3J3cP1qlcQbl
 5y8=
X-IronPort-AV: E=Sophos;i="5.67,251,1566889200"; d="scan'208";a="50023133"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 03 Oct 2019 02:40:21 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 3 Oct 2019 02:40:19 -0700
Received: from NAM01-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 3 Oct 2019 02:40:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gQtPb9Yu3DvZDQ7Mdh2pol/sgknvsh5xm2We4ztVBLnoD4yfqW9VoiOaodTZw9kaqa2YYTIUCZOnuDxhCWZv+EGEzV50NAqmAurDnoM80GaVlNSbTLyLAcbfKMN0ejlsf/KgXf6lEAsSrSWfxL7MgFbrhDJEecP3U3y7w/MOYyC5eOONc+PzWUi7U9r15Uw6ivqg1cJSmVmrX5f4P0DoL+PX6+tmsb7RZh89/rkVlv52g2ovIuoKGXHQi2j8CC5pcnW5Vdb3NkrKQexQ1VXmimBcRdwzXDJkMUffjS4pURm93C5vLywNE/5Jx2EWscDchb5+PcrgT9l7ubVk83dovQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=90k3zU0q+jB82hQMtxb5FD90iZOCc5yg+dgO7i29NE0=;
 b=l89wZNG6h5RXNMkdxF+H9A4Ghbuep5uyyrBZDrsqwcdxcaW04R1MrvTIPGFiCqpncL93VKbZexlu6ltfdBPshuAVBJpROBPY58vR/MBff6qlB23KzpUUzKciAJEy83sXCbt/Izm/bJegJ/7fUBC5Au8h1jECYFTst7TZpCeSZ49wedxoJCOEJqECSSgbG4xY8vzpFU7Rzuba5tSsH6pDJbNZ3O3Qp5G6HubGtynw0T4xMmVDtX3N4DC+UIXp4hpQwl0P1WNkllBE6cM79ItFT4fOh0B2o6gE6zQK0nSpzTNX6esl1gSy/LBT9EzhgvRRVUDfnObwaH8ViYg3wLgW9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=90k3zU0q+jB82hQMtxb5FD90iZOCc5yg+dgO7i29NE0=;
 b=pEZ/BgBDcmjFYnzXN4uSMqzqRLdMbl54JWSvUlalosM4DKX3wyV7mKx5c9keaMzvC97HvICJ2+XA2v2+7Szl9bDi5NRP1TsTBUNuez2B9jkDIg1TDdQbcRobSWLYG/1+G3YOFDnYNvTgbEb5wszSdgJDxMoCkWo3i6wr0wRBJak=
Received: from BY5PR11MB4435.namprd11.prod.outlook.com (10.255.89.94) by
 BY5PR11MB3926.namprd11.prod.outlook.com (10.255.160.20) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.22; Thu, 3 Oct 2019 09:40:18 +0000
Received: from BY5PR11MB4435.namprd11.prod.outlook.com
 ([fe80::e824:da88:261f:dee]) by BY5PR11MB4435.namprd11.prod.outlook.com
 ([fe80::e824:da88:261f:dee%2]) with mapi id 15.20.2305.023; Thu, 3 Oct 2019
 09:40:18 +0000
From: <Tudor.Ambarus@microchip.com>
To: <kamel.bouhara@bootlin.com>, <Nicolas.Ferre@microchip.com>,
 <alexandre.belloni@bootlin.com>, <Ludovic.Desroches@microchip.com>,
 <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v2] soc: at91: Add Atmel SFR SN (Serial Number) support
Thread-Topic: [PATCH v2] soc: at91: Add Atmel SFR SN (Serial Number) support
Thread-Index: AQHVectWTpmuxb05HkGRE83g0lM8EKdIqYCA
Date: Thu, 3 Oct 2019 09:40:17 +0000
Message-ID: <8b8649d8-351b-8903-cb54-a56d7b6191df@microchip.com>
References: <20191003091636.21060-1-kamel.bouhara@bootlin.com>
In-Reply-To: <20191003091636.21060-1-kamel.bouhara@bootlin.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1P189CA0030.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:802:2a::43) To BY5PR11MB4435.namprd11.prod.outlook.com
 (2603:10b6:a03:1ce::30)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4e8ba0ee-d4cc-4c9f-f6a9-08d747e5b33f
x-ms-traffictypediagnostic: BY5PR11MB3926:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB3926FDA7F51C2CC8ACB26AC5F09F0@BY5PR11MB3926.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 01792087B6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(376002)(346002)(39860400002)(396003)(366004)(199004)(189003)(40224003)(486006)(316002)(31696002)(86362001)(66446008)(64756008)(66556008)(66476007)(229853002)(14454004)(14444005)(11346002)(2501003)(6436002)(6306002)(6486002)(476003)(2616005)(478600001)(31686004)(256004)(966005)(6506007)(110136005)(102836004)(4326008)(186003)(8676002)(36756003)(53546011)(6512007)(446003)(52116002)(76176011)(81156014)(81166006)(26005)(8936002)(99286004)(305945005)(71200400001)(71190400001)(386003)(66066001)(66946007)(2906002)(7736002)(3846002)(6116002)(6246003)(25786009)(5660300002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BY5PR11MB3926;
 H:BY5PR11MB4435.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: lKPj4RRMsBiY8rIAVjm5T9QfqrQynsA2Cs2oNiq/Q3ZyZoRPIrhOuWHVQnn8zAqkN22CYDLlz9fh74ucOzcFsckbtSl6cnDSziIsKUoHO6URzc1gH19ib6ZHenzEAlsqij8CTEEJ8YeyidUqz1ruVebnK9dAvl2EU7kKVgAzlKzmIJX+pVhgqA5qO5MpGtQnd4OYUseXO2AF5R6okNvnzDwfzR0O+6DdWUB1VwYqJp3/w7RIimPD4bPcZKtAnunsFBHC5fnheIvDYFq5KUokVZzs0/3gVOazXdvUCvnVAOXr8aYH7oW8W7uSOKTKlozQ7s5IkhnS/T9ZQ0Gvubhd3t8jHRSwfXD3TuwjUnJGuBvaUgJojfXkpRRrd3iMKDVXEasTyvGQk/Hk9j5/6FWYLVntbC8Ap8SZ6Pvk3oWdw28cWQqfLcoznT4jKly2K8aWooZ/+6/zL/ICWiDThw3xrw==
Content-ID: <A55DD7A98F0DDF489A8E9B60D8CC3E86@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 4e8ba0ee-d4cc-4c9f-f6a9-08d747e5b33f
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Oct 2019 09:40:17.9379 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2gnBMrC06XuGH00gU/JHyYs2LyN3mDGDgVvzczkLw0P5ro5yt3AV9xo9H7/4qX+eCQhfOsTajfeWx2xdFxWDhZKXm8ZH+fHjQ9GOlSUVoUM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB3926
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_024028_736553_AC0D9CD2 
X-CRM114-Status: GOOD (  23.64  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: thomas.petazzoni@bootlin.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Kamel,

On 10/03/2019 12:16 PM, Kamel Bouhara wrote:
> External E-Mail
> 
> 
> Add support to read SFR's read-only registers providing the SoC
> Serial Numbers (SN0+SN1) to userspace.
> 
> ~ #  hexdump -n 8  -e'"%d\n"' /sys/bus/nvmem/devices/atmel-sfr0/nvmem
> 959527243
> 371539274
> 
> Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
> ---
> Changes in v2:
>  - updated atmel-sfr.c to sfr.c in Makefile
>  - fixed missing drvdata struct definition
>  - added missing syscon header
> 
>  drivers/soc/atmel/Kconfig  |  11 ++++
>  drivers/soc/atmel/Makefile |   1 +
>  drivers/soc/atmel/sfr.c    | 116 +++++++++++++++++++++++++++++++++++++
>  3 files changed, 128 insertions(+)
>  create mode 100644 drivers/soc/atmel/sfr.c
> 
> diff --git a/drivers/soc/atmel/Kconfig b/drivers/soc/atmel/Kconfig
> index 05528139b023..d61711cb9556 100644
> --- a/drivers/soc/atmel/Kconfig
> +++ b/drivers/soc/atmel/Kconfig
> @@ -5,3 +5,14 @@ config AT91_SOC_ID
>  	default ARCH_AT91
>  	help
>  	  Include support for the SoC bus on the Atmel ARM SoCs.
> +
> +config AT91_SOC_SFR
> +	tristate "Special Function Registers support"
> +	depends on ARCH_AT91 || COMPILE_TEST
> +	help
> +	  This is a driver for the Special Function Registers available on
> +	  Atmel SAMA5Dx SoCs, providing access to specific aspects of the
> +	  integrated memory, bridge implementations, proccessor etc.

typo: processor.
> +
> +	  This driver can also be built as a module. If so, the module
> +	  will be called sfr.
> diff --git a/drivers/soc/atmel/Makefile b/drivers/soc/atmel/Makefile
> index 7ca355d10553..d849a897cd77 100644
> --- a/drivers/soc/atmel/Makefile
> +++ b/drivers/soc/atmel/Makefile
> @@ -1,2 +1,3 @@
>  # SPDX-License-Identifier: GPL-2.0-only
>  obj-$(CONFIG_AT91_SOC_ID) += soc.o
> +obj-$(CONFIG_AT91_SOC_SFR) += sfr.o
> diff --git a/drivers/soc/atmel/sfr.c b/drivers/soc/atmel/sfr.c
> new file mode 100644
> index 000000000000..2be306157283
> --- /dev/null
> +++ b/drivers/soc/atmel/sfr.c
> @@ -0,0 +1,116 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * sfr.c - driver for special function registers
> + *
> + * Copyright (C) 2019 Bootlin.
> + *
> + */
> +#include <linux/device.h>
> +#include <linux/mfd/syscon.h>
> +#include <linux/module.h>
> +#include <linux/nvmem-provider.h>
> +#include <linux/of.h>
> +#include <linux/of_device.h>
> +#include <linux/platform_device.h>
> +#include <linux/regmap.h>
> +
> +#define SFR_SN0		0x4c
> +
> +struct sfr_priv {

how about renaming this to struct atmel_sfr_priv?

> +	struct device			*dev;

this is not used, maybe you can drop it?

> +	struct regmap			*regmap;
> +	struct nvmem_config		*config;
> +	struct atmel_sfr_drvdata	*drvdata;

this is not used, maybe you can drop it?

> +};
> +
> +struct atmel_sfr_drvdata {
> +	unsigned int nregs;
> +};
> +
> +static int atmel_sfr_read(void *context, unsigned int offset,
> +			  void *buf, size_t bytes)
> +{
> +	struct sfr_priv *priv = context;
> +	struct atmel_sfr_drvdata *drvdata = priv->drvdata;

looks like you can drop the *drvdata local variable.
> +
> +	return regmap_bulk_read(priv->regmap, SFR_SN0 + offset,
> +				buf, bytes / 4);
> +}
> +
> +static struct nvmem_config atmel_sfr_nvmem_config = {
> +	.name = "atmel-sfr",
> +	.read_only = true,
> +	.word_size = 4,
> +	.stride = 4,
> +	.reg_read = atmel_sfr_read,
> +};
> +
> +static int atmel_sfr_probe(struct platform_device *pdev)
> +{
> +	struct device *dev = &pdev->dev;
> +	struct device_node *np = dev->of_node;
> +	struct sfr_priv *priv;
> +	struct nvmem_device *nvmem;
> +	const struct atmel_sfr_drvdata *drvdata;
> +
> +	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);

zeroing should not be needed since you update all the priv fields below.

> +	if (!priv)
> +		return -ENOMEM;
> +
> +	drvdata = of_device_get_match_data(dev);
> +	if (!drvdata)
> +		return -EINVAL;
> +
> +	priv->regmap = syscon_node_to_regmap(np);
> +	if (IS_ERR(priv->regmap)) {
> +		dev_err(dev, "cannot get parent's regmap\n");
> +		return PTR_ERR(priv->regmap);
> +	}
> +
> +	priv->drvdata = drvdata;

not needed?

Cheers,
ta

> +
> +	atmel_sfr_nvmem_config.size = drvdata->nregs;
> +	atmel_sfr_nvmem_config.dev = dev;
> +	atmel_sfr_nvmem_config.priv = priv;
> +
> +	priv->config = &atmel_sfr_nvmem_config;
> +
> +	nvmem = devm_nvmem_register(dev, &atmel_sfr_nvmem_config);
> +	if (IS_ERR(nvmem)) {
> +		dev_err(dev, "error registering nvmem config\n");
> +		return PTR_ERR(nvmem);
> +	}
> +
> +	return 0;
> +}
> +
> +static struct atmel_sfr_drvdata sama5d2_sama5d4_drvdata = {
> +	.nregs = 2 * 4,
> +};
> +
> +static const struct of_device_id atmel_sfr_dt_ids[] = {
> +	{
> +		.compatible = "atmel,sama5d2-sfr",
> +		.data = &sama5d2_sama5d4_drvdata,
> +	}, {
> +		.compatible = "atmel,sama5d4-sfr",
> +		.data = &sama5d2_sama5d4_drvdata,
> +	}, {
> +		/* sentinel */
> +	},
> +};
> +MODULE_DEVICE_TABLE(of, atmel_sfr_dt_ids);
> +
> +static struct platform_driver atmel_sfr_driver = {
> +	.probe = atmel_sfr_probe,
> +	.driver = {
> +		.name = "atmel-sfr",
> +		.of_match_table = atmel_sfr_dt_ids,
> +	},
> +};
> +module_platform_driver(atmel_sfr_driver);
> +
> +MODULE_AUTHOR("Kamel Bouhara <kamel.bouhara@bootlin.com>");
> +MODULE_DESCRIPTION("Atmel SFR SN driver for SAMA5D2/4 SoC family");
> +MODULE_LICENSE("GPL v2");
> +
> --
> 2.23.0
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
