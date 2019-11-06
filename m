Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DB25F0B90
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 02:18:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BmMffJmmuXkPnCoYg/nfwwm/YOsP4dVCNW7olUBH5KE=; b=h0nPn5JqJ9Xp3k
	qOe+Ggg6EEAtP3nXAooksChfOYEjSQpIb33MEvYKJsi9yXiyPUKjf+MJ6uaSKI0SzgQoRtxEe57FD
	lDhZEYyUePh5S5+gbNkQNDZAxcSdA+WDliB2qKY7eE49X07/eECdvAvoT8rrvw6hNZXkJe0k2bAL8
	B5BF0zYaUj+lOCJ+FUlaF1WanbbUgiHZVuDSK/MI1KX6fRD5MRBp/TvrTstGwsGsIaERwY1sz3b1R
	/TPbr3+XgS/Oi/PHzyozNRPa06aCcwphmKjN52UDZrMoYSlRoEIE/2346+tPnxVn6jDSH2t5w8nAX
	GLusVhk6E5jl4JjzCGJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS9xs-00077i-ML; Wed, 06 Nov 2019 01:18:28 +0000
Received: from mail-eopbgr130052.outbound.protection.outlook.com
 ([40.107.13.52] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS9xl-000779-4e
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 01:18:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GsTRy0PmkL+AYGpEHWs1gHzxUw3kIQ4Fv26o1tLo5/+63GxmQ93Lfxl2euwItYpIH0tQ3LjpNKKee4rqI2HufR4JrkTUFG00j3RXrGDdYh6kgjMqq/7GEbS0SLuImCQDetnUoJ81eDfJ3228VAN2143M8omA7UXFH4yCwY3TBfbm0gcoy+tX8AIIJM3v9a0rwAZFgH6ciuN0Ioa3ooejSULeJ/R7tFSUhepVunll4MQEBzZoQHQWVWAi+yPecwzVrVOPmXznOKLWJA6pVT4rjVN20I7TeW+cCMkMRqFbls1vpPDEm8/Mc0LbJLB+wgZAZGeA15Sdj/7EbaTVbC7Bxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7v0ETZoKv7r8OqNEEcZWbCbhQXD+oTMo8o9Ky7AAofE=;
 b=eg9uMpI2q9oVML03Kk5I5kXJjxl+JuYxkBzykJRWB20bOTnONiS93o3wFKhtFbDdTHTDpLhdiiq3l1bIzL6tqOUeTt+Us/6ZcHFvPDVXv9ZmLWLYbpkfkFWZZdNrCH4BysVBJF/lO+uU9XEL+2cHNSHp0mung/MBlDbbJzxnwicCJBbpgit7/NEredDz7ufJYzcCBz97Y7PXAoEZPFHSG53Rzzt4chtqZBl/w+JaVm5e16lFe4d8SAx+rqV3lACcdYb/b3VEyoki9s2WFt9kN0exWvnFTySDPUJ7hutK8BefiC6pwL8UJFECTVHqVMGoDzaxhgtoF4qliAQBdJRTiQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7v0ETZoKv7r8OqNEEcZWbCbhQXD+oTMo8o9Ky7AAofE=;
 b=ifTEUPLPgpqO8utUSm7SN8ZqmaSH6OhJ5c74sBPDZbwN9puvCmvw2+pTAeWVmSvEU9N6dxV0JcNcKpGbCv0XQN26mAf20LzPr0B9Pzd+a5Tlfspr99+UlStllNbXrJp9iaS+jutNrc/96ZCKkSHKu3lR1gmkjzZLcSHjMoHXJno=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5619.eurprd04.prod.outlook.com (20.178.119.155) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.20; Wed, 6 Nov 2019 01:18:17 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::f16d:a26a:840:f97c]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::f16d:a26a:840:f97c%4]) with mapi id 15.20.2408.024; Wed, 6 Nov 2019
 01:18:16 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, "sboyd@kernel.org"
 <sboyd@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>, Abel Vesa <abel.vesa@nxp.com>
Subject: RE: [PATCH] clk: imx: pll14xx: initialize flags to 0
Thread-Topic: [PATCH] clk: imx: pll14xx: initialize flags to 0
Thread-Index: AQHVk6mXpyRie0JbfEaM7Eg+PLW60ad8ilUAgADOL2A=
Date: Wed, 6 Nov 2019 01:18:16 +0000
Message-ID: <AM0PR04MB4481DC8B916E01AFF2D4BA8788790@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1572938372-7006-1-git-send-email-peng.fan@nxp.com>
 <7966140a-7fec-0a8f-6ced-e4fbccef51da@pengutronix.de>
