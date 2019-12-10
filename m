Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20512118329
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 10:13:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r3PDTz3RMKgwz8VO2qJrbhLyvj+d8aicgjaCE4KZkg4=; b=LCwFKGrphWqQk6
	T4AuQMKbLqOXeCJPuWV9w3gg6jw9pvV/IHapgPu0uL2YFkMUSGKvhtyojV6qnGCMSpEup4MelLmXA
	kuQNRbjc4sja9rhUvYiDnvKwdO62N9Tf/CSh99A2WXDerDIrWTjyYJBXRu9KMvCzHu7zcNFi893my
	C5FCy4Cq1u8/va1HZ9tc1CenpM+nf4XiAMztRuO1LO5hV2INySvk19/JUtOqqZ2hpnb8DsXVtiyOG
	XL31mNVOej5CZFebTSjlXc2UweuYX0C9ilE2FbSv4/51PPS0aw15JhSN8FkXlalixfpUO3CwT8tvW
	EsPKz6HOMdYTUhORc7Cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iebaJ-0005Ku-Ak; Tue, 10 Dec 2019 09:13:35 +0000
Received: from mail-eopbgr30055.outbound.protection.outlook.com ([40.107.3.55]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iebaA-0005KP-OW
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 09:13:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X+BhXKt0zjvmmJuiG+cs6A1sB/qoRNeSIc5x4iK272H+PpyMW3NGQEPABlz940Bfm/flrC52mcgLDL1s2v0DJJ5rc9fzDFLiyACqK8dOch9FHePa0oeZ4Rzj9UmiEOPJrJkgvWpTrUXX5wSlp4Q326uhuwGlHjIojKspo0wAnAw8LaXaaa5lkTpD6LWGIRdVPHJLQmFB5BxuMRTm+DiU6aQx8LBwtkkFcVn9lsf+cX4wtichrVoxPKO8JvDS86zx7FBisyq2qdJLbiqmuDy0T2kPA9MbdWhOPbTul4+gTJcwM1TS0oeXmExPBTBqg/FR72TR+Ev4QDQkbWPXa7ojJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7gB01iLhhHSWa1fDX3dD170nxdlDdIgKTd8vkpg2j2M=;
 b=CoVyIapBydXT62pjnEI27EE+LEYj4fe8+BW4jqUT7bzzgoIUyfgfKwhghDrJqPtYVLUA4VPpPoMq8NnQDSkAlj4DFkow1Z6KuyFxC9lB3gllR6+4U8kXgs06ujSX4e+6QsN1xU15Zjwim7k0fKx6zGjColVHsDDhCmwqUydMYc/euh7DZl+AnJFjcol92eJrXg8DOVjmZanZvqQehd+0ql5QhtAFgYobgifhRrP0mrK4Cos3x7sx8yLkx1NbOWuPixTRxuh2Wu7X0c0SptI+5m12FLgPz8MJOWVmfh1b0kCKdrhIREeLJQPi4tjmswAvkUw9LoQwgtyTzRKmBfsuxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7gB01iLhhHSWa1fDX3dD170nxdlDdIgKTd8vkpg2j2M=;
 b=Ymnxi+6t0Zz8h/mJET7sxU7NQe/NdNG9Nj1a0rBAHb4hqgoJ91JApGNsbF6DttSEwIgabZt3PjdSC0u088piqxD0OCcN2exrKaPfFLMMS+LXfVqIVwtfYvg+KRoFdgFqwAVp5wXrNdCTzwA7+AqxoCusX9VyxhiEKCVy3C0AveM=
Received: from VI1PR04MB4062.eurprd04.prod.outlook.com (52.133.12.32) by
 VI1PR04MB4349.eurprd04.prod.outlook.com (52.133.12.27) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2516.17; Tue, 10 Dec 2019 09:13:23 +0000
Received: from VI1PR04MB4062.eurprd04.prod.outlook.com
 ([fe80::20fe:3e38:4eec:ea03]) by VI1PR04MB4062.eurprd04.prod.outlook.com
 ([fe80::20fe:3e38:4eec:ea03%7]) with mapi id 15.20.2516.018; Tue, 10 Dec 2019
 09:13:23 +0000
From: Alison Wang <alison.wang@nxp.com>
To: Michael Walle <michael@walle.cc>
Subject: RE: [EXT] Re: [PATCH] arm64: dts: ls1028a: put SAIs into async mode
Thread-Topic: [EXT] Re: [PATCH] arm64: dts: ls1028a: put SAIs into async mode
Thread-Index: AQHVrnBLtaYchIru+E6aNXw66ImuFqeyq8zwgABj3QCAAASy0A==
Date: Tue, 10 Dec 2019 09:13:23 +0000
Message-ID: <VI1PR04MB406255C30EDF41634C01EE2DF45B0@VI1PR04MB4062.eurprd04.prod.outlook.com>
References: <20191129210937.26808-1-michael@walle.cc>
 <20191209090840.GL3365@dragon>
 <VI1PR04MB4062D212996FE37A72DE3557F45B0@VI1PR04MB4062.eurprd04.prod.outlook.com>
 <83445bed8b838b56e7d041915f1849f8@walle.cc>
In-Reply-To: <83445bed8b838b56e7d041915f1849f8@walle.cc>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=alison.wang@nxp.com; 
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 31770836-91c0-4337-fef6-08d77d51354a
x-ms-traffictypediagnostic: VI1PR04MB4349:|VI1PR04MB4349:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB43495B519E629F8334128972F45B0@VI1PR04MB4349.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 02475B2A01
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(136003)(376002)(366004)(396003)(39860400002)(13464003)(199004)(189003)(4001150100001)(53546011)(186003)(7696005)(5660300002)(54906003)(6506007)(26005)(44832011)(71190400001)(71200400001)(52536014)(33656002)(4326008)(64756008)(66946007)(66476007)(66556008)(76116006)(305945005)(2906002)(66446008)(8936002)(9686003)(55016002)(229853002)(316002)(86362001)(8676002)(478600001)(6916009)(81156014)(81166006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB4349;
 H:VI1PR04MB4062.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1WZm5Opry7qedfgQi7MglZcqjxFWkDOFLN1X0Gmbq0BVkOsmRU8/H3wC9j6Q6b82611XxQsddob4cTyrB1aTLk8WuLjaXhEBflbdWolKlRGnLTu4BxxorKFkUrHNLA6U1NCORVCYME6rbeQydzdec3KyZJ5YspZMvXezd9/8iDN7YzZSTn2i71LQNU/RNekdrwxzxzC0fgmsRpPQS4ABCa/4ptW/4UMnvAGJQA3tfQLIbcrgXTzKSIp7+F2Ix4aXutuimcRKYIMnmWW1oIrtoG5WwBjyUEzPCvCYhvdg1Jmb1dUQO7CV8y+SKsYkqCV5XLlLLDVj7aHeUO0hTx9CG7wE7cHLa35TKVlQKt7Iy+16vCMy+WYEj8lpodTVXIvjUBXTZWiINIpt4QXiEv8CdtbMPtsf9Wq99qBWdhpUqhpq2i3O9FTIFoCYRXso+qevXa2I1loPJhiQ20J+qvaujNO6SpLfMbygzsC41WLUQJGJRRaQ0xjp1dDwFTOu49iF
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 31770836-91c0-4337-fef6-08d77d51354a
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Dec 2019 09:13:23.4455 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qElqFmhZjB3vxL3li3qfREJvYm5JIvPfzDMcuHZDJ7UeRW7aoXC4s/nx8anxMc9707jnS/JoX3Z2iEscTgYwrg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4349
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_011326_803599_E44D9EF7 
X-CRM114-Status: GOOD (  23.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.55 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Michael,

> Caution: EXT Email
> 
> Hi Alison,
> 
> Am 2019-12-10 06:35, schrieb Alison Wang:
> > Hi, Michael,
> >
> > In most of our cases, TX and RX are using the same BCLK and SYNC
> > clocks. So the default synchronous mode (sync Rx with Tx) is used,
> > which means both transmitter and receiver will send and receive data
> > by following clocks of transmitter. It is verified on our boards.
> 
> 
> I get that, but it doesn't make sense for the LS1028A SoC because, there is no
> way you have have the TX data and the RX clocks or vice versa. The hardware
> of the SoC doesn't allow that. I cannot speak of the QDS variant of the SoC, but
> the LS1028ARDB only has a transmitter. So there is no problem, because it will
> default to the TX clock. But as soon as you also have a receiver you have to use
> the clock of the receiver block. You could say, use fsl,sai-synchronous-rx, but
> that will only work if the SAI is used in RX mode. fsl,sai-asynchronous mode
> works for both on the other hand and can therefore be the default mode.
> 
> -michael
[Alison] Your explanation is reasonable. LS1028A SoC is a specific one. Using fsl,sai-asynchronous
mode is the preferred choice.

Acked-by: Alison Wang <alison.wang@nxp.com>


Best Regards,
Alison Wang

> 
> 
> >
> >
> > Best Regards,
> > Alison Wang
> >
> >> -----Original Message-----
> >> From: Shawn Guo <shawnguo@kernel.org>
> >> Sent: Monday, December 9, 2019 5:09 PM
> >> To: Michael Walle <michael@walle.cc>; Alison Wang
> >> <alison.wang@nxp.com>
> >> Cc: linux-arm-kernel@lists.infradead.org; devicetree@vger.kernel.org;
> >> linux-kernel@vger.kernel.org; Leo Li <leoyang.li@nxp.com>; Rob
> >> Herring <robh+dt@kernel.org>; Mark Rutland <mark.rutland@arm.com>
> >> Subject: [EXT] Re: [PATCH] arm64: dts: ls1028a: put SAIs into async
> >> mode
> >>
> >> Caution: EXT Email
> >>
> >> + Alison Wang
> >>
> >> On Fri, Nov 29, 2019 at 10:09:37PM +0100, Michael Walle wrote:
> >> > The LS1028A SoC has only unidirectional SAIs. Therefore, it doesn't
> >> > make sense to have the RX and TX part synchronous. Even worse, the
> >> > RX part wont work out of the box because by default it is
> >> > configured as synchronous to the TX part. And as said before, the
> >> > pinmux of the SoC can only be configured to route either the RX or
> >> > the TX signals to the SAI but never both at the same time. Thus
> >> > configure the asynchronous mode by default.
> >> >
> >> > Signed-off-by: Michael Walle <michael@walle.cc>
> >>
> >> Alison, Leo,
> >>
> >> Looks good to you?
> >>
> >> Shawn
> >>
> >> > ---
> >> >  arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi | 6 ++++++
> >> >  1 file changed, 6 insertions(+)
> >> >
> >> > diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> >> > b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> >> > index 379913756e90..9be33426e5ce 100644
> >> > --- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> >> > +++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> >> > @@ -637,6 +637,7 @@
> >> >                       dma-names = "tx", "rx";
> >> >                       dmas = <&edma0 1 4>,
> >> >                              <&edma0 1 3>;
> >> > +                     fsl,sai-asynchronous;
> >> >                       status = "disabled";
> >> >               };
> >> >
> >> > @@ -651,6 +652,7 @@
> >> >                       dma-names = "tx", "rx";
> >> >                       dmas = <&edma0 1 6>,
> >> >                              <&edma0 1 5>;
> >> > +                     fsl,sai-asynchronous;
> >> >                       status = "disabled";
> >> >               };
> >> >
> >> > @@ -665,6 +667,7 @@
> >> >                       dma-names = "tx", "rx";
> >> >                       dmas = <&edma0 1 8>,
> >> >                              <&edma0 1 7>;
> >> > +                     fsl,sai-asynchronous;
> >> >                       status = "disabled";
> >> >               };
> >> >
> >> > @@ -679,6 +682,7 @@
> >> >                       dma-names = "tx", "rx";
> >> >                       dmas = <&edma0 1 10>,
> >> >                              <&edma0 1 9>;
> >> > +                     fsl,sai-asynchronous;
> >> >                       status = "disabled";
> >> >               };
> >> >
> >> > @@ -693,6 +697,7 @@
> >> >                       dma-names = "tx", "rx";
> >> >                       dmas = <&edma0 1 12>,
> >> >                              <&edma0 1 11>;
> >> > +                     fsl,sai-asynchronous;
> >> >                       status = "disabled";
> >> >               };
> >> >
> >> > @@ -707,6 +712,7 @@
> >> >                       dma-names = "tx", "rx";
> >> >                       dmas = <&edma0 1 14>,
> >> >                              <&edma0 1 13>;
> >> > +                     fsl,sai-asynchronous;
> >> >                       status = "disabled";
> >> >               };
> >> >
> >> > --
> >> > 2.20.1
> >> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
