Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9F0ACB4FE
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 09:29:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oMgh0iO2jwnJsOX3g+MVVAglndmQtAfJR8Qz2Q+Izys=; b=gRpp+11DRHjH4E
	8GP1GOWW9ByS23IoGjjsaOgsBI4+R2Db+HJUAxSx/5zZZxnw48EbInHUutErkA/ajaTeSes7duzwN
	27CM26q3cL+oDzhQXOp9NDi2XJhHkulbDU+a8jHLVBR2wMbOAlGf+PhPLYQT3cDI+FETNUTNPY36e
	vfnuRkBp3jLwy/aQ0oUUHdTt4CJMJmFZz/uTEwNt/lp0LtHzPz2UfVnswVRA9gLMISM/vytJGPI4J
	17VZkI3nH8XG/Upv44djHIOr2cYQ6cjxKXnVJRC3EWHC+64ndH4Plxl8bR/GO0lric54/tyAeeVVq
	ay7l41lQPOrl6rA49XcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGI21-0002gY-Sb; Fri, 04 Oct 2019 07:29:41 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGI1t-0002g1-LZ
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 07:29:36 +0000
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
IronPort-SDR: smxKjCRoxdxzfIK/+dsSD/+JKF6oHBPeKzXzb/02KPu+Ixp6ou20khAzg/el0LT+RuUA/qByj6
 5XzK7O0wqIQYd+wSho1KmAWjlN1FbpGTO8k7Dwj2dy3OOUiCqUKKCnB2OBme3dTW3YX6DGq5v4
 Dt35WDYtogpGeNsxRzxPjRdHhdXEx903kL8JcuVFI6PSJjZxnAbI/WeeolsRumynuj82EVsLtV
 F3CuJBbVlRP7kyUbu+xBIHkgT1q6pwbevfqP9zjMTWlthjIe/yUt0FpMoXLLlyWiGJTMLBeaJi
 Nnw=
X-IronPort-AV: E=Sophos;i="5.67,255,1566889200"; d="scan'208";a="50158049"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 04 Oct 2019 00:29:32 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 4 Oct 2019 00:29:30 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 4 Oct 2019 00:29:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RQOdk762cpC2/MjnFzNJPLXdKnuEVip5ulKHmCSa5zY9QRA1kEg4gWCt144xRLhY2iVYzGIcrEWdiMgu3lSgVUefZ5pFhaFuajfSOIo7WQwQ1E+QmSxn4p4pZCXZYAuN/rgLZLWWCj+KC3Z1kOZf99OWktSW9/S/UjrnpDeBpjBZMsCTDtq5gsSWpH7EuQ9zFd8PQooIQRGHM44gt8NcexVrEKXbZ2i25DxLX/EqR8DPlmBJ6InIo00Tv2fwr2+VVM31jjASdpoe5e29s3Ijhf5aK3yaMooyCOR4u+1VaT9RStVkzg/la+Z3zxAfhSNvWAALnoBkHELx8fr3lGapVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vr4i7SKIezxyK3I5nlDVZC7x1rFDiP12SSH7fG66/FA=;
 b=GabCdMsu2YvM1d5/Dt7XVqnyTvh+lDx4nostwgbey2lV6CwGW/xnSpwdDQGXDFViC395sLQ8KDXq0LuPQsmYN6/yFEJggR/6f2ARvW+A59DO31HVM74W6m056uICeDCzE6w8GKU+IeDcZn76NFikIaj8RyCxYdd+wOZaoT+yc/FCMXZOmbaTO/p22C3jF66QRKrhqv79VJ9p/mQmzPsP1f5Oqhg+xVOzVIAeAPgzIHZR2dLlsIL8+6/VpzdAo6GG7dY29/po7Kwe/tMPPVqdY62d5Rz7LIfgkR4swvUYC1z9181TEw0sNooR6+TC7zkU9voWbyB5rK2bQmfGVE9C4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vr4i7SKIezxyK3I5nlDVZC7x1rFDiP12SSH7fG66/FA=;
 b=uVDmQfR2st1mEhT9CuDyTFkqMJjGOXNjpAa6glElXYjNbfZzpmX/xJZQHFJWd9O7KOQcywtk00/FS9OgI62B4SMTVVsjAYtXoTDen2wQoKOFUu4oH5F24QsW9RykI5Zw517dFk1cGKwVjuz1YBO6Y1B58xKW5A6CtDEW6diclp4=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB3904.namprd11.prod.outlook.com (20.179.151.80) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2327.23; Fri, 4 Oct 2019 07:29:24 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::340d:5a33:dc79:1184]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::340d:5a33:dc79:1184%5]) with mapi id 15.20.2305.023; Fri, 4 Oct 2019
 07:29:24 +0000
From: <Tudor.Ambarus@microchip.com>
To: <kamel.bouhara@bootlin.com>, <Nicolas.Ferre@microchip.com>,
 <alexandre.belloni@bootlin.com>, <Ludovic.Desroches@microchip.com>,
 <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v3] soc: at91: Add Atmel SFR SN (Serial Number) support
