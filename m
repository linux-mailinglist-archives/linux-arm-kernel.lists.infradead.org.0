Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40397EFC80
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 12:36:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DqQPm1S7ZLX+U8iGONPPOPYQDNi9CB+rtr8odw0j50E=; b=GJzh/fzMg0TjTM
	BRShAe3O5FiD/Q6GAhtH1YY3iiBGhjjyC0NJLVr92cOQA6c5Wv8OJaGA8S9j6mjbiYHNOZpp8b2CS
	ZPxdwhtQV0Vbt51tM7fdSVy6o3xverJwZ7XBtZhyDILzcpytStEofbTr7he/BsPuTCuy1n8fgppsn
	30eFO2sjkr37ydl7SQ34dQ/btBw+flUYfqEdQD+sRddo40omsj8he+5TlZcjVV6y2It3lOgj8pm1W
	ZPm6O05va08MGW8ONUqlBdmFP0Qf95kF1Pmd5FB0HeejAaiYackmP0GraesdFyFQt+GuOm373m6HD
	sTm4ExVdm6X3hsWg1khQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRx85-00011E-Kz; Tue, 05 Nov 2019 11:36:09 +0000
Received: from mail-eopbgr70057.outbound.protection.outlook.com ([40.107.7.57]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRx7x-0000zO-IQ
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 11:36:03 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fak/1X9Xoe2ShlbFSRYaoEYz0OP6BLmG6sGmBxyHdXp1rxgqqkbKL8zE7srSTZi1vyvnvpdt/JzOGrK4i2aw6enNIPGTSDbjLLNXbmvtRbwhE3vOCxUh8Ax4c45FdGq5uidZlXWuwFxpqxtGtA2DTwuHFuCR5R1CvRTz/t0Rszy2Aset0iDfCByy84UlfllDsDt81Ti6m763DdfTgpaYjxFocsq8XJj7Qe3irHTk+Rf1nr+aaN6qCLO0zdOFVe+nrS0bxr417LKW1p4cOjnqN1OJTRO9HxH64QJJIx8tbteIHtfsQGz5Zr+HZB5S8r9TvyZn1BAFBCPZInMcMR4cQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RW13KYjicyG6unFrZ6YVKDTGO8qvRwJejdmpzC9s/zc=;
 b=M/S/nrdft4ZAkw8gISLZq/uUa74H/XmwkINWnXShc73UIb622J8NTDxKvovisf0oZa/Qf4tKYFBMaBRTNelPvougKPnN7OTWgZKAgAwftg+DS7FLNOc3BwHhnHR7QokJXmYklH791NO/pchRhvH1n5csCap/GREwAp2sPurudZdQTgdMh0EEcbIbvP3uzsAIMNt9RqERR8Cw+YgqZiJIh6IDn2boCkEMyRV1/fWWllTsYowkvvCcnP/jjN8TdUYg1lGwfP5mc5C1fKGm8BBEdTy5YbaCMhHlssiS+C4FO3r8t+0ktFGF6PZZZ+pPTgeeW8mM321+QP4zovByRy3nyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RW13KYjicyG6unFrZ6YVKDTGO8qvRwJejdmpzC9s/zc=;
 b=gaSg4b5GGGNKO1T0EE6aLWIZN4E2JMCc4c5Efv2S1+xn/6/LL3CHIOtd2/GnPlC1b9DOiBmlAXIjrdIkH1o/aOoRGiEnG4uJ5OyQrwfEnd6WOXEy1RvHAaz+qGm1J7jFguRpfOYlIDiq+MKWQviKD0B/EYiYS0AZ3YvXDX9MFWQ=
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com (20.178.202.151) by
 AM0PR04MB5201.eurprd04.prod.outlook.com (20.177.42.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2408.24; Tue, 5 Nov 2019 11:35:53 +0000
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::fd44:1b14:587c:9fde]) by AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::fd44:1b14:587c:9fde%7]) with mapi id 15.20.2430.020; Tue, 5 Nov 2019
 11:35:53 +0000
From: Abel Vesa <abel.vesa@nxp.com>
To: Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH V2 0/4] clk: imx: imx8m[x]: switch to clk_hw API
Thread-Topic: [PATCH V2 0/4] clk: imx: imx8m[x]: switch to clk_hw API
Thread-Index: AQHVktMk8ePu9WQHCE2BNQEucqhFb6d8dLOA
Date: Tue, 5 Nov 2019 11:35:53 +0000
Message-ID: <20191105113551.6agks4xzbbtf25fc@fsr-ub1664-175>
References: <1572846270-24375-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1572846270-24375-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM0PR02CA0063.eurprd02.prod.outlook.com
 (2603:10a6:208:d2::40) To AM0PR04MB5779.eurprd04.prod.outlook.com
 (2603:10a6:208:131::23)
