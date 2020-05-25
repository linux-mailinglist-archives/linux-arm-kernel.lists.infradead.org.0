Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DB791E1141
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 17:06:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=joSwOK/VZW9umdt7oR8b3WOZR+Y2PNKYR3X4zvML1Aw=; b=ua8MEp4wKSifHc
	gzSAvEhlxX275ZCPUDzrEXPnzgZpI/zcXR2V0DfRCTIRm1XccBp0/fXxJGfq7QXJVg8CVHrXNwLR0
	wWa80xwYQzcIK2zNiD739Jb8BZTi2yVYgIIq5yVowczoCxLqiUjw4kAUGp+BOkm9Ulc5a9rZYM8Ci
	12E3CgUpTbrW6qpdG/Y5AmdsUZp5u8CCB0PAgZYPGJ938YyU05JEqUURIqhf5gWHBq41+CxDXx0vA
	XOvMEsd4nsU4F+IBvYuP/waWQ7xPUzz5DzZdY52ZQuVpc9TgB8YK5LcxNc0iAZldH5kiB1chkug+e
	PbEzUkHjNfCZ36rh4XzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdEfm-0001z9-Ot; Mon, 25 May 2020 15:05:50 +0000
Received: from mail-vi1eur05on2078.outbound.protection.outlook.com
 ([40.107.21.78] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdEfe-0001yW-99
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 15:05:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Vw2oI8vVqYkroFrLTNOByJpTPTXw9ka75Zu6yl7TeX6NwMpTuVMmgM0QwSNjUDTUTMCSBZvekRAnKyscJXkxF1S/4A3q3TWTleNAkAyVsDf8G8egeTaJsdBgEpCvQTmikzE92Ken9aVNDFhZeCnTSYjJvpS7D1n/RPRV2C+rPsNArOeRjzTtswg+KYVFQXbw52LyOBkRYy3+Pk1NOXcxsUTF7w4jYECXSOo8WjjNydRcaWIbNTK2zPT9kFlvvE64zaPmjJn9pXOm0cXpB+oAvd4gtP5UUKh3/Xsmpn1y8VdZ98lqIB2NJZPUdQGLHx912uaiwNjppm32Q2EbJq9wpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zmlqqsdEPrfiX8FYkwjFbIC27l/QSxWL9ZgWk7aG2O4=;
 b=Xch9pkbcWNfLLJiyFl1ZylPm2YKJ/iJy5lEiDyNFblR77Gxp5SU1uZSDQfwJIoCCnw3aOgqvC86YxGwB04eGIFCwy8OzQKIZrmlq1O/iMgm2hfhCef9kZvawQSMT9Iav5HFX3Encvo68eXBjv2TrNYzxiSNNVtzIX7Y8uBlRk1UZmRtUanhryaWHVe/jLl1ihHa9uVftsquya7S+k9J0A0d/dvbwkteaMKvBt7wkriAhRuRiv8HJchSqhXOWQpNlaR3iZiTp9HymLVxyNGuNerphnpgsyM6WuOy+yhyj4zBhwJlpn9bXXQn0cKnxODrCNCs6optC4NuQVo105NWvog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zmlqqsdEPrfiX8FYkwjFbIC27l/QSxWL9ZgWk7aG2O4=;
 b=KjeVsADqHMJ+3fZbI+plpQx1awVk+d8NBmkX22HZazAMnUXG7oBHyj1KLzWSjeSGuVMmiDyiDqRLNiH7IdTgP2Jq9e5Gd2G4+TnsZnmgxUhVHNldtCZcxXmkblEV29zqeMkjdyPNQh0+hR6wCmaoZlj4vL5xk1X6t+PBKMcL1r4=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (2603:10a6:8:10::18)
 by DB3PR0402MB3836.eurprd04.prod.outlook.com (2603:10a6:8:f::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.23; Mon, 25 May
 2020 15:05:38 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::1dab:b68c:e028:acb3]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::1dab:b68c:e028:acb3%6]) with mapi id 15.20.3021.029; Mon, 25 May 2020
 15:05:38 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>, "rui.zhang@intel.com"
 <rui.zhang@intel.com>, "amit.kucheria@verdurent.com"
 <amit.kucheria@verdurent.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH] thermal: imx8mm: Add get_trend ops