Thread-Topic: [PATCH v3] soc: at91: Add Atmel SFR SN (Serial Number) support
Thread-Index: AQHVeeA0JR4R7ZzLG0y4zK4g6f6ROKdKFxiA
Date: Fri, 4 Oct 2019 07:29:24 +0000
Message-ID: <0b863bf1-7950-a139-92c5-d983821e8021@microchip.com>
References: <20191003114606.7846-1-kamel.bouhara@bootlin.com>
In-Reply-To: <20191003114606.7846-1-kamel.bouhara@bootlin.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR02CA0052.eurprd02.prod.outlook.com
 (2603:10a6:802:14::23) To MN2PR11MB4448.namprd11.prod.outlook.com
 (2603:10b6:208:193::29)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 37217259-996c-4637-a3e9-08d7489c946a
x-ms-traffictypediagnostic: MN2PR11MB3904:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB39048E5828D489FA086A7FA6F09E0@MN2PR11MB3904.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 018093A9B5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(346002)(376002)(39860400002)(366004)(396003)(40224003)(189003)(199004)(66066001)(110136005)(316002)(305945005)(31686004)(6246003)(66446008)(2906002)(64756008)(25786009)(66946007)(6116002)(3846002)(7736002)(66556008)(66476007)(6512007)(6306002)(6486002)(2616005)(8936002)(476003)(966005)(8676002)(486006)(229853002)(81166006)(99286004)(478600001)(36756003)(11346002)(86362001)(26005)(446003)(14454004)(6436002)(31696002)(71190400001)(71200400001)(186003)(76176011)(14444005)(256004)(5660300002)(102836004)(52116002)(4326008)(53546011)(6506007)(386003)(81156014)(2501003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3904;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: d+MGp3OztwnE9OAjVdwcNPMK2oHVvqNW8Q90YZL9+NPTzeKsI9VdyoqEXkgLJ3GqON2Jc0PYpkNPhkI6noiQ1gfp8mvreLpqtRxD95QQQqOMNByXrAe7kbVUXXgn5qCNXbQAwp8+fLY10eJK0Wu/oaIG/j4uhzVPtXdA9dEvlMRqAAHuF+KVgAE+HrctqEFX9pSElSSxF4BASxacY41kAvLonD7a/2rbvF3/yL+QgBQlcKeGGAtfAnG1VBhj/su40B5W85w9p8ApWhdScPdFk5hkvVrZN7g9ukqobgwgC2R4rZtuk2B0czkb1jj7BqOuMU4VUioTwQtTDp30B7ipbRFzNhhgdNcdvZSYbOEKDunXVylS/gmJRJnCeWrYxrENkYXJe6Eq0YFYEtSagRkk4hrjIJJ5ZKqtwslIv5inIyVv/3FeMFAATFENxv2j3E54B8wgyF3DSzKOtnd6kBP4bA==
Content-ID: <CB5BC03C6829C9419A0E242BDEED3527@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 37217259-996c-4637-a3e9-08d7489c946a
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Oct 2019 07:29:24.1407 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vdP8S/ZSshMrJh+qTSCmyUNXTP4LMGSt5oxQBx74DYwwIugCzVlSCuYm82o8+afMwqUIEnBU4NT8jCrTs3dgxIzbi0Q8D6FGMzVRN9YrhIg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3904
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_002933_770224_E0D1A6D4 
X-CRM114-Status: GOOD (  26.96  )
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

On 10/03/2019 02:46 PM, Kamel Bouhara wrote:
> External E-Mail
> 
> 
> Add support to read SFR's read-only registers providing the SoC
> Serial Numbers (SN0+SN1) to userspace.
> 
> ~ #  hexdump -n 8  -e'"%d\n"' /sys/bus/nvmem/devices/atmel-sfr0/nvmem

nitpick probably it's better to print the SN in hex, so %08x instead of %d

> 959527243
> 371539274
> 
> Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>

Tested-by: Tudor Ambarus <tudor.ambarus@microchip.com>

Is the SN unique for each device or it is unique per SoC? For example, for
sama5d2, I get the following (in hex):

root@sama5d2-xplained-sd:~#  hexdump -n 8  -e '"%08x\n"'
/sys/bus/nvmem/devices/atmel-sfr0/nvmem
4643524b
02010657

If this is unique for each device, then maybe is it worth to add the serial
number in the entropy pool (with add_device_randomness()?)

What was your use case, why do you need to print the SN?

And you have a blank line at EOF, but probably the maintainers can remove it, if
the patch will remain as is.

Cheers,
ta

> ---
> Changes in v3:
>  - Fixed typo: processor in Kconfig
>  - Renamed private struct sfr_priv to atmel_sfr_priv
>  - Dropped the drvdata structure as we have same size for both SN
>    registers in SAMA5D2/4, just hardcoded it for now.
>  - Cleaned up private struct from unused members
>  - Fixed misusage of devm_kzalloc
> 
>  drivers/soc/atmel/Kconfig  | 11 +++++
>  drivers/soc/atmel/Makefile |  1 +
>  drivers/soc/atmel/sfr.c    | 93 ++++++++++++++++++++++++++++++++++++++
>  3 files changed, 105 insertions(+)
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
> index 000000000000..e92050b4c09e
> --- /dev/null
> +++ b/drivers/soc/atmel/sfr.c
> @@ -0,0 +1,93 @@
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
> +	return 0;
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
