Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9EEACBE22
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 16:54:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b95C62bO3Tzxs8LVYo848Zqqqjs8VujHc6z1CJQsyrs=; b=eQQRKjsr0syDW9
	hHPP6y/UGKNxjKuW0drSt3D9dvb8+lj6pSTKTtnZNRvEQNxip/dD+LMais/aCRaPzgoFvOYEQ1U/g
	C+XiDm61GnAQpd666rc1VcX5YA29AYuKYzmbxPa2t1+rwyBYy7z1MgLsO1ztmyV5zS2oZfBG6V9wW
	KJooHY1PmIFoMv4ZSY/l3FEEx8LAmmxHwNrIK/6u3P2uDr7QdZwdiL/r8GbtT0eXfo66ItCAhTTcY
	6p9ZrMaBOyPjzrm0rFpRVTM67TA24ZEmcpCZqUJ5h8x/WprvHlCCuEFmEoArx2KtWkAU2OTAOCsZt
	c1CBZATV95S7r+6l0znQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGOyp-00059F-3y; Fri, 04 Oct 2019 14:54:51 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGOyf-00058Y-GO
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 14:54:43 +0000
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa6.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa6.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Tudor.Ambarus@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: swGvubxcSzOMjfELLuX0qt9VEIDggRILVrc71UrjGEinaxKksgbPkFNpfc867X5kwtP5hERGZk
 3dF2hf2qKsTNI69oMVMmwcMx2qkO5wDx4fuCmFN939Syhz7juEJGKiaXGQfqSMNirBQHSywFqX
 7qkRgOTbKJDrxRJZn1iIa8JkElG2iiDe/behxYJByksjE4HMbALtfTnszjylj/5g16jgV7KB+K
 xiaPLhOln+F7t01h/el7SjoBwk4Io4Y3vV3XzDEweL/ucA9xE+iYNye9bSIftZ2u9kGDzAC8Ks
 NhI=
X-IronPort-AV: E=Sophos;i="5.67,256,1566889200"; d="scan'208";a="48837351"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 04 Oct 2019 07:54:40 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 4 Oct 2019 07:54:39 -0700
Received: from NAM04-BN3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Fri, 4 Oct 2019 07:54:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GNF9j2YcvVFyhEWFB8cWc4NAl2WzkFpkA94KQiUxdVya9pa1Tn348mFnHhN+W03oCi3xIVODnqkWc2X7tDvN7ig18Puo9d9ZA9HOjPlSt8JUqqBt/0aV6RM6omCgSx107NoKWOROtKqBgbtex0JMNpGiW3AysNHsHnsbIu5IB1bikljcOB/QsO5jAmmdqhQ7G/LdwQf/JwGk4l6ZWYnFvinuh8xPekhh+yj248BPMv/2CJQ6GKWa6Cq0geoY/AdXgLLFJtwuZ0wgRRFvYl7pp1kTupatQYS+QMrUI5bIF97lRsNQLr+0C6i08onHl6FRvMfYXcQHlbmVwf76LvKOAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=K276lPnAGi9OKeJRPtb59r0yv+sgUZQ6A2A8R6uD9+w=;
 b=bnchXpfHfV2+kdxTFOTyIgfhDc4V81RXEQoyCa8S7c2bKNwLAh7wJ5milCDSOhyf2oeiGpUFR12rvWYZwWTzspm582zmYXy6EJ4+ugTElrB6rkxoJrh5F2Q/+4/99qOV20FgVRPov+Jye6+v5ks5ozK+P2cnMzekxFy/6pS/3q0rZSLaUW2fvVuWiXXep5F/iPbi1MPuGbKn22nu669fCb1+Os38oLio9lkTilYLKh773Y+qh2A5hC1jpnJ+1KCqaRooV3rg7+BXknB/XNt8G1Th36pTthc/QR5YeGS6UZs990/D5jj6JXZySz5kcaCg7m+FORBQSM5aiV4p+UQMVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=K276lPnAGi9OKeJRPtb59r0yv+sgUZQ6A2A8R6uD9+w=;
 b=EbnGNdD83mlZJbhgph8ctayXEPLb3Lw0E8URjEfiaoZUYa3fIJmgmAUbR45ntZbVBVAsRVX6ioSEDbxEelejJflhDfs9QTtzovuLRYqDq0YaWH+eZCJ4PtHqNve3lpzyQwGuvaJrjtekgGAl/pX22ldE2ZoIkrqESYl/OY2ONCo=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB3886.namprd11.prod.outlook.com (20.179.150.15) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.17; Fri, 4 Oct 2019 14:54:37 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::340d:5a33:dc79:1184]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::340d:5a33:dc79:1184%5]) with mapi id 15.20.2305.023; Fri, 4 Oct 2019
 14:54:37 +0000
