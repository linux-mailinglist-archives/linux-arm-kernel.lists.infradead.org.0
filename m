Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 502501D70B6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 08:08:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BrXofPjT83SDCfdAsIvbj2RngB3g8BlVXtl4wqqO+Hs=; b=XVzHM11teHUWWT
	wQvD1ObnlDUZcpbNvPyImC6eGEGmoOYB0rJjPv/57h10n5khgERi5Gm+uQDdF6VW54+Ukdqiuiq1W
	emsvc+1TG+hqJSi9xznyOG3cSeCNXmSo+yHdrYOe8RJJf8gQgFZIDTm88UFZwW4caAfF8chaDB+I6
	UVOi7rakmS1HVIZl4Br9f5hXrBjTouVyTMt8O8KsmpvO+LZjcY2xg1k4QIdGUoVVzqRrpzdL/c/wy
	1Ay/xM8xOKHq+VSFB396GaZiZbbOPcnP3+I12INdO+TvMZqLZkJqU3d2WQnn+L/Bydfsl42jJPtCn
	TiezuXq3cClKBVz6g1kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaYx5-0006Oy-DW; Mon, 18 May 2020 06:08:39 +0000
Received: from mail-eopbgr50046.outbound.protection.outlook.com ([40.107.5.46]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaYww-0006OG-FS
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 06:08:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cFv4w6LqJ1QIyhjAQrchy4cAuS8HG9jEL6HAsxS9ywKU+ZyJqxK7MHBzdXBnO+ngQHgDRVBFf2C8V0UqxpQMUFsRnMhREJ3bMizIIBo49GOkW3EGke/MGlzoqG945nuqaGVx0DFr0KoAXuvb7gYt31Ym5eH2X8dQVbru7QdMHjlV/QVSMFOdpAAUlT8MTfPs9Q/K7YXfgYAdhbfWeOhd4IUNHg7pP+l+OT4MY3B/uhwSzykoimSiSiw6jY1Wj+B8IuVybeOk4RL8bmeODKSEjFJp1ICXWEzmLzEefPmZq04IjS1gNPrzEVDfZ/Wc5YshX0dfdMzqEXx2CsKFtisoOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9bTEPt3PlU5EYi2MaWJBRL5+3oRx5s048gLqe9DWGH4=;
 b=E/yZaQ/IsRf8RCqWEz+RBjG3NBk9j8XojMH4FcWhkul3vcXR9F47lbeu3EuvjECVzSS7gl3wfFkmMUyLDuasZNYkrWpZHKRmIH2ho/64wf3GdNnmp7cynJYCYDBhn5loeEMxw1aVFUl30jG7x46eXOsforMSBu8RTOITvkRZrPwl+6n+2YBBc9NGP0VC5S9W4UT6llr3W85AP6A5WBZdxw0QKF6Mt7nElH6nRT8NEcDXUBwMh84imig4apHk61j6m+97bv2rzyYJCpgsygVjnC5Af4G6LoXuAnSdrmiJFyLdER0xlmVtkLpHXvW1raqpXS67nulYVYN9iEjITxDr+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9bTEPt3PlU5EYi2MaWJBRL5+3oRx5s048gLqe9DWGH4=;
 b=KzwywEGyicLd6k9HKyebNf3Cm2qdcJuUW8rm38IPBF9XzMM/lj4t6XbSXPOaKJveqZQeq+o1OOUcjiwb+/88l6Vl2UoXDLuO59pCTd2jYdERJ5wEkmY/IiP0IPrTOS8ashWLyb2BJyyOqjCSo4eA+Wiv//7aDZCQJy07bKhThNU=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB5846.eurprd04.prod.outlook.com (2603:10a6:20b:ad::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.26; Mon, 18 May
 2020 06:08:26 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d%7]) with mapi id 15.20.3000.033; Mon, 18 May 2020
 06:08:26 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Andy Duan <fugang.duan@nxp.com>, Steffen Trumtrar
 <s.trumtrar@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>
Subject: RE: [PATCH] ARM: dts: imx7d-pinfunc: add input mux for ENET2 mdio
Thread-Topic: [PATCH] ARM: dts: imx7d-pinfunc: add input mux for ENET2 mdio
Thread-Index: AQHWKq3aOdOVoo6/TEyJrflUDB2tmaitOnaQgAAKtuCAABq0AA==
Date: Mon, 18 May 2020 06:08:26 +0000
Message-ID: <AM6PR04MB4966C9FE3EB1FCA3AB7A7E2480B80@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <20200515114151.6516-1-s.trumtrar@pengutronix.de>
 <AM6PR04MB4966710261BD821190B2F0FD80B80@AM6PR04MB4966.eurprd04.prod.outlook.com>
 <AM6PR0402MB3607E70A60E62656D1898424FFB80@AM6PR0402MB3607.eurprd04.prod.outlook.com>
