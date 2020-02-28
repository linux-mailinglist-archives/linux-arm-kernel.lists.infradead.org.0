Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4669173D66
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 17:47:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xw4NHtowwaL9/xI0uiQ+Xl+74N6cQvZ9a7C8ukcRjVQ=; b=riHhw8Zv8gXKmX
	m6JItQeebb1pCxofPJeZaQoObbEKmdVxpkBIMjRVtlU82ZtNV4E1EbG6SSso9QCVc8qHxv1G78KSF
	cx47pxW7rFYotpnYjj7s9Tg3rzOsrDjRiFp3a6U7w3kQIeQ0PE2kmD93ikOT9hKY+NIsJE6gpgDnh
	kY1giokqHwB88VENIrtP5MDAgD5Bt8qVP12m2QHiLQsyIN+jjl2xEyYDLV2HfnHh8AzjCoRgaRODR
	lplAwaXESwxnSrgKoNkhD0XhXpapE5pJfAzIiYLjyo2a45t1OkYpWTB8nYFH/j3wJ8f/WhkLwIi4t
	4b8IK1WGOe0yj9LrDiDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7inJ-0000DV-Fs; Fri, 28 Feb 2020 16:47:21 +0000
Received: from mail-vi1eur05on2072d.outbound.protection.outlook.com
 ([2a01:111:f400:7d00::72d]
 helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7in8-0000Ce-N5
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 16:47:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XTzs+g8Ml1L6Og4BVkRPVd8BOIK+7GnuuafGiNQbFl1My9Ecr4ffwCgYdUh//WrpZRsppmSNesoS+AVSUY74ie5gn6Bb9oQvnPludefijr3Wi4iM7+AulbXdvEWRB8nGUhC+TeSJHGw+PjH3x6HPWaIcOjCPHdIcdIqXyb84j9jZSpMUJ+7A45vdeGqb1ZuJcoMAUBH9nhnHyMYj0ok5xoF3m85sRxHghiX8qM0+Js9Bbn4e6UCWgdEXcDUW04XEyHRzE94s7ORLTIGZo5u4dboVfm2yfY7cdZrYS72ZK/2WL+lMtJ62IZGbFTlCQiDWZNECLbrBPu0h+n88+lmtGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/MfsaqkH9gzzdOj+YGCbM7pec43MM2AYADIGlscU1HM=;
 b=M+trkFeIUdspsV1tplvT1qtHsOBDKoeYKQ8QCMPts52fAqjx/uIbUG5x0RYSJ5PbWoD+PWjQXMNFEos9yQDC+x36r1cBv3icCS4zg7YjvLhk32nQ7QG7DlB/juuCU/rl8hfS0BsUMYMkVL75pF0CJPYW3n74dgm5ZLvxr1cFgNw9eWlfi7dvpSEfQ/kg4xUwudSednM0HA0pROW7hoFoa3vKANjMmrnic9HtwV7HNq+VOZwtwPNkcMKsQhMBZIJ0xqd/fEWrcSn6lWfoAr3hViR9vNJPzJUOJVdrIRifm1zkbQq9ABbRrxSKIn4i7UzF4n8dXdGZM/1spOfFoEMSzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/MfsaqkH9gzzdOj+YGCbM7pec43MM2AYADIGlscU1HM=;
 b=UiDf5sgzYJGoarz6gJ8B0KA8oBYHGYbXBqMQezj921+iWoQ6choqqlYj4FI8Wn2HBhdiBIG8OS1sFZpcxU4u3e+s7aqKUG+cSnjRYHGo4uKLE5r3osAphHfwr0uo/dAxf2fk2xjhJswZTcC7ttslQ/XH9gORox4rkraBYrrpIvM=
Received: from VI1PR05MB6845.eurprd05.prod.outlook.com (10.186.163.80) by
 VI1PR05MB5566.eurprd05.prod.outlook.com (20.177.203.19) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.22; Fri, 28 Feb 2020 16:47:06 +0000
Received: from VI1PR05MB6845.eurprd05.prod.outlook.com
 ([fe80::c13:1d07:fa02:6eeb]) by VI1PR05MB6845.eurprd05.prod.outlook.com
 ([fe80::c13:1d07:fa02:6eeb%7]) with mapi id 15.20.2772.018; Fri, 28 Feb 2020
 16:47:06 +0000
From: Marcel Ziswiler <marcel.ziswiler@toradex.com>
To: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "igor.opaniuk@gmail.com"
 <igor.opaniuk@gmail.com>
Subject: Re: [PATCH v1 1/5] arm: dts: imx6: toradex: use
 SPDX-License-Identifier
Thread-Topic: [PATCH v1 1/5] arm: dts: imx6: toradex: use
 SPDX-License-Identifier
Thread-Index: AQHV6zhrpxWYloCtVUak45/He4E7U6gw1vmA
Date: Fri, 28 Feb 2020 16:47:06 +0000
Message-ID: <45f8acad8a095ad6761630330df64c975f3644e0.camel@toradex.com>
References: <1582565548-20627-1-git-send-email-igor.opaniuk@gmail.com>
In-Reply-To: <1582565548-20627-1-git-send-email-igor.opaniuk@gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=marcel.ziswiler@toradex.com; 
x-originating-ip: [81.221.74.212]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1c87c767-1912-423d-052d-08d7bc6dd875
x-ms-traffictypediagnostic: VI1PR05MB5566:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR05MB5566242FA29945AA75613E80FBE80@VI1PR05MB5566.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0327618309
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(346002)(39850400004)(366004)(136003)(376002)(189003)(199004)(5660300002)(2906002)(8936002)(44832011)(110136005)(6512007)(71200400001)(316002)(6486002)(81156014)(81166006)(2616005)(7416002)(36756003)(8676002)(54906003)(86362001)(66556008)(6506007)(4326008)(66476007)(66446008)(66946007)(26005)(91956017)(64756008)(76116006)(478600001)(186003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR05MB5566;
 H:VI1PR05MB6845.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: z+VoiOd1tHlhk+VpfQfLZ16VWyv2xyGUvhMu85U7D6NpsO2VTZv7/n60r/wqyv4FrN285adHQphdozS7NkCkIVtgH8ckFe+eVKRWH/aN771BBWqQ53L//f78Y7MVOp5PtXVoJgZpB36/44z7RjkURk+tGRHXP6ObsLqlKhKZR0OudXg1BedUdMKn5kZl7a9SaGgEMV4ubrMDPpY/DrnPZ4U0AbLjQicEk8cklIE3DCrDynaPkSOYL4JwMKmRZdZywQxv9w0EKaKtmqWpfKAZx5iMaSf6SUgTjIGsTKJ6K5fJohuw/ak7h6m0qLex5uClYx7gGwt6BvVegiFl94uMPr0QrsLFJUKvcSOgtCyBPBHsQij9gAlFYvOd/hBSM+Ook5ZBAcy9TV1qMhn3AsyE2cjhVuC/nIefcqyCfDDhvj/074Jv8s4HzTGF0ExIs50U
x-ms-exchange-antispam-messagedata: Hwe++QkO4fKzTCCVjJIq7kHxgc49q8uo/FISuetWULdflC9duJfMF0bvZ77C0MBC8Dr1561+nhM6mIq27qddkbPB1E2NMwu8YsKDmMO24E1Lvyw6B8nHrDG9OaM5h5Bg8WiTeL+89SCgBDg0O8IRUw==
Content-ID: <724FC9E0EC854E4883967566C2DC1E8C@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1c87c767-1912-423d-052d-08d7bc6dd875
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Feb 2020 16:47:06.3835 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fP5xapcEP/sXx+jYbVDmTzdhVCdRcv1NbRJR3thkXXBV//1b5pM2kw33Of+i3lenRGKKK6fOAY3C2+KAl3EBSzbXnQSRBNRFjTz1hvfh3/0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB5566
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_084710_948993_AA0D5710 
X-CRM114-Status: GOOD (  13.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Max Krummenacher <max.krummenacher@toradex.com>,
 Stefan Agner <stefan.agner@toradex.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Philippe Schenker <philippe.schenker@toradex.com>,
 Igor Opanyuk <igor.opanyuk@toradex.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-imx@nxp.com" <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Igor

On Mon, 2020-02-24 at 19:32 +0200, Igor Opaniuk wrote:
> From: Igor Opaniuk <igor.opaniuk@toradex.com>
> 
> 1. Replace boiler plate licenses texts with the SPDX license
> identifiers in Toradex iMX6-based SoM device trees.
> 2. As X11 is identical to the MIT License, but with an extra sentence
> that prohibits using the copyright holders' names for advertising or
> promotional purposes without written permission, use MIT license
> instead
> of X11 ('s/X11/MIT/g').
> 
> Signed-off-by: Igor Opaniuk <igor.opaniuk@toradex.com>
> ---
> 
>  arch/arm/boot/dts/imx6dl-colibri-eval-v3.dts  | 40 ++---------------
> ----------
>  arch/arm/boot/dts/imx6q-apalis-eval.dts       | 40 ++---------------
> ----------
>  arch/arm/boot/dts/imx6q-apalis-ixora-v1.1.dts | 40 ++---------------
> ----------
>  arch/arm/boot/dts/imx6q-apalis-ixora.dts      | 40 ++---------------
> ----------
>  arch/arm/boot/dts/imx6qdl-apalis.dtsi         | 40 ++---------------
> ----------
>  arch/arm/boot/dts/imx6qdl-colibri.dtsi        | 40 ++---------------
> ----------
>  6 files changed, 12 insertions(+), 228 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/imx6dl-colibri-eval-v3.dts
> b/arch/arm/boot/dts/imx6dl-colibri-eval-v3.dts
> index cd07562..aad47b9 100644
> --- a/arch/arm/boot/dts/imx6dl-colibri-eval-v3.dts
> +++ b/arch/arm/boot/dts/imx6dl-colibri-eval-v3.dts
> @@ -1,44 +1,8 @@
> +// SPDX-License-Identifier: GPL-2.0 OR MIT

Typically, nowadays GPL-2.0+ OR MIT is used. The more restrictive GPL
is not an issue due to being dual licensed.

>  /*
> - * Copyright 2014-2016 Toradex AG
> + * Copyright 2014-2020 Toradex AG

According to our legal we may simply drop this AG postfix as it does
not really serve any purpose here.

Dito in all the other files.

Thanks!

Cheers

Marcel
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
