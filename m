Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3B3118677A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 10:09:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vd4CAUZAhY8z/+7wnlwS6FlESfsUjc/6401UUewwZS8=; b=nUbPICR+v7YMjG
	h1ikpJh4kS3NrT4N0qvaheHj2JZZ2cyVsxJI7fFR5/oMuR953PZxq6VcdMLhzBDABvAURt9RMjtxF
	BJvGmv+url1boi1hAKgNi6OMbu9xXkvIzj3aK0WxAb3ucpzqZg9ExWuYDC69FV/z2otT4PGz3p8St
	NLir9lJ8gYkqiMnNEwFkwsOqlkN+eIP/ez13FifJnPPPOfysC4oznZ5hH5lC+zVE1YNizeuGGMlzZ
	0xew/GXCNk3VJWyooU1YMt3yFjDkKgVJ8x0JuvTGggnJfiywuUW11YKzQdSLlVzpGmGPbBxsPSMk4
	4BefRxwUuI75kvWetcDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDlkD-0002vz-TF; Mon, 16 Mar 2020 09:09:10 +0000
Received: from mail-eopbgr70055.outbound.protection.outlook.com ([40.107.7.55]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDlk2-0002vS-NJ
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 09:09:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SeQUXUpc0Xbrod7aklB7IhDQuVgyevv/fImH3PkKCLjLFkC0NpRkfPJwLuU6cx81kpRrFzL/fu+XAdfgzA1Jc64v3YwoMKCdJ8ExNQmkTVgmXqEuryJYfVD0AXD1aJSlbTt+TJhJlyflJiZEiYFQvMZwVtDBA3ga9o6xB7WgAeiPmFhio3paS5VWMoGFJftfKiff0b42dLCvjD3O6bC8RRg/TXTvhlVf3LQ18t4hyyDR6lgA56zWdMkUwGiV+7kxXAeugdq+dirPM/+l3kGKwGOCknDkJkvjj3nbQJUuqgrMC2Gnj9ZqY35orq2Sb/sRvSmbEp1pOe4Emp6WxSJzFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3kjgbNFQGJVbdwxCHfpgZXiPXx2dSYRdXoSSFADNk6s=;
 b=E9HCk4Lmu7+UcQe+rq4rQrPW/yjaELdrRze8gNspmcnUYTrRBa1DIBCsilwQI5gk31/jx/CcMwt4gtRvH4Dsd50W59naN1Dztf6XU63RbfyOoaBZSaCi4dG1S+EJdSIMTmPq1DphezK90FXAQyVHxRAUREmf0oBFBcNaa3VdLqJ8w6hrB8mNkEn6SUMlMqPfDwoC6D9coTSafSXYd3cakbdcM7HtYQrF5yIWouM9NEPnVEq5YJaB1EaA1j1BFnzB5ES+aTB4mweC3enjy4hw9eLxCWQYkBzIbc4tI2pJGqIIWiSC3TdHE9vaR0Ke2CxHe0YH8yZ6r4friBpQM/U/nA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3kjgbNFQGJVbdwxCHfpgZXiPXx2dSYRdXoSSFADNk6s=;
 b=PvYcswTtFXiF8KaGnJ+oQRWTHV+bBOjVgNlgjW6QzWr3rPRsMXJIpi8letNQhHthD74g6R4zaRBXHxjqj6y6Dl953PkTY1p8j3HyEwSkfXWVbaIw1ODpopZxufr11tSYuAWO0oXYdz+r1Z8G2rpV3lyjawJKfLUba7ooZMI8u/s=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3913.eurprd04.prod.outlook.com (52.134.65.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.18; Mon, 16 Mar 2020 09:08:54 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3143:c46:62e4:8a8b]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3143:c46:62e4:8a8b%7]) with mapi id 15.20.2814.021; Mon, 16 Mar 2020
 09:08:54 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: RE: [PATCH V3 1/7] firmware: imx: Add stubs for !CONFIG_IMX_SCU case