Thread-Topic: [PATCH] thermal: imx8mm: Add get_trend ops
Thread-Index: AQHWKNOp8EPkl0qqRkG+GoQWiQOYA6i0bHgAgABvx3CAAM7gAIAAy+LwgAGwT5CAAI+kAIAAQRqA
Date: Mon, 25 May 2020 15:05:38 +0000
Message-ID: <DB3PR0402MB391695A412B26134060D1D1BF5B30@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1589338689-15700-1-git-send-email-Anson.Huang@nxp.com>
 <fccf4197-d0ca-f313-8f70-000ef4731033@linaro.org>
 <DB3PR0402MB3916B6D11328A036BD479D39F5B50@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <6a4d31e4-8a24-2e9f-aa49-bec8258ead4c@linaro.org>
 <DB3PR0402MB39167D71ED6979FC33D3747DF5B20@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <DB3PR0402MB39162E6A876BA54A80B0DCE2F5B30@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <dadf94db-8aa5-d1a7-5818-c56032a44ea4@linaro.org>
In-Reply-To: <dadf94db-8aa5-d1a7-5818-c56032a44ea4@linaro.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: linaro.org; dkim=none (message not signed)
 header.d=none;linaro.org; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [183.192.13.100]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 41fe8431-20c7-45ce-51d0-08d800bd15a9
