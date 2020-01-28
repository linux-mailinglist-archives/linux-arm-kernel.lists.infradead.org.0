Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 004B414B9C5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 15:36:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=ISivH+AArLiLFh5SMEzjhbfxYIZtAOem3kPlJIl0Ukg=; b=SvinNosVb9mmYi
	ylVpInbHkvW9kdq4flbnGZSNXnGWQlFwsy7c5DS77ihBDPV7PWdladu6xnTS9SQHUKeqbrnfqH7+2
	pSAJgyDWfvFBliQ7Hn5HRp/T9rQtvXVeFR+BOIoPkJ/up0d2NvOGI7iuB6ztnk+JwZBJn9uxfyyju
	NmPq+6HrMLOrTdqBCRNynuqheCxKpHqqqo2bWDSLNs0VTP6MydXQp231BcsMh81d6j3ZOH9XeZzV2
	ujTUN1U0vinULQs+2sjybVNTO7Kh28vi2kTSF/nESPCB6isdSjgXljXCnFfedPaWkzp9WeAExRpF+
	L50t+mB0loUobGrUSENA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwRy6-0005Hr-Le; Tue, 28 Jan 2020 14:35:54 +0000
Received: from mail-am6eur05on2080.outbound.protection.outlook.com
 ([40.107.22.80] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwRxx-0005HN-8d
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 14:35:46 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=niaNENZxhKCfe3dgV/jlpMUUgcS8PZ1lYdkxqJfkhhV5jdjt1p5tnrQUKGAogtKTPFj/IMCU1OJp9sP5LkztS9vyVc0xhNMdnJjyAeLIMnm7QE63Qg9KFJcqpyWPcX17mZdHt+qjGK+DUS4oktyk2icYdTT+f7BtvVPWL6tBusx9pIxYyA/RRdcFEet6Kbni1fc+HiC74tS+ClViU9uSyMQECShFqVadYPqoGqjYFRENQ93+lTMsEIkxQtiXFIdl73jBpchShwKod2kIDxOFi/RpYe2SqEl55rRDuUS01fOX7xgR5QParkuOHlN0y6eFC818a1Gs1WaQyqSl3LSR3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8FI25x3oaRWs1en9uz1ETd6l5xdxCixn30IJA0XIHi8=;
 b=exN14uVXpL+Ce6HsV5k2B+8Fdd3HQ/NxNFdNH6u009a9yK/mwcMMdUknHpI5ZHA2QXP3rAfYTUPNal1EPNmsvbAf5KLBv78y23H9TDu72KJ1jLzbvIw6UhhpucueGDIfrvd/fCFdFmoj31xoZ+XC2bxY/WhDBbNspEvnv7HaN+LkW8JZKL6sTLQi3FzaxZlTRkd6pgpjeiyWhmO2AwKQ0e7jheg3P0cxlqk0QC6e1EAm+2ZwhPz9MhDqedz/OyB93xEEvhVmSp6tkN3dtDPcaGlGmbh1IvtLkGBOdLiCcgMmrNW7Apa3bu8ZoHlfDvDmGfXrJl+6CN5SHOE6CE3tqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8FI25x3oaRWs1en9uz1ETd6l5xdxCixn30IJA0XIHi8=;
 b=IR8j1bQOMYxTxNybq8e8RnOPd6HRPR3vBPSvPtO88qbfeZgWFHKjHx0qqbtGUvwqftg9/rmEBEpjKKl5ZwaJTQK3OFT8zBwjYB45aWznYfP9anp1KZ55PjU4UNozeTfWIlNk+rs0dtCoZiNCguewDXVV8/qA6mxOk138ONo7v6A=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB5599.eurprd04.prod.outlook.com (20.178.125.147) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2665.23; Tue, 28 Jan 2020 14:35:42 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::58c5:f02f:2211:4953]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::58c5:f02f:2211:4953%7]) with mapi id 15.20.2665.026; Tue, 28 Jan 2020
 14:35:42 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Peng Fan <peng.fan@nxp.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>, 
 "arnd@arndb.de" <arnd@arndb.de>
Subject: Re: [PATCH V3 2/2] soc: imx: increase build coverage for imx8m soc
 driver
Thread-Topic: [PATCH V3 2/2] soc: imx: increase build coverage for imx8m soc
 driver
Thread-Index: AQHV1aCjGc6WVJY+NES5jeQSOsfpxg==
Date: Tue, 28 Jan 2020 14:35:41 +0000
Message-ID: <VI1PR04MB70231AC9140BD13FD0539678EE0A0@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <1580191098-5886-1-git-send-email-peng.fan@nxp.com>
 <1580191098-5886-3-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: bc1f9f5e-cf20-4698-d8fe-08d7a3ff5a29