Thread-Topic: [PATCH V3 1/7] firmware: imx: Add stubs for !CONFIG_IMX_SCU case
Thread-Index: AQHV9av62LAReQhoZkKZ9LnT5dFdbahARTIAgAopwQCAACFfgIAABHaAgAADEYCAAAR+AIAASuWQgAAKpACAAABIoIAABUuAgAABn+A=
Date: Mon, 16 Mar 2020 09:08:53 +0000
Message-ID: <DB3PR0402MB391683A05820920158DFDA77F5F90@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1583714300-19085-1-git-send-email-Anson.Huang@nxp.com>
 <AM0PR04MB4481F087AC3CDA691300710288FE0@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <20200316005219.GD17221@dragon>
 <AM0PR04MB44819E4A9E027F1555C33D0B88F90@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <20200316030744.GC17221@dragon>
 <AM0PR04MB44817A48746601EADA4E06BC88F90@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <20200316033447.GE17221@dragon>
 <DB3PR0402MB3916DA9F0F175B9D2E9E684FF5F90@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <20200316084056.GG4518@piout.net>
 <DB3PR0402MB391663DB37A8D241092AD708F5F90@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <20200316090053.GH4518@piout.net>
In-Reply-To: <20200316090053.GH4518@piout.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: b0225dfd-997e-45af-c0d3-08d7c989a6bf
x-ms-traffictypediagnostic: DB3PR0402MB3913:|DB3PR0402MB3913:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3913F57B4249EB6BE885172BF5F90@DB3PR0402MB3913.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 03449D5DD1
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(396003)(346002)(136003)(39860400002)(366004)(199004)(76116006)(71200400001)(66556008)(8676002)(66476007)(2906002)(66946007)(81156014)(81166006)(66446008)(64756008)(6506007)(55016002)(44832011)(9686003)(7696005)(54906003)(5660300002)(7416002)(478600001)(316002)(33656002)(86362001)(6916009)(4326008)(52536014)(8936002)(26005)(186003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3913;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Tme6ENiCGhuOHJ3+bkaEKvdCWwWZKX+UtuXA5yr0GJEStqOzL1t1shOjUClxkRNicO8W1aulaXd986Av4exBjZgmGDv23oOUNjIx5Iz/qTSEylLp3KXWwswap4NEpXl7iVSueQMZ3/gjxGENZbQ8KmrYsVl0Y1uP0W8SFyyJTzswvBT3xRQxTzWVEMuhuKz2Kkq4AKCgDBHR7gRA9iB+BoxrkJECt0N1ULpxwqjjGonYLo3eVa8bIWqOb88Jf5s6m9ypZ+msEtuu/wYPb5OEEytOAk9pGGr/UwWcfzYXmNe6GTpg8ZtonkjK2Kinhsz/uLejC6fNAsGIsV6m9KDj6A9J9MCt6wrd91A0xBvPUcf7RxwAq5H+h38loz15Zl7zs2qKzb7rAyqEuJCsGBi7JfRbmyrF35ym4j1PSWUkK8E6JJyvEfrjMFMMnGG54KLC
x-ms-exchange-antispam-messagedata: CHrqtDOfD+64TlZJOBIyqkF0sqx7Zmtpwjows/UXA22Gq6ML8W+lz0pVXeIT4uVd2+jGhVlMnmKxSvQE/FH4hHgo4su0yB3k7nkAvDEOLWQ3L72BgG3yGdAn1Jx07o+qoBDiUiUAbIWmgrBsA7gZZw==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b0225dfd-997e-45af-c0d3-08d7c989a6bf
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Mar 2020 09:08:53.9073 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jem9JTRit0K1ldnKfsoTiTO+y83DBSOiEF91ZTH1woVlhsZSMqHdhn7HnS3y+0jH5T1VjBy4+gBbaupYGABPvw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3913
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_020858_859040_F2FD128C 
X-CRM114-Status: GOOD (  18.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.55 listed in list.dnswl.org]
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
Cc: Peng Fan <peng.fan@nxp.com>,
 "m.felsch@pengutronix.de" <m.felsch@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-rtc@vger.kernel.org" <linux-rtc@vger.kernel.org>,
 "robh@kernel.org" <robh@kernel.org>,
 "amit.kucheria@verdurent.com" <amit.kucheria@verdurent.com>,
 "wim@linux-watchdog.org" <wim@linux-watchdog.org>,
 "daniel.lezcano@linaro.org" <daniel.lezcano@linaro.org>,
 "krzk@kernel.org" <krzk@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "linux-input@vger.kernel.org" <linux-input@vger.kernel.org>,
 "rui.zhang@intel.com" <rui.zhang@intel.com>,
 "ronald@innovation.ch" <ronald@innovation.ch>,
 "linux@roeck-us.net" <linux@roeck-us.net>,
 "linux-watchdog@vger.kernel.org" <linux-watchdog@vger.kernel.org>,
 "arnd@arndb.de" <arnd@arndb.de>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "andriy.shevchenko@linux.intel.com" <andriy.shevchenko@linux.intel.com>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>,
 "a.zummo@towertech.it" <a.zummo@towertech.it>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "dmitry.torokhov@gmail.com" <dmitry.torokhov@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux@rempel-privat.de" <linux@rempel-privat.de>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Alexandre

> Subject: Re: [PATCH V3 1/7] firmware: imx: Add stubs for !CONFIG_IMX_SCU
> case
> 
> On 16/03/2020 08:44:10+0000, Anson Huang wrote:
> >
> >
> > > Subject: Re: [PATCH V3 1/7] firmware: imx: Add stubs for
> > > !CONFIG_IMX_SCU case
> > >
> > > On 16/03/2020 08:04:17+0000, Anson Huang wrote:
> > > > Hi, Shawn
> > > >
> > > > > Subject: Re: [PATCH V3 1/7] firmware: imx: Add stubs for
> > > > > !CONFIG_IMX_SCU case
> > > > >
> > > > > On Mon, Mar 16, 2020 at 03:18:43AM +0000, Peng Fan wrote:
> > > > > > Just sent out. One more thing, I think all drivers depends on
> > > > > > IMX_SCU should not have COMPILE_TEST if we plan not to add
> > > > > > dummy functions. I see you picked up Anson's patch in
> > > > > > imx/drivers branch,
> > > please check more.
> > > > >
> > > > > Ha, yes. COMPILE_TEST should be dropped for IMX_SCU_PD in
> > > > > Anson's
> > > patch.
> > > > > Thanks for reminding.
> > > >
> > > > I still NOT quite understand why we won't support COMPILE_TEST for
> > > > SCU drivers, with whose stubs, the build should be OK, if there is
> > > > any build error, we should try to fix it, NOT just remove the
> > > > COMPILE_TEST
> > > support, any special reason?
> > > >
> > >
> > > COMPILE_TEST is supported as long as IMX_SCU is selected like is it
> > > for any driver depending on any bus.
> >
> > But without having " || COMPILE_TEST " in kconfig, COMPILE_TEST will
> > NOT be supported, I think as long as we have stubs for those SCU APIs,
> > all drivers depending on IMX_SCU can support COMPILE_TEST
> independently.
> >
> 
> 
> Why do you absolutely need to compile them independently? From a code
> coverage point of view, having:
> 
> COMPILE_TEST=y
> CONFIG_IMX_SCU=y
> 
> is enough to select and compile the remaining drivers.

What I meant is for below case, like using other arch config which does NOT have
CONFIG_IMX_SCU selected, ONLY with COMPILE_TEST selected, adding stubs for
IMX_SCU APIs can fix such scenario.

COMPILE_TEST=y
CONFIG_IMX_SCU=n

Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
