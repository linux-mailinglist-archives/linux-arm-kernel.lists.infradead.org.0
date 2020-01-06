Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD0AE130F73
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 10:29:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YhxeYcn5SqnxKlEIVDozOTzk6tsh7/+vjnc7WLxWaVU=; b=aLEpu5ctyxuChp
	rFKXSoIYOdPw3A92CTP0h7FjoPLS15jTsi5f0rZ/CetiUH83d6OwbIvTlf0qDwQ9Ghc4ZDw1/ZSms
	QXIeRGwFgfURzmFDLEmyew37JIk40df7X2YEZd4aO025vZvBGpPUFFnXXvE0sb3cuR9Ahnd60dPee
	d0S+yDXVKM0ToHxwqUSPjDB2O/Wo3Rfjnfu/CWOIfClSySk7n6WDEFI3/1yhwM9otc01SqQvEqFq/
	AL+x+G/m9atYgiExCekmnmjv3G2mDjx8pD0WV02+QpsJs+JOwUURdLqUVPBWVtDMawDYX/fyTqKB6
	A7rkDrSKze6Bi9db7+tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioOhh-0007Ho-O4; Mon, 06 Jan 2020 09:29:41 +0000
Received: from mail-eopbgr70055.outbound.protection.outlook.com ([40.107.7.55]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioOhZ-0007Gs-GP
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 09:29:37 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kDSshU7OIGz5qilLy17str+xTNeMPgNl30oK1nTMZD6Q1PqC+bUngEoBdeXVHXFUvJzSogN4CRyuZikr+fGSO2cC7HYihVtFvnRb7shlApdP0MaWkZcoj7NF3TD3JF8QLjOyE4lJnOE+/xRBs+Z7eBIRJHh8KKqcIqtkMKUFg6RwJSMP44CxyT0ur+cFIKMmEizsn/345DB6jBMckz/0So4GcHxNIPEbTMvnK6M3nNuS88SgrNA6vtCWmMBqpQ4reE5GnUxNMXtZyFKI4prx0Ksf0CpieLuKumxCoEavA05zbB1h0AMHZsGXKzDLQEYQmA6yDrrybvN3jUICyKYn9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eaPRTGCG8k4EXIyP3pwAxTqNdwwwiG07nTpJu2b3+6c=;
 b=ivEm7OQPqysm+CiuHonbI05rHsWt23B5owh9XCn4F/ffDZUkD3pB/N5RINMoQt/l51ZZoxtTcfxBkvrrXNw3jXd/hdvlPczcqisOH+xzRXjqt0lmNmErK6BO5WUA/UNbGMV9bPftoNioUHRh8W9wEDyERAN3e6mFa8mBkMhSPKi67+x0PWFFy2TYNt8/7VTFra+99hYlgVAvWeqeITls9acbvzf0WuTgsXYzR0PXp9O0lVsmZhKy32rVayUmuH4dOfUcjJ8itaYDEi5n9pjcvfwGd0aQZxfKgd0PkfEm8I9yULRpDx9B9BRVP2yzyHfJCylbOybuW+Aou4hXkmvSow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eaPRTGCG8k4EXIyP3pwAxTqNdwwwiG07nTpJu2b3+6c=;
 b=WHYUAu5AmVakR/TWJfto+Gy+o2gEoF6StcvgdsqR1U03KnSC7fM4eiKuuOZf9Pc/1GU52VIl0SLAjWrht2Ka+wAY4BjeO5afPlhofAkG0RImpkGYE2WMr9eHYj3vxAGSq3obgN9oo3LCgljOcsEh1W64WXc+7t7AF8PhbwTyKX4=
Received: from VI1PR0402MB3839.eurprd04.prod.outlook.com (52.134.16.147) by
 VI1PR0402MB2928.eurprd04.prod.outlook.com (10.175.24.148) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.10; Mon, 6 Jan 2020 09:29:26 +0000
Received: from VI1PR0402MB3839.eurprd04.prod.outlook.com
 ([fe80::8881:e155:f058:c0d1]) by VI1PR0402MB3839.eurprd04.prod.outlook.com
 ([fe80::8881:e155:f058:c0d1%4]) with mapi id 15.20.2602.015; Mon, 6 Jan 2020
 09:29:25 +0000
From: Daniel Baluta <daniel.baluta@nxp.com>
To: "sboyd@kernel.org" <sboyd@kernel.org>, Aisheng Dong
 <aisheng.dong@nxp.com>, "linux-clk@vger.kernel.org"
 <linux-clk@vger.kernel.org>
Subject: Re: [PATCH V5 00/11] clk: imx8: add new clock binding for better pm
 support
Thread-Topic: [PATCH V5 00/11] clk: imx8: add new clock binding for better pm
 support
Thread-Index: AQHVZxh4yrmq50bMJESYKpQKpxiH1acxANAAgK0YjwA=
Date: Mon, 6 Jan 2020 09:29:25 +0000
Message-ID: <db9a693f195cdc363d3ab836938d83e2e1a5274e.camel@nxp.com>
References: <1568081408-26800-1-git-send-email-aisheng.dong@nxp.com>
 <20190918060835.B93D420856@mail.kernel.org>
In-Reply-To: <20190918060835.B93D420856@mail.kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=daniel.baluta@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 9a0fd83d-32af-433e-b946-08d7928aebf6
x-ms-traffictypediagnostic: VI1PR0402MB2928:|VI1PR0402MB2928:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0402MB2928D1614AE319A1AEB48A4FF93C0@VI1PR0402MB2928.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0274272F87
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(396003)(136003)(376002)(39860400002)(366004)(199004)(189003)(54534003)(6506007)(478600001)(8676002)(81156014)(8936002)(81166006)(54906003)(76116006)(6486002)(6512007)(66556008)(66476007)(66946007)(2616005)(66446008)(64756008)(91956017)(316002)(2906002)(110136005)(36756003)(71200400001)(26005)(4326008)(186003)(5660300002)(86362001)(44832011)(99106002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB2928;
 H:VI1PR0402MB3839.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 47uRFMMmf+FmCr0JNAxXkkTB+IVSWfzbGdiLdw3qu1KP11uW6QXWJSqy6bZi2PIWrKdqfM0Y2kGz6iN174+lwtx1l+vc1e0X8Qsxj5QZUpUZYcBK8qGQwYWEhHWeT0LL8ZXU8Q2Neaqi6UpWN1o7kU72Ks3K3+Eu1dq/NuxbWSQPIvLyoyvfIY9CR4dhgpPwXjJ3ui1t8Kj8hz0SgVQxbKYwNoHWi4WaTuU0n/W6gmiY1V+H7d55b1ktKelZnhBuIWkxDbO/aEold7Htd7jDXs4fR8RFFSZHdThA3qRaoau1KaSXwjm/JLTHGCUde+HN5tIKvKUMv1FNUncM32v4mWVszvs/khCwSnGW/z5WmI9QPPocQTWQrau0de8/xjX08FhBaExzqSK4YcbXqCPsAdTgWq+XpBGiYkVmbiu56JWBEKoyj5mdQxlAKtbkpKF4fCyyFDmxoTOeptdHMuXAw9PAi0Ui9eg9FzWaNNMvWR0aAkXvwO64ajvKhq+1OQHEo/NFKJANSFqIikZ9fEbW6Q==
Content-ID: <D9A5652C52659745A5418326DE75A315@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a0fd83d-32af-433e-b946-08d7928aebf6
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jan 2020 09:29:25.6432 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Aoxh43AY6V73qRiPQ370h7jass6Z/6n6MyrFD533OD5wUFgZk0zAxFaWWhqSJEA9gH6yFfGBWsEgj+QRsvJ23Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB2928
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_012933_547093_B083CD0A 
X-CRM114-Status: GOOD (  18.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.55 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "mturquette@baylibre.com" <mturquette@baylibre.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2019-09-17 at 23:08 -0700, Stephen Boyd wrote:
> Quoting Dong Aisheng (2019-09-09 19:09:57)
> > This is a follow up of this patch series.
> > 
[V2,0/2] clk: imx: scu: add parsing clocks from device tree support
> > 
> > This patch series is a preparation for the MX8 Architecture
> > improvement.
> > As for IMX SCU based platforms like MX8QM and MX8QXP, they are
> > comprised
> > of a couple of SS(Subsystems) while most of them within the same SS
> > can be shared. e.g. Clocks, Devices and etc.
> > 
> > However, current clock binding is using SW IDs for device tree to
> > use
> > which can cause troubles in writing the common <soc>-ss-xx.dtsi
> > file for
> > different SoCs.
> > 
> > This patch series aims to introduce a new binding which is more
> > close to
> > hardware and platform independent and can makes us write a more
> > general
> > drivers for different SCU based SoCs.
> > 
> > Another important thing is that on MX8, each Clock resource is
> > associated
> > with a power domain. So we have to attach that clock device to the
> > power
> > domain in order to make it work properly. Further more, the clock
> > state
> > will be lost when its power domain is completely off during
> > suspend/resume,
> > so we also introduce the clock state save&restore mechanism.
> 
> I had some more comments on v4. I'm going to wait for those to be
> addressed before reviewing this series.

Hi Aisheng,

Are the comments from Stephen addressed yet?

I noticed that you did a RESEND of V5 with the comment:

> ChangeLog:
> v4->v5:
>  * Address all comments from Stephen

You can add my:

Tested-by: Daniel Baluta <daniel.baluta@nxp.com>

for patches send with tag : RESEND v5.

thanks,
Daniel.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
