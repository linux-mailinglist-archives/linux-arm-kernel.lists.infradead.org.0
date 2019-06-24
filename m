Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72B704FF72
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 04:35:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=exPPYXuo3zA743btSyesUOhg4Hlrq/kw6U8OXjUtdQE=; b=IfAg+sjy0PBb9h
	ukkUIinY4rPog6T4kcBRDv4MmOKsw0Mgx5A7GKMIzTlEkE7Vl2Cwt/T3UMA1P/aCy/bfOAVh2NJU3
	vPGChkMCYwPXqctClieHQ2Lk8AiQJduP+TPrVuVSXsDr8av1jwVIe5YxP/3+8662KEKouauPzjSe3
	QS8jm+cFU5s2yV8pK/seIlk+uvjq7ncV+k7xOyDqUZXJAL2pcvsP/FK0y/5UNoD/HHevOnwIF2N+f
	6LpKBaOQ2LO3PKzFcZ9Mh5yKMvNRCS1OerSC8V+flPckmdSibSZ1kQhPz9tTbRXhIxVYjajqI2gMz
	pvhxdeOtD4F2Da3PfrSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfEpO-0006UG-2j; Mon, 24 Jun 2019 02:35:30 +0000
Received: from mail-he1eur01on062e.outbound.protection.outlook.com
 ([2a01:111:f400:fe1e::62e]
 helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfEp8-0006TV-Tl
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 02:35:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NZeeXzWt1XmqT19Qpk7iZfEjso8yLeo1VZwQGVaEWxI=;
 b=edz9BwIliZ/aMTAs1liCH64je3tItsS0a3NzjD4PxSvcp8SNCRtFPRoZdTYkWXGCP7wnmkSgaEAMVlWF3t3j5kicfNDGuXgodDiRYW2Ql7Rp/dx59NP7oY4H1m9c6PT7j3oia82GRbfbt1NM7/dfFJOJmRjMA2yLq4jR4Hi01S0=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3833.eurprd04.prod.outlook.com (52.134.67.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.16; Mon, 24 Jun 2019 02:35:10 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3945:fcda:5bdd:8191]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3945:fcda:5bdd:8191%4]) with mapi id 15.20.2008.014; Mon, 24 Jun 2019
 02:35:10 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: RE: [PATCH 1/4] arm64: Enable TIMER_IMX_SYS_CTR for ARCH_MXC platforms
Thread-Topic: [PATCH 1/4] arm64: Enable TIMER_IMX_SYS_CTR for ARCH_MXC
 platforms
Thread-Index: AQHVJ/+7WzrDWTethU+K40MoFm49OKaqFzaAgAABdQCAAADrQA==
Date: Mon, 24 Jun 2019 02:35:10 +0000
Message-ID: <DB3PR0402MB39162662C69B45BDB948D002F5E00@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <20190621070720.12395-1-Anson.Huang@nxp.com>
 <20190624022200.GN3800@dragon> <20190624022713.GO3800@dragon>
