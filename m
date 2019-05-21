Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5332024A10
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 10:18:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OYyDKaD5nzd/KukGuzUdMkSsQPMDcb6XpYL/bgb179I=; b=C8xufaK6A0VFks
	KsU5znqDotrvUmtmmyW2S0P4W6ISLutyUs0GUVtyYYmXaBFIj5Xps4mjP45Rh1rHCanXIkyMqPkLd
	hhJMT2knlrMYZg/kywWN3Jd06pU+N+qmF+FbBGC0B9ZasQkUu/5At25vH1Iea0Ua8MQ0cYlrF6n9l
	mL8BMpcvzML9gexnSL2SvII73CAzcvd5TIYtrSH/8FbkrKP/9x6OMx8gqwNEa+kxazfQyCQBTISI6
	5N8ICx2wPmMBjikdtb+bSZm7BhfFmqMy34Ra7w2ZQwfNi/PzvsjPEF3p8a5IRou0+ZnaBdLSaar7T
	PMZmgCFLyG9vkKYP9eyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSzy9-00073w-SJ; Tue, 21 May 2019 08:17:57 +0000
Received: from mail-eopbgr20063.outbound.protection.outlook.com ([40.107.2.63]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSzxz-0006yM-IF
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 08:17:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jEHjZAONryAg/0tMDSUupiVQk+SumFQKMjao6wGi8A8=;
 b=R1QaUYyt8+EKJFCKL7Sn4oQCBoYRDAMRiDkJYTF/C0qnM7qXq6h6MiFn2La+lVj8T/GptXg4XmjZmw5o+Hcww9n4dHCrysU7k0HP9T8z5x6xfYnk7VnQYS8e6On31+3KQSwckW0g1sTC821KDmyMBs92pIp74kHK7W1fFuSR6Z0=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3755.eurprd04.prod.outlook.com (52.134.71.155) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.17; Tue, 21 May 2019 08:17:43 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::5835:e874:bd94:fec]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::5835:e874:bd94:fec%5]) with mapi id 15.20.1900.020; Tue, 21 May 2019
 08:17:43 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: RE: [PATCH] arm64: dts: imx8qxp: Add gpio alias
Thread-Topic: [PATCH] arm64: dts: imx8qxp: Add gpio alias
Thread-Index: AQHVChGBhvqur/npCUCFDgMod6JPUqZ1RMKAgAACSWA=
Date: Tue, 21 May 2019 08:17:43 +0000
Message-ID: <DB3PR0402MB391632602294707677060EF3F5070@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1557809536-749-1-git-send-email-Anson.Huang@nxp.com>
 <20190521080900.GC15856@dragon>
In-Reply-To: <20190521080900.GC15856@dragon>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1e01cd10-440d-4de9-82d6-08d6ddc4ccc8
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3755; 
x-ms-traffictypediagnostic: DB3PR0402MB3755:
x-microsoft-antispam-prvs: <DB3PR0402MB37553E27AABF4209FEE9B692F5070@DB3PR0402MB3755.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2582;
x-forefront-prvs: 0044C17179
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(396003)(136003)(346002)(366004)(39860400002)(189003)(199004)(13464003)(6246003)(478600001)(446003)(6916009)(44832011)(11346002)(7736002)(186003)(2906002)(102836004)(86362001)(68736007)(66066001)(305945005)(25786009)(81166006)(14454004)(4326008)(6506007)(76116006)(53546011)(53936002)(229853002)(8936002)(66476007)(66556008)(64756008)(66446008)(73956011)(66946007)(5660300002)(14444005)(256004)(52536014)(9686003)(99286004)(54906003)(6436002)(476003)(76176011)(71190400001)(71200400001)(8676002)(3846002)(33656002)(6116002)(316002)(7696005)(81156014)(26005)(74316002)(55016002)(486006)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3755;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 1zQdOVWGSttW23EdY09CvUsoDGvJxRL6o1sggc8w70kjURPEeLQdeEshYbYwQZovUSytJOGa1V6Do/OAWrn1xzWjBejj0o696erDL080EC+/oyNyE1iC4Gz6TTquUxfsj6I8pTmRNErQfGbmtsFE697bCNblpa8gAK/h7QoxM4seJ09ToEiqdBY3G38fi00SlyeTvd1FlYfHgsZxYAdQ3mKyX3nmjV6kM7wAvOiIMEM1EvaJTgEJn6G6IcZKonKojTN041TRNROAVZyx6UwfuU6a1bcSxHef53Prb5j79Ai/rR5cAM7HK/PNx79IbpqT+b/kcNmxFHSspYZbhJClZrsVocQ64nQcjXZ50y37p+23Fr1iYuk1iNA5+y4H77H79FMdFmoInuI/NZF5de3dqSazleSgoe+4pxR7T4emkt8=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1e01cd10-440d-4de9-82d6-08d6ddc4ccc8
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 May 2019 08:17:43.7815 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3755
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_011747_630332_91629D8A 
X-CRM114-Status: GOOD (  15.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.63 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Aisheng Dong <aisheng.dong@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: Shawn Guo [mailto:shawnguo@kernel.org]
> Sent: Tuesday, May 21, 2019 4:09 PM
> To: Anson Huang <anson.huang@nxp.com>
> Cc: robh+dt@kernel.org; mark.rutland@arm.com; s.hauer@pengutronix.de;
> kernel@pengutronix.de; festevam@gmail.com; Aisheng Dong
> <aisheng.dong@nxp.com>; Daniel Baluta <daniel.baluta@nxp.com>; Peng
> Fan <peng.fan@nxp.com>; devicetree@vger.kernel.org; linux-arm-
> kernel@lists.infradead.org; linux-kernel@vger.kernel.org; dl-linux-imx
> <linux-imx@nxp.com>
> Subject: Re: [PATCH] arm64: dts: imx8qxp: Add gpio alias
> 
> On Tue, May 14, 2019 at 04:57:17AM +0000, Anson Huang wrote:
> > Add i.MX8QXP GPIO alias for kernel GPIO driver usage.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > ---
> >  arch/arm64/boot/dts/freescale/imx8qxp.dtsi | 8 ++++++++
> >  1 file changed, 8 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
> > b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
> > index b17c22e..923705e 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
> > @@ -22,6 +22,14 @@
> >  		mmc2 = &usdhc3;
> >  		serial0 = &adma_lpuart0;
> >  		mu1 = &lsio_mu1;
> > +		gpio0 = &lsio_gpio0;
> 
> Okay, it's already out of alphabetical order, but let's not make it worse.

Sure, just sent out V2 patch, please help review, thanks.

Anson.

> 
> Shawn
> 
> > +		gpio1 = &lsio_gpio1;
> > +		gpio2 = &lsio_gpio2;
> > +		gpio3 = &lsio_gpio3;
> > +		gpio4 = &lsio_gpio4;
> > +		gpio5 = &lsio_gpio5;
> > +		gpio6 = &lsio_gpio6;
> > +		gpio7 = &lsio_gpio7;
> >  	};
> >
> >  	cpus {
> > --
> > 2.7.4
> >
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
