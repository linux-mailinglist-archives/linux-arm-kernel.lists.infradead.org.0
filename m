Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE52016409A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 10:42:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RkKab693wfoETqqzLZRO9DZknTg8AtlbX7AdbQDjmjE=; b=pOeZIaUPP3vUAn
	UVhm6rJeTUJhmTb5NQZVviv0qx5JlXjwTn59IL78XqSoCOUn77FFzmkjhOANXTaM2hY3aLOIqeudK
	1mByvPFnrloOOssIWZCtsnMVfpihT6sIKJC2/p6EWp9oietYAlAviF+wzEiWi1F2smFOhaFzMQtSX
	1ksSMXLYZMSNbcJffLaUxOAv6ie4k4WeavgzBGXzjpiM2HGaWofrWL/DirgvQyFMWz86f+Wa9/mnK
	MunpiGzAg9BW8JY5WD9qKoeMPTNoFhXsO17PYsJIySLSKOnjOoziAwpPo6nOUOj6OpdeRarF4Hmau
	d/TnoLgldBuIrbMxDdpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Lro-0001Hw-M6; Wed, 19 Feb 2020 09:42:04 +0000
Received: from mail-ve1eur03on0609.outbound.protection.outlook.com
 ([2a01:111:f400:fe09::609]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Lrf-0001HQ-WD
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 09:41:57 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D4YRdq7+pMm/ITpXYg+rrOCY2cBNbY45ZYMATV6RDBASisIyhWFoXqFzVAi7jkYH/NWfNviu8dcUBARkloCqoTRg9t00h/nLWqsToOZZi4XvJ3f7h+VOWgp2LfcaRrpXB1cNWE2oQB8I6kj7pLNNQHQDrJ+j9RotuhqKaAiq1eNXybfeGLqP7rFrW0eaJ9BBRiHig3aoOkTnUojjnlnRujzydo+Kp7BRIWU3x1NpYHaEUDX2fE32Dv1GG+XwpYuA/1sydN4NGARv4GuQDW1YD3XsOS5pKxieboI3aRU3Iutfo2Kg/5twq/hykDerAmKOPL4bFr3xJ1k/Q9mxa3zP6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qaFhKPAI4FHDu0V11FpwCLk2Ij29NBV4bSSiYM0sU0I=;
 b=h0g7caXE4e5pt3ygdT3mqzBdlIwUk+uj/s7hOREHqT3dz3E6EZPOPymblp989emAkuf2fWU/aWMnTe2vc4H9NYSV1gIGIpNe25XBSIaIqYkiGq2jNd61rmnEgA8qpKZ2D5zrjSc0pB0x0/8z4SrMGyyFPFlzyY+BmC1ed6Kv76fUCkOZT213trFu6YYoJ858DJKDbfzY6e1rs+7EAuJT0bVIiWCjXKZTA4xUSAPrisbPBeJpqjeVzz0A4ZHVqolf05wKryQPaIG9OBV7t1cz9lPxW7P7/3Pje0Cck68Ol+TV5CMabX0KfnXAOp5O8Ip1V3OZrXQd+1gKZHLLu0tn+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qaFhKPAI4FHDu0V11FpwCLk2Ij29NBV4bSSiYM0sU0I=;
 b=TemYpHrzOlJR3e7HIweKRlAOXS6bnr3p/2MfSKeGpANWXnvjUhJOlQIPkv2kHg1QQBFbD0ZwuH8VsMIZlhFSzX/eiNpEOmxhRAAVT2NjASfvjVFtSUSOiS4pVZlJbHWZ3O96JcseNrnY2ZkOTVLaP7E9hGOd2uuDaFoU2DtyQHw=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4564.eurprd04.prod.outlook.com (52.135.149.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.22; Wed, 19 Feb 2020 09:41:53 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2729.032; Wed, 19 Feb 2020
 09:41:53 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Viresh Kumar <viresh.kumar@linaro.org>
Subject: RE: [PATCH v2 10/14] cpufreq: dt: Allow platform specific
 intermediate callbacks
Thread-Topic: [PATCH v2 10/14] cpufreq: dt: Allow platform specific
 intermediate callbacks
Thread-Index: AQHV5vuGM17dCu5aOkOrNUFZCKyD1qgiQd0AgAAA43A=
Date: Wed, 19 Feb 2020 09:41:53 +0000
Message-ID: <AM0PR04MB4481A321F1881B111D247BEB88100@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1582099197-20327-1-git-send-email-peng.fan@nxp.com>
 <1582099197-20327-11-git-send-email-peng.fan@nxp.com>
 <20200219093526.hexyzhfuirb2lg4m@vireshk-i7>
In-Reply-To: <20200219093526.hexyzhfuirb2lg4m@vireshk-i7>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 173cc744-cd56-4344-6a77-08d7b51ff3c0
x-ms-traffictypediagnostic: AM0PR04MB4564:|AM0PR04MB4564:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB4564DB872E43AF453BBFBD4288100@AM0PR04MB4564.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3631;
x-forefront-prvs: 0318501FAE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(39860400002)(396003)(376002)(136003)(366004)(199004)(189003)(26005)(6916009)(33656002)(7416002)(6506007)(86362001)(8936002)(53546011)(44832011)(5660300002)(52536014)(2906002)(66946007)(66476007)(66556008)(64756008)(66446008)(76116006)(186003)(316002)(4326008)(9686003)(478600001)(81156014)(55016002)(71200400001)(8676002)(81166006)(7696005)(54906003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4564;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4gSHCALnEEfDSAnQcDTjdfKSSVNFTYO2eU7QSaMmUJOoytw3RrdiAfJ3K1BDqHQjenlMADMDw6f9hj1Cb5Lgb05VzUUZvC1l66afBhJQLnLYnZaErXJJj7wkcI9fnm+ZGhqfucmM1ZQYC8oVAXefoRjSN5BZSZaUfaX0GhJx72LZnCfcFR8SsSDlbeGQN49kjys5vLr0ulscYvOsHImBY4itvJhBe9ZFBWb0jKBkNGpyCgmtGJD7arM5/SUQANlz5He7Grwrp698dh0r4vPcRALeV4+ar8ZLkdFnPfPNkQP9jqfl72N86vZRJqyLgDkZLSN0lHeIsPfTE0mW8pGBmiwh7r6BXJaV5du/DojzBkJSY0y42UgVdWFVizsaj6RvGp7Z+6UHOJCXVk9M6aJPOnk9c0JVMDERJHFMpxLSCtw2C6h9TSLoElGsWTYQGA9F
x-ms-exchange-antispam-messagedata: QEWWOHAUVbonBvA4heJXODSstTtsrfXH0CIxaYaX/7ErfZSxJwrFmCYAyC1aY8IKTAYXgs72I7mzPyUt/Yl3r3u0F2qhSel4HE9BDOpasoHbWIX4rWUMNEbP4+kQq8D9KkE7Zf2kLK3Bla0hixvWiA==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 173cc744-cd56-4344-6a77-08d7b51ff3c0
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Feb 2020 09:41:53.2902 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6EXLl127p1E5jS7OmMwFRONYNWuT9gpxAFvESLH9A3JXOWSwKxPOu1hMfScqQwpkjRjpF8LFidocgX+XsuEn9Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4564
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_014156_033386_3A51752D 
X-CRM114-Status: GOOD (  15.33  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe09:0:0:0:609 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.0 FORGED_SPF_HELO        No description available.
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
Cc: Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "sboyd@kernel.org" <sboyd@kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "rjw@rjwysocki.net" <rjw@rjwysocki.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Viresh,

> Subject: Re: [PATCH v2 10/14] cpufreq: dt: Allow platform specific
> intermediate callbacks
> 
> On 19-02-20, 15:59, peng.fan@nxp.com wrote:
> > From: Peng Fan <peng.fan@nxp.com>
> >
> > Platforms may need to implement platform specific get_intermediate and
> > target_intermediate hooks.
> >
> > Update cpufreq-dt driver's platform data to contain those for such
> > platforms.
> >
> > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > ---
> >  drivers/cpufreq/cpufreq-dt.c | 4 ++++  drivers/cpufreq/cpufreq-dt.h |
> > 4 ++++
> >  2 files changed, 8 insertions(+)
> >
> > diff --git a/drivers/cpufreq/cpufreq-dt.c
> > b/drivers/cpufreq/cpufreq-dt.c index d2b5f062a07b..26fe8dfb9ce6 100644
> > --- a/drivers/cpufreq/cpufreq-dt.c
> > +++ b/drivers/cpufreq/cpufreq-dt.c
> > @@ -363,6 +363,10 @@ static int dt_cpufreq_probe(struct platform_device
> *pdev)
> >  		dt_cpufreq_driver.resume = data->resume;
> >  		if (data->suspend)
> >  			dt_cpufreq_driver.suspend = data->suspend;
> > +		if (data->get_intermediate) {
> > +			dt_cpufreq_driver.target_intermediate =
> data->target_intermediate;
> > +			dt_cpufreq_driver.get_intermediate = data->get_intermediate;
> > +		}
> >  	}
> >
> >  	ret = cpufreq_register_driver(&dt_cpufreq_driver);
> > diff --git a/drivers/cpufreq/cpufreq-dt.h
> > b/drivers/cpufreq/cpufreq-dt.h index a5a45b547d0b..28c8af7ec5ef 100644
> > --- a/drivers/cpufreq/cpufreq-dt.h
> > +++ b/drivers/cpufreq/cpufreq-dt.h
> > @@ -14,6 +14,10 @@ struct cpufreq_policy;  struct
> > cpufreq_dt_platform_data {
> >  	bool have_governor_per_policy;
> >
> > +	unsigned int	(*get_intermediate)(struct cpufreq_policy *policy,
> > +					    unsigned int index);
> > +	int		(*target_intermediate)(struct cpufreq_policy *policy,
> > +					       unsigned int index);
> 
> Who calls them ?

In drivers/cpufreq/cpufreq.c, function __target_index. Line 2065, see below:

2062         notify = !(cpufreq_driver->flags & CPUFREQ_ASYNC_NOTIFICATION);
2063         if (notify) {
2064                 /* Handle switching to intermediate frequency */
2065                 if (cpufreq_driver->get_intermediate) {
2066                         retval = __target_intermediate(policy, &freqs, index);
2067                         if (retval)
2068                                 return retval;
2069
2070                         intermediate_freq = freqs.new;
2071                         /* Set old freq to intermediate */
2072                         if (intermediate_freq)
2073                                 freqs.old = freqs.new;
2074                 }

Inspired from tegra20-cpufreq.c, use target_intermediate could handle
i.MX7ULP cpufreq easier.

Thanks,
Peng. 

> 
> --
> viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
