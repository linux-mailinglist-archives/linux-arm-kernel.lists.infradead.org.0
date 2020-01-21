Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 624F1143668
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 06:01:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sl4I6FKLe+7yyWPkhp+vw1PBtfp3d+aK6ShB95gYVmU=; b=GMtAKYC7Ns0Tmr
	0mNHxlp0ovluthpkGIxNZwtsOfmd/FTY5vxkqBbYSbKQJmc9uG5ACYoKgRI57tsoLyE3a64a2smyU
	IaaCG4lnpg8eeBR/5RWloHrwcFIU1X3ROAtCqRqQCcY4OdQjk/7qjYRYHTyPxFCWL+8WtcFNCyCnV
	Z/bc6w73mFE7dEnMiUD2Xeo6vAgdZc9FXxeM5mmNBidpBwWgWaEwHknjeTOny40fOQEbEbFZj/7OO
	xqZBzqcp6Gif4kZ2KWradL4FYaS3U4+3Q3jCcdSUFOSKg+U0HYQaWpI4hh2U4wqs4OlQ/+yRypauc
	+ELuJlkgXkkMdTw/cIhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itlfA-0003Xt-2q; Tue, 21 Jan 2020 05:01:16 +0000
Received: from mail-eopbgr40067.outbound.protection.outlook.com ([40.107.4.67]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itlev-0003Wo-Ke
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 05:01:06 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TMkaZqAV2nye8znyKXQQn/Rj2sZkUUjTlXbWjQPEW2qzV0GCMB3Bl0MIzXV0juK/U47E5U744XXA376HPwMq7deb6NP7/OZsqiQOSPorFICL3LqCehBVOpQkuHEIQ8xVIFo173/GNT69Pm17/8TPNUFBdBOx/388t46b1tUwueIR12pMDUprsOLrapSDsXWE9iPFMxu8vgP7joBbljl6uf18qPYmfXJhSYws3hXFHlXRCS3u3eCcOBoSrwx4/T7DITRORFTbWENgaPkrPENMKsQGHK7hhSGNL7JjVi6I/44JpQAbcAbQ2Ok5xQSOmRd+wNdOj3F1QtHpC6+lvlcaRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bFe4TbvfHpRkdgZj0fJOTowKwVzhuQuceYxfQhwn+tg=;
 b=EPdKB9Km55TcrbTWYnUE6MBLKe526ZBgkuPvQeWUQuWhM5/NPmxxf/0yJlgpvcI5bxfoxcG5pqSE0ZfNunipMKhJ/o2JSnpCWRXpWqM+1p5YNTi/peziCNF8C1YY6YcbUVk2PMmhm+ysYUNy0qYW2Cjo2ds/cU6VKZ+gquPLBoUe9o7zl+BJDtXioqEMe+G4tRnYQR6cFnsmufB/9RTEvGN+Ew/WkEn/NVBCRcnefdK70rsrN4nZ/3utArg3wQUadCQvaESVNwOJzL9t2Gg5m2AJBFvpj0PuNAwHZTksMpXBqxXXyFWPZyxm/e5jGjyNT2wkumTfaGsf/wfhzVXCsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bFe4TbvfHpRkdgZj0fJOTowKwVzhuQuceYxfQhwn+tg=;
 b=D5jYPTerNHhBgiNprx353JJ89jZbw3Lcx6WEZqIdNLKm+sfql/wqsBATwM/HL4mT15Srw7WvY+JSj7cXJs9YbnRtQJ5cNwZAYl5LW/6S1p5WJQTUKdP93xMmA4jpCpbO68h/K67X0R6lJYEbTxthz0OUNxSmD/rdxPONrCzqR1g=
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com (52.134.92.158) by
 AM0PR04MB4961.eurprd04.prod.outlook.com (20.177.42.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.24; Tue, 21 Jan 2020 05:00:56 +0000
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::b9bd:470c:5f9c:1bfd]) by AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::b9bd:470c:5f9c:1bfd%7]) with mapi id 15.20.2644.027; Tue, 21 Jan 2020
 05:00:56 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Stephen Boyd <sboyd@kernel.org>, Shawn Guo <shawnguo@kernel.org>
Subject: RE: [PATCH RESEND V5 00/11] clk: imx8: add new clock binding for
 better pm support
Thread-Topic: [PATCH RESEND V5 00/11] clk: imx8: add new clock binding for
 better pm support