From: <Tudor.Ambarus@microchip.com>
To: <kamel.bouhara@bootlin.com>, <Nicolas.Ferre@microchip.com>,
 <alexandre.belloni@bootlin.com>, <Ludovic.Desroches@microchip.com>,
 <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v5] soc: at91: Add Atmel SFR SN (Serial Number) support
Thread-Topic: [PATCH v5] soc: at91: Add Atmel SFR SN (Serial Number) support
Thread-Index: AQHVer306XO6kcXuKUGETx77Y8Bgb6dKkcWA
Date: Fri, 4 Oct 2019 14:54:37 +0000
Message-ID: <a8c16919-9842-8a2a-81b0-16551c6a7944@microchip.com>
References: <20191004141256.14491-1-kamel.bouhara@bootlin.com>
In-Reply-To: <20191004141256.14491-1-kamel.bouhara@bootlin.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR07CA0185.eurprd07.prod.outlook.com
 (2603:10a6:802:3e::33) To MN2PR11MB4448.namprd11.prod.outlook.com
 (2603:10b6:208:193::29)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5fba7752-be0b-49af-4b18-08d748dac6cd
x-ms-traffictypediagnostic: MN2PR11MB3886:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB38864DE8FE104522663FD87AF09E0@MN2PR11MB3886.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 018093A9B5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(346002)(39860400002)(366004)(376002)(396003)(199004)(189003)(40224003)(66066001)(25786009)(76176011)(6116002)(2501003)(11346002)(110136005)(5660300002)(3846002)(316002)(386003)(6506007)(53546011)(8936002)(81166006)(966005)(81156014)(486006)(71200400001)(6436002)(71190400001)(476003)(52116002)(99286004)(2616005)(6246003)(14454004)(186003)(14444005)(2906002)(256004)(31696002)(6306002)(6512007)(26005)(229853002)(64756008)(31686004)(66556008)(102836004)(6486002)(7736002)(4326008)(66446008)(86362001)(66946007)(446003)(8676002)(305945005)(66476007)(36756003)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3886;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: zruizd/P+IPFdOr3mQCdUCXZwM6tf+bouW86OGB7diipNh+IqyOzNGF47PLeOD0isJkKXQ0uSl6JtsczAvJuqGNFpOmEpY5MHnmEdQrEaX14P7juqd7M8RlIPItpWiDrQyREBEQxXSoqd7wqRqg03DpZcxYeLc0DIIz3wZzlRN3dugDPPwFfKzhP79ObscvV1S1bmBLG2Meaqlo2myFYEPg+lRbmuyv02gbiDVDtYUn0qV2wffB7KgpKLgQXNSmSe8+yTrOkL7W2K2Ob0SNP9137y2vvmU46mw9wKbSA7yPj9xAwb1/ftuJRGvnOkuvfAe341j4Kml3lP16FaolwEW0XL14uvS5yT8bLF8Lz5/ASZIfMwuApb0/Vph9xaklj5IGkKEP2UhSQCor4EWmVvTKzZWX/QoIxvsdfc7cjZixmgoDKEf+elEjo39ftRSRfaB61J0eiDnaysbIPf3rwYw==
Content-ID: <E296B3BBAADF0B419D2FF27D1FAB9192@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 5fba7752-be0b-49af-4b18-08d748dac6cd
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Oct 2019 14:54:37.3036 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HxSoLDsdfC9Zsf/VUFULkyHoDRHEmZE4paU/NzEjGTanheuAwJFV3B6u0QE3eZKB+k6tspVX1gDsY0SYjne75DgnPSK065GCpe+dDntLefY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3886
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_075441_602866_25CA67CC 
X-CRM114-Status: GOOD (  25.01  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
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



On 10/04/2019 05:12 PM, Kamel Bouhara wrote:
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
>  Changes in v5:
>  - Removed the blankline at EOF
>  - Feeded the entropy pool with the SoC SN using add_device_randomness()
>    and do it only once at probe().
> 
>  drivers/soc/atmel/Kconfig  | 11 +++++
>  drivers/soc/atmel/Makefile |  1 +
>  drivers/soc/atmel/sfr.c    | 99 ++++++++++++++++++++++++++++++++++++++
>  3 files changed, 111 insertions(+)
>  create mode 100644 drivers/soc/atmel/sfr.c
> 
> diff --git a/drivers/soc/atmel/Kconfig b/drivers/soc/atmel/Kconfig
> index 05528139b023..50caf6db9c0e 100644
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
> +	  integrated memory, bridge implementations, processor etc.
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
> index 000000000000..145e9af63b4c
> --- /dev/null
> +++ b/drivers/soc/atmel/sfr.c
> @@ -0,0 +1,99 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * sfr.c - driver for special function registers
> + *
> + * Copyright (C) 2019 Bootlin.
> + *
> + */
> +#include <linux/mfd/syscon.h>
> +#include <linux/module.h>
> +#include <linux/nvmem-provider.h>
> +#include <linux/random.h>
> +#include <linux/of.h>
> +#include <linux/of_device.h>
> +#include <linux/platform_device.h>
> +#include <linux/regmap.h>
> +
> +#define SFR_SN0		0x4c
> +#define SFR_SN_SIZE	8
> +
> +struct atmel_sfr_priv {
> +	struct regmap			*regmap;
> +};
> +
> +static int atmel_sfr_read(void *context, unsigned int offset,
> +			  void *buf, size_t bytes)
> +{
> +	struct atmel_sfr_priv *priv = context;
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
> +	.size = SFR_SN_SIZE,
> +	.reg_read = atmel_sfr_read,
> +};
> +
> +static int atmel_sfr_probe(struct platform_device *pdev)
> +{
> +	struct device *dev = &pdev->dev;
> +	struct device_node *np = dev->of_node;
> +	struct nvmem_device *nvmem;
> +	struct atmel_sfr_priv *priv;
> +	u8 sn[SFR_SN_SIZE];
> +	int ret;
> +
> +	priv = devm_kmalloc(dev, sizeof(*priv), GFP_KERNEL);
> +	if (!priv)
> +		return -ENOMEM;
> +
> +	priv->regmap = syscon_node_to_regmap(np);
> +	if (IS_ERR(priv->regmap)) {
> +		dev_err(dev, "cannot get parent's regmap\n");
> +		return PTR_ERR(priv->regmap);
> +	}
> +
> +	atmel_sfr_nvmem_config.dev = dev;
> +	atmel_sfr_nvmem_config.priv = priv;
> +
> +	nvmem = devm_nvmem_register(dev, &atmel_sfr_nvmem_config);
> +	if (IS_ERR(nvmem)) {
> +		dev_err(dev, "error registering nvmem config\n");
> +		return PTR_ERR(nvmem);
> +	}
> +
> +	ret = atmel_sfr_read(priv, 0, sn, SFR_SN_SIZE);
> +	if (ret == 0)
> +		add_device_randomness(sn, SFR_SN_SIZE);
> +
> +	return 0;

	return ret;

to not miss a possible error from atmel_sfr_read().

The code looks good, with this fixed one can add:
Tested-by: Tudor Ambarus <tudor.ambarus@microchip.com>
Reviewed-by: Tudor Ambarus <tudor.ambarus@microchip.com>

As I told in v3, I have some doubts on the use cases for this driver, but let's
see what the at91 folks think.

Cheers,
ta

> +}
> +
> +static const struct of_device_id atmel_sfr_dt_ids[] = {
> +	{
> +		.compatible = "atmel,sama5d2-sfr",
> +	}, {
> +		.compatible = "atmel,sama5d4-sfr",
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
