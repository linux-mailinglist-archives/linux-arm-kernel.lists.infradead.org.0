Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8006E193695
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 04:14:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9s/kBv6yNrSJUgIqWHMQdJ18/uaB0zwvCYaGvvFLAbs=; b=hEFIOLG+qA4LKh
	IfVOWA/U8SfUqSms9dHKk+8Cpi9tWEmmkOM22JT+ygBFUBsriWRvuMcLAi/FfNFsauxFr3TWA1Xhs
	WBRWxZ2pbjVPYkrJ12zkXstTu1ayulGFPdOYxaurdlrkzUFCnpK7h4uAptd9riqPT3TDPpMIrSfLk
	D88DEuU+pvem9AenfKwVsupIQq5OQVucsEx6/70D7LVdMJ6JncOvGBVdxCi4n3lShWUBFu1M3YQo4
	06GFDmscCzt0HtXxdiGqYyR7tS4z8xKAERKljymDFvMFUs7iDsIQaV1/iDmXltPulbk4XHsDr3HQS
	suYZ6MGw1uM8pNoXItdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHIyk-0000Pr-RE; Thu, 26 Mar 2020 03:14:46 +0000
Received: from mail-eopbgr80042.outbound.protection.outlook.com ([40.107.8.42]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHIyX-0000PM-S1
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 03:14:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Py09iXliDRLe4heP3HsBYxyWC0+m8Dg7bCPNtSG923JNsoLG1Ey20kjQ4hb2F10Zn3ADN9GxTKUhVb++yql8FJzrCdGem/Wgplmrow7CmrGaNLbi3WHPnF4I1w2zb7qWJ+xa8F4UhOkqZPcHNEdHZ76iUbvxoEuKbq9EVn1ei+OMpgUNuSCzB4S5sczhr7tSy41D2tHfbfatjn4QRvIV0gDfQe9Edg6O+MKo3o5MGGtz8P0kkuK7LYMSC4nVSfBGNkMEa9G9dZu9683YiQsR/ZOIU45YrAFTb2elPurkxgANrXM66z7REpmyC/hOnySfaq5RWi6PhZsWV8qYqXAi6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4UWy0DCUFxvXHFi4mcIuowKmMN6OH+WNMubNgz7KXOw=;
 b=Sztizhpp8b3F6IpQA5q0QUSNzHGKh3fgk1r0ZnYmzi0gnqmBChBamfsxVTKVPncUWut8QeLXFFLYVOLCpkG1RZmB+u/xpKKxSSQHu76PN6qDkFwxaZkYLNmOZHjJ8SgLiSkaacTY7LI7pG5SxZpRHbcHwvA9Pc55ttVmcbYsjznHlju9jAha76erZBlCXKsJBXQ2Ew/rW3zvWCH+K/7xxLXnpKknJfLI+SOHkP0wGj4aEkycKmRDRIPfD2+fAYn/llV3GCnxFlTkDpL4zXBrhuwZ1lX8brvbTGojlR02ec+eyoe5wCSY9gqaXRCBpYH33P6U9ujKEjSeH08kUdZLwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4UWy0DCUFxvXHFi4mcIuowKmMN6OH+WNMubNgz7KXOw=;
 b=DmBNhcfPjVWzNhfPF4gkA6vHYt/QPwLDPIl6P9uFsqZlAlCYEFjpxFdUfWr4vLRRbb0M7UbBuCf9OEcS0xFYkufqp4ga82nicoHCXPG8RsTq4uhNhZTUxwIjhLH0LTJj9/p9FNa8NNIEMKp0F4g9Y7jmlrnYcZAy0Na++Kc/wvQ=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (20.177.32.142) by
 AM6PR04MB4407.eurprd04.prod.outlook.com (20.177.39.139) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2835.22; Thu, 26 Mar 2020 03:14:30 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::d9f7:5527:e89d:1ae3]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::d9f7:5527:e89d:1ae3%7]) with mapi id 15.20.2856.018; Thu, 26 Mar 2020
 03:14:30 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>, Stephen Boyd
 <sboyd@kernel.org>
Subject: RE: [PATCH V6 00/12] clk: imx8: add new clock binding for better pm
 support
