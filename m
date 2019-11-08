Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28850F475E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 12:50:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SNsk89iVE+xu0s5ABBkjc+NFKr3xauOD6OJlNSoaFkM=; b=J3kzbsg+qAjiPK
	NfJyF06sbXY5t3qUlTxBcDiC6N2+vfkHbUdT3W3Y40jda5d3JI0S+VB8iDme7xVEroE/n0CZQdfz6
	iyb6snHisSRTH0ogu1ViGOM10xr6DqPqIe5ciKN2/v/e2TKvPt82N4Y0+L5pOu1PZzK3dlOS29oYL
	ZlBwR0TlGL4IyFUT3Ap5sw5zzdO7zH5TYHEfYLgKWJCpKicq4w1Fb0Wn4EAbNQz9E2/KK19WjvP2R
	RmPOyUCF3qVI6DTZuBels8iVga2hcI0hC83Rw/COnFnAp7eEcdEY/fLcbaDsXz7mg59PltXpru/lj
	EA5ZtWuPbYQCi5HBfsfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT2mS-0000Us-A8; Fri, 08 Nov 2019 11:50:20 +0000
Received: from mail-eopbgr30062.outbound.protection.outlook.com ([40.107.3.62]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT2mI-00086R-9c
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 11:50:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CmXtum3KL9TtYMBGPjMXQ8vki1/K6GKQyfHttHzFp9jT2SZLU2EhQjieM+8pbiy9DkI8Ps4iwihUAut0TAKQ5nmxPsLnBHBXahmTYZ7nrgMetBcmwL+4rj5xBS51nYlvAr3eLla76VQ7vwBarw8mf4eDjYPlXtcJiYcV9xAX6tmE13FzK55ZJjTfOWi2qnEthpKbrQq6GMKdtubSyZeUqEWZrTtZLnZ5fZbjhDEMZ13l097Qce8a8Vt3cpq20Kf/g1rb3OC4xfbXMAdrNyoao4Gte99w+K6uPZokO+PzBXtpbejc8ElATaAdhpdV8wydMsn3ZcAFcQk/uY1lmdxP7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AL85FRq6GUEqIb1S3M+p28VVKiAEQXD2TKbjWZ/rrpU=;
 b=DRmuZ8Cxk+ymtvAEcYWky0crGWj7d5UO3J982WyBpJwf8U9DpMk7qON+6qQMU/zbDVRmmq62SdZ+1bg+OFeWqGaKtwP4Hzt+TfF9pEQhoAzNH/OqEOlUGUoSfYVF1L6JSCdv4jHluQnwS6HcVjUcooDeS8z0gmhfpeWxI3vY7ng+vxDJF2AC99pcYXMdkvw1yacTsME25n6T7qYiPjXx0l2FagYn3RoZnHb2sEGlIBMWFaid1Ah3U4H3UGsfpZ5pK3h9f+8Z0DqiqQrofaft91qCmGZd+L7yTqB5MkbJHSQHXVAHF5e2qyk/H/HdeCqj5jeXbK3PiaQrZRAJFmALzg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AL85FRq6GUEqIb1S3M+p28VVKiAEQXD2TKbjWZ/rrpU=;
 b=OIN1MnEa/03XoYLOVhMXk9g6J9pZaU/GiIyEgIMgp+U6ER/nRWxpABUGMssc2n0GZwHL0gcE0ZRDGW9YWmerfF3QSFm/y/AH0VZVbZDBN94NOaauT6EeWFSW6ETPSzYCwhR0OfFneP3ngljQGHZiOAovMBZzlQ/NOXhK5vb0X4g=
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com (20.178.202.151) by
 AM0PR04MB4241.eurprd04.prod.outlook.com (52.134.95.152) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.22; Fri, 8 Nov 2019 11:50:04 +0000
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::fd44:1b14:587c:9fde]) by AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::fd44:1b14:587c:9fde%7]) with mapi id 15.20.2430.023; Fri, 8 Nov 2019
 11:50:04 +0000
From: Abel Vesa <abel.vesa@nxp.com>
To: Martin Kepplinger <martink@posteo.de>
Subject: Re: [RFC 0/2] Add workaround for core wake-up on IPI for i.MX8MQ
Thread-Topic: [RFC 0/2] Add workaround for core wake-up on IPI for i.MX8MQ
Thread-Index: AQHVH4Y/3naZJOmQTkOgrNdQmlNuA6eCDj6AgAAIBAA=
Date: Fri, 8 Nov 2019 11:50:03 +0000
Message-ID: <20191108115002.cqzvpxydzwos64vp@fsr-ub1664-175>
References: <20190610121346.15779-1-abel.vesa@nxp.com>
 <d217a9d2-fc60-e057-6775-116542e39e8d@posteo.de>
 <7d3a868a-768c-3cb1-c6d8-bf5fcd1ddd1c@posteo.de>
 <20191030080727.7pcvhd4466dproy4@fsr-ub1664-175>
 <523f92bd-7e89-b48a-afd0-0a9a8bca8344@posteo.de>
 <20191104103525.qjkxh2zhhgaaectk@fsr-ub1664-175>
 <433f3f03-f780-c327-f1e8-fbf046a8374c@posteo.de>
 <VI1PR04MB70231EA80BB20C9A84B1B799EE790@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <c3519156-9769-980b-d9e7-af372ced8797@posteo.de>
In-Reply-To: <c3519156-9769-980b-d9e7-af372ced8797@posteo.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM0PR0102CA0048.eurprd01.prod.exchangelabs.com
 (2603:10a6:208::25) To AM0PR04MB5779.eurprd04.prod.outlook.com
 (2603:10a6:208:131::23)
