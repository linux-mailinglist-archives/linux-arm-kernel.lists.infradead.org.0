Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0DA0173D7A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 17:49:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NjJ/w98vCBLE8hXFq6eLsVzpyYGxaNUgW7MbPLqXlas=; b=IeylB3yn0d2spy
	ncHPmqUGxujdhw8xSqH3xBk4+DoXIxZMBC414ushRwIGo0RNGh0wXLFcQEtSDTs8AfGK06UuA70q2
	c1odBILQKwke7Sc7adyrcN7qMXA7uewzeucVvtRq31iYlfyJgVGWhCQXvoXbOD222nr9IznKgniVG
	g+9jndrNCyhbrtstyPpps9JZINnww1TMqr6CAVCxvUOGno12/vyeJIrL2hngXRsnbQMgYE090greq
	Ba3y9zboL5613everE4Ofwy8voV9cXpkEU34YhNowoKTn4Kz8umHOgk+gaMjDcE2Ffl+uknNdwTqS
	xlb4oKuBIIKI7B2DiKjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7ipf-0000sF-Gi; Fri, 28 Feb 2020 16:49:47 +0000
Received: from mail-vi1eur05on2116.outbound.protection.outlook.com
 ([40.107.21.116] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7ipR-0000rn-Ph
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 16:49:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g2/V114B/YV2ZHV/jOQgD49/6bo0zQjqwvEP6Rwl9pKHVYoxWsueO/Wftoe9b8IoGdq0/mtzn3l3aOy463djXthBw8DYXS8dF5BZi6ijd4rCVfzVGGw8B8zcAQF8i+5MgQdw6VnESneSlGZZGwInbtk6R6sMX/+oCnt80sqtzXUA2nIWIQ5FC4kTUC7A2Y+5YryaJuYjZLpphkeLQcjLJyPlVC7ZcqXZt4Q1acy4SCi0vsjYHha1sV5GMJovmsuN/vRvSYr3OQwXxb4r0bArwjvDkLYL3MAP133stIRS7YuKDUFBIWTZkgb/DiHmYgEmDNN7gA8s83Io7wbOebjscQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cMVs4NarvVntfDSCWY+JnqDCgnazupZMO+VX+fHFbLM=;
 b=SWdhAOaEOwb3mjfp4u5NYOnUQHqp1dX3+W7WuetGoud/Z4mWk8ednGGPlUXeYmiizCLlvoQgve1OnN5XG+gZWR5CpNvhw3jKCBICy1M4Fsv1+qpsugzbUmOoFn/f/YqGgKcVznPUMUtPU5LkmFynrpy8oXMvMJDfaZLjczBDM6Lb6pfR16TMZmvScNGR4CzGQ79veMIOVb8MPJSHbQ9kJvG+aXJ7tKE9KKOswBj7kgR3zhhyw3A9rDkRno2nwYrgWOZ02xbXYtSLNExLwV8Vra7jS6wyQ4JgbcojeTUnvlsJ72hQLY8F0WivI0YnKk4Gg20wiBnraQ2ZS8PFWDv0pA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cMVs4NarvVntfDSCWY+JnqDCgnazupZMO+VX+fHFbLM=;
 b=Rn/4DgdvR3ASjNnxWb2b3ATQnmI/MGsuFtV93B81jwo3FxnwZY2lqwg9P8Kx8zTDEN8sXkBIOVXdFJCnI6n6cz0veZ5+6W/eaJJPL1H/XjF5ljdy9wKQPdD//JpXfN6HNQSlTfVPNXqO8N/CLoPWsfjIl3YG5PB4M5AXWxKWMEY=
Received: from VI1PR05MB6845.eurprd05.prod.outlook.com (10.186.163.80) by
 VI1PR05MB5566.eurprd05.prod.outlook.com (20.177.203.19) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.22; Fri, 28 Feb 2020 16:49:28 +0000
Received: from VI1PR05MB6845.eurprd05.prod.outlook.com
 ([fe80::c13:1d07:fa02:6eeb]) by VI1PR05MB6845.eurprd05.prod.outlook.com
 ([fe80::c13:1d07:fa02:6eeb%7]) with mapi id 15.20.2772.018; Fri, 28 Feb 2020
 16:49:28 +0000
From: Marcel Ziswiler <marcel.ziswiler@toradex.com>
To: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "igor.opaniuk@gmail.com"
 <igor.opaniuk@gmail.com>
Subject: Re: [PATCH v1 2/5] arm: dts: imx7: toradex: use
 SPDX-License-Identifier
Thread-Topic: [PATCH v1 2/5] arm: dts: imx7: toradex: use
 SPDX-License-Identifier
Thread-Index: AQHV6zhsWAnAhBt5tU6VbDcnIzSSGKgw16MA
Date: Fri, 28 Feb 2020 16:49:28 +0000
Message-ID: <7b84445d42f4f6522c25a92353408a72c4255b06.camel@toradex.com>
References: <1582565548-20627-1-git-send-email-igor.opaniuk@gmail.com>
 <1582565548-20627-2-git-send-email-igor.opaniuk@gmail.com>
In-Reply-To: <1582565548-20627-2-git-send-email-igor.opaniuk@gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=marcel.ziswiler@toradex.com; 
x-originating-ip: [81.221.74.212]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 208c16a3-729a-4d49-a481-08d7bc6e2d27
x-ms-traffictypediagnostic: VI1PR05MB5566:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR05MB556621B266CA1A786591DCF1FBE80@VI1PR05MB5566.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
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
x-microsoft-antispam-message-info: POk7lTFX3gL5eofFUAZtH8aKn4NoVHLYQSlRtLdGt88wJvApT8YUFKnX4B69vo/g+dcARCaTZt4hURTuuddBg940DvMz+OWjuHi7PxenlrzeF1ore5xoCbGI0VxSwakuX/CYAi4bpo/QVZFKjpTSKuCwQDoSLVqsUPYsaNO7UJcN/I7u45j6/Ecvyuvg8NtwoLw1E0iJsM0N1BzvFxQtB0bcqsChNBHOOGCEYggWxgB3u4BhdzpthZnoqbzvbPSkZwM7N6bclHUJguGVIbhhbaROea0tAsrNuzArk5yamMglFEUVyH21nndi4BGKvtlhzemXiq8BGPj2Q7t/k6QTmfQ/ZUwPjlT4T/bcwcll7/przerXnpHZJ5t6Lt1/03boo9/9JQtW1S7F0adO8UaUxy7/UJKhmUc0UJ0lepoHHFLdNOPagblBmrkgO6LxEkdZOg8PlGSM7j9HmJ2ya9YFULUMo8Y24qEEX9KGh0DsXl8=
x-ms-exchange-antispam-messagedata: KqSZretZks2ayz0FGXKkZ9z0PlybMDgOT+xSFNHEou6SEnPczpLeJ425gSC04P/HnNACIcWsFYcKpmph/mVVeIkFGXNX8p9Uu+F8s5YLyp+cF6khiCHjRGJRuq13RwfuZ6JWrnE87dFq9uHviO0ikA==
Content-ID: <89113E4E5F601749B7686475940CDB8E@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 208c16a3-729a-4d49-a481-08d7bc6e2d27
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Feb 2020 16:49:28.5186 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: y1c/hwdMv9CMRyVy2Wetp9IJbu3scEAHonrRAuoR1seGUl9TYD4CZW2PIDtRMqm+iUKDUncilT0TAVO9lxMazFzJC0A74LEON8zSaLu/ags=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB5566
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_084933_838310_587B1EE5 
X-CRM114-Status: GOOD (  22.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.21.116 listed in list.dnswl.org]
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
> identifiers in Toradex i.MX7-based SoM device trees.
> 2. As X11 is identical to the MIT License, but with an extra sentence
> that prohibits using the copyright holders' names for advertising or
> promotional purposes without written permission, use MIT license
> instead
> of X11 ('s/X11/MIT/g').
> 
> Signed-off-by: Igor Opaniuk <igor.opaniuk@toradex.com>
> ---
> 
>  arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi | 41 ++-----------------
> ----------
>  arch/arm/boot/dts/imx7-colibri.dtsi         | 41 ++-----------------
> ----------
>  arch/arm/boot/dts/imx7d-colibri-eval-v3.dts | 41 ++-----------------
> ----------
>  arch/arm/boot/dts/imx7d-colibri.dtsi        | 41 ++-----------------
> ----------
>  arch/arm/boot/dts/imx7s-colibri-eval-v3.dts | 41 ++-----------------
> ----------
>  arch/arm/boot/dts/imx7s-colibri.dtsi        | 41 ++-----------------
> ----------
>  6 files changed, 12 insertions(+), 234 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi
> b/arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi
> index 6aa123c..0ec2b81 100644
> --- a/arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi
> +++ b/arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi
> @@ -1,43 +1,6 @@
> +// SPDX-License-Identifier: GPL-2.0+ OR MIT
>  /*
> - * Copyright 2016 Toradex AG
> - *
> - * This file is dual-licensed: you can use it either under the terms
> - * of the GPL or the X11 license, at your option. Note that this
> dual
> - * licensing only applies to this file, and not this project as a
> - * whole.
> - *
> - *  a) This file is free software; you can redistribute it and/or
> - *     modify it under the terms of the GNU General Public License
> as
> - *     published by the Free Software Foundation; either version 2
> of the
> - *     License, or (at your option) any later version.
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
> + * Copyright 2016-2020 Toradex AG

Just drop the AG here and in all other files.

Thanks!

Cheers

Marcel
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
