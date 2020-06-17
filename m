Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 680E81FC3F7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 04:05:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iRYzGkL62spU55lyGoqiL4whZiQ4XKTFpTzNSfvu1do=; b=GI1MDvYqx7aDBM
	nRhmtm6PmTkEhsgpfbOpA2vuPRsOc+mJKbD9i6UilyekmnCg+ryFm8a0UISuZS2GKeA1uD8pX+5QO
	FbLtcf92QJkHelNQdsUEBjlPo+ItNiF6hRm638wqy1IsRbi3KRKV1Q0MqlpoZOz3J20cwxcOZf6zH
	Mfl/8VtHc/QFpTPRLt3LH1J9ERawqak0XacnAQd9Hgd8R1n22qTQYMT4FGcI7zb9n8BOMGaVL2vYb
	KuQdS4vWW0+wj+ePNz9/SDgX2LItqQL5KEKQWh8CuHbCWQFubbJNIejZcyOaMaJD1gFgvE2OW4pBX
	0sj3JoFIQgKV/jdvPQjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlNST-0002Vf-Js; Wed, 17 Jun 2020 02:05:45 +0000
Received: from mail-db8eur05on2044.outbound.protection.outlook.com
 ([40.107.20.44] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlNSM-0002Uy-FE
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 02:05:39 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MnrVKoTeXUQ4DQx2feBSKlgIM5FNIUwbOk80HtYTaEB3+PIf1dIJUh3z8VbwxKVQPrsHFdED2BSTQxirTHHnbvjBEvmV0PzdXh0/8mPs3Echji4Zt/XyN68zqCjUvNr44fl9z3VK4kFHSBvm7YMzRuekMWmmfnNHQfZIJ4XW3Fqp0dLa8gxiIawVV4Dqm6ssxJD/7CsnsHlgBCHTbBQH6c0mnad/7TM5HZ/UZwTDJj2j2Df7DmhPF/H5bbMZ+dQTpwzOGLzcWVulKFnSp+/91tkki6+Wp4RvHS9gPninx/3Amo4Nh2wnYC4/tFApxClwVLvY0zkN4tdh34lP6yHAYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=614hbA0ASk2/i3nfT77SmjbCNelaBR61GISzwOiVzfc=;
 b=bhG3PGDXatASbKWPc5RgBfvzcPmyt5oBO0yDViMWQ5kDtVDRNmTMdly7bH/OcJIxXmsDwClACeoo8fqj7grM9fJhC4JSyzrytbYrOz4AL4x0xs3PfTwNwWlHB14REhlhmjyUD18Uj2D2Y41rd8NNoFE0RALTPnejS/xubZfZO0U0HGV8rAViBSub2OI1CgW1F4Gzay63VK/KEaPVGlj0libgsTr2BhS1RI2sTK0t+rR6sh7VHnp68unDohvp7Ym9SNiIrVd1eMJ5wvzG8U2cpZH6etQVLvF3CFx9mY7pDBm86li6x5iIfehjWKKMiO+Zfdz8pAylt4onlZvR6D4XFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=614hbA0ASk2/i3nfT77SmjbCNelaBR61GISzwOiVzfc=;
 b=sTLErWJZFnwZE8heTgZfrAb122fB1TR4yA4srajF6/2g90+KXuYH+lxWxzb4BzX8JhoXvK8bIsQl4LvzPV8VW59pH1Wl/fy2GqscuJsftK8ai7u9RIjQD/cuHOPhqhaJ8qtK3vGPBdC0M415grlAOjwojpr59iHpwdDnX8n38eY=
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com (2603:10a6:4:a1::14)
 by DB6PR0402MB2807.eurprd04.prod.outlook.com (2603:10a6:4:96::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.18; Wed, 17 Jun
 2020 02:05:34 +0000
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::2d36:b569:17c:7701]) by DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::2d36:b569:17c:7701%4]) with mapi id 15.20.3088.028; Wed, 17 Jun 2020
 02:05:34 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Robin Murphy <robin.murphy@arm.com>, =?iso-8859-1?Q?Uwe_Kleine-K=F6nig?=
 <u.kleine-koenig@pengutronix.de>
Subject: RE: [PATCH] soc: imx: Kconfig: force using OF when COMPILE_TEST
Thread-Topic: [PATCH] soc: imx: Kconfig: force using OF when COMPILE_TEST
Thread-Index: AQHWQwBMPelETRHj+kmnxA6W0uIhHKjbaEwAgAALgwCAAJ1eoA==
Date: Wed, 17 Jun 2020 02:05:33 +0000
Message-ID: <DB6PR0402MB2760A1C9863C27F020FCAE58889A0@DB6PR0402MB2760.eurprd04.prod.outlook.com>
References: <1592216485-20574-1-git-send-email-peng.fan@nxp.com>
 <20200616155944.ujespw6johpjst4g@taurus.defre.kleine-koenig.org>
 <6ca1c2a4-0dfc-ea90-b890-58094836818d@arm.com>
In-Reply-To: <6ca1c2a4-0dfc-ea90-b890-58094836818d@arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: arm.com; dkim=none (message not signed)
 header.d=none;arm.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: fad93361-7719-4cbd-44e9-08d81262eb96
