Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09B642AEAB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 08:29:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8GW+yf6pULqH+rHPo+v3tBJimCvTbkyY4o9volV6MKc=; b=dP8c9wXcvZuLan
	/cBseq0eyPsLXSDU6cBZQrlcJgisfB+MAetYgiEa/LP5Stt3aDgNJeZcyp+6N6/Ywz7dmSpnF+a0K
	W+TjROO/mkOXqWtbeQ/S3NpkS5S4FMuoPNqc7GYAx7BMUgZ+lTvUskgE09cz8x/Kifh6OB9qqKJ06
	Xmvx9aC1A4sDUlUI6d3CRYv1DMHIY01bnfsrQS7koHjqaeMIPOUeoXDEcj5UL3JoPodgHIgO5q6Pb
	ds9IJR9LcsvxYeMCyV3OM9hDm9H0W2p+o3JKhSSzzYxufg0VsadA30PaTu+2QB6bUWYzAYrfgR+El
	TD6SbJCQ8OOPL18g0OjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hV98O-0006fk-Ew; Mon, 27 May 2019 06:29:24 +0000
Received: from mail-eopbgr20077.outbound.protection.outlook.com ([40.107.2.77]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hV98F-0006cP-Jb
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 06:29:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rFtLYzbCbSm//VSTccVakGpmfXw3GfWHxoL0uxG0NsU=;
 b=rlXuPW/5zGEjaURCWbKFWh7126BRye+2OHMpSjPvulR8XbJwfnyUmTq1wOUETKTOO6tfCbrmBWFrV1fffn7OH6R22XQykZgWLzOjmo/i9V4OBbOTJ9nnd8np3XqmyLkZBoQy53EaQnXHc0ps7zDJCrgEQT6W6JQINRbFTHaAEyY=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4402.eurprd04.prod.outlook.com (52.135.148.20) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.18; Mon, 27 May 2019 06:29:11 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::3173:24:d401:2378]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::3173:24:d401:2378%6]) with mapi id 15.20.1922.021; Mon, 27 May 2019
 06:29:11 +0000
From: Peng Fan <peng.fan@nxp.com>
To: =?utf-8?B?QW5kcsOpIFByenl3YXJh?= <andre.przywara@arm.com>, Sudeep Holla
 <sudeep.holla@arm.com>, Florian Fainelli <f.fainelli@gmail.com>
Subject: RE: [PATCH 0/2] mailbox: arm: introduce smc triggered mailbox
Thread-Topic: [PATCH 0/2] mailbox: arm: introduce smc triggered mailbox
Thread-Index: AQHVESt7O8zUR8j7k0mzGFqyu7YBg6Z4+DAAgAGZogCAA4nsgIAAa+GA
Date: Mon, 27 May 2019 06:29:11 +0000
Message-ID: <AM0PR04MB4481665E2C99DEE66CCB2CA8881D0@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <20190523060437.11059-1-peng.fan@nxp.com>
 <4ba2b243-5622-bb27-6fc3-cd9457430e54@gmail.com>
 <20190524175658.GA5045@e107155-lin>
 <d0800650-b79b-4698-3a3e-60e83c85f2d1@arm.com>