x-originating-ip: [89.37.124.34]
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=abel.vesa@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: d9b12ee7-a7ab-4e6c-6761-08d761e450b1
x-ms-traffictypediagnostic: AM0PR04MB5201:|AM0PR04MB5201:
x-ms-exchange-purlcount: 2
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB5201765A720E94035C048C40F67E0@AM0PR04MB5201.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1443;
x-forefront-prvs: 0212BDE3BE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(7916004)(136003)(396003)(376002)(366004)(39860400002)(346002)(199004)(189003)(66556008)(64756008)(66066001)(54906003)(476003)(102836004)(7736002)(6636002)(76176011)(256004)(8936002)(14444005)(66476007)(478600001)(6486002)(8676002)(386003)(26005)(66446008)(6246003)(71190400001)(71200400001)(81166006)(6436002)(2906002)(6306002)(6116002)(99286004)(1076003)(3846002)(6512007)(9686003)(229853002)(966005)(6506007)(4326008)(305945005)(86362001)(5660300002)(52116002)(316002)(186003)(446003)(486006)(44832011)(81156014)(11346002)(66946007)(25786009)(53546011)(14454004)(6862004)(33716001)(32563001)(15585785002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5201;
 H:AM0PR04MB5779.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: dpRHkLt4T1X+CIhGPJTvwfU41AW6rBePmovys8usYnFfBz19ewRnl1KqPuyAZN0l0I7EiscCEDjIa1xDe8Gpncqpx65YUhcYqRY+nMv3aHTxeU6x2ExbMxqcsyxnnjQtAyDBEg2Noeodbp9muazFj5ytAYmJJtrJw6s1hN4pqvab0yHEwZ5cKj80UOYKBSbwMLeDr2FxETdc/DmDxA2WExl/mFuDgCoKRUcVGsjrsaMfg+tY9VGp6b7a2o7A7jIWHy0deAAD+xRNuVpBQJoxf1xufJbcqwP7uWUQYKgkr1SMr16uTiPXeALecC+l09T50To9E+N7p96oEXuPNp6jHWit5gsRMpxF4gQg40/imPUuNvr010iWGnOccpTrm2q6fJzk7XZJ9ffSIcMRWegGSPfx9K5sjfRHZDVq2LORZpfWHxse3gY9ZotxIzIXGAS+4K7MKWdWLOjAQ03i4Sr18pVkZF7qp4w+HnHEMf6axDo=
Content-ID: <8166DA92896F3F47B9D44C82A190727F@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d9b12ee7-a7ab-4e6c-6761-08d761e450b1
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Nov 2019 11:35:53.5233 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: b+njCTm795JtZO2RbWlYRmQYy1l78ZwwAnpRG4A4y8tsFu8apMLzqnqxfLMycYiHj2FLjcCZvY+6GHkl2M1Xkg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5201
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_033601_610025_D0BDBCED 
X-CRM114-Status: GOOD (  11.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.57 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jacky Bai <ping.bai@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "sboyd@kernel.org" <sboyd@kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19-11-04 05:46:02, Peng Fan wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 

Entire patch series looks good to me.

Reviewed-by: Abel Vesa <abel.vesa@nxp.com>

> 
> V2:
>  Add a new patch patch 1/4 to avoid build warning for arm64
>  clk: imx: Remove __init for imx_obtain_fixed_clk_hw() API
> 
> This patchset is to Switch i.MX8MN/M/Q clk driver to clk_hw
> based API.
> 
> Based on imx/next branch, with [1][2] applied.
> 
> [1]  clk: imx: switch to clk_hw based API
>      https://patchwork.kernel.org/cover/11217881/
> [2]  clk: imx: imx8mq: fix sys3_pll_out_sels
>      https://patchwork.kernel.org/patch/11214551/
> 
> Peng Fan (4):
>   clk: imx: Remove __init for imx_obtain_fixed_clk_hw() API
>   clk: imx: imx8mn: Switch to clk_hw based API
>   clk: imx: imx8mm: Switch to clk_hw based API
>   clk: imx: imx8mq: Switch to clk_hw based API
> 
>  drivers/clk/imx/clk-imx8mm.c | 550 +++++++++++++++++++++--------------------
>  drivers/clk/imx/clk-imx8mn.c | 475 ++++++++++++++++++------------------
>  drivers/clk/imx/clk-imx8mq.c | 569 ++++++++++++++++++++++---------------------
>  drivers/clk/imx/clk.c        |   4 +-
>  4 files changed, 819 insertions(+), 779 deletions(-)
> 
> -- 
> 2.16.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
