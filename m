Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1824C15B27A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 22:08:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=Uew6bmcQN6EzWKTKz45UiKakwQWqaYKm4EidrB44wdk=; b=TEg3Mac5jNKKhL
	sqqXkwCOBTZ3EfuUHEXrsSrBWUqEF4fA+eaUHALoZ0a02g+P4/y/zh+qlYTVRDE2xHfqoFVWK89QA
	sVkBb+zM3YYYy6BEgWPzpykWad+CldBDjjs+JD0Ig76g2rKuY1vooh61Yp/vrh8V6U1HJ2XBPktoj
	XVOwYD6jGUFeFkobxQSjlsQvlS7okj+Jr/44VR4YR4Xj87nVlVI5oXOaBCrzwkSPcr/iW/h51YnOA
	jsZNpSd7lLOyw7ugwz1UJ3N9WnkYVnl2J1rkCP1eogEacbHFBt82cYdhnK8EXuNO4bgrWiBwV79Tz
	PnjDeYkVA0HxmuB6A8Ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1zF2-0007Y8-Fs; Wed, 12 Feb 2020 21:08:16 +0000
Received: from mail-eopbgr70071.outbound.protection.outlook.com ([40.107.7.71]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1zEu-0007Wq-OZ
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 21:08:10 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hO8D3K6u2kWLscQv3/wT4PFN/9fZqqwvGp14ivhOpH9AL2rXnP/ic2l+K6otRoTcXJkMHupDGJRpdYVvUa7T/UrsAJ04lXO/pconwZM6d4dfIzHOPMqzsLPffkxnaCWhXhG3N88sgFrsafINTunfiYaN0mATnBH8sgXbC9zHe2zRJl4BKC668b6JjgNCbyD3qnDGrTA74OzCQJdNbYYA4bU5HIfjhBlr9YCDwsiSn5njzYd7qjOSYdgQuJ2FlKz0ZI7RAYRZm+Xw7RaAdiA8U6qB6jF5zvMWZBT1lBfnNhfTx9NGSWGgQVHs0oVz8TvepJOrtC193W1SJEG/DWMcGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RUalFHTmreuyimJusmKyrlY0jZ9TCaTplrUE/OhyEow=;
 b=Q2BoeQ79YMHQHvCVKPfdZeYr1ws/XHTm678Kd3vo+oxtsaWaxYSSM66SwtKZ7e4ow9CcwAXyaQNCUxBkOIBkt11q4e6F85+rn+R+FGf61cnqcNtc5TpGIZwIUqV1wz8R4iJwgyOc0XrVA6LeSFNE4YGpPbpsrQ1ZPoOtZ0/79TX+p91ImwuyuLPrmm0feKAQEtierIjxKgqEX9Jl6k6FX4iykSN+YhYCLIpvOclpxtRiY2vCYabIDLJu1591x8+/rKkUFhVS9tpBCo48DqxeARFzotybuP3Xh3vIETilY2QJ6JS8Zc2AFkLUeGDKzZ9viRf+IwIkLGdqLVTUVM/sAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RUalFHTmreuyimJusmKyrlY0jZ9TCaTplrUE/OhyEow=;
 b=pIoxKMcbqBoc3wph5VAUSQkdILg95YlMrqcFWWgzikXUtzOQwNeeYb9iBC+IKvpd/pD2WvtB/9QaatOHTF6WlaeMDu3eJixF8oZoCG84jxtjxtmhLf3awnSpo3oviDynPjSmZpZudLmYbI3vnUP9W6TjHxio6NqMtYbRHpfEo1o=
Received: from AM0PR0402MB3476.eurprd04.prod.outlook.com (52.133.50.141) by
 AM0PR0402MB3313.eurprd04.prod.outlook.com (52.133.46.10) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2707.24; Wed, 12 Feb 2020 21:08:01 +0000
Received: from AM0PR0402MB3476.eurprd04.prod.outlook.com
 ([fe80::dc6e:5cc4:dd53:3088]) by AM0PR0402MB3476.eurprd04.prod.outlook.com
 ([fe80::dc6e:5cc4:dd53:3088%5]) with mapi id 15.20.2707.030; Wed, 12 Feb 2020
 21:08:01 +0000
From: Horia Geanta <horia.geanta@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>, Stephen Boyd <sboyd@kernel.org>, Rob
 Herring <robh+dt@kernel.org>, Abel Vesa <abel.vesa@nxp.com>
Subject: Re: [PATCH v2 0/3] clk: imx8mn: add snvs clock
Thread-Topic: [PATCH v2 0/3] clk: imx8mn: add snvs clock
Thread-Index: AQHVzD/OjZFqJodHNUiVYUZ4iWuZWA==
Date: Wed, 12 Feb 2020 21:08:01 +0000
Message-ID: <AM0PR0402MB3476CCC69A3726CDF4D7CB0B981B0@AM0PR0402MB3476.eurprd04.prod.outlook.com>
References: <20200116073718.4475-1-horia.geanta@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=horia.geanta@nxp.com; 
x-originating-ip: [84.117.251.185]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: a9de6f52-f3db-45f7-0fcc-08d7afffa517
x-ms-traffictypediagnostic: AM0PR0402MB3313:|AM0PR0402MB3313:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR0402MB3313AB1CF3565DE9A5EF268C981B0@AM0PR0402MB3313.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3044;
x-forefront-prvs: 0311124FA9
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(39860400002)(376002)(396003)(366004)(136003)(189003)(199004)(44832011)(9686003)(86362001)(53546011)(7696005)(6506007)(81156014)(478600001)(26005)(55016002)(966005)(8676002)(8936002)(54906003)(110136005)(81166006)(186003)(66556008)(66446008)(66476007)(64756008)(76116006)(66946007)(52536014)(71200400001)(33656002)(4744005)(5660300002)(4326008)(2906002)(7416002)(316002)(6636002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR0402MB3313;
 H:AM0PR0402MB3476.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kuuohzxJRwcQnZkEiL3ydaeC9iXwHmEbXKK+ga/cqmhrrlS1ZlDstyKOsa8HlZdDFBm1gI8wq4mcC9AsZ6GH/5Hcx1fq++G82zgMCYxLHd1RLBvU8ZFdzRADTwG11R3zbOmAAzLl4uLuVSujVx04E3JNFj25JP1It3YPlXjeShpNCtM8xy3h3HuGhKWWjdUz0Ync3UitwVJEJg2VPms2qyrlJBfMV90j7DNuUW/NjZ546tl9/PB+jzrDAmKqkRwf0Mq42P6Ij1EJHRbl7+y1FpQzFrmXOs/+5SX/KsOZHw6Clf6lDrxqtrMdcbKiodoSccAu11LqPr6IqqJ5PCjTxbD0fFiYk/+NEtRr067h5nlWnmQ7b8Wfcm5ltwVu8aMBvmPEga6FCfdSJAae6vVQ1Y8XK1lvKVGm8Qh9DmByqSISrdPxXK5LxSq//xd8wC70uUb73LKtXiyqEBa+qL6shYj3VdYkBGxuT5bv2YRqE2c1HxuZU2hj72xO+mtQYtVQs8UHyXL23Tm41Fykevn1LiPjMckc6yQqqO80zQr8kDEF8lda7ZFtNGzPThCg1TSS
x-ms-exchange-antispam-messagedata: 7pSI2MHIob+fl5dstG4ZWlZ6ITz/TA7gCjIj9kH8zwA1Z4T7LMNneMcCT0ytyNibgx9m62/xxzSfCnpL0KIFQIvkmYVt4DM41ncVmcKAvooV7vd4Ki8l8peHsPwd3Ry6C+Tb/edvCqkjRAC2lMTn4w==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a9de6f52-f3db-45f7-0fcc-08d7afffa517
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Feb 2020 21:08:01.6458 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YMSVD44gSsc32cajtPbA0WS14tVPvfSiT/eCvpbIDZSVM12Oteloe5BrdoDC0PrTg4v/fXSgAtCArSyPR60Bxg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR0402MB3313
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_130808_957602_B8B693FD 
X-CRM114-Status: GOOD (  11.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.71 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.7.71 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Anson Huang <anson.huang@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 Michael Turquette <mturquette@baylibre.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 1/16/2020 9:37 AM, Horia Geant=E3 wrote:
> v2: add commmit message for trivial patch 1/3
> =

> This patch set adds the clock for snvs module on imx8mn.
> DT bindings, clk driver are updated accordingly.
> DT for imx8mn (snvs-rtc-lp node) is also updated.
> =

> Horia Geant=E3 (3):
>   dt-bindings: clock: imx8mn: add SNVS clock
>   clk: imx8mn: add SNVS clock to clock tree
>   arm64: dts: imx8mn: add clock for snvs rtc node
> =

>  arch/arm64/boot/dts/freescale/imx8mn.dtsi | 1 +
>  drivers/clk/imx/clk-imx8mn.c              | 1 +
>  include/dt-bindings/clock/imx8mn-clock.h  | 4 +++-
>  3 files changed, 5 insertions(+), 1 deletion(-)
> =

Kind reminder.

Patch set is here:
https://patchwork.kernel.org/project/linux-arm-kernel/list/?series=3D229047=
&archive=3Dboth&state=3D*
Let me know if I should resend it.

Thanks,
Horia

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