In-Reply-To: <d0800650-b79b-4698-3a3e-60e83c85f2d1@arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 83e38b07-fa5d-4f7b-b88e-08d6e26ca1d8
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4402; 
x-ms-traffictypediagnostic: AM0PR04MB4402:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <AM0PR04MB4402BB7023CB4AE3701B5618881D0@AM0PR04MB4402.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0050CEFE70
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(376002)(366004)(136003)(39860400002)(346002)(199004)(189003)(81166006)(186003)(6436002)(81156014)(316002)(26005)(476003)(446003)(74316002)(486006)(8676002)(11346002)(256004)(229853002)(14444005)(86362001)(7736002)(102836004)(6116002)(3846002)(6306002)(44832011)(305945005)(6506007)(53546011)(9686003)(99286004)(7696005)(55016002)(2906002)(76176011)(76116006)(66556008)(64756008)(66476007)(66446008)(6246003)(110136005)(54906003)(45080400002)(66946007)(73956011)(7416002)(25786009)(478600001)(5660300002)(66066001)(14454004)(4326008)(52536014)(68736007)(53936002)(33656002)(71200400001)(71190400001)(15650500001)(8936002)(966005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4402;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: uzDUTkb9D8wAFTUGNkuxaPp9WJNhiq1sSlUMtUe7O4/vQ3AcNnppf22UIA54m/nPNub72jKBx0JWbYKNFzyHgeooqoX93aPY/AJ2wuqBVHcoDVq/ggOCS+wH0Vcqy31rN90NOLzm0lPx11gktk5LWGo10HPTYOqqT2xOTNLildjSlFfgF3o3daqwPlumuYYrcNm+2bpgO4cWUTHalE6lIX3MbTJTh0PZFfC5aRy/phjNIrXBW7aGAC5o5k5d8R3ebOTBBKQkFIzcRYzIpFDaaEcq0sZE+tCmIqFJhjacPviYvWDCk8Jda9fOfhALFE1riy2H+dxhKbsyGzYna6+hmFunkN0823a8Ybi76ligi8DomPqCkMRj3GyuocbAnBw0eZKjPSV0lzB427dAfnq3eBCQ/zDezQExFB18Nlq1wEg=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 83e38b07-fa5d-4f7b-b88e-08d6e26ca1d8
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 May 2019 06:29:11.7494 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: peng.fan@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4402
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_232915_712724_1C1D6AC3 
X-CRM114-Status: GOOD (  24.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.77 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "jassisinghbrar@gmail.com" <jassisinghbrar@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "van.freenix@gmail.com" <van.freenix@gmail.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andre,

> Subject: Re: [PATCH 0/2] mailbox: arm: introduce smc triggered mailbox
> 
> On 24/05/2019 18:56, Sudeep Holla wrote:
> > On Thu, May 23, 2019 at 10:30:50AM -0700, Florian Fainelli wrote:
> 
> Hi,
> 
> >> On 5/22/19 10:50 PM, Peng Fan wrote:
> >>> This is a modified version from Andre Przywara's patch series
> >>>
> https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flore.ke
> rnel.org%2Fpatchwork%2Fcover%2F812997%2F&amp;data=02%7C01%7Cpe
> ng.fan%40nxp.com%7C02ee9487370c4eb9158008d6e2363ca0%7C686ea1d3
> bc2b4c6fa92cd99c5c301635%7C0%7C0%7C636945119959534576&amp;sda
> ta=U8FzX3FX2PoEZhRuRMhFbkaAnb3cqjZsb9%2FTdt8OfuY%3D&amp;reserve
> d=0.
> >>> [1] is a draft implementation of i.MX8MM SCMI ATF implementation
> >>> that use smc as mailbox, power/clk is included, but only part of clk
> >>> has been implemented to work with hardware, power domain only
> >>> supports get name for now.
> >>>
> >>> The traditional Linux mailbox mechanism uses some kind of dedicated
> >>> hardware IP to signal a condition to some other processing unit,
> >>> typically a dedicated management processor.
> >>> This mailbox feature is used for instance by the SCMI protocol to
> >>> signal a request for some action to be taken by the management
> processor.
> >>> However some SoCs does not have a dedicated management core to
> >>> provide those services. In order to service TEE and to avoid linux
> >>> shutdown power and clock that used by TEE, need let firmware to
> >>> handle power and clock, the firmware here is ARM Trusted Firmware
> >>> that could also run SCMI service.
> >>>
> >>> The existing SCMI implementation uses a rather flexible shared
> >>> memory region to communicate commands and their parameters, it still
> >>> requires a mailbox to actually trigger the action.
> >>
> >> We have had something similar done internally with a couple of minor
> >> differences:
> >>
> >> - a SGI is used to send SCMI notifications/delayed replies to support
> >> asynchronism (patches are in the works to actually add that to the
> >> Linux SCMI framework). There is no good support for SGI in the kernel
> >> right now so we hacked up something from the existing SMP code and
> >> adding the ability to register our own IPI handlers (SHAME!). Using a
> >> PPI should work and should allow for using request_irq() AFAICT.
> >>
> >
> > We have been thinking this since we were asked if SMC can be transport.
> > Generally out of 16 SGIs, 8 are reserved for secure side and
> > non-secure has 8. Of these 8, IIUC 7 is already being used by kernel.
> > So unless we manage to get the last one reserved exclusive to SCMI, it
> > makes it difficult to add SGI support in SCMI.
> >
> > We have been telling partners/vendors about this limitation if they
> > use SMC as transport and need to have dedicated h/w interrupt for the
> > notifications.
> >
> > Another issue could be with virtualisation(using HVC) and EL handling
> > so called SCMI SGI. We need to think about those too. I will try to
> > get more info on this and come back on this.
> 
> I think regardless of the *current* feasibility of using SGIs in *Linux* we
> should at least specify an "interrupts" property in the binding, to allow for
> future usage. We might copy the pmuv3 way [1] of allowing to specify
> multiple SPI interrupts as well, to give more flexibility.

This needs to go with an optional property, agree?
That means smc mailbox needs to support synchronous and asynchronous
communication. I'll try to add that and write some porotype code to
verify.

Thanks,
Peng.

> After all an implementation could offload the asynchronous notification to a
> separate core, and that could use SPIs, for instance.
> 
> Cheers,
> Andre.
> 
> [1] Documentation/devicetree/bindings/arm/pmu.yaml:45
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