x-originating-ip: [89.37.124.34]
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=abel.vesa@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 233d9d2a-fc1d-4147-444d-08d76441cb07
x-ms-traffictypediagnostic: AM0PR04MB4241:|AM0PR04MB4241:
x-ms-exchange-purlcount: 4
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB4241C258BB0E250555960967F67B0@AM0PR04MB4241.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0215D7173F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(7916004)(366004)(39860400002)(346002)(376002)(396003)(136003)(189003)(199004)(44832011)(6512007)(14454004)(966005)(33716001)(4326008)(7416002)(5660300002)(1076003)(6916009)(99286004)(6486002)(66476007)(229853002)(256004)(71200400001)(71190400001)(66946007)(66556008)(64756008)(66446008)(476003)(316002)(6506007)(102836004)(486006)(3846002)(53546011)(6116002)(11346002)(186003)(446003)(66066001)(386003)(2906002)(86362001)(6436002)(7736002)(81156014)(81166006)(8676002)(305945005)(8936002)(76176011)(9686003)(26005)(54906003)(52116002)(6246003)(478600001)(45080400002)(6306002)(25786009);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4241;
 H:AM0PR04MB5779.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: YR6sLKvCr30/CW7DNPmTD6zABJHd3AIfojk0c2u/aqyVRBI3qHZDy+iP1JB1jJ+AgcmujVz3uGgYsGAMPb2fHJSeiiWd95IXzCKGnlInVjShGJNIAeLQT1WH+b8bZOSwsTgv/ZSzRknxPyhhtvFmawsVIxTI2BEc/GPMwpY3Lz9aZg8A35vj7tqt7Zm0Ve9aUH0br0dZd9k34wasHAQBdBBXTMctiR3oYjyJiSoMWPNBCopc/MwR4QA79EIBAhXoians6tXWoqWXelTQ2Zcx/NhEWnYQCIZhrNOch+UK2030svczBkEI7jg4qiwXjja7BM4q8tRKsnoBd5MM4gEdPtnXdDNKgWrMoLlyM5IE8yiPCqj6M3dLHwaefQfA2/3KUP8/DIL77LjH0g94EXstWOQuQm9vX/lz1XWwZ7SrEklcr71+jx7QuS/qDGRm7S+P4isIb/lxYmj4GblKGr8YjlcCt4h8wyKoMuYkksfVKY8=
Content-ID: <AB93741E731CC44CB7CD708840BD8F8C@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 233d9d2a-fc1d-4147-444d-08d76441cb07
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Nov 2019 11:50:04.0336 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HMu6batiaO0ACAfzt3sKe4gyVKis40ODSw0tNEjJARWHDgRPNLdU5rNUjdJ18YAakLZ7iVpGogXqP1VyGq5eWg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4241
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_035010_446084_20112290 
X-CRM114-Status: GOOD (  14.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.62 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Jacky Bai <ping.bai@nxp.com>,
 Carlo Caione <ccaione@baylibre.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Thomas Gleixner <tglx@linutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19-11-08 12:21:21, Martin Kepplinger wrote:

> Hi Leonard, hi Abel,
> 
> Thanks for having a look! To sum up this problem and not to get confused:
> 
> We have the workaround that changes irq-imx-gpcv2 from this very email
> thread, to be used with mainline ATF. when applying Abel's recent diff,
> Linux 5.4 boots but I still don't have a cpuidle driver.
> 
> When I enable CONFIG_ARM_PSCI_CPUIDLE, the kernel hangs during boot
> (after probing mmc, but that doesn't tell much)
> 
> What do I miss?
> 

OK, please fetch the branches called "imx8mq-err11171" from both following github repos and give it a try:

https://github.com/abelvesa/linux.git

and

https://github.com/abelvesa/arm-trusted-firmware.git

I just tested it. Works with defconfig.

> 
> Then (in parallel) we have NXP's ATF:
> https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fsource.codeaurora.org%2Fexternal%2Fimx%2Fimx-atf%2Flog%2F%3Fh%3Dimx_4.19.35_1.0.0&amp;data=02%7C01%7Cabel.vesa%40nxp.com%7C0a5a09f616c84932e06d08d7643dccaf%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C637088088896134121&amp;sdata=tq0aUGawG%2FhRRXZB9jdIi2xSNGHINhbWM1ZpDKPFrqU%3D&amp;reserved=0
> that I test in parallel (and will actually want to have cpuidle right
> now too). The workaround in Linux in that case looks like so:
> https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fsource.codeaurora.org%2Fexternal%2Fimx%2Flinux-imx%2Fcommit%2F%3Fh%3Dimx_4.19.35_1.0.0%26id%3D26a59057f88997dfe48ab7f81898ddd6b6d3903e&amp;data=02%7C01%7Cabel.vesa%40nxp.com%7C0a5a09f616c84932e06d08d7643dccaf%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C637088088896134121&amp;sdata=GqmtzpS8fB4bxmOXxTNQZrWNCV18lNu7XpX5dmcAEaY%3D&amp;reserved=0
> which changes irq-gic-v3 only.
> 

Forget about the NXP arm-trusted-firmware for now. It will never work with mainline + the workaround patches.

> Since 5.4, also no cpu-sleep state anymore. What would need to change in
> that "NXP" case, for 5.4 to have cpuidle again?
> 
> When I enable ARM_PSCI_CPUIDLE here, right now Linux hangs during boot
> (during probing sdhci but again that seems random).
> 
> I'm still happy for hints :)
> 
> Thanks,
> 
>                               martin
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
