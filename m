Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4080715B79F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 04:15:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2jANjEayNh1tJtnd9TpCX4kEEA2EVhdZ5C4+9QL7zx8=; b=Q0/ZDr2jQmrhvg
	wUNc5QQ5UVGZU7TZTsnvNICODfG25w8HWSdJ7ZHufGLlGkMxE/v76a7knsthDUrQc3FVf9R76qmSo
	G03SZ/r/g9qXngB881n2SwgZ6dh0WGAegALQWTdTdp42ZcDiAov96uh7WPabwI7jH5nMLa4WFno4d
	h6/xiIxoSkPRJVJDP70ZoxX6/NcmoHaL6gB1JBaH6QMS/5OWPsktv9r4xLtZElAIIvKq0sFcaP1tF
	nShHP/WTqoUoNOkfGcYnnNX8mQ/MMyqcRcw2/+WhshGlezRjDG2EPWv8QIp/0sbrNfOIH09rx1C7C
	Aq2eyk2wK/uuLGxpIHuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j24yU-0002RK-KP; Thu, 13 Feb 2020 03:15:34 +0000
Received: from mail-eopbgr80042.outbound.protection.outlook.com ([40.107.8.42]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j24yL-0002Qu-5c
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 03:15:26 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dyn77o2stjkIQH+UToHBiwHSrINO0IIOnQE3b79e+uKploBJ7Jd7edMs2llAhXOUIHCG6+knAwHWluERk6uMYhFXVGU5E8Bm0XUIivQKHctiZku4FWR2g10m5xyfwnjdIKfqH/waAvuF4Vm31T4sRXxZr0Da0H5wQVXjVIsy61hoUvvlU/jiX1kHCb0vA999TeMhT+yde96gAJDREF/B5H8/tNASOZ9Rc5vk28ADuwgrMGwHTB9Qzwi1Ql7pPURQoaFM4njj/yRggcoP5EfubDVJ4yVw0PMM2Z5PtjM87OD3XrS7huLBRUXejO+LTJieNzbCdtdQQR0WeXS7KY2v7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=08Ys/QhSybmrSQZcy/33cBBL4g9qOVd7VJRQEQj/VHQ=;
 b=h/G73JNzofOQdnJK6GANZa0MAEYHb/R3nlCc4th9jytaa4pxjPAYb9kDik6k0N+WAK1tWcPkPL/yL5AgY98XxIJe5Bg1AC/KMVRaXF/VKDHMotTKQFNveDSAtXFjZ+RCKC4HP8V7mxvo3mkvJytHmBnKzwa08/3jljNTooLSlkF/VDqgV3eCwm//Kqfum64lnvjBh6kMvnV3t90tFzLPpHRoEvUGgs/hZi++jOSlTXmbhbstJHHpzELmZde+NoYaiYufcm8XStYJukmkwfgzZ8wsx+G60ooJ3pprLfh3zrnMhRzayrrx4K/+NbD88laqE9l5wKtWJYJXiuplH6DfDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=08Ys/QhSybmrSQZcy/33cBBL4g9qOVd7VJRQEQj/VHQ=;
 b=f+IC/xraBDWeGqV3QpTK+QFmOhXNjPE0ML6dd2OByqtXqFsEs0JHWGPAJoCS9jw8Fkm6O853fm6BATQrxfMF2xrAxblFnVWYKNxnMCQJkVYLfGvK0LrhJGVmRDl7RNONizogdYRMpQm/R6DxCNlHly3XHCFKTl0SC01wKR4Vl24=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5282.eurprd04.prod.outlook.com (20.177.42.79) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2707.24; Thu, 13 Feb 2020 03:15:21 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2729.024; Thu, 13 Feb 2020
 03:15:21 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: RE: [PATCH 1/2] ARM: dts: imx: use generic name bus
Thread-Topic: [PATCH 1/2] ARM: dts: imx: use generic name bus
Thread-Index: AQHVzDd9dofq1wixmkSbfSHsuEOGXqgYlUCAgAAJbaA=
Date: Thu, 13 Feb 2020 03:15:21 +0000
Message-ID: <AM0PR04MB4481DDD5A9B9A9B9ED0BB4D6881A0@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1579156408-23739-1-git-send-email-peng.fan@nxp.com>
 <1579156408-23739-2-git-send-email-peng.fan@nxp.com>
 <20200213023330.GK11096@dragon>
In-Reply-To: <20200213023330.GK11096@dragon>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 181f296e-1b40-4d5e-a67c-08d7b032f605
x-ms-traffictypediagnostic: AM0PR04MB5282:|AM0PR04MB5282:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB5282828EA571B895A5486A20881A0@AM0PR04MB5282.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:229;
x-forefront-prvs: 031257FE13
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(346002)(396003)(136003)(366004)(376002)(199004)(189003)(52536014)(5660300002)(81166006)(8676002)(7696005)(66946007)(66476007)(66556008)(64756008)(76116006)(66446008)(9686003)(4326008)(8936002)(81156014)(33656002)(478600001)(44832011)(55016002)(6506007)(2906002)(186003)(86362001)(316002)(26005)(6916009)(54906003)(71200400001)(41533002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5282;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WFiqDaAPB+XgUMVd1fbngPuXEzhyb5GzpGcuG2/kbeKvJJASuPyZjATDZ80WJNHIDFf2oF8az7UmKx7PPm/J6e+2mh6CQs96VeC5P5j/ornGjDsCX1OWYG1AmUHfxp0sUXtazJ9Yb7x1/nTn87VidfS3s8NVZQi2w6VWOrI1+PtuICxEYcNBnW9+PITf7MRLBhb3iRbUr2FuiPgDS152NNI8P5hmrODVJUBqqtHUbAzDmsblBWtVYljZYes6sWO4cjncSJljA9+BfEcTZa6Q730xh3v0kNK4Sm2EY30ieJXtQvdkp0ar6XMHsad6qK9puHyzOw+/wqA2bbmNWxtJNgY1r8GKRLAhmoN7IHFvUjka7hTJnfZHiQbdfOtPuSCV70U0vm7ZfYL3G8Ns98vpQFTfr1gx5++Fnhc45cLuigFJPIO5YO8/ZxgbJB2TSHkZBEiNS2vYhLja7h1+Ogd/rnlnfZC4C01KKgFbPyKMd92KzTsk36J3bJoT5Qzfwkdm
x-ms-exchange-antispam-messagedata: wjrMhGxhu7oFEmZVKyjVZMB/gc8RQrgvGk5MTH0kfgDMq95om3WCyRQbkneAyb+kweoGN28TyvcgnGQbMm2/ACTZtEVw9yaHTP0UCx+KDVgeseNsQA1JcxrEygKSyWcDaT8DUt/w24Kg6RYO/UbziA==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 181f296e-1b40-4d5e-a67c-08d7b032f605
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Feb 2020 03:15:21.7533 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mpSiNqDBrtDjHlAjgEtMaSwrWDDCfjFVGX/FC1dNNTIEhsp4qsSk6mIt1h3kCsJuf1avpyxKKohdTx+DamPrsg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5282
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_191525_213225_626DCDF3 
X-CRM114-Status: GOOD (  12.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.42 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.8.42 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
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

Hi Shawn,

> Subject: Re: [PATCH 1/2] ARM: dts: imx: use generic name bus
> 
> On Thu, Jan 16, 2020 at 06:37:57AM +0000, Peng Fan wrote:
> > From: Peng Fan <peng.fan@nxp.com>
> >
> > Per devicetree specification, generic names are recommended to be
> > used, such as bus.
> >
> > i.MX AIPS is a AHB - IP bridge bus, so we could use bus as node name.
> >
> > Script:
> > sed -i "s/\<aips@/bus@/" arch/arm/boot/dts/imx*.dtsi sed -i
> > "s/\<aips-bus@/bus@/" arch/arm/boot/dts/imx*.dtsi
> >
> > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > ---
> >  arch/arm/boot/dts/imx25.dtsi   | 4 ++--
> >  arch/arm/boot/dts/imx31.dtsi   | 4 ++--
> >  arch/arm/boot/dts/imx35.dtsi   | 4 ++--
> >  arch/arm/boot/dts/imx50.dtsi   | 4 ++--
> >  arch/arm/boot/dts/imx51.dtsi   | 4 ++--
> >  arch/arm/boot/dts/imx53.dtsi   | 4 ++--
> >  arch/arm/boot/dts/imx6dl.dtsi  | 4 ++--
> >  arch/arm/boot/dts/imx6q.dtsi   | 2 +-
> >  arch/arm/boot/dts/imx6qdl.dtsi | 4 ++--
> > arch/arm/boot/dts/imx6qp.dtsi  | 2 +-  arch/arm/boot/dts/imx6sl.dtsi
> > | 4 ++--  arch/arm/boot/dts/imx6sll.dtsi | 4 ++--
> > arch/arm/boot/dts/imx6sx.dtsi  | 6 +++---
> > arch/arm/boot/dts/imx6ul.dtsi  | 4 ++--
> > arch/arm/boot/dts/imx6ull.dtsi | 2 +-
> >  arch/arm/boot/dts/imx7s.dtsi   | 6 +++---
> >  16 files changed, 31 insertions(+), 31 deletions(-)
> 
> We may want to cover Vybrid family (see vf500.dtsi, vfxxx.dtsi) as well.

ok. Since Patch 2/2 has been applied by you. I'll only post v2 for patch 1/2.

Thanks,
Peng.

> 
> Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
