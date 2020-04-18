Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73F311AEC86
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 Apr 2020 14:40:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BI+X9d4S6OMEwNPjGd1oI4fSugHWLkIijVs4tMDEmlI=; b=N7GqYgUpVnWKjN
	d5qv9htuvy3Eb/R2Acao6fv8DCA3gxO4gvAVCrT7N4p5rjxs0I5ezt6c4SLKSZLDU9qvHy3xpGPJI
	WybBQft1J2ai3lnMvNQ8zFkTBN6QHDpxO5AIUvsG+2vGur98PIdbMs83WoifB9JiH76rsUDlnZsYb
	VulIPk046YgiiW4j2mzyEU86F4u9k3Of8OmiPaYXYyhhnFp2pJ/PQBclVA4vUIH4eLmb3ngitvgdx
	Qb0nFTP7ImJFmKvH6+o2cSRUZafdA5e7vQVINZm5m74FRYPdrYFtAY3a8+LinBeC71FiKlLFpqaMO
	0xS+qZ7pHqWqdIBVZSEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPmlh-0002tX-K3; Sat, 18 Apr 2020 12:40:21 +0000
Received: from mail-eopbgr40087.outbound.protection.outlook.com ([40.107.4.87]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPmlO-0001tb-SZ
 for linux-arm-kernel@lists.infradead.org; Sat, 18 Apr 2020 12:40:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iM4DnJxfuulgjznsEBb/eXXEvsHGfZ/5KWYihN1yFb2+L/7d6U4b+qxruJt5dfIvWDKCJI1n6VyAcHGreuDUnWEvzEBc9SWc8fo50rMW1QRX03XQXWRMsZ5r5jVIloMiPCpzx/tkdYokilhPTdd2iBpivhNzTgXAcqBQ5tuQwciBXEOny3Hs2WamauuhyiMS21hvWIsdYgVZ+N3i1G0gyHv3h7Iu+sIANl2NVWUdExA/J1yMMDv34TaP7tFRoihmbCPnYedQEoxY9Cv5wq6HHGIftf24vMphCKbghyYe8P/5Q2EWdxGEpXlgaIW/Co7n17doaMBbZkRAdl0o55P7Gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=raZdLyJ7AEjvK7ZUhNFEPfbGxSlcOhDNU8f1+hTmDtI=;
 b=Dj85z5x/19D1THUzvBp0cZ1Y5mYv2xpF8dBsl+qOJBe4kquiZHOqpJvLmZbqKIvWcruLMOWjuY5sX3BHtA62+s/Kl+H7+R/Yo5Dp+S5qHZ7vNy5wQtl7TqA39uUaKc0537d7o0NF203k7LDi+iHbDVd1jYEciPlg8MGnlxMUnLvn0srI7Ij7WlWhhQ9k7xhpgzJ0jcNYe63ZdK69d2G0oRDj2xcoo2yIQTmy/6iiTYkUF56l0tCjXI9T/1dEITguGDyLIYRC+Lcsn5zbiQrUj4c0714ASyxl5iQA1UD0yYEqsV0fczz0uIFhi+KEEVkZBDZdpwHDbxI9tu5+xtsHaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=raZdLyJ7AEjvK7ZUhNFEPfbGxSlcOhDNU8f1+hTmDtI=;
 b=DBHK5YThi1F+s1BVCArH8SMC+W7NsLFcDSkoSd3KpeDvJoRJuKdPhQiWUUICCf5lIXCAwK9iwf/aAkjs4lcbaSz54+++Hj3Zb9mujBNFJKccHy5244NjlFKZIYiZI7Cgj7UE70PX3YE38tMLLdS9FyRYuZ9bCLKuX8d12bFMSQ4=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB5927.eurprd04.prod.outlook.com (2603:10a6:20b:a8::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.29; Sat, 18 Apr
 2020 12:39:59 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::d9f7:5527:e89d:1ae3]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::d9f7:5527:e89d:1ae3%7]) with mapi id 15.20.2921.027; Sat, 18 Apr 2020
 12:39:59 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>, Stephen Boyd
 <sboyd@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>
Subject: RE: [PATCH V6 00/12] clk: imx8: add new clock binding for better pm
 support
Thread-Topic: [PATCH V6 00/12] clk: imx8: add new clock binding for better pm
 support