In-Reply-To: <7966140a-7fec-0a8f-6ced-e4fbccef51da@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: fe1d5e94-8b93-43e5-b219-08d7625733f7
x-ms-traffictypediagnostic: AM0PR04MB5619:|AM0PR04MB5619:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB5619C0B75898759A1452BAD588790@AM0PR04MB5619.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 02135EB356
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(39860400002)(346002)(376002)(396003)(366004)(199004)(189003)(54906003)(110136005)(6436002)(316002)(966005)(6246003)(186003)(2501003)(478600001)(14454004)(45080400002)(71200400001)(446003)(11346002)(86362001)(71190400001)(44832011)(25786009)(8936002)(486006)(2201001)(74316002)(305945005)(8676002)(7736002)(476003)(81156014)(6636002)(81166006)(7696005)(53546011)(5660300002)(6306002)(76176011)(76116006)(99286004)(26005)(14444005)(256004)(102836004)(33656002)(66476007)(6116002)(2906002)(3846002)(4326008)(66556008)(64756008)(66446008)(229853002)(9686003)(66066001)(55016002)(66946007)(6506007)(52536014);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5619;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: SV9CdZRpivAwklmjw2gB9bypLLXO0QEVSruuh11hm1f9PlWnVUm4MWIxkeBUVYfCBw70RMH2Jpc4fhKP89+xDDezd6Jt/yqETdhyLcpcYzmmAjwzIOXvZiopS8LpObAcbJiUg0MyxEDL9Iv8NNRjSLmqqGoja7r/FjFY1reIPaVCTSIxOVle3ddxwzGMSxHXwY/VLM0P3wkY0loIE8UwXxJ3ni6Mgk/y50ORPtEOJP5cTdViTZIWEBdzZ3hAixd+a32q1l16oeL30mBnVI6CCi0jeCEEWZbpxK70DBBKGqbtJo26eMMyTGDDqsXqyfXNHzEti0x9yZ2uuSlJB7sxlvkXcjZSsiJRVV4zGqLYi8VRJFGhK22PW/YKKNCyHtaYKw7SLadShvrRmsdZN8qv2mvg2xhJLtrJts81RS6obLVhuHlfS6I6Plk0KB0WjO3KzLx5vj41EopwE2h/aiiTggZSufcsPhO43UhKhrmloZA=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fe1d5e94-8b93-43e5-b219-08d7625733f7
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Nov 2019 01:18:16.9382 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tUQQHoe9/4AsKorGSlYOBy0vJRJtDHMEqO13scnyx66bOCG2i1H6nbdhZLgT6yCYHeD+pKOhWLONTNj34N4BRA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5619
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_171821_260817_986052D5 
X-CRM114-Status: GOOD (  17.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.52 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: Re: [PATCH] clk: imx: pll14xx: initialize flags to 0
> 
> Hello Peng,
> 
> On 11/5/19 8:21 AM, Peng Fan wrote:
> > From: Peng Fan <peng.fan@nxp.com>
> >
> > init.flags is initialized with value from pll_clk->flags, however
> > imx_1443x_pll and imx_1416x_pll are not static structure,
> 
> They don't have a static in front of them, but they still have static storage
> duration.

Yes. I am wrong.

> 
> > so flags
> > might be random value. So let's initialize flags as 0 now.
> 
> I fail to see how. Members not listed in the { initializer-list } are implicitly
> initialized as if they were static objects, so flags should already be zero.

Understand.

> 
> (I assumed this patch is based on Shawn's imx-clk-5.5 tag)

Yes.

Drop this patch.

Thanks,
Peng.

> 
> Cheers
> Ahmad
> 
> 
> >
> > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > ---
> >  drivers/clk/imx/clk-pll14xx.c | 2 ++
> >  1 file changed, 2 insertions(+)
> >
> > diff --git a/drivers/clk/imx/clk-pll14xx.c
> > b/drivers/clk/imx/clk-pll14xx.c index fa76e04251c4..a7f1c1abe664
> > 100644
> > --- a/drivers/clk/imx/clk-pll14xx.c
> > +++ b/drivers/clk/imx/clk-pll14xx.c
> > @@ -65,12 +65,14 @@ struct imx_pll14xx_clk imx_1443x_pll = {
> >  	.type = PLL_1443X,
> >  	.rate_table = imx_pll1443x_tbl,
> >  	.rate_count = ARRAY_SIZE(imx_pll1443x_tbl),
> > +	.flags = 0,
> >  };
> >
> >  struct imx_pll14xx_clk imx_1416x_pll = {
> >  	.type = PLL_1416X,
> >  	.rate_table = imx_pll1416x_tbl,
> >  	.rate_count = ARRAY_SIZE(imx_pll1416x_tbl),
> > +	.flags = 0,
> >  };
> >
> >  static const struct imx_pll14xx_rate_table *imx_get_pll_settings(
> >
> 
> --
> Pengutronix e.K.                           |
> |
> Industrial Linux Solutions                 |
> https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fwww.p
> engutronix.de%2F&amp;data=02%7C01%7Cpeng.fan%40nxp.com%7Cd19f6f7
> 6f49e40ed516108d761eff88d%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C
> 0%7C1%7C637085555604797300&amp;sdata=MVUvIPUFpkhLj6KDs1Za2sBU
> FNPMrWvS9vA9BuxqQ3k%3D&amp;reserved=0  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0
> |
> Amtsgericht Hildesheim, HRA 2686           | Fax:
> +49-5121-206917-5555 |
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