Thread-Topic: [PATCH V6 00/12] clk: imx8: add new clock binding for better pm
 support
Thread-Index: AQHV+tC4KM3qOryI0kukDYglzXuSqahJsFvwgBCTKOA=
Date: Thu, 26 Mar 2020 03:14:30 +0000
Message-ID: <AM6PR04MB49668F50A257A6BCD45666A380CF0@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1584279836-29825-1-git-send-email-aisheng.dong@nxp.com>
 <AM0PR04MB42117B51ACA7E84CDB7995F380F80@AM0PR04MB4211.eurprd04.prod.outlook.com>
In-Reply-To: <AM0PR04MB42117B51ACA7E84CDB7995F380F80@AM0PR04MB4211.eurprd04.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: b39b0dbc-546d-43d4-677a-08d7d133cce8
x-ms-traffictypediagnostic: AM6PR04MB4407:|AM6PR04MB4407:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB4407E6BDAA98F08CDF1BFDDF80CF0@AM6PR04MB4407.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 0354B4BED2
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(39860400002)(136003)(366004)(346002)(376002)(54906003)(316002)(110136005)(5660300002)(52536014)(81156014)(81166006)(71200400001)(8676002)(8936002)(86362001)(7696005)(4326008)(6506007)(66476007)(33656002)(478600001)(9686003)(45080400002)(186003)(966005)(44832011)(55016002)(26005)(66556008)(64756008)(66446008)(2906002)(66946007)(76116006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR04MB4407;
 H:AM6PR04MB4966.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hntqeBiu3Xqa596uSg/SzmIuyLBJYw4qyHbIwAuSsdINqqNt954dfY9Z86nAjalAYFunqKguQ4dkSEGMQPm3sO/WSff27pNztQAuipJDZc2axD+I4zttSv9W1hxSTW3Cl4cETmot8IBq0a13nx54ZN5SGQr0MJ2NTSkPd5Ke7RB8MszoXgR6tb3tIJGS4WoRXEa7LWC1rtPmc6V5YCEncgV2Sm0vJipH9zzSS6LM5GTTKwpRvAPrdgDfylYbuRSfqBYuNJB27ARlcceteBMsR8f0HOIsqYdCQBhiqy5O5tesMwx6tTiqlIs79T1/bSRxT4e17HQDaQfbdQnhwrPKMYiJDiZG3zn9Hd2+Y9T70AFvIdFlBeuVWfCbL3EaA+kRGK0IAeaqeKCiBALKVvteqn5Y0GE8ubrqiF2QbUgRpNRghIpnGhtnoQi+tF80KLQqLn00cigXgatXAKq+eDYy8pB72+V2Qivr31lwlDTXjtEmMvLy8nJ6X6rllH/U5fXhLrOGfuSY6fXfE//yvQlJ0g==
x-ms-exchange-antispam-messagedata: c1kgjkf0wkxa7ZN9DO1xuc+KmnD8FGJkz6vGLeKtyzrtCrEVMjg0AXrzKR/mD3qngVOFxoCtRRcrv4mybPuLnGWPVQ7wuM1ai2Wv5RZU4NPb++nx0YM9YC6EKK8Sfvxz5XhxZmM9KBygsLwFz2tjPw==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b39b0dbc-546d-43d4-677a-08d7d133cce8
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Mar 2020 03:14:30.6930 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: e+Ywl9Lm5LiTIRgDFZhcI2AQO0RsEN1CmTc66aza4DbHNRqKDh5+lJJm6Oe3Q3zyvTCnWPn2t4JQBmEbuCxbdg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB4407
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_201433_910898_7B4D626A 
X-CRM114-Status: GOOD (  24.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ping

> From: Aisheng Dong <aisheng.dong@nxp.com>
> Sent: Sunday, March 15, 2020 10:11 PM
> 
> Hi Stephen,
> 
> > From: Dong Aisheng <aisheng.dong@nxp.com>
> > Sent: Sunday, March 15, 2020 9:44 PM
> >
> > This patch series is a preparation for the MX8 Architecture improvement.
> > As for IMX SCU based platforms like MX8QM and MX8QXP, they are
> > comprised of a couple of SS(Subsystems) while most of them within the
> > same SS can be shared. e.g. Clocks, Devices and etc.
> >
> > However, current clock binding is using SW IDs for device tree to use
> > which can cause troubles in writing the common <soc>-ss-xx.dtsi file for
> different SoCs.
> >
> > This patch series aims to introduce a new binding which is more close
> > to hardware and platform independent and can makes us write a more
> > general drivers for different SCU based SoCs.
> >
> > Another important thing is that on MX8, each Clock resource is
> > associated with a power domain. So we have to attach that clock device
> > to the power domain in order to make it work properly. Further more,
> > the clock state will be lost when its power domain is completely off
> > during suspend/resume, so we also introduce the clock state save&restore
> mechanism.
> >
> > It's based on latest shanw/for-next branch.
> >
> > The top commit is:
> > 4559a11e48d5 Merge branch 'imx/defconfig' into for-next
> >
> 
> I carefully went through all your review comments on V4 [1] and i'm sure all of
> them have been addressed.
> And for the V5-Resend version [2] , we didn't receive your comment.
> It seems Shawn is also waiting for your feedback for the next step.
> Could you help check V6?
> 
> For V6, only a minor update that added scu clk unregister if met error. As the
> original code does not support it, so i added an extra patch to handle it.
> 
> [1]
> https://lore.kernel.org/linux-clk/AM0PR04MB421181E4376070636898906F80
> A10@AM0PR04MB4211.eurprd04.prod.outlook.com/t/
> [2] https://patchwork.kernel.org/cover/11248249/
> 
> Regards
> Aisheng
> 
> > ChangeLog:
> > v5->v6:
> >  * add scu clk unregister if add provider failed
> > v4->v5:
> >  * Address all comments from Stephen
> > v3->v4:
> >  * use clk-indices for LPCG to fetch each clks offset from dt
> > v2->v3:
> >  * change scu clk into two cells binding
> >  * add clk pm patches to ease the understand of the changes
> > v1->v2:
> >  * SCU clock changed to one cell clock binding inspired by arm,scpi.txt
> >    Documentation/devicetree/bindings/arm/arm,scpi.txt
> >  * Add required power domain property
> >  * Dropped PATCH 3&4 first, will send the updated version accordingly
> >    after the binding is finally determined,
> >
> >
> > Dong Aisheng (12):
> >   dt-bindings: firmware: imx-scu: new binding to parse clocks from
> >     device tree
> >   dt-bindings: clock: imx-lpcg: add support to parse clocks from device
> >     tree
> >   clk: imx: scu: add two cells binding support
> >   clk: imx: scu: bypass cpu power domains
> >   clk: imx: scu: allow scu clk to take device pointer
> >   clk: imx: scu: add runtime pm support
> >   clk: imx: scu: add suspend/resume support
> >   clk: imx: imx8qxp-lpcg: add parsing clocks from device tree
> >   clk: imx: lpcg: allow lpcg clk to take device pointer
> >   clk: imx: clk-imx8qxp-lpcg: add runtime pm support
> >   clk: imx: lpcg: add suspend/resume support
> >   clk: imx: scu: unregister clocks if add provider failed
> >
> >  .../bindings/arm/freescale/fsl,scu.txt        |  12 +-
> >  .../bindings/clock/imx8qxp-lpcg.txt           |  36 ++-
> >  drivers/clk/imx/clk-imx8qxp-lpcg.c            | 139 +++++++++++
> >  drivers/clk/imx/clk-imx8qxp.c                 | 136 ++++++-----
> >  drivers/clk/imx/clk-lpcg-scu.c                |  53 +++-
> >  drivers/clk/imx/clk-scu.c                     | 231
> +++++++++++++++++-
> >  drivers/clk/imx/clk-scu.h                     |  56 ++++-
> >  include/dt-bindings/clock/imx8-lpcg.h         |  14 ++
> >  include/dt-bindings/firmware/imx/rsrc.h       |  23 ++
> >  9 files changed, 610 insertions(+), 90 deletions(-)  create mode
> > 100644 include/dt-bindings/clock/imx8-lpcg.h
> >
> > --
> > 2.23.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
