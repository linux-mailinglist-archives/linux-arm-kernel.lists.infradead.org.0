Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 025ACED7F5
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 04:09:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5ZMhuVzUmeHBYht2rYSjoviVS/Y6GalHoKJgcbvzPtI=; b=hYXRfpFshoMWCB
	QyN1IY9TvhFSPhq1ySjfKlzaUivkEF1p476s7DKOluQqJxOLbdbcZw9UI5oxdenA2amFxAIvCKXr9
	RJ6hnQ5cR4e3+cNogaJszYTHttywtRW3QnxJ8MWBf0Z4hwbQGD2JOcFiXmEgyRyiLCrdSZmZ60peH
	Az72xf5TEQTaECQI5O6lym57GToXj24d6Z8no9U/fsSqZ4DEazM2l/wQ9GAnyBimMEQBXjrLIyu7w
	PEsWkghRIYar28A5c+BBAvBC/vi6cCjHAw/Pkwk7N2lis4RXXkrNPl5huozlO8ixaADAh0H9CcVmu
	cZT4/roduiu7H3gUW1zA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRSk2-0007Zj-2w; Mon, 04 Nov 2019 03:09:18 +0000
Received: from mail-eopbgr130077.outbound.protection.outlook.com
 ([40.107.13.77] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRSju-0007ZC-QF
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 03:09:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YLZY500Pq0eeYYYOWoJy+SAXTz6zTcWUvMEwmCwdx0CBOD9o0B1SLX00JO1okpVQye6OjyTqTZE67OJdAkVFLkIPIObO8jxCKlF6w9YGNsrYlxGz+71ord4k1AjghxnUKj9UsD7JfRS/UybpfIpwYo7c1JokhOw8NRPJur2nK5ZB+bSkfqtNZKzPEKpdVOq5ae3mW9Eh4boeq0FdNyFRPydDQ9rsdWSO/kMDQIIicBjV8jDRFbFvu0LmzMuLC2MdBqmB+Xf3Y0lBDH8HnwVn5N7O7f5x9KhL5CWb/vcFw5Z8wQ6ON9s97hIVfSEEGeBCTE/3ZBjIk7OeV2FQHFu49A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5qE6K6hw7/BV7exmjQQyoJn5YoLE03mRJ7QQ0XpgKEk=;
 b=A8IjZt1QDkp0S2QZ7SadT4hJgJwbsQe/qh5YPbPOHu992ynzJCJjoRdHMh25H/q38QYmYhuezWROj/e+At1KPKeSHKODBruN305uTKHs5UFph4NK3WM7efp3GA3hHa4kZeUKnL7y7PfcQWFUEKRFzFZwLFxbXy/akINvIqXN8VaY00UTLei0xpV6QsZm1f7Wbrou4KUzCJ/rK5vlmSiJ5BeKqaQVNqwmVimI/S/PMp4RcDwSk7ODWc70kwrLZ9mnktRl/6ZTg39UcYWhzDsUzjr7XejU08u7hiHFj1JRU98fe6LSouBG3hrTMpyFM5IrmSCIprRvOWWL2d66YYjNFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5qE6K6hw7/BV7exmjQQyoJn5YoLE03mRJ7QQ0XpgKEk=;
 b=Om59Io5kPBCF3zsbUyPIOai4T1kjjecDf1wkSfR/bU7oqpOYrT45yH/vnGln/U2r5XeKkWmgZfD9yu2ka/J/4kCndGUXJEA2cmyIBxbuS6xYEmSry2TW7GEddLTN45Itk4nPRxTb4vvhXafQANnXb0xYzU5IEcI8rxYZ3tYQHWQ=
Received: from DB7PR04MB4490.eurprd04.prod.outlook.com (52.135.138.150) by
 DB7PR04MB4427.eurprd04.prod.outlook.com (52.135.135.157) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2408.24; Mon, 4 Nov 2019 03:09:06 +0000
Received: from DB7PR04MB4490.eurprd04.prod.outlook.com
 ([fe80::115f:1e4f:9ceb:2a2c]) by DB7PR04MB4490.eurprd04.prod.outlook.com
 ([fe80::115f:1e4f:9ceb:2a2c%7]) with mapi id 15.20.2408.024; Mon, 4 Nov 2019
 03:09:06 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "sboyd@kernel.org" <sboyd@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, Abel Vesa <abel.vesa@nxp.com>
Subject: RE: [PATCH 0/3] clk: imx: imx8m[x]: switch to clk_hw API
Thread-Topic: [PATCH 0/3] clk: imx: imx8m[x]: switch to clk_hw API
Thread-Index: AQHVkrrrq3+6RnKlx0SgOHFznmoeb6d6VM2Q
Date: Mon, 4 Nov 2019 03:09:06 +0000
Message-ID: <DB7PR04MB4490B09714772F9B7EF3F127887F0@DB7PR04MB4490.eurprd04.prod.outlook.com>
References: <1572835730-1625-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1572835730-1625-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 845364ad-ca34-427b-996f-08d760d45a91
x-ms-traffictypediagnostic: DB7PR04MB4427:|DB7PR04MB4427:
x-ms-exchange-purlcount: 2
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB442798988C6C10CCBA1E7B80887F0@DB7PR04MB4427.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4502;
x-forefront-prvs: 0211965D06
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(396003)(39860400002)(366004)(376002)(346002)(199004)(189003)(81166006)(99286004)(81156014)(486006)(476003)(33656002)(446003)(11346002)(8936002)(44832011)(8676002)(25786009)(74316002)(186003)(110136005)(76176011)(316002)(7696005)(102836004)(6506007)(305945005)(26005)(6116002)(3846002)(5660300002)(229853002)(7736002)(4744005)(52536014)(71200400001)(71190400001)(86362001)(966005)(76116006)(2201001)(66476007)(66556008)(66446008)(66946007)(256004)(2501003)(2906002)(6436002)(66066001)(55016002)(478600001)(6306002)(6636002)(6246003)(64756008)(4326008)(14454004)(9686003)(54906003)(32563001)(15585785002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB4427;
 H:DB7PR04MB4490.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: H/vx1cZeECTKz43BUlzBPJN92Ph51EQiB2gQREaN4dRhliUnwuiUYRV/ei3QrFltWb5icbFIm1Bg1zSwQrbp6+itAkGizMWmt60dJ8YwfmUAy8MjiDUJZUqIroeSej1MJKvUgTO6lI5J6e7xNaklD3kSR/GOgZnsRyQXP8xIny7JGv3XB1gCHuZyEvzwuW8evF19krH0qIYc4NUW1dZb13Hb/1946u59Hez5I613Bfx01J6S2X+8kKFZYkm3amSN0GzGDp3RQj9Ez8ap0MF3vv2KEfD8fMC5hobPe2mggQA5V2U6T8JgrTr9n0nWdHJ1nRsczhXMdsbt0y4nQ9fRm4JvCebSiEBvnVEu0fdgTSBFfwCN/gJWoyIqAXYMTDnny2fWHkqLzk2E/FfuvvaKwvQT9qMHRBsVakDspo39bD9M9/uqrJpKTE+otS8iTBNmn7jFwGVFQcBc1p8iWINNcA10j+o3RKscJJMt0qW8XP0=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 845364ad-ca34-427b-996f-08d760d45a91
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Nov 2019 03:09:06.4129 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KUd1PHZEd9iWBOroItSlDGsWHHDdQ4HVhCF3K8BzFpEqThn6tFNJMdIguKku2F+knmvhvWYCX4kHHHGi01YHWw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4427
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_190910_855645_2E53059C 
X-CRM114-Status: GOOD (  10.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.77 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jacky Bai <ping.bai@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: [PATCH 0/3] clk: imx: imx8m[x]: switch to clk_hw API

Please ignore this patchset, pushed button early.

Thanks,
Peng. 

> 
> From: Peng Fan <peng.fan@nxp.com>
> 
> This patchset is to Switch i.MX8MN/M/Q clk driver to clk_hw based API.
> 
> Based on imx/next branch, with [1][2] applied.
> 
> [1]  clk: imx: switch to clk_hw based API
>      https://patchwork.kernel.org/cover/11217881/
> [2]  clk: imx: imx8mq: fix sys3_pll_out_sels
>      https://patchwork.kernel.org/patch/11214551/
> 
> Peng Fan (3):
>   clk: imx: imx8mn: Switch to clk_hw based API
>   clk: imx: imx8mm: Switch to clk_hw based API
>   clk: imx: imx8mq: Switch to clk_hw based API
> 
>  drivers/clk/imx/clk-imx8mm.c | 550
> +++++++++++++++++++++--------------------
>  drivers/clk/imx/clk-imx8mn.c | 475 ++++++++++++++++++------------------
>  drivers/clk/imx/clk-imx8mq.c | 569
> ++++++++++++++++++++++---------------------
>  3 files changed, 817 insertions(+), 777 deletions(-)
> 
> --
> 2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
