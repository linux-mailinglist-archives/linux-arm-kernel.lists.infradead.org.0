Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92E5D6F9BC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 08:53:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BYbVEwm/MNjaD/frxS8vnkYHV0Dg7heN2DM/fdeveMw=; b=mgPbkk6PD4VM8X
	iLih4LUlQGiWXNu5JqTaAc0Q/0+61KSAFR88Bx24w0KZwvfGOFlSpzZFPmARmfQ+3M0yENaHDfnlH
	x2d24CrEtBzHIcSQ/u2KqleUlCs96gejwqV+VTXMs7/YMEABgOsmT9ybKB5GfA73ILtUwabzcAQJK
	bYPa5k1z/6ZS4va9ja10m5XIi9xxBFO2Wm2Htku79+eW79UjiE4oCIad6movV5wkbPglat9CaAMHx
	YbeRDQdXb+Jih4Vhg7Hk3oc8WEagGJC3RhG0rzXpbBwdTvLb7/ABb/Dkf6Dmvg+wI2Uka+FyEsc+/
	wPqmcoafpzeLQXLUoWUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpSBv-0004iI-IK; Mon, 22 Jul 2019 06:52:59 +0000
Received: from mail-eopbgr20049.outbound.protection.outlook.com ([40.107.2.49]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpSBP-0004hh-EZ
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 06:52:29 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mkE2YIZmLLrlZp1ykwvKX+8s8aHbDKBW+YlL/pnsD18QxDuWq7Ej2vdIkXKlxAHBLvDlybC3xcTd7n+tlo6FzGkuLT4ExCp/qKOe5sz0uFDpY55n9lr5HbgH8POL3CcaBIOBU9yd7lnWCWVZabC+DGPLLAJyvPH51C9fwOkkqBhrDdHA2w2ll3JJHyqyGzUiYBh7b3Vibt+guoKEIqTMIDeQhdNe9zXGgIMplQ+b/jPhsmbbEJLeRpKWV0kzSi4JMcYNVRkm+h0Lb96lFbRxA7ML5WYcj9aXVk9Dtof5lt+ajERyE3EQOXsgfIZguppqlzXhpw9Cc31lNny2tCXv1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vmpJSnwY/nvr9rYsEwUUNFbYiva790D3YnSURjxd7WI=;
 b=eVu4BCE73BYYFCx9TJ6Wyorv1+YRGp55E691XvG7bO5zeOgLOuuvub8AiR7gifmBq2anbBuDv7pJlciK9PA3z+F/77V9KCrPLTn/xsRN1tjB5dIqVztvP2j/rCZ2iAmTDA+7i6DgEQ3UIH/PRzHctSZfLtRyR4wjOARLv/4+awXPcInDtzQ3TnKmBVe4y92vjJD1v6g2yuxZ1xl7NWsFff4DMM/ctS/Ackz4ODZ9CIwGSRrCN7BsbhEsu1J57Q2iBjjI6olnP2GrVPSuvJ6TNM/cqatBcP2Poi2CGHmzZspQG6lE1IeJ+5cNJ0gaYMqBCKf+eUpSavnnbOLClGucwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vmpJSnwY/nvr9rYsEwUUNFbYiva790D3YnSURjxd7WI=;
 b=jdnF14Fg4a6hvpFn7LBW7PqxRvWHjA9abMNNY5wFwAJkVXjs5SMeJQwUwIc+RdNVUWunTpSjaN9jn0eDtmqopUDbXM6HIR0NtbpVdsAvZ4ZOiWQaxpyUT3s/z/LdRbrIvOuhIs1XyLNKAXSOl1sUQwyMsgwY/8DGaBpvz5F24x4=
Received: from VI1PR0402MB3600.eurprd04.prod.outlook.com (52.134.5.23) by
 VI1PR0402MB2749.eurprd04.prod.outlook.com (10.175.23.149) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.14; Mon, 22 Jul 2019 06:52:23 +0000
Received: from VI1PR0402MB3600.eurprd04.prod.outlook.com
 ([fe80::c539:7bdc:7eea:2a52]) by VI1PR0402MB3600.eurprd04.prod.outlook.com
 ([fe80::c539:7bdc:7eea:2a52%7]) with mapi id 15.20.2094.013; Mon, 22 Jul 2019
 06:52:23 +0000
From: Andy Duan <fugang.duan@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: RE: [EXT] Re: [PATCH arm64/dts 1/1] arm64: dts: imx8qxp: add lpuart
 baud clock
Thread-Topic: [EXT] Re: [PATCH arm64/dts 1/1] arm64: dts: imx8qxp: add lpuart
 baud clock
Thread-Index: AQHVMlEqS52Jir8tLEeHnbVTPIm00abWTdgAgAABWgA=
Date: Mon, 22 Jul 2019 06:52:23 +0000
Message-ID: <VI1PR0402MB3600228E0A05617D3B01AA7AFFC40@VI1PR0402MB3600.eurprd04.prod.outlook.com>
References: <20190704100443.10957-1-fugang.duan@nxp.com>
 <20190722064649.GA3738@dragon>
In-Reply-To: <20190722064649.GA3738@dragon>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=fugang.duan@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a563b6a5-7257-4580-7dbc-08d70e71266a
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR0402MB2749; 
x-ms-traffictypediagnostic: VI1PR0402MB2749:
x-microsoft-antispam-prvs: <VI1PR0402MB2749A532BF7A52D9F3626A0DFFC40@VI1PR0402MB2749.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1417;
x-forefront-prvs: 01068D0A20
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(396003)(366004)(346002)(376002)(136003)(199004)(189003)(486006)(229853002)(3846002)(6116002)(7696005)(6916009)(55016002)(6436002)(66476007)(66556008)(64756008)(2906002)(4326008)(14454004)(71200400001)(66446008)(71190400001)(66946007)(256004)(14444005)(76116006)(6246003)(53936002)(9686003)(11346002)(66066001)(25786009)(446003)(33656002)(316002)(476003)(7736002)(305945005)(478600001)(5660300002)(52536014)(76176011)(102836004)(6506007)(26005)(54906003)(186003)(74316002)(68736007)(99286004)(86362001)(8676002)(81156014)(8936002)(81166006)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB2749;
 H:VI1PR0402MB3600.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: OCnIqFhAsGq9UXREX/XtLPsZlsgyoEn/lx45ZxOqFwfn5V0ZPZNJt5IX8gKtLRBiwd+s31geubAwA51aB/sVJDGxEkdEWCXLpf1b9K78RlwHMpdV5y0dikPAxcctVgbgtFgnh/KaeT5fRrDTTySUwsOQ02bKqvYpWZv6WPTvbzruCgxyyDb6dDvVEsfCiEWTNvxNoac+JFrA7/lICSU5vqzN8FZ5owAlM8yxau1za48wxViX8d5cmI+xtFZ2BYAVOsxXsy3q5ftywMwNdQZSd2i4nTY2GUCngWEu5SJUVP0/4epeSHcnPtN13AoJCBtxdbrdsa+z5SuBZltHrjTx3lz3S1p9dMta34K3D6TmalvlIE8uPdwS709aQlXIrXJCKULU5huZOs8tfikXNvrp2if73tRuErxI7Gy+YYc46cM=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a563b6a5-7257-4580-7dbc-08d70e71266a
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jul 2019 06:52:23.3561 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fugang.duan@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB2749
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190721_235227_617497_3E50073F 
X-CRM114-Status: GOOD (  14.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.49 listed in list.dnswl.org]
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "daniel.baluta@gmail.com" <daniel.baluta@gmail.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Shawn Guo <shawnguo@kernel.org> Sent: Monday, July 22, 2019 2:47 PM
> On Thu, Jul 04, 2019 at 06:04:43PM +0800, fugang.duan@nxp.com wrote:
> > From: Fugang Duan <fugang.duan@nxp.com>
> >
> > Add imx8qxp lpuart baud clock.
> >
> > Signed-off-by: Fugang Duan <fugang.duan@nxp.com>
> > ---
> >  arch/arm64/boot/dts/freescale/imx8qxp.dtsi | 23
> > +++++++++++++++--------
> >  1 file changed, 15 insertions(+), 8 deletions(-)
> >
> > diff --git a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
> > b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
> > index 05fa0b7..4402b2e 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
> > @@ -30,6 +30,9 @@
> >               mmc2 = &usdhc3;
> >               mu1 = &lsio_mu1;
> >               serial0 = &adma_lpuart0;
> > +             serial1 = &adma_lpuart1;
> > +             serial2 = &adma_lpuart2;
> > +             serial3 = &adma_lpuart3;
> 
> This is not about adding baud clock, right?  Please either mention the change
> in the commit log, or have it as a separate patch.
> 
> Shawn

Thanks for your review.
I will send v2 to separate the patch.
> 
> >       };
> >
> >       cpus {
> > @@ -209,8 +212,9 @@
> >                       reg = <0x5a060000 0x1000>;
> >                       interrupts = <GIC_SPI 225
> IRQ_TYPE_LEVEL_HIGH>;
> >                       interrupt-parent = <&gic>;
> > -                     clocks = <&adma_lpcg
> IMX_ADMA_LPCG_UART0_BAUD_CLK>;
> > -                     clock-names = "ipg";
> > +                     clocks = <&adma_lpcg
> IMX_ADMA_LPCG_UART0_IPG_CLK>,
> > +                              <&adma_lpcg
> IMX_ADMA_LPCG_UART0_BAUD_CLK>;
> > +                     clock-names = "ipg", "baud";
> >                       power-domains = <&pd IMX_SC_R_UART_0>;
> >                       status = "disabled";
> >               };
> > @@ -220,8 +224,9 @@
> >                       reg = <0x5a070000 0x1000>;
> >                       interrupts = <GIC_SPI 226
> IRQ_TYPE_LEVEL_HIGH>;
> >                       interrupt-parent = <&gic>;
> > -                     clocks = <&adma_lpcg
> IMX_ADMA_LPCG_UART1_BAUD_CLK>;
> > -                     clock-names = "ipg";
> > +                     clocks = <&adma_lpcg
> IMX_ADMA_LPCG_UART1_IPG_CLK>,
> > +                              <&adma_lpcg
> IMX_ADMA_LPCG_UART1_BAUD_CLK>;
> > +                     clock-names = "ipg", "baud";
> >                       power-domains = <&pd IMX_SC_R_UART_1>;
> >                       status = "disabled";
> >               };
> > @@ -231,8 +236,9 @@
> >                       reg = <0x5a080000 0x1000>;
> >                       interrupts = <GIC_SPI 227
> IRQ_TYPE_LEVEL_HIGH>;
> >                       interrupt-parent = <&gic>;
> > -                     clocks = <&adma_lpcg
> IMX_ADMA_LPCG_UART2_BAUD_CLK>;
> > -                     clock-names = "ipg";
> > +                     clocks = <&adma_lpcg
> IMX_ADMA_LPCG_UART2_IPG_CLK>,
> > +                              <&adma_lpcg
> IMX_ADMA_LPCG_UART2_BAUD_CLK>;
> > +                     clock-names = "ipg", "baud";
> >                       power-domains = <&pd IMX_SC_R_UART_2>;
> >                       status = "disabled";
> >               };
> > @@ -242,8 +248,9 @@
> >                       reg = <0x5a090000 0x1000>;
> >                       interrupts = <GIC_SPI 228
> IRQ_TYPE_LEVEL_HIGH>;
> >                       interrupt-parent = <&gic>;
> > -                     clocks = <&adma_lpcg
> IMX_ADMA_LPCG_UART3_BAUD_CLK>;
> > -                     clock-names = "ipg";
> > +                     clocks = <&adma_lpcg
> IMX_ADMA_LPCG_UART3_IPG_CLK>,
> > +                              <&adma_lpcg
> IMX_ADMA_LPCG_UART3_BAUD_CLK>;
> > +                     clock-names = "ipg", "baud";
> >                       power-domains = <&pd IMX_SC_R_UART_3>;
> >                       status = "disabled";
> >               };
> > --
> > 2.7.4
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
