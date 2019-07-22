Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 895216F71C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 04:15:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M0VixSd5JXsSK6ne0K6UiFGqzkvbcwZQHaKkk2bSoS0=; b=rgOwqCkMbzg2Hw
	t1+flQYNiJ5UsJID8vzMRiP8OSDD8nHogQLZrZhxSve+T8FgAG4SUnG3iNs0Qq+/51lIO68CIVLpw
	v/+qEx9CyyJUt4Nf/0CjtpRUxBF5AQeJII1stayLCNWLOWnv4UMI2zkDGnHqwt8Vc/pf6hm0iQ9eP
	JQPKfg3aVJpEH6ERF6GM252iy6itv48Fdd6CnBHhhuVP0zYvFLNvNUnmQFQTqR98F9GIbWo9Mbwp1
	lbFvUzuVljcsxz1SlsPT97wK2hicQrYBAK7Dtgh6CUwZQra8UWvesUL0G2P3/lXIO6mu7ObtPi1tz
	570r2xEoYKM+WoTvW5UQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpNrO-0003fD-EI; Mon, 22 Jul 2019 02:15:30 +0000
Received: from mail-eopbgr80080.outbound.protection.outlook.com ([40.107.8.80]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpNrA-0003ed-1p
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 02:15:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hJFRj+lJcZ9LZ/d3V97BUKM4yeLncVnUY4ILFovEqAiez2krXXX+70ecknHcsVGv+u7Em6eIOkStHJnuZCoATCOIU0+MrY74tspb/R8Iat0mBnLY3zKWe6s6Js5lo95p3CikIqrB19v1+CJh5E6cl5PKHeCGN8Xdx0IKbWSwYwfHK8drN4QREsGfSXHwwOrH03/22Ns5Bma4TFZ2T/1WT1ZakoWCoAkwjkkim/DlkoYlmQEge1AHHDFYRv8pkBP4g3uVRz7LvGLwhwu37xNrQBvY0PNrSeW2w32sVgfia1AeqBbv9QHZ7lOjwaXfH2LYk7YOKgi2gT3FBpQYrmZ1vA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GgHb+wEpLpELxsiMuCNsbGv/oXxbJJEAmGp263+hXzw=;
 b=Ysw/6VS7XbXdJpSHsusGTcGbhAyGIbOs7uWuevz4H0xj0A559CY86fduJI1yvCui+3Ub+SROEsYA9nMG5RMOy+iEXZYKEecaROLMITFnIV6vGa/Qo0T6NAc3qYYKZbb4xfrRbki5l2U1nbh23BBqBJ7I3zWHOztTIcPpHRDQ/By2uE1G64X+gCMFcwhFGO461XR82f5EhU2nh+vaPqc5tNDkShcF+VJxRF8elwXgKKYsHarHKQovAx2iGf43NFYa2Mz3Jmtw9Y/hMY/D+OQUjVZWUWt4R2+F7MjjZJDk8OAj+0aRnfbMxDzyBCZdEzYdre0/WPLHXy4+Thu1Ch0dxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GgHb+wEpLpELxsiMuCNsbGv/oXxbJJEAmGp263+hXzw=;
 b=Ubc8wuAuN3v4RJ0rDcORxHMeh+HPEkaxDsRD+aE+U/KMUdVnXwnG0c+Eot4B1zFh+sKfFgdcwTXuyNSCbVke4IHajCcp9YffcnDLV7fi1U/POYhM0bbFX1Xs172vUJRWws6IC0TN8hr98xPVY5p+AmgGXH2syCHNY4rC01WDFQ4=
Received: from AM6PR0402MB3911.eurprd04.prod.outlook.com (52.133.30.10) by
 AM6PR0402MB3367.eurprd04.prod.outlook.com (52.133.18.160) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.16; Mon, 22 Jul 2019 02:15:11 +0000
Received: from AM6PR0402MB3911.eurprd04.prod.outlook.com
 ([fe80::159f:a865:b9dc:4476]) by AM6PR0402MB3911.eurprd04.prod.outlook.com
 ([fe80::159f:a865:b9dc:4476%6]) with mapi id 15.20.2094.013; Mon, 22 Jul 2019
 02:15:11 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: RE: [PATCH 1/4] arm64: Enable TIMER_IMX_SYS_CTR for ARCH_MXC platforms
Thread-Topic: [PATCH 1/4] arm64: Enable TIMER_IMX_SYS_CTR for ARCH_MXC
 platforms
Thread-Index: AQHVJ/+7WzrDWTethU+K40MoFm49OKaqFzaAgAABdQCAAADrQIAr+OGAgAAC+uA=
Date: Mon, 22 Jul 2019 02:15:10 +0000
Message-ID: <AM6PR0402MB39113A76EE8A63F9C9F589C1F5C40@AM6PR0402MB3911.eurprd04.prod.outlook.com>
References: <20190621070720.12395-1-Anson.Huang@nxp.com>
 <20190624022200.GN3800@dragon> <20190624022713.GO3800@dragon>
 <DB3PR0402MB39162662C69B45BDB948D002F5E00@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <20190722020026.GQ3738@dragon>
In-Reply-To: <20190722020026.GQ3738@dragon>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fa4dd81c-1afe-47d7-d24d-08d70e4a6caf
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM6PR0402MB3367; 
x-ms-traffictypediagnostic: AM6PR0402MB3367:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <AM6PR0402MB3367B67E3046CEBB6B2E96ECF5C40@AM6PR0402MB3367.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 01068D0A20
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(366004)(346002)(396003)(136003)(39860400002)(189003)(199004)(13464003)(99286004)(66066001)(14444005)(256004)(316002)(14454004)(102836004)(44832011)(53546011)(7416002)(7696005)(6506007)(76176011)(4326008)(966005)(66946007)(5660300002)(76116006)(52536014)(6246003)(68736007)(229853002)(86362001)(66446008)(64756008)(66556008)(66476007)(54906003)(6116002)(3846002)(25786009)(9686003)(446003)(11346002)(6306002)(53936002)(55016002)(476003)(8676002)(81156014)(6916009)(2906002)(26005)(186003)(7736002)(8936002)(71200400001)(71190400001)(478600001)(6436002)(74316002)(486006)(33656002)(305945005)(81166006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR0402MB3367;
 H:AM6PR0402MB3911.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: ys2IUNQaGeY2MY7kQ5SEMjuS5WZ/2MkVtAiHmKa5cdSOeHBdqrbIqrTMjhyehVz2FGyPhy+JU7KBKCo7PFMHHFbY/w2Xs0aGZirxj3kwmG6t4Bx6BtK0c6IBaP8gBpOlpjFCSG7bJxny4iBvw+UmiuEvuPVn5OWRURC1+QgymzH3kZ2j0MbthZf6Vz4qAdA/sxP7RNoHs3mMPJpmEq93vxvVCgZgivOKHf9lTfMv1cRQ9WLTSzPHZr8cBH7MicJ0iV9ZpbwfyPc9/XoGVvyMdBVhfw5x2VgNdfQyoLfBqaNjJNpdlK5au1APm/poh+EYIEjkN5G9o0ku/56bKYllcVAtqq07+0kEnaQG1OzKsc8aWL2yqz4gHDlOS6qmEkYAtwnKnY1rcspZ4208LPMX3QvemxL8FMOObbPbpUouVT8=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fa4dd81c-1afe-47d7-d24d-08d70e4a6caf
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jul 2019 02:15:10.8646 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: anson.huang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0402MB3367
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190721_191516_100994_EC39074B 
X-CRM114-Status: GOOD (  21.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.80 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

> On Mon, Jun 24, 2019 at 02:35:10AM +0000, Anson Huang wrote:
> > Hi, Shawn
> >
> > > -----Original Message-----
> > > From: Shawn Guo <shawnguo@kernel.org>
> > > Sent: Monday, June 24, 2019 10:27 AM
> > > To: Anson Huang <anson.huang@nxp.com>
> > > Cc: mark.rutland@arm.com; Aisheng Dong <aisheng.dong@nxp.com>;
> Peng
> > > Fan <peng.fan@nxp.com>; festevam@gmail.com; Jacky Bai
> > > <ping.bai@nxp.com>; devicetree@vger.kernel.org; sboyd@kernel.org;
> > > catalin.marinas@arm.com; s.hauer@pengutronix.de; linux-
> > > kernel@vger.kernel.org; Daniel Baluta <daniel.baluta@nxp.com>;
> > > linux- clk@vger.kernel.org; robh+dt@kernel.org; dl-linux-imx <linux-
> > > imx@nxp.com>; kernel@pengutronix.de; Leonard Crestez
> > > <leonard.crestez@nxp.com>; will@kernel.org; mturquette@baylibre.com;
> > > linux-arm-kernel@lists.infradead.org; Abel Vesa <abel.vesa@nxp.com>
> > > Subject: Re: [PATCH 1/4] arm64: Enable TIMER_IMX_SYS_CTR for
> > > ARCH_MXC platforms
> > >
> > > On Mon, Jun 24, 2019 at 10:22:01AM +0800, Shawn Guo wrote:
> > > > On Fri, Jun 21, 2019 at 03:07:17PM +0800, Anson.Huang@nxp.com
> wrote:
> > > > > From: Anson Huang <Anson.Huang@nxp.com>
> > > > >
> > > > > ARCH_MXC platforms needs system counter as broadcast timer to
> > > > > support cpuidle, enable it by default.
> > > > >
> > > > > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > > > > ---
> > > > >  arch/arm64/Kconfig.platforms | 1 +
> > > > >  1 file changed, 1 insertion(+)
> > > > >
> > > > > diff --git a/arch/arm64/Kconfig.platforms
> > > > > b/arch/arm64/Kconfig.platforms index 4778c77..f5e623f 100644
> > > > > --- a/arch/arm64/Kconfig.platforms
> > > > > +++ b/arch/arm64/Kconfig.platforms
> > > > > @@ -173,6 +173,7 @@ config ARCH_MXC
> > > > >  	select PM
> > > > >  	select PM_GENERIC_DOMAINS
> > > > >  	select SOC_BUS
> > > > > +	select TIMER_IMX_SYS_CTR
> > > >
> > > > Where is that driver?
> > >
> > > Okay, just found it in the mailbox.  They seem to be sent in the wrong
> order.
> > > Really, you should send this series only after the driver lands on mainline.
> >
> > OK, just noticed that mainline does NOT have it, since I did it based on next
> tree.
> > I will resend the patch series after the system counter driver landing on
> mainline.
> 
> I just picked the series up, so no need to resend.

Something changed for this series, the system counter clock related implementation
are changed after some comments from maintainer, so I think you should picked up
below patch series instead, and drop this series,

https://patchwork.kernel.org/patch/11037953/

thanks,
Anson
 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