In-Reply-To: <20190624022713.GO3800@dragon>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 03c3dd5c-e3ab-4c9d-b1da-08d6f84c940e
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3833; 
x-ms-traffictypediagnostic: DB3PR0402MB3833:
x-microsoft-antispam-prvs: <DB3PR0402MB38331DAAB7A0F22A906BDEC6F5E00@DB3PR0402MB3833.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 007814487B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(376002)(136003)(396003)(39860400002)(366004)(13464003)(199004)(189003)(26005)(256004)(486006)(68736007)(446003)(54906003)(33656002)(66446008)(71190400001)(71200400001)(7736002)(476003)(305945005)(229853002)(99286004)(74316002)(7696005)(2906002)(14454004)(73956011)(8676002)(81156014)(81166006)(66946007)(9686003)(66476007)(66556008)(64756008)(102836004)(55016002)(66066001)(76116006)(14444005)(478600001)(186003)(76176011)(11346002)(316002)(6436002)(3846002)(53546011)(6506007)(6116002)(44832011)(4326008)(6916009)(86362001)(25786009)(52536014)(5660300002)(7416002)(6246003)(8936002)(53936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3833;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: +QjgEHai9r1W1l4kjkaB92skWpd7Qp4zdMfWOwejloY/2iRNLLlVfwmbla1h0840Ewt2B6Xp7HXaSqGphA5EZM5lqpix7lvkLrNkHFWkmwopFIlszOFi6Hdxs5WbbBwbdOyZA+XXUxgzBAKDApsuLcZTKgosW3cqz+V5fjSnBKtJMPDKG78lKfH9x1JHKP4SP3ILtvf1S+HpRhB2s4dQpukYc6lqBwh9XVs1Wc1UC8tpeuHZSdmD+FoG0iecJnYEqI/Dsr1rQ+A4m5MS9qNuxRKrrBZEu6XcTbWrymUDWvK5fFCoGGEJ9NoWneVu7YMbgHxVW5Ij5KiN+qTg8RZx3GSWNhXXI1VmIFAErD6KkL150hs9ZywCAkAW6VX95GLfh0CChKY7aZLyg/vg7RWib1bZLXSKbcP5uSxjvnj++xY=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 03c3dd5c-e3ab-4c9d-b1da-08d6f84c940e
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jun 2019 02:35:10.3018 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: anson.huang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3833
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_193514_966108_7D9B4566 
X-CRM114-Status: GOOD (  19.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe1e:0:0:0:62e listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 Aisheng Dong <aisheng.dong@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 Jacky Bai <ping.bai@nxp.com>, "will@kernel.org" <will@kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "sboyd@kernel.org" <sboyd@kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Abel Vesa <abel.vesa@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Shawn

> -----Original Message-----
> From: Shawn Guo <shawnguo@kernel.org>
> Sent: Monday, June 24, 2019 10:27 AM
> To: Anson Huang <anson.huang@nxp.com>
> Cc: mark.rutland@arm.com; Aisheng Dong <aisheng.dong@nxp.com>; Peng
> Fan <peng.fan@nxp.com>; festevam@gmail.com; Jacky Bai
> <ping.bai@nxp.com>; devicetree@vger.kernel.org; sboyd@kernel.org;
> catalin.marinas@arm.com; s.hauer@pengutronix.de; linux-
> kernel@vger.kernel.org; Daniel Baluta <daniel.baluta@nxp.com>; linux-
> clk@vger.kernel.org; robh+dt@kernel.org; dl-linux-imx <linux-
> imx@nxp.com>; kernel@pengutronix.de; Leonard Crestez
> <leonard.crestez@nxp.com>; will@kernel.org; mturquette@baylibre.com;
> linux-arm-kernel@lists.infradead.org; Abel Vesa <abel.vesa@nxp.com>
> Subject: Re: [PATCH 1/4] arm64: Enable TIMER_IMX_SYS_CTR for ARCH_MXC
> platforms
> 
> On Mon, Jun 24, 2019 at 10:22:01AM +0800, Shawn Guo wrote:
> > On Fri, Jun 21, 2019 at 03:07:17PM +0800, Anson.Huang@nxp.com wrote:
> > > From: Anson Huang <Anson.Huang@nxp.com>
> > >
> > > ARCH_MXC platforms needs system counter as broadcast timer to
> > > support cpuidle, enable it by default.
> > >
> > > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > > ---
> > >  arch/arm64/Kconfig.platforms | 1 +
> > >  1 file changed, 1 insertion(+)
> > >
> > > diff --git a/arch/arm64/Kconfig.platforms
> > > b/arch/arm64/Kconfig.platforms index 4778c77..f5e623f 100644
> > > --- a/arch/arm64/Kconfig.platforms
> > > +++ b/arch/arm64/Kconfig.platforms
> > > @@ -173,6 +173,7 @@ config ARCH_MXC
> > >  	select PM
> > >  	select PM_GENERIC_DOMAINS
> > >  	select SOC_BUS
> > > +	select TIMER_IMX_SYS_CTR
> >
> > Where is that driver?
> 
> Okay, just found it in the mailbox.  They seem to be sent in the wrong order.
> Really, you should send this series only after the driver lands on mainline.

OK, just noticed that mainline does NOT have it, since I did it based on next tree.
I will resend the patch series after the system counter driver landing on mainline.

Thanks,
Anson.

> 
> Shawn
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