In-Reply-To: <AM6PR0402MB3607E70A60E62656D1898424FFB80@AM6PR0402MB3607.eurprd04.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 1e57b14d-8deb-4b30-60dc-08d7faf1e117
x-ms-traffictypediagnostic: AM6PR04MB5846:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB584680599BF36C4F76A1F7CE80B80@AM6PR04MB5846.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:227;
x-forefront-prvs: 04073E895A
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WyOpY8k8yGecO4N089pW4HeB8/5tBM3Z7WgHv1IVrtdujTFpO16bC6VJgUWKAkp1UJScm4cFG/1sIL8uzE7EISOMVmfAtySmrFZox1SV/LGMl+PvZWaj0Q3Q0kw2mmkeoEeUVDndWpMVofD/qV9YbnR+b7qRxTsKBnvaG/NY80Ldv23liLGfb/D2DkyyTCus6nVTwY5diwnuGlAuYpfti0LquJdJARFQi4Peej92CcEPWcNn5MODkEK1zoa8WeQBIMV+HJegzYp3vBB0vfMf6EMcVKmoEtMzEPeKvDH2V6pghJ62Q3dzu3Ntdjbp5GpVmVflur52Qv/x92+OYAd/IsZIbGKQsyQ9nIg+rSDsXmHWXydZFJf82xjC1BW7H5niWeUeTG+CXEFLbdS3cYfMHw54+ilUlZRYv7Uf10PCgrgZ4l9U7td3AQ2TqXo+2Wb5
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(346002)(376002)(39860400002)(136003)(396003)(26005)(44832011)(33656002)(316002)(186003)(71200400001)(110136005)(54906003)(52536014)(9686003)(55016002)(2906002)(478600001)(5660300002)(8936002)(4326008)(66476007)(66556008)(66946007)(64756008)(66446008)(76116006)(8676002)(86362001)(6506007)(7696005);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: SxT4yncxfIEbF5h+k/EBM2cDwURX2O/hWyMuu+58IC6ymrqdv2yf65uNlXb2Wbmf9GYUl/ZZw3+SffVAUM1+NMRHFrrP+3TwzwBj/05JLXBeMKFByylCVkY3MNDMS1QWqXdjjcGN9m5pso33D8plax3F3sjsGld1sP1mPxcokeeiMvYkBCVoRv0YJfdIxVfZ0CjVM5iGcfRAawXI5lhr3wpJq6sTKGRmepUoYpp/L8K9ggq3y7r9/2Awkn5QQCl/xZGV5XP3y1xEgsZCYkyd/J52wmgjYznD8IX79QetIadKy/rxl3NH/ZzJ/vx+3/Fk+3phJPfhAr1n/Y54q9Sv6Dsh2lndDtYF2JZAGfND80z7IqDxIJiZ8g4Q5Ti3o/9bl///vrvQ82ZJLcrO8Shq63VGhb3fnB4bZe6xmm1icqyAZl0lbAspqFMFpOTy0izpjRMcmE0oosI6HaJlfLv3x+oY3EFsbH42C0MNXMMGOcPGJts8jeoVc15RLWpe7BHb
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1e57b14d-8deb-4b30-60dc-08d7faf1e117
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 May 2020 06:08:26.5013 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: a8qu5KFf5NvEhI/EkjGJLGxCqdhjOOqd5z5vysJLuM0Y+XdHdytx3KSEPMefYQHRqxcZojGtOfBA4l3kcCwQHQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB5846
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200517_230830_512643_EAFADAAB 
X-CRM114-Status: GOOD (  16.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.46 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.5.46 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, Rob Herring <robh+dt@kernel.org>,
 Fabio Estevam <festevam@gmail.com>, dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Andy Duan <fugang.duan@nxp.com>
> Sent: Monday, May 18, 2020 12:36 PM
> 
> From: Aisheng Dong <aisheng.dong@nxp.com> Sent: Monday, May 18, 2020
> 11:55 AM
> > > From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> > > Sent: Friday, May 15, 2020 7:42 PM
> > >
> > > Add the missing input mux for ENET2 mdio. Without this setting, it
> > > is not possible to read the MDIO answers back from the PHY.
> > >
> > > Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> > > ---
> > >  arch/arm/boot/dts/imx7d-pinfunc.h | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/arch/arm/boot/dts/imx7d-pinfunc.h
> > > b/arch/arm/boot/dts/imx7d-pinfunc.h
> > > index 08ca1608fdb1..69f2c1ec8254 100644
> > > --- a/arch/arm/boot/dts/imx7d-pinfunc.h
> > > +++ b/arch/arm/boot/dts/imx7d-pinfunc.h
> > > @@ -592,7 +592,7 @@
> > >  #define MX7D_PAD_UART2_RX_DATA__ECSPI1_SS3
> > > 0x0130 0x03A0 0x0000 0x3 0x0
> > >  #define MX7D_PAD_UART2_RX_DATA__ENET2_1588_EVENT1_IN
> > > 0x0130 0x03A0 0x0000 0x4 0x0
> > >  #define MX7D_PAD_UART2_RX_DATA__GPIO4_IO2
> > > 0x0130 0x03A0 0x0000 0x5 0x0
> > > -#define MX7D_PAD_UART2_RX_DATA__ENET2_MDIO
> > > 0x0130 0x03A0 0x0000 0x6 0x0
> > > +#define MX7D_PAD_UART2_RX_DATA__ENET2_MDIO
> > > 0x0130 0x03A0 0x0574 0x6 0x1
> >
> > It's strange that I didn't find this select input setting from latest RM.
> > Anything I missed?
> >
> > Also copy Andy to comment.
> >
> Check the RM in my local, it define the signal select input from UART2_RX_DATA,
> it is correct with the change.
> 
> Aisheng, we can check together for our RM version.

You're right. I checked the wrong place.
So for this patch:

Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>

Regards
Aisheng

> > Regards
> > Aisheng
> >
> > >  #define MX7D_PAD_UART2_TX_DATA__UART2_DCE_TX
> > > 0x0134 0x03A4 0x0000 0x0 0x0
> > >  #define MX7D_PAD_UART2_TX_DATA__UART2_DTE_RX
> > > 0x0134 0x03A4 0x06FC 0x0 0x3
> > >  #define MX7D_PAD_UART2_TX_DATA__I2C2_SDA
> > > 0x0134 0x03A4 0x05E0 0x1 0x0
> > > --
> > > 2.26.2

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
