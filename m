Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCEA42EA33
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 03:23:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W9uIN0oCQ79gdmanJ7I0lqi7Kn5M6Z1+3PBsIvdqEhY=; b=h+kH90mi5DTbxl
	rv143jowprtt66cG3PEGSmZ0m2TZFNWzB/ocjcLiOkbNqkN3KY8kLpbinya54JDrqUk9CK3A+HE1X
	YVSzYWhACcg4n1gUeDgYGIVU83Luijs3irc1493pdXa+SH3Bq7XO7aMuVhTlvUmF1lV4w0gj3jGgk
	HGykHBXdooCHVGyvrLHzmhyeYR/MUnCE3XxtQjBvJ3FAQ1chvkM6KfkgTLzzdxjepEgx4hWKkcD89
	TZZAM5UZoX7/uXKLS2OMvzMhqzWhzkbExDl9FxKptOe5/TQ/1IVjsoPcoFANd4xIaJ5ePLtP67TDC
	MXKGC+FuOO8nNcuW2YTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW9mf-0003TW-FS; Thu, 30 May 2019 01:23:09 +0000
Received: from mail-eopbgr40047.outbound.protection.outlook.com ([40.107.4.47]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW9mY-0003T0-AZ
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 01:23:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JXNqwIC2b9bEE9RPSsmlQy1hX2NkCqvOJCJuqqYnoIo=;
 b=hV1VOhHUicDnjAD3zz6nOCjIJfDi4gJVxSey8lgU8wWZ72Iirx7/hGMgs2aQLw3NSNQ6Ne/mBOXzLmRmprTZ0PP0ObsiFBfUPABMBAaHVzPWKJk0qHk4BgmAPijLMowpIZ/Ec2lF7EDdwdZwochisqotxLKTjr7I3Q/I68LksWo=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4145.eurprd04.prod.outlook.com (52.134.90.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.22; Thu, 30 May 2019 01:22:58 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::3173:24:d401:2378]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::3173:24:d401:2378%6]) with mapi id 15.20.1922.021; Thu, 30 May 2019
 01:22:58 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Stephen Boyd <sboyd@kernel.org>, Shawn Guo <shawnguo@kernel.org>
Subject: RE: [PATCH] clk: imx: imx8mm: correct audio_pll2_clk to audio_pll2_out
Thread-Topic: [PATCH] clk: imx: imx8mm: correct audio_pll2_clk to
 audio_pll2_out
Thread-Index: AQHVED6JGbhPMl1ASUycBcbN9uhZiqZ4tK8AgAoZTgCAAB1qcA==
Date: Thu, 30 May 2019 01:22:57 +0000
Message-ID: <AM0PR04MB4481A7FF28A9AB9A1584423888180@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <20190522014832.29485-1-peng.fan@nxp.com>
 <20190523132235.GZ9261@dragon> <20190529233547.B7F6F2435D@mail.kernel.org>
In-Reply-To: <20190529233547.B7F6F2435D@mail.kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 48fbac38-aaff-4ac7-8dff-08d6e49d597d
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4145; 
x-ms-traffictypediagnostic: AM0PR04MB4145:
x-microsoft-antispam-prvs: <AM0PR04MB4145EA9A552E94996523BB2C88180@AM0PR04MB4145.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 00531FAC2C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(136003)(396003)(366004)(346002)(376002)(199004)(189003)(33656002)(7416002)(86362001)(25786009)(74316002)(316002)(6436002)(44832011)(52536014)(68736007)(305945005)(7736002)(73956011)(76176011)(76116006)(64756008)(66556008)(9686003)(66446008)(81156014)(66946007)(55016002)(110136005)(54906003)(66476007)(99286004)(71200400001)(14454004)(2906002)(3846002)(7696005)(66066001)(256004)(5660300002)(229853002)(486006)(6116002)(6246003)(8676002)(446003)(8936002)(53936002)(71190400001)(6506007)(186003)(4326008)(11346002)(478600001)(4744005)(102836004)(81166006)(26005)(476003)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4145;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 94ycI5JvLjVuYqo9FeQ4xsNJ+VxOKEozwWIKa9DZyr68UbGkuMklDHtDDdoO8gX022ux6A3wBM/9/1Yd8MrWKsDTh9eMgatSctfP93B0KU8eq2fw2BUsLUC3MYE7so56uu7o0O8eJ3KvqYo0q0daYja3GmyqXWSlxXD04/eoWNUulCP1p4DbvtJf/D205MT9VGmoxTH7vvrLM3YmDUguRc/WAaXp7/vwx8AwJCh2qnx4fDWqVLrnoevAVpxp4Z+EpS/YTZyW2wlw0xSPDQ3ktUq5/woKPKSgmDem/SLt3sLp2w0OI73lMvzB/90NGeEW02BGpIFSmnILgevwAAyl+GMRqDiCo2LJiUv2fyMsMVkoXZ0v/uVPpCBaHHBrmha+fNYZfKhY3bUS2tjdqoDrmHGB9ZdOV9FOg5nSqrNUYqU=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 48fbac38-aaff-4ac7-8dff-08d6e49d597d
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 May 2019 01:22:58.0223 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: peng.fan@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4145
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_182302_418981_3A30F44E 
X-CRM114-Status: GOOD (  13.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.47 listed in list.dnswl.org]
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
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Stephen,

> Subject: Re: [PATCH] clk: imx: imx8mm: correct audio_pll2_clk to
> audio_pll2_out
> 
> Quoting Shawn Guo (2019-05-23 06:22:36)
> > On Wed, May 22, 2019 at 01:34:46AM +0000, Peng Fan wrote:
> > > There is no audio_pll2_clk registered, it should be audio_pll2_out.
> > >
> > > Cc: <stable@vger.kernel.org>
> > > Fixes: ba5625c3e27 ("clk: imx: Add clock driver support for imx8mm")
> > > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> >
> > Stephen,
> >
> > I leave this to you, since it's a fix.
> >
> 
> Is it a critical fix? Or is it an annoyance that can wait in -next until the next
> merge window?

I did not run into issue without this fix currently, so it should be fine to wait
in -next until the next merge window.

Thanks,
Peng.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
