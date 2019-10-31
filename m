Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9806EABDC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 09:53:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bzbw2EB4/zAE03opvPHMqmaUPhG3nT7sGC0g0oge2Aw=; b=srp7wW3GbB4nzM
	931r7pInCcmuoMr4O9NPzY7il4E07gBxzZLXDAus8qEYsZ7bm0LahYlWJbSf3+H7oMCOByw2YX3/I
	LmtuUXe/rxHKYpwqvdqbJbJG88KVN5ZIDab9dkzplFbf00QALpLclczg4o6BrvROZxadFceA2PX4h
	+6QGKrJTecx/qqhaQWXwVmi7Zmt7U+x2y85vZiKcBS0hHZ3lqVsqShkpIgQ4BHWZy74OpAKyh45QG
	tZdOslXeowPXbkYr7boDSg43Joj/k38KP8PU5mN91n8O6GPu1KObVcHQNVqBqTIKk8yetfxvwmA6m
	VGvZusq4H/en/JzSEQng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ6Ck-0004Xz-AL; Thu, 31 Oct 2019 08:53:18 +0000
Received: from mail-eopbgr720048.outbound.protection.outlook.com
 ([40.107.72.48] helo=NAM05-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQ6CY-0004XN-Cj
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 08:53:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YieYjOgAxxutKBL5iNVVMwEF8hZS68ZS5MCLCz+JRqfTfrjpSVVqjxOCSrdYIw2Hgtk+eK2y+UCkg6cHXkmKvt63Qs8/utc/HLcu0q3oVC9Yzs9CaGQjj9K44feQ80ok6NwrB466HygkT0HkI1ugqOQzllrroNDqLTFyRJatJt2lH+N3I0jwi12y5EpU30ulePagCKmp10EhWhKJwGhzK9AnIDSD6E34+cP5ejO2J7bkigPe84YSE0jCsRpqXTsI3ztOjUI6wFqt77v0SthCIGN/12LT+Al/drsZ8AmWO/t6TLOku71p4xDg+/Rbjz+YrT0aVrRL8pmpKijOLjVzCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kcbWl71JBgGt07nIOqhZR72zL1/fEecWGfLHw+BhfCw=;
 b=nNCmbWUfy9d/tQ7YRt68M6q7vPcBmhD3+WZRsWHTJgnl5raMl8xc7bocnaJFwbSVxJS/lADuqGCzrbHXC2CncXQWKY/fWV2gj5K2D1/u4qOkfAPoJmaYCFq+S9GcaXx4hB25O0ts/sF2wnpUXO2UiEDx3bM8+Aytr4pkce/sK3feOu/73S0k3x/U7nU+gLBShMxmXereTc1NNuixJCLv8n9/PX5CDRwtyrb8/AAj7POP97+nvWFvobaRr9sNjkAUvhjwy+EVF/MDKBgjZANw8dbgU1C2kYtkrEF41hzMK2Bi3ihgX6C2nomJlbAx8nxpfxC0q/DvgAfa/w4gi0OkmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=xilinx.com; dmarc=pass action=none header.from=xilinx.com;
 dkim=pass header.d=xilinx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kcbWl71JBgGt07nIOqhZR72zL1/fEecWGfLHw+BhfCw=;
 b=CGkhjcUuneguOyTrveKwGVKYULQ22dvX4V2Q8XzpCP8qWRLZaCAtEB4kxcR8qGpUqBr7H1ll2CIIMk3AS9YnWgIlud+u9TrwE/6ioAkQV6jNFSYiCcE+tq78ai9HP85MtdFnxV50ClbG/BD76Yk4n7RboJ9GLJvOadzpQRxgIH4=
Received: from MN2PR02MB6029.namprd02.prod.outlook.com (52.132.174.207) by
 MN2PR02MB6144.namprd02.prod.outlook.com (52.132.175.90) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2408.18; Thu, 31 Oct 2019 08:52:59 +0000
Received: from MN2PR02MB6029.namprd02.prod.outlook.com
 ([fe80::60f4:2360:4c7d:cad6]) by MN2PR02MB6029.namprd02.prod.outlook.com
 ([fe80::60f4:2360:4c7d:cad6%5]) with mapi id 15.20.2387.028; Thu, 31 Oct 2019
 08:52:59 +0000
From: Manish Narani <MNARANI@xilinx.com>
To: Rob Herring <robh@kernel.org>
Subject: RE: [PATCH v4 2/8] dt-bindings: mmc: arasan: Update Documentation for
 the input clock
Thread-Topic: [PATCH v4 2/8] dt-bindings: mmc: arasan: Update Documentation
 for the input clock
Thread-Index: AQHVjkQM7Ec7DXqR8UKpys1AJLmbRKdx9BIAgAJ/LwA=
Date: Thu, 31 Oct 2019 08:52:59 +0000
Message-ID: <MN2PR02MB6029A5A7D65C8360B55A1E93C1630@MN2PR02MB6029.namprd02.prod.outlook.com>
References: <1572345042-101207-1-git-send-email-manish.narani@xilinx.com>
 <1572345042-101207-2-git-send-email-manish.narani@xilinx.com>
 <20191029184014.GA837@bogus>
In-Reply-To: <20191029184014.GA837@bogus>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=MNARANI@xilinx.com; 
x-originating-ip: [149.199.50.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 6b2d3f77-80c9-45a5-ad32-08d75ddfbaf9
x-ms-traffictypediagnostic: MN2PR02MB6144:|MN2PR02MB6144:
x-ld-processed: 657af505-d5df-48d0-8300-c31994686c5c,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR02MB6144C5C85B7CC6FE4E0E2FB7C1630@MN2PR02MB6144.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 02070414A1
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(346002)(366004)(396003)(376002)(136003)(13464003)(189003)(199004)(26005)(7416002)(11346002)(74316002)(7696005)(229853002)(71190400001)(52536014)(486006)(478600001)(102836004)(6246003)(305945005)(99286004)(6916009)(476003)(66066001)(86362001)(446003)(7736002)(6436002)(9686003)(186003)(53546011)(107886003)(76176011)(5660300002)(55016002)(6506007)(81166006)(54906003)(3846002)(33656002)(8936002)(81156014)(256004)(2906002)(14444005)(8676002)(6116002)(4326008)(316002)(25786009)(64756008)(66946007)(66476007)(76116006)(66446008)(14454004)(71200400001)(66556008)(15650500001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR02MB6144;
 H:MN2PR02MB6029.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: btOPA5j+nbx3Tb1WXpzkINVLoMIuqLCf1ZCK4yIh07c9AzyNCzwaDRCVxH5DLDSqoYS7BEoHnrhx8ocsgQl0lgT8i5XsJQ3vKxj3UX0VaMPNfqqUPWoEh1bn5U02g4+G84W56HYaPd4V7OSl96llBnOjNkVGTWsyNg0O/Qw5KWHoJI2YVWtgwUl6zb2wxeStvld6DWZPv/6TniEOczdDCZkDc9Vitwik2hChXGLS4B4Z0vixFRHqkg+2OkhEAqC6zw6BQgHGq1euQY0kdSnD3GpQAYkF5Xs5ZbWKqt5oYMqSp6UyuzMGo11j75t6gUukoBo2UFb5pLff/1Sgrv8xg1tHbyjczUvhrU87RtLiZ04J/zrEuRQY2siOWlHvx6RE93ya3uGgy8PLnreD9+gKcolssr8VzPnNMT3R0l5X476mp4WsckG28DLQ/Ru1qym3
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6b2d3f77-80c9-45a5-ad32-08d75ddfbaf9
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Oct 2019 08:52:59.0410 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gnT3hRRZTJulQbZC/L3SeFR3oYcJLmxQHkD/tTGM7m9JUezlIdW9EQVLjb/xngjH8NilQJFxCAW5M82X3Jmfmg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR02MB6144
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_015306_436892_60CE636C 
X-CRM114-Status: GOOD (  14.04  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.72.48 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "ulf.hansson@linaro.org" <ulf.hansson@linaro.org>,
 Nava kishore Manne <navam@xilinx.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 "adrian.hunter@intel.com" <adrian.hunter@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jolly Shah <JOLLYS@xilinx.com>, Rajan Vaja <RAJANV@xilinx.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, Michal Simek <michals@xilinx.com>,
 git <git@xilinx.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

> -----Original Message-----
> From: Rob Herring <robh@kernel.org>
> Sent: Wednesday, October 30, 2019 12:10 AM
> To: Manish Narani <MNARANI@xilinx.com>
> Cc: ulf.hansson@linaro.org; robh+dt@kernel.org; mark.rutland@arm.com;
> adrian.hunter@intel.com; Michal Simek <michals@xilinx.com>; Jolly Shah
> <JOLLYS@xilinx.com>; Nava kishore Manne <navam@xilinx.com>; Rajan Vaja
> <RAJANV@xilinx.com>; Manish Narani <MNARANI@xilinx.com>; linux-
> mmc@vger.kernel.org; devicetree@vger.kernel.org; linux-
> kernel@vger.kernel.org; linux-arm-kernel@lists.infradead.org; git
> <git@xilinx.com>
> Subject: Re: [PATCH v4 2/8] dt-bindings: mmc: arasan: Update
> Documentation for the input clock
> 
> On Tue, 29 Oct 2019 16:00:36 +0530, Manish Narani wrote:
> > Add documentation for an optional input clock which is essentially used
> > in sampling the input data coming from the card.
> >
> > Signed-off-by: Manish Narani <manish.narani@xilinx.com>
> > ---
> >  Documentation/devicetree/bindings/mmc/arasan,sdhci.txt | 6 +++---
> >  1 file changed, 3 insertions(+), 3 deletions(-)
> >
> 
> Please add Acked-by/Reviewed-by tags when posting new versions.
> However,
> there's no need to repost patches *only* to add the tags. The upstream
> maintainer will do that for acks received on the version they apply.
> 
> If a tag was not added on purpose, please state why and what changed.

That was mistakenly not added. My apologies.
However, Uffe has some comments on this version, so will send out v5 with addressing them and will include the 'reviewed-by' tag.

Thanks,
Manish

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