Thread-Index: AQHVnUJfJlMJ/jCUUkSe2HX97baBSqe0uPgAgCKYlZCAHaMQkA==
Date: Tue, 21 Jan 2020 05:00:56 +0000
Message-ID: <AM0PR04MB42115D5A9D431D6EEA0C8D2D800D0@AM0PR04MB4211.eurprd04.prod.outlook.com>
References: <1573993519-14308-1-git-send-email-aisheng.dong@nxp.com>
 <20191211080525.GS15858@dragon>
 <AM0PR04MB42111A436D719D321ADB479380200@AM0PR04MB4211.eurprd04.prod.outlook.com>
In-Reply-To: <AM0PR04MB42111A436D719D321ADB479380200@AM0PR04MB4211.eurprd04.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: ee47c8c6-cbb1-4027-1fa0-08d79e2ee672
x-ms-traffictypediagnostic: AM0PR04MB4961:|AM0PR04MB4961:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB4961898E087698AA082A35E0800D0@AM0PR04MB4961.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0289B6431E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(39860400002)(396003)(366004)(376002)(346002)(199004)(189003)(55016002)(26005)(186003)(6506007)(86362001)(52536014)(66446008)(66556008)(64756008)(7696005)(5660300002)(66946007)(66476007)(478600001)(76116006)(2906002)(71200400001)(44832011)(8676002)(110136005)(4326008)(9686003)(54906003)(81166006)(8936002)(33656002)(316002)(81156014);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4961;
 H:AM0PR04MB4211.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: AZZZidb7dD+Fv4aWeY/NjXyifA0ON26BItgPAzOLg1H/xvvh2bjhqt3jOLEYv03/+Gavxm8SicqLacs2e7W3ZC+7KPDKIQfbHQmGyCsPxyL4cIktVM8vZVLljWrXN320aGcjU0Kcqyj1T/qgeQDMs9vmlYWmC9PT5w3AWX5nzDoSHkdsHRlL03kcxAPH2YPpxiSHiLrcpBIm9CMB4O8vsGSwEB8Coweu6g7bv8iA4wihxr/Bqp0Pu2QGBXlleWAXn+CaEVia7m7/1HZycuuttFJGnYOSWMKKP+lMDZF2Nphziu8P2vZB/WMyjkepePA0DC3HTxSdCWq6Lq0nVnVOGUiFnIiThVUzVn6HDq/J0ny1izWms5t9EDSF7YdfZqAum56HCBZ6Jjaz3/YmMmINpg1VwnVJZ1saTi6K3F4tmLem0uJRwU923AAJc0vKvEkI
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ee47c8c6-cbb1-4027-1fa0-08d79e2ee672
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jan 2020 05:00:56.6438 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lSpWs55absCjitlErTjbh1MajjZ3R8beOF/XDcxYHwB4/H3Ngsq8SWXJjKBWXK3UyCgN+ri0sd5Qe34gacR6uQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4961
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_210101_684394_5D6EB4D3 
X-CRM114-Status: GOOD (  20.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "mturquette@baylibre.com" <mturquette@baylibre.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Gently ping..

> From: Aisheng Dong <aisheng.dong@nxp.com>
> Sent: Thursday, January 2, 2020 4:26 PM
> 
> Hi Stephen,
> 
> Could you take a look at this?
> 
> Regards
> Aisheng
> 
> > From: Shawn Guo <shawnguo@kernel.org>
> > Sent: Wednesday, December 11, 2019 4:05 PM
> >
> > On Sun, Nov 17, 2019 at 08:25:08PM +0800, Dong Aisheng wrote:
> > > This is a follow up of this patch series.
> > > [V2,0/2] clk: imx: scu: add parsing clocks from device tree support
> > >
> > > This patch series is a preparation for the MX8 Architecture improvement.
> > > As for IMX SCU based platforms like MX8QM and MX8QXP, they are
> > > comprised of a couple of SS(Subsystems) while most of them within
> > > the same SS can be shared. e.g. Clocks, Devices and etc.
> > >
> > > However, current clock binding is using SW IDs for device tree to
> > > use which can cause troubles in writing the common <soc>-ss-xx.dtsi
> > > file for different SoCs.
> > >
> > > This patch series aims to introduce a new binding which is more
> > > close to hardware and platform independent and can makes us write a
> > > more general drivers for different SCU based SoCs.
> > >
> > > Another important thing is that on MX8, each Clock resource is
> > > associated with a power domain. So we have to attach that clock
> > > device to the power domain in order to make it work properly.
> > > Further more, the clock state will be lost when its power domain is
> > > completely off during suspend/resume, so we also introduce the clock
> > > state save&restore
> > mechanism.
> > >
> > > ChangeLog:
> > > v4->v5:
> > >  * Address all comments from Stephen
> >
> > Hi Stephen,
> >
> > Are you fine with this version?
> >
> > Shawn
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
