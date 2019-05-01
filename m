Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7734C10665
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 11:34:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EnFSFKFWaj67k4d5jbP8JH3GHBtOTY4UZCnsIVXeYgI=; b=hIk9rGtL0HIAnv
	X5SF1aHnvdFvGmnY3jY+0Po+lWf+RNWVaW0UwVQDkYj/zfGQEX2c7iDozGYqcprUaZP1DVlxy0/A8
	x3SrNW+EM4DGLOT15cpzJpvrd4tSG4O5oVZEb96lrZn4xZ2p1/k0yBw28om7ZZg+1y83DCk9a8NID
	vFLGhrHPavCl1kElriCvfenhMzXVMTN+LHv/zEYm6JTc9x7tvJ3MZHrCKQtDTg/G6owIv3JFiDafT
	P0l+mJKmtebu0QzjJNj4KBZRjrG/gEY3sjsI2H+d0NV7Mym6C2TuSpbGg9A1i3FRv+9GtFlOPe3h4
	ZF7nvR9te2w9zI0zKBoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLlcl-0000zd-JE; Wed, 01 May 2019 09:33:59 +0000
Received: from mail-eopbgr50071.outbound.protection.outlook.com ([40.107.5.71]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLlcd-0000zB-V9
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 09:33:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sa58SZ418XHSTxX+C5qEk62ny1AteWRpmLAnD4dTM/w=;
 b=ZqGrMsobTZBRKMrS73MNi3CZC8qvQuKEo2canlygB6gVVY0o8ThZQ75xvPZOYKjmHCI7ug+LrK+9P8QzRh1G9jGibQdpkQ4ClNdTKPq87ripNPHg6CUvpAw76cmVM0PrKy8UT0cK7AeqbJZRvpO2LbIdaOdRXXjRWknV6fZ2uZs=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3804.eurprd04.prod.outlook.com (52.134.73.15) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.13; Wed, 1 May 2019 09:33:47 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e8ca:4f6b:e43:c170]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e8ca:4f6b:e43:c170%3]) with mapi id 15.20.1856.008; Wed, 1 May 2019
 09:33:46 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Stephen Boyd <sboyd@kernel.org>, "festevam@gmail.com"
 <festevam@gmail.com>, "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-clk@vger.kernel.org"
 <linux-clk@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "mturquette@baylibre.com"
 <mturquette@baylibre.com>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, 
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "Gustavo A. R. Silva"
 <gustavo@embeddedor.com>
Subject: RE: [PATCH] clk: imx: pllv3: Fix fall through build warning
Thread-Topic: [PATCH] clk: imx: pllv3: Fix fall through build warning
Thread-Index: AQHU/vfDJ+hnJuSvCk6GSL1CreUf2aZVA8+AgAD/5MA=
Date: Wed, 1 May 2019 09:33:46 +0000
Message-ID: <DB3PR0402MB3916F59134DB9CF9837B43C1F53B0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1556589033-6080-1-git-send-email-Anson.Huang@nxp.com>
 <155664820799.168659.12393223246835475198@swboyd.mtv.corp.google.com>
