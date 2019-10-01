Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAF2FC37F9
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 16:45:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s+lAtraAcRjV7AuHfF4/+6+xntNl+GJufGBNJWCPsW4=; b=TN5p2FLXs8oSXy
	ttdFq7zi+No6T4o5ccWVEV0PVxJu4C28/n7AL5VfXlk3QSor5n2ayB2FAuGapLpUosFmfLAtC4Zgw
	rdFzxl9gEc7YyuuMcoBY2Y947q9bgM1ukEh+1iykgBRm1Cdi8+QmPa/TKuCM+RB5eA1qooOcotMWt
	aHIZ9u2sS7sRh7OIt5K3TDrypLzp3dg595pJNMcT8tsW9CO1zo0lsvvRviXbV1bXw07j+uxmIJQJO
	5gheyqLS94F/MfDjYkOas+wrbsarV+uXRpJUgdklsD7JsyrAFlA8jEJ4ejf05b6rn7n+qQTjbF8JP
	iiBXkSLt5NAHKQVonAcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFJOx-0006Sf-Th; Tue, 01 Oct 2019 14:45:19 +0000
Received: from mail-eopbgr70055.outbound.protection.outlook.com ([40.107.7.55]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFJOl-0005W0-1O
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 14:45:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FCKjlRlFk3TA8TCaneS7sIi7VoftPea6mC+tyGxK9xqcAwRdQBsqfvVZ6CzVSnpMJGGv3JpdNRMErO1ZABBpJ+PLK04AxZgOkNnC2a9SWjVbCfofSeT/cjW+xivb8UeWP52aitwq+KiNdmBGVXAPNVEBSe4hqALXJC7jHyWLy+LxdKowN+edsAbf+AFcNrXChcA02ZIRcN/mlAyg8tVCaVZ6pzomXU3pYNUJq46aNDvP1fqKwXj7NCZdgKlvlNeL3lpkXJaunSTxkRQn34GIQNRZFn0pPQ+ZrgV3fbgF3XVPgUOz9wg4LzYxMuuBew05UdNxho7URAKnONTBoHZ7Tw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Fpk5bg8yHFceEbfXDU5pRhdled4cpLLpzt0VL11XZoE=;
 b=b9+gOeE8VPCNW+sI4HJJLaCdiy7cyX742U+7VWHztaj1+NNEjohgFF4PKYpr9EfI8tbvX+XmbnKciccj8SjO1FtluTdL4GAArU2rrdl+QPs899eYT+FAXYujaNTu09MuQ7aALx8K/xTWyNK9s93SdeVkstSYdHNOlXty+mPwm7hVhWg72DYPAvHJ6YZxXrI4WAnaf7t5Yl5wvwKxCFG8vessPbJENMS1h7bmP86r1epOpaRmZqrl/QCBSop3uXFZE7w/+EGLUemIjjkIwnXYi6xwYiN4qoKLN/wq6zNiUITjxL2UC4KS4diJsj/pTpH9fQdy2tHQtsNVc1SaGLtj6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Fpk5bg8yHFceEbfXDU5pRhdled4cpLLpzt0VL11XZoE=;
 b=ICD79ETWMJtWg/DvUB9wkvJ6RQpayoQerHpl3mOKZpxDKfvmX8oDbetkooJyvi1e2dovpq4kep9iRVut7GDTY6tICZbjZqdKlnR6vl9VrqOy/x5rGbM7+X6mASqTkclGzQ+7fzTKiWxnbULY2VX9O4WPa6rT3XgMPHh39De+lgU=
Received: from VI1PR04MB4094.eurprd04.prod.outlook.com (52.133.13.160) by
 VI1PR04MB4991.eurprd04.prod.outlook.com (20.177.49.220) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.17; Tue, 1 Oct 2019 14:45:01 +0000
Received: from VI1PR04MB4094.eurprd04.prod.outlook.com
 ([fe80::6ced:919:ea4f:5000]) by VI1PR04MB4094.eurprd04.prod.outlook.com
 ([fe80::6ced:919:ea4f:5000%6]) with mapi id 15.20.2305.017; Tue, 1 Oct 2019
 14:45:01 +0000
From: Daniel Baluta <daniel.baluta@nxp.com>
To: "broonie@kernel.org" <broonie@kernel.org>, "arnd@arndb.de" <arnd@arndb.de>
Subject: Re: [PATCH] ASoC: SOF: imx: fix reverse CONFIG_SND_SOC_SOF_OF
 dependency
Thread-Topic: [PATCH] ASoC: SOF: imx: fix reverse CONFIG_SND_SOC_SOF_OF
 dependency
Thread-Index: AQHVeGNxrQzh2sOFKEyKM74n1aPArKdF3NMA
Date: Tue, 1 Oct 2019 14:45:01 +0000
Message-ID: <100bf3142f6043e5d1615d2f99677938770e7c4b.camel@nxp.com>
References: <20191001142026.1124917-1-arnd@arndb.de>
In-Reply-To: <20191001142026.1124917-1-arnd@arndb.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=daniel.baluta@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 69a33f01-701e-4a7e-d354-08d7467df078
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: VI1PR04MB4991:|VI1PR04MB4991:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB4991E9145DD1DB459AEA751FF99D0@VI1PR04MB4991.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0177904E6B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(979002)(4636009)(39860400002)(366004)(376002)(136003)(346002)(396003)(199004)(189003)(5660300002)(36756003)(91956017)(6512007)(256004)(76116006)(4326008)(229853002)(6486002)(81166006)(110136005)(316002)(25786009)(14454004)(8936002)(6116002)(81156014)(54906003)(118296001)(6436002)(3846002)(6246003)(50226002)(478600001)(11346002)(2616005)(66066001)(486006)(476003)(2906002)(446003)(186003)(66556008)(44832011)(2501003)(102836004)(26005)(305945005)(6506007)(7736002)(64756008)(66446008)(99286004)(71200400001)(66476007)(66946007)(86362001)(8676002)(71190400001)(7416002)(76176011)(99106002)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB4991;
 H:VI1PR04MB4094.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kUCTygm93eDpLDRMO7AXuGrmMIlCa6C86+AMXzWYMTYTvBTJHrnUtsGR/kn9U1CQztXnXTJNLV8BNOeOp/vUABA8FBkGN/Puu3HsAFNb27qdYLOozLrMnuoJgekKqT82cRiro824xGo2WqbBSOT6HrAa2M+OXuIK8fovA0w3lk+5tcR+/6uyYe0Pj6vM2KS+JIa+yaXBycElwlH1NWsY3wMQkH0j9/zQaRJHLrmuawsJkNs0gi4bISFkC5j6sYbFQRCB7mSDnlm+BxSJ0QN0w6bhT9kL5Qv9x2K8YXzZv7atB+zcX3PMG8bfo9HUYX95nhzcYg3VgVDHgoC0NUP0G+3Vqpsm+OJ5LcoaYm7wDuDJWPEbEsZ36w3nOXwaojJrYoZtlNhK5X6YC2XLXJyNpjvwMcvAlXmrNh8Y15UcplM=
Content-ID: <2201E3394F70494086F1E44768C0FC7B@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 69a33f01-701e-4a7e-d354-08d7467df078
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Oct 2019 14:45:01.4451 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: N/wCaJCl/p8Kz0edEcCdjElILRQmMXzVBmhmqK98e8FsF7j2ChE1i1FOJhdDI2+voX27yjK5lIMPRrFpSKshVQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4991
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_074507_197370_D8F89401 
X-CRM114-Status: GOOD (  19.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.55 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.7.55 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "alsa-devel@alsa-project.org" <alsa-devel@alsa-project.org>,
 "lgirdwood@gmail.com" <lgirdwood@gmail.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "tiwai@suse.com" <tiwai@suse.com>,
 "yuehaibing@huawei.com" <yuehaibing@huawei.com>,
 "pierre-louis.bossart@linux.intel.com" <pierre-louis.bossart@linux.intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "hulkci@huawei.com" <hulkci@huawei.com>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "perex@perex.cz" <perex@perex.cz>, "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2019-10-01 at 16:20 +0200, Arnd Bergmann wrote:
> CONFIG_SND_SOC_SOF_IMX depends on CONFIG_SND_SOC_SOF, but is in
> turn referenced by the sof-of-dev driver. This creates a reverse
> dependency that manifests in a link error when CONFIG_SND_SOC_SOF_OF
> is built-in but CONFIG_SND_SOC_SOF_IMX=m:
> 
> sound/soc/sof/sof-of-dev.o:(.data+0x118): undefined reference to
> `sof_imx8_ops'
> 
> Make the latter a 'bool' symbol and change the Makefile so the imx8
> driver is compiled the same way as the driver using it.
> 
> A nicer way would be to reverse the layering and move all
> the imx specific bits of sof-of-dev.c into the imx driver
> itself, which can then call into the common code. Doing this
> would need more testing and can be done if we add another
> driver like the first one.
> 
> Fixes: f4df4e4042b0 ("ASoC: SOF: imx8: Fix COMPILE_TEST error")
> Fixes: 202acc565a1f ("ASoC: SOF: imx: Add i.MX8 HW support")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Acked-by: Daniel Baluta <daniel.baluta@nxp.com>

Indeed we will need to somehow avoid getting sof_imx8_ops from 
sof-of-dev.c by directly referencing it. 

Will keep this in mind for the next platform.

Thanks a lot Arnd!

> ---
>  sound/soc/sof/imx/Kconfig  | 2 +-
>  sound/soc/sof/imx/Makefile | 4 +++-
>  2 files changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/sound/soc/sof/imx/Kconfig b/sound/soc/sof/imx/Kconfig
> index 5acae75f5750..a3891654a1fc 100644
> --- a/sound/soc/sof/imx/Kconfig
> +++ b/sound/soc/sof/imx/Kconfig
> @@ -12,7 +12,7 @@ config SND_SOC_SOF_IMX_TOPLEVEL
>  if SND_SOC_SOF_IMX_TOPLEVEL
>  
>  config SND_SOC_SOF_IMX8
> -	tristate "SOF support for i.MX8"
> +	bool "SOF support for i.MX8"
>  	depends on IMX_SCU
>  	depends on IMX_DSP
>  	help
> diff --git a/sound/soc/sof/imx/Makefile b/sound/soc/sof/imx/Makefile
> index 6ef908e8c807..9e8f35df0ff2 100644
> --- a/sound/soc/sof/imx/Makefile
> +++ b/sound/soc/sof/imx/Makefile
> @@ -1,4 +1,6 @@
>  # SPDX-License-Identifier: (GPL-2.0 OR BSD-3-Clause)
>  snd-sof-imx8-objs := imx8.o
>  
> -obj-$(CONFIG_SND_SOC_SOF_IMX8) += snd-sof-imx8.o
> +ifdef CONFIG_SND_SOC_SOF_IMX8
> +obj-$(CONFIG_SND_SOC_SOF_OF) += snd-sof-imx8.o
> +endif
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