Thread-Index: AQHV+tC4KM3qOryI0kukDYglzXuSqahJsFvwgBCTKOCAEs1BUIAR9eTw
Date: Sat, 18 Apr 2020 12:39:59 +0000
Message-ID: <AM6PR04MB49665300C790AD797FCFC12580D60@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1584279836-29825-1-git-send-email-aisheng.dong@nxp.com>
 <AM0PR04MB42117B51ACA7E84CDB7995F380F80@AM0PR04MB4211.eurprd04.prod.outlook.com>
 <AM6PR04MB49668F50A257A6BCD45666A380CF0@AM6PR04MB4966.eurprd04.prod.outlook.com>
 <AM6PR04MB4966DD18256848D81E06D67880C30@AM6PR04MB4966.eurprd04.prod.outlook.com>
In-Reply-To: <AM6PR04MB4966DD18256848D81E06D67880C30@AM6PR04MB4966.eurprd04.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [218.82.155.143]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: e4711016-600f-40d9-1138-08d7e3959bc3
x-ms-traffictypediagnostic: AM6PR04MB5927:|AM6PR04MB5927:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB59279DCF26D42CCB0B9E8C0F80D60@AM6PR04MB5927.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3383;
x-forefront-prvs: 0377802854
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(396003)(366004)(136003)(376002)(346002)(39860400002)(55016002)(9686003)(86362001)(4326008)(45080400002)(316002)(478600001)(186003)(54906003)(110136005)(2906002)(8936002)(8676002)(81156014)(52536014)(71200400001)(966005)(6506007)(26005)(76116006)(5660300002)(66446008)(7696005)(66946007)(33656002)(44832011)(66476007)(66556008)(64756008);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: RAwp1ydzRNkwk2KZ6k7/dfalJrzEoAsH70dQMab12oTC658D/0DynfKvoZVYsrkWXSMJ/UnYLBkCWkKFFmyDPzTut+y4CGlKBjegy2XMn8gFMaaGtcLN89/9lHu3XX/w/9kZ5fpfLu3j69h5l6/QCgwca5NfQLj0th37qKjxxhzcNndZyfQzATnr7niObOD800R2AXu+Qk4mK+FFbMmRylE6q563bthNzcCIbNHl57MqSfZT3kv6bt5JJayqnO3gfoRUp6Z9tdBN5nMovTuBBt5n4C+cTb8UqlJ0TyDp3DOi8U06ghdOQx6rIQE3CRzA0K5XHb9xICorASae9o8SEtV2z6o9lYgjEzAfkDqm/eqfOaVC5ikzrqeaanVBN6jXQA2qdfil7Q2xb4N04Ga8mAXLs1UBESHfie0OoGMrZdN1kuecz0NY3AALdL/QRY2Rf5s5oY1pGzrp3zxIcugNzksUvivxRCKtXCHufZxmI5kkEC8WP+e4x89X7MhZbcADzQzNg0ZQDhYW9EJQIPe3Dg==
x-ms-exchange-antispam-messagedata: E69Y1aDrMiwUWqZ1lU6W/QqVdzXD6RU23xi+VrQuVNOdUreNV0Lv8Ymp5iQreode/ObWN8nfjUBMOtYRoSPBaqWVKaDU1bSt+CPXFwnQq1PebFmg2DKdUkwkM9FWFnMR97AixXcuzZ1a7Z77vDc7Uw==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e4711016-600f-40d9-1138-08d7e3959bc3
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Apr 2020 12:39:59.8046 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AzLrmqs2PXpmx0mDWf8p1R7KWWkjhwe6yTI5Ui2CjK6Yrm5FOcJZzIK6cuCM5xP+qJm38QQNgiJO9pLyQDKJsA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB5927
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200418_054002_936518_EC664F6D 
X-CRM114-Status: GOOD (  26.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.87 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Oliver Graute <oliver.graute@gmail.com>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "dongas86@hotmail.com" <dongas86@hotmail.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Gently Ping..
This patchset is without comments for a few months.
Could you help this?

> From: Aisheng Dong <aisheng.dong@nxp.com>
> Sent: Tuesday, April 7, 2020 10:23 AM
> 
> Ping... This patchset is pending for quite a long time without comments. It also
> blocked a lot continued upstreaming work.
> Any suggestions how to proceed?
> 
> Regards
> Aisheng
> 
> > From: Aisheng Dong <aisheng.dong@nxp.com>
> > Sent: Thursday, March 26, 2020 11:15 AM
> >
> > Ping
> >
> > > From: Aisheng Dong <aisheng.dong@nxp.com>
> > > Sent: Sunday, March 15, 2020 10:11 PM
> > >
> > > Hi Stephen,
> > >
> > > > From: Dong Aisheng <aisheng.dong@nxp.com>
> > > > Sent: Sunday, March 15, 2020 9:44 PM
> > > >
> > > > This patch series is a preparation for the MX8 Architecture improvement.
> > > > As for IMX SCU based platforms like MX8QM and MX8QXP, they are
> > > > comprised of a couple of SS(Subsystems) while most of them within
> > > > the same SS can be shared. e.g. Clocks, Devices and etc.
> > > >
> > > > However, current clock binding is using SW IDs for device tree to
> > > > use which can cause troubles in writing the common
> > > > <soc>-ss-xx.dtsi file for
> > > different SoCs.
> > > >
> > > > This patch series aims to introduce a new binding which is more
> > > > close to hardware and platform independent and can makes us write
> > > > a more general drivers for different SCU based SoCs.
> > > >
> > > > Another important thing is that on MX8, each Clock resource is
> > > > associated with a power domain. So we have to attach that clock
> > > > device to the power domain in order to make it work properly.
> > > > Further more, the clock state will be lost when its power domain
> > > > is completely off during suspend/resume, so we also introduce the
> > > > clock state save&restore
> > > mechanism.
> > > >
> > > > It's based on latest shanw/for-next branch.
> > > >
> > > > The top commit is:
> > > > 4559a11e48d5 Merge branch 'imx/defconfig' into for-next
> > > >
> > >
> > > I carefully went through all your review comments on V4 [1] and i'm
> > > sure all of them have been addressed.
> > > And for the V5-Resend version [2] , we didn't receive your comment.
> > > It seems Shawn is also waiting for your feedback for the next step.
> > > Could you help check V6?
> > >
> > > For V6, only a minor update that added scu clk unregister if met
> > > error. As the original code does not support it, so i added an extra
> > > patch to
> > handle it.
> > >
> > > [1]
> > >
> >
> https://lore.kernel.org/linux-clk/AM0PR04MB421181E4376070636898906F80
> > > A10@AM0PR04MB4211.eurprd04.prod.outlook.com/t/
> > > [2] https://patchwork.kernel.org/cover/11248249/
> > >
> > > Regards
> > > Aisheng
> > >
> > > > ChangeLog:
> > > > v5->v6:
> > > >  * add scu clk unregister if add provider failed
> > > > v4->v5:
> > > >  * Address all comments from Stephen
> > > > v3->v4:
> > > >  * use clk-indices for LPCG to fetch each clks offset from dt
> > > > v2->v3:
> > > >  * change scu clk into two cells binding
> > > >  * add clk pm patches to ease the understand of the changes
> > > > v1->v2:
> > > >  * SCU clock changed to one cell clock binding inspired by arm,scpi.txt
> > > >    Documentation/devicetree/bindings/arm/arm,scpi.txt
> > > >  * Add required power domain property
> > > >  * Dropped PATCH 3&4 first, will send the updated version accordingly
> > > >    after the binding is finally determined,
> > > >
> > > >
> > > > Dong Aisheng (12):
> > > >   dt-bindings: firmware: imx-scu: new binding to parse clocks from
> > > >     device tree
> > > >   dt-bindings: clock: imx-lpcg: add support to parse clocks from device
> > > >     tree
> > > >   clk: imx: scu: add two cells binding support
> > > >   clk: imx: scu: bypass cpu power domains
> > > >   clk: imx: scu: allow scu clk to take device pointer
> > > >   clk: imx: scu: add runtime pm support
> > > >   clk: imx: scu: add suspend/resume support
> > > >   clk: imx: imx8qxp-lpcg: add parsing clocks from device tree
> > > >   clk: imx: lpcg: allow lpcg clk to take device pointer
> > > >   clk: imx: clk-imx8qxp-lpcg: add runtime pm support
> > > >   clk: imx: lpcg: add suspend/resume support
> > > >   clk: imx: scu: unregister clocks if add provider failed
> > > >
> > > >  .../bindings/arm/freescale/fsl,scu.txt        |  12 +-
> > > >  .../bindings/clock/imx8qxp-lpcg.txt           |  36 ++-
> > > >  drivers/clk/imx/clk-imx8qxp-lpcg.c            | 139 +++++++++++
> > > >  drivers/clk/imx/clk-imx8qxp.c                 | 136 ++++++-----
> > > >  drivers/clk/imx/clk-lpcg-scu.c                |  53 +++-
> > > >  drivers/clk/imx/clk-scu.c                     | 231
> > > +++++++++++++++++-
> > > >  drivers/clk/imx/clk-scu.h                     |  56 ++++-
> > > >  include/dt-bindings/clock/imx8-lpcg.h         |  14 ++
> > > >  include/dt-bindings/firmware/imx/rsrc.h       |  23 ++
> > > >  9 files changed, 610 insertions(+), 90 deletions(-)  create mode
> > > > 100644 include/dt-bindings/clock/imx8-lpcg.h
> > > >
> > > > --
> > > > 2.23.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