In-Reply-To: <155664820799.168659.12393223246835475198@swboyd.mtv.corp.google.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2fbc2997-6209-4341-ad6f-08d6ce181c5c
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3804; 
x-ms-traffictypediagnostic: DB3PR0402MB3804:
x-microsoft-antispam-prvs: <DB3PR0402MB3804A24BDF83658ABDC08D82F53B0@DB3PR0402MB3804.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:60;
x-forefront-prvs: 00246AB517
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(346002)(136003)(376002)(39860400002)(366004)(13464003)(199004)(189003)(66476007)(66946007)(446003)(2906002)(2501003)(66446008)(14444005)(66556008)(256004)(186003)(4326008)(64756008)(478600001)(33656002)(25786009)(229853002)(52536014)(55016002)(3846002)(6436002)(102836004)(26005)(6116002)(74316002)(76116006)(6246003)(476003)(305945005)(8676002)(53936002)(11346002)(73956011)(316002)(66066001)(68736007)(53546011)(14454004)(81156014)(110136005)(486006)(99286004)(2201001)(7736002)(5660300002)(76176011)(8936002)(71200400001)(71190400001)(81166006)(86362001)(6506007)(7416002)(9686003)(7696005)(44832011)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3804;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: D/JQjjpgciS/P6GWXWxj9ARH5VZYWzT6JaZ5XWUzn/yl2gFQCW+ZvBq00891+pMrEB76f+GKajVBIL3iljbHYi09eX3QaCkpE/sJnJGkhJyVgL+eCMHtemYK8R6HznD4XPx3kwSFbrOpXPgHdV9oH8k0th4soZfmadq0Z6S499K1bAQbSZo8rOu+AUXQ9zSh38xz7w9VVryxyxtkD5eCMOsbB/sYEY6qSYqPCQGdomDWP7YzgpstOdoOmRDrr8Ma9bP5HC+LEL3nzy9WMlxQr2nhuiKDfFV7G/50iqHx56YKz0jwRXB+oDqvqtyOPkAuEuztwZgHd+L6y1JP1/1uS7+274o4JGCIIgVLp4zLsmLCj2ygTApzYdlLFWa8DRw4kLB8zRkgqKKsPUZQ55QaLWuv5A84+P9noLhxYnQmxy4=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2fbc2997-6209-4341-ad6f-08d6ce181c5c
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 May 2019 09:33:46.8595 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3804
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_023352_108114_05EF3A44 
X-CRM114-Status: GOOD (  15.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.71 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Stephen
	I saw Gustavo already sent out a patch to fix these two warnings, so I will NOT sent the patch again, thanks.

> -----Original Message-----
> From: Stephen Boyd [mailto:sboyd@kernel.org]
> Sent: Wednesday, May 1, 2019 2:17 AM
> To: festevam@gmail.com; kernel@pengutronix.de; linux-arm-
> kernel@lists.infradead.org; linux-clk@vger.kernel.org; linux-
> kernel@vger.kernel.org; mturquette@baylibre.com;
> s.hauer@pengutronix.de; shawnguo@kernel.org; Anson Huang
> <anson.huang@nxp.com>; Gustavo A. R. Silva <gustavo@embeddedor.com>
> Cc: dl-linux-imx <linux-imx@nxp.com>
> Subject: Re: [PATCH] clk: imx: pllv3: Fix fall through build warning
> 
> Quoting Anson Huang (2019-04-29 18:55:18)
> > Fix below fall through build warning:
> >
> > drivers/clk/imx/clk-pllv3.c:453:21: warning:
> > this statement may fall through [-Wimplicit-fallthrough=]
> >
> >    pll->denom_offset = PLL_IMX7_DENOM_OFFSET;
> >                      ^
> > drivers/clk/imx/clk-pllv3.c:454:2: note: here
> >   case IMX_PLLV3_AV:
> >   ^~~~
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > ---
> 
> Gustavo says there are two warnings. Please compile test with the right
> options, add Reported-by tags when you get bug reports from someone, and
> add a Fixes tag and then resend.
> 
> >  drivers/clk/imx/clk-pllv3.c | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/drivers/clk/imx/clk-pllv3.c b/drivers/clk/imx/clk-pllv3.c
> > index e892b9a..fbe4fe0 100644
> > --- a/drivers/clk/imx/clk-pllv3.c
> > +++ b/drivers/clk/imx/clk-pllv3.c
> > @@ -451,6 +451,7 @@ struct clk *imx_clk_pllv3(enum imx_pllv3_type type,
> const char *name,
> >         case IMX_PLLV3_AV_IMX7:
> >                 pll->num_offset = PLL_IMX7_NUM_OFFSET;
> >                 pll->denom_offset = PLL_IMX7_DENOM_OFFSET;
> > +               /* fall through */
> >         case IMX_PLLV3_AV:
> >                 ops = &clk_pllv3_av_ops;
> >                 break;
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
