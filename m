Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C10E173D98
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 17:52:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NAGnw7yqga3EBrDCmrG8u0O3EBfSo5Schwqa4W0Ni0Q=; b=HHByTtOSj2RoJv
	lqnc9zOkp9gpASg7c+dJM80cBrmfQaNMGsq0TOISNAL6HXZiPMCVCIIVrtM7o7SZzDRrmSC6LEVy1
	4IKt1C1o4awEwgM5G2uB6MzTPGyqoAofE5xQ7usUIQthSVhpH0lm4nM/paL4Kb0kVfJJU0CTmcZ0i
	75Ylf/5EZbtEsqimZh5/o7S7eL6pFpbXVN43q0c+7j0G+MYbKb0Xn3FRF4kyHPGwerN7G48lZsWtu
	C52zr3opGeODes31umDFkLyNJzhr54mYs6DNuEphZkJjUSdYOgJVnTVMc7wuDbdKP2Jqb/i5ajSme
	mPPWijCyzkH41rKk9mzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7isD-0002gX-Ed; Fri, 28 Feb 2020 16:52:25 +0000
Received: from mail-vi1eur05on2126.outbound.protection.outlook.com
 ([40.107.21.126] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7is6-0002g5-Eb
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 16:52:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MStW2V07vuHSt3obiB3lwBi96g+hz/BG/xygsmMNUj9jV0DMA4obH03Amp2rHzgvpzjKN3MERHYMnbwXyCHcr1alLgKnBRR9WiDoqY/Hokf45FJUT3H6cg8bdCnPkBce25u26nzNoT8yT8x+EYtjQBinPk+AIeRfBmXm+5wTEJpY6PJcVgs/Xo9YTFXaeG8IOMDwJLYOs3mE6Rsim2gogt+X/EmGelf3STWwrHPFyq0rTX2yZWvEHy275ZCxByauFtyP1n+a5r5//hnO7ahe4ye3s04rbIckusiHQqgrzWJvBMgXeLphSzTJV6HN44xmTuvloi0e0jIyCgEOJpszmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DWLYQ/8UGxRfFX2kz6IiJmXHrxcVCgTMolg1A+Gliwg=;
 b=EU9h8Al/FEv2pBvny2JyWZ5AZOBWrU9XU5pr6PEuBDFs2/S8loLc4zOuRQ2Aa3LFgOSI1/WrQ1o6owaXf7dG+lXQB9aqAE73e618YYyLVph5lmvHgUje0Yhy8xXiUcDsZyRcasJmbn5V0XdgfpCmKN3NeFXisws58cofz/NDM1/w5Rts2CckV0GLpEItHNabEcSwkYYW6e9io/wt/8R56C/1ynrZTsNfo0Rxjj0zWNNG+6Ht3321tt6VKhd7PAhqcb3PW45fy2YSo+RyMOxymi16mjaxtGv53C4Rcl3i7hdxZg2Cr1v32+KUWf0nErnkfl7jno1UPKt8+NmCrJUgtg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DWLYQ/8UGxRfFX2kz6IiJmXHrxcVCgTMolg1A+Gliwg=;
 b=VzLqhcP1SqARvQcGKBKwb6C8COqtw5UdFw7OWhNmW4XK66vGVcC0OLDJjM209iftQAyOFtnhpAk1pCcjU1pujYnyXXqZtMZ/z2t4x66ISW/g9/x0Mq3v10cYN+HmVvyhcEn2sHBj2/5qJLixfH5yqVhmr7BQlr64gVFOiqz7DgQ=
Received: from VI1PR05MB6845.eurprd05.prod.outlook.com (10.186.163.80) by
 VI1PR05MB5566.eurprd05.prod.outlook.com (20.177.203.19) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.22; Fri, 28 Feb 2020 16:52:16 +0000
Received: from VI1PR05MB6845.eurprd05.prod.outlook.com
 ([fe80::c13:1d07:fa02:6eeb]) by VI1PR05MB6845.eurprd05.prod.outlook.com
 ([fe80::c13:1d07:fa02:6eeb%7]) with mapi id 15.20.2772.018; Fri, 28 Feb 2020
 16:52:16 +0000
From: Marcel Ziswiler <marcel.ziswiler@toradex.com>
To: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "igor.opaniuk@gmail.com"
 <igor.opaniuk@gmail.com>
Subject: Re: [PATCH v1 3/5] arm: dts: vf: toradex: use SPDX-License-Identifier
Thread-Topic: [PATCH v1 3/5] arm: dts: vf: toradex: use SPDX-License-Identifier
Thread-Index: AQHV6zhtATEDMdsmbUWxVIV3P3KFSagw2GqA
Date: Fri, 28 Feb 2020 16:52:15 +0000
Message-ID: <c9eecab5fa2c0ae3228bfcb8350a9f08d431497a.camel@toradex.com>
References: <1582565548-20627-1-git-send-email-igor.opaniuk@gmail.com>
 <1582565548-20627-3-git-send-email-igor.opaniuk@gmail.com>
In-Reply-To: <1582565548-20627-3-git-send-email-igor.opaniuk@gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=marcel.ziswiler@toradex.com; 
x-originating-ip: [81.221.74.212]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a69a40ac-de89-4dc4-6689-08d7bc6e90f4
x-ms-traffictypediagnostic: VI1PR05MB5566:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR05MB55666265D500424C8D99AD3BFBE80@VI1PR05MB5566.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0327618309
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(346002)(39850400004)(366004)(136003)(376002)(189003)(199004)(5660300002)(2906002)(8936002)(44832011)(110136005)(6512007)(71200400001)(316002)(6486002)(81156014)(81166006)(2616005)(7416002)(36756003)(8676002)(54906003)(86362001)(66556008)(6506007)(4326008)(66476007)(66446008)(66946007)(26005)(91956017)(64756008)(76116006)(478600001)(186003)(2004002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR05MB5566;
 H:VI1PR05MB6845.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1GvH5GSZdVD8bNcxsNvFBftBuBZrp+sfbFYbZHXx4dtcGn44rzhLjSdrhjXUY+mG+GmiJjBrviHSDoAQcpRjoOsdGW6gmfDnwS41wwcTW0txv+NqsMen5GAclNExwlX3KiDeCEazEHnxPIad3aZ1m48M8aphe/QpFM0CiQ4YSwxzZ58d8Xr4voSGK9eBu7Qv8Yi+y9+QHOWS2KKNOTWitZpkKcHQxB2ZcuTXFvsxeYgq+l4N7pQNUEDnlvZrTWpug+m0PLN3sUkWJDLanUaDx1zczCZt1bBn6ozgXp+KnsDrfRbL6IYW/mDT7XJ5+lGwrWwa/kuclCDwmsuhrg8Cmxx9x/t9bCp53nXOLvMaHz6JLIrAjOifNXRyIJlOfleZPru9twi8JjLK1dJeYsxVviEvnou6i5744XoyhWyPmJXhwSNvNt3ND1vod0ZeP7QaKPsf2as2lPWeUN9bIg703uKlT0VtJReVuxK/n5XZbQE=
x-ms-exchange-antispam-messagedata: HaXSwYSdR9E12qYYvtQGDjsMiCa6cGwLRQotljm1h5ATmG1FZ86u2e25szJ+pLOjz2l7ORZLFRFqS0ygDM/oLSif6u24iYNcv5syyMP9ZPc/QMsahKh1tDoFAGUeuHYDmJ+/OzLo6KonRmVsF9ObqA==
Content-ID: <4CE4B1D5C44BE5408AB8C21CD37D82A0@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a69a40ac-de89-4dc4-6689-08d7bc6e90f4
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Feb 2020 16:52:15.8733 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +X0zmq7XJOAZhZ+WpC4r05I5eB6I/JAXJd//yEHkrRUH9/iX+mzFUtPUktfYJdkXgm+5Gu1YEUkpIMQpXQtqfn4sJIMO5m9T2F+aQQXdADo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB5566
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_085218_491425_E0FB62BB 
X-CRM114-Status: GOOD (  22.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.21.126 listed in list.dnswl.org]
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
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stefan@agner.ch" <stefan@agner.ch>,
 Philippe Schenker <philippe.schenker@toradex.com>,
 Igor Opanyuk <igor.opanyuk@toradex.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Igor

On Mon, 2020-02-24 at 19:32 +0200, Igor Opaniuk wrote:
> From: Igor Opaniuk <igor.opaniuk@toradex.com>
> 
> 1. Replace boiler plate licenses texts with the SPDX license
> identifiers in Toradex Vybrid-based SoM device trees.
> 2. As X11 is identical to the MIT License, but with an extra sentence
> that prohibits using the copyright holders' names for advertising or
> promotional purposes without written permission, use MIT license
> instead
> of X11 ('s/X11/MIT/g').
> 
> Signed-off-by: Igor Opaniuk <igor.opaniuk@toradex.com>
> ---
> 
>  arch/arm/boot/dts/vf-colibri-eval-v3.dtsi   | 40 ++-----------------
> ----------
>  arch/arm/boot/dts/vf-colibri.dtsi           | 39 ++-----------------
> ---------
>  arch/arm/boot/dts/vf500-colibri-eval-v3.dts | 40 ++-----------------
> ----------
>  arch/arm/boot/dts/vf500-colibri.dtsi        | 40 ++-----------------
> ----------
>  arch/arm/boot/dts/vf610-colibri-eval-v3.dts | 40 ++-----------------
> ----------
>  arch/arm/boot/dts/vf610-colibri.dtsi        | 40 ++-----------------
> ----------
>  arch/arm/boot/dts/vf610m4-colibri.dts       | 39 +----------------
> -----------
>  7 files changed, 13 insertions(+), 265 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/vf-colibri-eval-v3.dtsi
> b/arch/arm/boot/dts/vf-colibri-eval-v3.dtsi
> index e2da122..bd75211 100644
> --- a/arch/arm/boot/dts/vf-colibri-eval-v3.dtsi
> +++ b/arch/arm/boot/dts/vf-colibri-eval-v3.dtsi
> @@ -1,42 +1,6 @@
> +// SPDX-License-Identifier: GPL-2.0 OR MIT

Use GPL-2.0+ OR MIT.

>  /*
> - * Copyright 2014 Toradex AG
> - *
> - * This file is dual-licensed: you can use it either under the terms
> - * of the GPL or the X11 license, at your option. Note that this
> dual
> - * licensing only applies to this file, and not this project as a
> - * whole.
> - *
> - *  a) This file is free software; you can redistribute it and/or
> - *     modify it under the terms of the GNU General Public License
> - *     version 2 as published by the Free Software Foundation.
> - *
> - *     This file is distributed in the hope that it will be useful,
> - *     but WITHOUT ANY WARRANTY; without even the implied warranty
> of
> - *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - *     GNU General Public License for more details.
> - *
> - * Or, alternatively,
> - *
> - *  b) Permission is hereby granted, free of charge, to any person
> - *     obtaining a copy of this software and associated
> documentation
> - *     files (the "Software"), to deal in the Software without
> - *     restriction, including without limitation the rights to use,
> - *     copy, modify, merge, publish, distribute, sublicense, and/or
> - *     sell copies of the Software, and to permit persons to whom
> the
> - *     Software is furnished to do so, subject to the following
> - *     conditions:
> - *
> - *     The above copyright notice and this permission notice shall
> be
> - *     included in all copies or substantial portions of the
> Software.
> - *
> - *     THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY
> KIND,
> - *     EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
> WARRANTIES
> - *     OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
> - *     NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
> - *     HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
> - *     WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
> - *     FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
> - *     OTHER DEALINGS IN THE SOFTWARE.
> + * Copyright 2014-2020 Toradex AG

And drop the AG.

Dito for other files.

Thanks!

Cheers

Marcel
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