x-ms-traffictypediagnostic: DB3PR0402MB3836:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB38361B07C1F6D27EB11A5FEBF5B30@DB3PR0402MB3836.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0414DF926F
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MJpWMjmsyP1McZYkupRPAqduE//Y2gnv3JXcsUnyUBLTRogFqjBJxx61ZFetwL3Nxzv+MY+bwjPQMumjUcn3lqGRgG9gorCapxWYbX9fOdViiRda5+n9RtF0XcgRi73Qz4Zvphx1Pylsobj+fkoxLOw/BVlF6ffwdFP/fLRClQeAJa3oFM6e/fr9rRwnaSJd/rS2s7ejWL0buU0IOuZ36T7HaPR0fG35zHqJaQvFm2nKUx4zGyATlFjmQC5GhuxNpfjduywSf1VchSjS/M3WNIRdXLJID2N+b9YkzkbtM3qG+jEmgQRHQQD3gFqROuVXp54ICXtWbA7f8hJLxVQbTD7/c9kiaCAMIHxs1m2MKai9L5D83op6YmOMBDe0FhSo0dsJ0ohArlxRxjWpfG9Z2A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB3PR0402MB3916.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(376002)(396003)(366004)(346002)(39860400002)(66946007)(186003)(4326008)(478600001)(26005)(7696005)(316002)(6506007)(53546011)(66446008)(66556008)(76116006)(64756008)(71200400001)(2906002)(66476007)(8676002)(52536014)(5660300002)(33656002)(7416002)(86362001)(55016002)(8936002)(9686003)(44832011)(110136005)(32563001)(921003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: QP7ctTnYcyTgcMU7PWHq8ollHnjIzSTmuQU4oEx/6ykdXgka3MdIfEK1rHq0lV/X3ATr1fNbSBaVBR2fTrdrFSEDkWX9BJcIu1ZVZZQmxl/dPzdjXxUvo3wC5xocV8jIIBUX40cduh7R6Zf61S9lSW1r6/XR33coi96KarOOAVzjakTfQ4fpsLufeVPH6PYg71Sda+kQD5WHdIOSblrHGHe/9zYhB4FohXV3WalCJcUv30ubVbxI4hPBsFfPghI/zAQG1tbPCLlZmW5B5lktmHn0OgxUvYhvtoCyLCCjEJ9OxGqJ6KerCVqigIY1DIv0pml0SOJwWqUQURqNFEf2xwv3LKIpYF3VIhQabtFw+k3VH2UBHmopQFhoJjoKNl9YPismLjbptqH6ZyI6ytJ2+tTh7fc/QZjV7YW3g9uhuaffxYh2D7rAi9WNaT8pKidlXnEGnq0lxMx5A5EhXIZ1RCC8VtDjrVw60QzC5bcs7j4Pm1wfeos2EQeZhMw7/1At
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 41fe8431-20c7-45ce-51d0-08d800bd15a9
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 May 2020 15:05:38.3333 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fbKtxaUjhzWt2XMVgBfRp5v5ZpvKAltsFYT7e8bACIHXuHIXFtKLVwR3gYheynm8prAPETMp9xa42Ckb0H13DQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3836
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_080542_423461_237E20F1 
X-CRM114-Status: GOOD (  25.73  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.21.78 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.21.78 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Daniel

> Subject: Re: [PATCH] thermal: imx8mm: Add get_trend ops
> 
> On 25/05/2020 04:46, Anson Huang wrote:
> > Hi, Daniel
> 
> [ ... ]
> 
> > I tried modifying the min/max to '2' in cooling map, it works that
> > whenever cooling action is needed, the max cooling action will be
> > applied. But I also noticed some behaviors which NOT as expected:
> >
> > 1. to easy the test, I enable the " CONFIG_THERMAL_WRITABLE_TRIPS",
> > and just modify the passive trip threshold to trigger the cooling
> > action, this is much more easy then putting the board into an oven to
> > increase the SoC temperature or running many high loading test to
> > increase the temperature, but when I modify the passive trip threshold
> > to be lower than current temperature, the cooling action is NOT
> > triggered immediately, it is because the default step_wise governor
> > will NOT trigger the cooling action when the trend is
> > THERMAL_TREND_STABLE. But what expected is, when the temperature is
> > exceed the passive trip threshold, the cooling action can be triggered
> > immediately no matter the trend is stable or raising.
> 
> You are right, what is expected is, when the temperature exceeds the passive
> trip threshold, a cooling action happens, the trend is raising in this case.
> 
> But in your test, it is not what is happening: the trip point is changing, not the
> temperature.
> 
> Probably, the cpufreq driver is at its lowest OPP, so there is no room for more
> cooling effect when changing the trip point.
> 
> IMO, the test is not right as the trip point is decreased to a temperature where
> actually the SoC is not hot.
> 
> If you want to test it easily, I recommend to use dhrystone, something like:
> 
>  dhrystone -t 6 -l 10000
> 
> That will make your board to heat immediately.

Thanks, I understand. To aligned with the formal test method, I will inform our test
team to update the test case to meet the requirement.

> 
> > That
> > means we have to implement our own .get_trend callback?
> 
> From my POV it must disappear, because it has little meaning. The governor is
> the one which should be dealing with that and call the corresponding cooling
> index.

OK, I will use common .get_trend() implementation.

> 
> > 2. No margin for releasing the cooling action, for example, if cooling
> > action is triggered, when the temperature drops below the passive trip
> > threshold, the cooling action will be cancelled immediately, if SoC
> > keeps running at full performance, the temperature will increase very
> > soon, which may cause the SoC keep triggering/cancelling the cooling
> > action around the passive trip threshold. If there is a margin, the
> > situation will be much better.
> >
> > Do you have any idea/comment about them?
> 
> Yes, that is a good point. The hysteresis is supposed to do that. There is a work
> done by Andrzej Pietrasiewicz to disable / enable the thermal zones [1]. I think
> we should be able to fix that after the changes are done.

OK, then I will wait for this change. So to apply MAX cooling action immediately,
all expected changes for i.MX platforms are to assign min/max cooling index in
DT cooling map, I will summit a patch set then.

Thanks,
Anson.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