x-ms-traffictypediagnostic: VI1PR04MB5599:|VI1PR04MB5599:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB5599DF16EB1921747573E155EE0A0@VI1PR04MB5599.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 029651C7A1
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(136003)(39860400002)(366004)(376002)(346002)(199004)(189003)(8676002)(81166006)(55016002)(5660300002)(66556008)(186003)(8936002)(66476007)(26005)(76116006)(66946007)(64756008)(110136005)(478600001)(9686003)(316002)(66446008)(86362001)(44832011)(54906003)(91956017)(7696005)(53546011)(33656002)(71200400001)(6506007)(4326008)(2906002)(52536014)(81156014)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5599;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WO86M7YQQ87T5V2oMKp0PrDRqEX/VGGmmubYLqSy/Ouc2g43xJq0UvihcwHfNFx/b/7kjNFl7p/C1NeAoL/nvk4tA4sKH1NpSCGSlv6q4FiTdRhi9QWomHoPMf4eQyzgtD22zgS8LfLzzHb+8VrBoXd2Gfd2r+BtdnvNVHjsp1PvssfOOLXBRr70clw+epNm+woSnyla5gbeifM3eNJN9JNZYA+sg8ajsGuYU4RbQdwORhGbgAGwjK5hmdQ/XxQD7A1GCR/eKAfoEpLPUWcATXVeRSnInZIYqqSBYnh1xh4C7mr4Q4CpJWJhUtGuXQRMj+dLuvO9DWWtjLHY1rJM0xoh85rtyMKJ0d5rywm2HnMG6NpknD+POAZKWpPjAdTtIQMQ9FeNzY3zSkslkOwJkVmDarJOgJLAUXaTtKIjjhHVNOYovUCgCXGh8bTFHtmF8VvcDwpY3NHvLmaCUkUdQT28b6XWm80259QQ/s0UPeUHfmX5oN+7lAXv5QLGI+iP
x-ms-exchange-antispam-messagedata: 6K6iGvB0I+H1chba2UnxmVZBdbsGYQlA3HQ+Bqbqt+UfFfi/l7sKY5RK6Uiy6yiFtxM1I7R+We5YX37yH681k5Tbdddu1KaE5v4t7/gcEOMoAMbwnACs01eT+Iswd4ip58G3M7WcTT8Fu6A9zKvE3A==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bc1f9f5e-cf20-4698-d8fe-08d7a3ff5a29
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jan 2020 14:35:41.9142 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zWtMO3SEnmqZ3QGKtZDmmVApdcInF4P6zzFHf+daNdH3nvhYJPIzmoD/EEG6ct54Iw5vAXBTNw0FvO/4WQyxWw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5599
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_063545_382397_B1CA21FE 
X-CRM114-Status: GOOD (  12.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.22.80 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "krzk@kernel.org" <krzk@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "olof@lixom.net" <olof@lixom.net>, "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 28.01.2020 08:03, Peng Fan wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> The soc-imx8.c driver is actually for i.MX8M family, so rename it
> to soc-imx8m.c.
> 
> Use CONFIG_SOC_IMX8M as build gate, not CONFIG_ARCH_MXC, to control
> whether build this driver, also make it possible for compile test.
> 
> Default set it to y for ARCH_MXC && ARM64
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Reviewed-by: Leonard Crestez <leonard.crestez@nxp.com>

> ---
>   drivers/soc/Makefile                        | 2 +-
>   drivers/soc/imx/Kconfig                     | 9 +++++++++
>   drivers/soc/imx/Makefile                    | 2 +-
>   drivers/soc/imx/{soc-imx8.c => soc-imx8m.c} | 0
>   4 files changed, 11 insertions(+), 2 deletions(-)
>   rename drivers/soc/imx/{soc-imx8.c => soc-imx8m.c} (100%)
> 
> diff --git a/drivers/soc/Makefile b/drivers/soc/Makefile
> index 2ec355003524..614986cd1713 100644
> --- a/drivers/soc/Makefile
> +++ b/drivers/soc/Makefile
> @@ -11,7 +11,7 @@ obj-$(CONFIG_ARCH_DOVE)		+= dove/
>   obj-$(CONFIG_MACH_DOVE)		+= dove/
>   obj-y				+= fsl/
>   obj-$(CONFIG_ARCH_GEMINI)	+= gemini/
> -obj-$(CONFIG_ARCH_MXC)		+= imx/
> +obj-y				+= imx/
>   obj-$(CONFIG_ARCH_IXP4XX)	+= ixp4xx/
>   obj-$(CONFIG_SOC_XWAY)		+= lantiq/
>   obj-y				+= mediatek/
> diff --git a/drivers/soc/imx/Kconfig b/drivers/soc/imx/Kconfig
> index 0281ef9a1800..70019cefa617 100644
> --- a/drivers/soc/imx/Kconfig
> +++ b/drivers/soc/imx/Kconfig
> @@ -17,4 +17,13 @@ config IMX_SCU_SOC
>   	  Controller Unit SoC info module, it will provide the SoC info
>   	  like SoC family, ID and revision etc.
>   
> +config SOC_IMX8M
> +	bool "i.MX8M SoC family support"
> +	depends on ARCH_MXC || COMPILE_TEST
> +	default ARCH_MXC && ARM64
> +	help
> +	  If you say yes here you get support for the NXP i.MX8M family
> +	  support, it will provide the SoC info like SoC family,
> +	  ID and revision etc.
> +
>   endmenu
> diff --git a/drivers/soc/imx/Makefile b/drivers/soc/imx/Makefile
> index cf9ca42ff739..103e2c93c342 100644
> --- a/drivers/soc/imx/Makefile
> +++ b/drivers/soc/imx/Makefile
> @@ -1,5 +1,5 @@
>   # SPDX-License-Identifier: GPL-2.0-only
>   obj-$(CONFIG_HAVE_IMX_GPC) += gpc.o
>   obj-$(CONFIG_IMX_GPCV2_PM_DOMAINS) += gpcv2.o
> -obj-$(CONFIG_ARCH_MXC) += soc-imx8.o
> +obj-$(CONFIG_SOC_IMX8M) += soc-imx8m.o
>   obj-$(CONFIG_IMX_SCU_SOC) += soc-imx-scu.o
> diff --git a/drivers/soc/imx/soc-imx8.c b/drivers/soc/imx/soc-imx8m.c
> similarity index 100%
> rename from drivers/soc/imx/soc-imx8.c
> rename to drivers/soc/imx/soc-imx8m.c


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