x-ms-traffictypediagnostic: DB6PR0402MB2807:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB6PR0402MB2807EF4362FEBECC71F3D859889A0@DB6PR0402MB2807.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:419;
x-forefront-prvs: 04371797A5
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: EeO6phgGa42wxj6yU/kqZVi2DIjXtIzikJ3Avo1go2+BN+rYbuYn1oVzKHNA2LaZNox/HQdbpG7k+pSsHpcSEoQDnmsyHKQUAMCTJgQJGYmCWOXoWE+RvHQYmyZlPOYMXAhpV6pm6EfVA+SzdOYTe3SP25Od4pLTohIzt5Oo81hQKS+2C+LWOmmOxDyAkdMmksjBOuHu0+U6XccCTe3F59yXZs27elLOjJ0jipkjYU84qH/m+02ZjYnx4xgkR0cHTn8EWORsJ4xXmFTozkigQr+YCCGDUc4XMlWRkAZcfvMML/oa6aX7NYD9w+dWrE7qfUrbDPFphgEsZi0bWCmldg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB6PR0402MB2760.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39850400004)(376002)(366004)(396003)(136003)(346002)(110136005)(33656002)(478600001)(9686003)(83380400001)(316002)(8676002)(4326008)(8936002)(71200400001)(86362001)(186003)(44832011)(66946007)(66446008)(76116006)(66476007)(66556008)(64756008)(55016002)(6506007)(54906003)(53546011)(26005)(5660300002)(52536014)(66574015)(2906002)(7696005);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: eb6yZLz4Wc9sybkXM+jBUo78WEVoTkKb40mWsMKkCtyhZfWH/jJgiqqcy8uwilDC8kJ1xg2LGJ3JXP54/eK+RFeNRmC7tdQ4gPRXl99G++lPC/sQLvW8ah/omqQ60ni75+xYIK+U4hy0cqLO7PeTpqGTnBPVldZhSxfxuneFVWDYC4fI+CH5p4mB/jzjoX2IIgSPdOEK5vqji2IZBolVAdPkYaC4c9nY3gKULoYiSw34XwLsCfGLEKpS2jifg5/u+zVUZcCGPnHQG0Rs+dWsMrGImcck+d/KJsdzxzUxXOV0Q3bjUJeBxGc2On3/DrN3SV7YSRT1BHr5Vl6dd327aFJqWru0GJwlpJY0i1Zu2ujckxIzRLWtM/EyZijXnR0MC8BBXRaJqtlgV/GhgmSADYfXXaodhLYxuMfVzJCXp5qyGlo/t5TUUllQUDYhoQmoqsB8qOUd/LWeXWM2T+nURd09/YazpbBcrrLSAGB9sSg=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fad93361-7719-4cbd-44e9-08d81262eb96
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jun 2020 02:05:33.9744 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZEciBxVKNgDiC7LFscac7w/ekis0UQPjSNkitTxkHMo5XBRoi2+4wJ3M/v+74I5qce+W9n7FzWIyz7FQCgykxw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0402MB2807
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_190538_567381_6F7AABC9 
X-CRM114-Status: GOOD (  15.95  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.20.44 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.20.44 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: Re: [PATCH] soc: imx: Kconfig: force using OF when COMPILE_TEST
> =

> On 2020-06-16 16:59, Uwe Kleine-K=F6nig wrote:
> > On Mon, Jun 15, 2020 at 06:21:25PM +0800, peng.fan@nxp.com wrote:
> >> From: Peng Fan <peng.fan@nxp.com>
> >>
> >> Fix the build warning with x86_64-randconfig
> >>>> drivers/soc/imx/soc-imx8m.c:150:34: warning: unused variable
> >>>> 'imx8_soc_match' [-Wunused-const-variable]
> >> static const struct of_device_id imx8_soc_match[] =3D { ^
> >>
> >> Fixes: fc40200ebf82 ("soc: imx: increase build coverage for imx8m soc
> >> driver")
> >> Reported-by: kernel test robot <lkp@intel.com>
> >> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> >> ---
> >>   drivers/soc/imx/Kconfig | 2 +-
> >>   1 file changed, 1 insertion(+), 1 deletion(-)
> >>
> >> diff --git a/drivers/soc/imx/Kconfig b/drivers/soc/imx/Kconfig index
> >> d515d2cc20ed..aadf13c9d396 100644
> >> --- a/drivers/soc/imx/Kconfig
> >> +++ b/drivers/soc/imx/Kconfig
> >> @@ -19,7 +19,7 @@ config IMX_SCU_SOC
> >>
> >>   config SOC_IMX8M
> >>   	bool "i.MX8M SoC family support"
> >> -	depends on ARCH_MXC || COMPILE_TEST
> >> +	depends on ARCH_MXC || (COMPILE_TEST && OF)
> >
> > A bit prettier (IMHO) would be:
> >
> > config SOC_IMX8M
> >   	bool "i.MX8M SoC family support"
> >   	depends on ARCH_MXC || COMPILE_TEST
> > +	depends on OF
> >   	default ARCH_MXC && ARM64
> >   	select SOC_BUS
> >   	help
> =

> That's not just prettier, it's logically correct. If some code needs OF t=
o build
> correctly, then it depends on OF, regardless of *why* it's being built at=
 any
> given time.
> =

> That said, if the only issue in this particular case is the warning above=
, then it's
> hardly a real dependency; simply marking the of_device_id data as
> __maybe_unused (like various other drivers do) should suffice. Limiting
> COMPILE_TEST coverage instead of actually fixing simple issues that it
> exposes seems a bit backwards...

ok, I'll use __maybe_unused in v2, but it actually not make sense to compile
this file for x86_64.

Thanks,
Peng.

> =

> Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
