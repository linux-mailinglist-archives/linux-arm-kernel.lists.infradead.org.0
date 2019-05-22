Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D885A26297
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 12:56:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0Lius1T98H4+1NEy16c37Z3EkjXV4UvdKP7C5IK5Kds=; b=moXE/bh33UWicI
	/JzEnSsIUiCMoDdUyMr+0ZUb36gEQOs5msDiJIuYLTvTWWnhY9088QlncYGiSphOTotxx27uAU202
	pumJH7UJI1wg6FrscJ0YakqdCyaUZlkmAz3SCxlccDkMbcng6SYmULAZMBXUGUYE6eJllbxun/zfv
	1zyea29C5DcmgPAED/gLHHxdfW8am/phllMlIvyCqiob0MZir0Wlx4mn2tL6gMtytS3J4BUPcGioj
	bnJ6N3zIrQmIV7mqbwBts9oIa3yL7GhBYjDabJ6wqPzovjH7Z0FuZxNsAgAzi6XclaG1MG9HfmTNP
	cxSf7zshhsZO0cXozo6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTOvO-0003Pv-NE; Wed, 22 May 2019 10:56:46 +0000
Received: from mail-eopbgr130074.outbound.protection.outlook.com
 ([40.107.13.74] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTOvC-0003Ia-Fq
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 10:56:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZxQaY99ejy8a0zfxsotbMMlkUzenPno6vgiO1lOmMlU=;
 b=kA6UFOl5rmcSz1zJ8EUXgIL0a8ndND6r1fuNHi5jleAJKze+VKROtqGPoISG8X37wqyrn0jISLAiloja0xNV59MvXGE758YjtM5yrgLGp5S95GDe7M/0zdKqz283JW/QJ3moYfayY9ynI3GabJB2SxefhTdRGeMUNvvNJNhfFH8=
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com (20.178.202.151) by
 AM0PR04MB4209.eurprd04.prod.outlook.com (52.134.126.19) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.17; Wed, 22 May 2019 10:56:29 +0000
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::c19b:5964:bfcb:96a8]) by AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::c19b:5964:bfcb:96a8%7]) with mapi id 15.20.1900.020; Wed, 22 May 2019
 10:56:29 +0000
From: Abel Vesa <abel.vesa@nxp.com>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH v2 0/2] clk: imx8m: Add GIC clock
Thread-Topic: [PATCH v2 0/2] clk: imx8m: Add GIC clock
Thread-Index: AQHVEIOCpLH3NHnZl0OVDpw6qRV786Z2+PqA
Date: Wed, 22 May 2019 10:56:28 +0000
Message-ID: <20190522105627.nshnk5ih6r2swzr4@fsr-ub1664-175>
References: <cover.1558518323.git.leonard.crestez@nxp.com>
In-Reply-To: <cover.1558518323.git.leonard.crestez@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=abel.vesa@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ed80387e-495f-4537-59de-08d6dea424fa
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4209; 
x-ms-traffictypediagnostic: AM0PR04MB4209:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <AM0PR04MB420982F98FA283F7195CC4DFF6000@AM0PR04MB4209.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1332;
x-forefront-prvs: 0045236D47
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(7916004)(366004)(199004)(189003)(91956017)(66446008)(66556008)(71190400001)(71200400001)(64756008)(66476007)(66946007)(476003)(446003)(11346002)(73956011)(76116006)(99286004)(76176011)(6116002)(3846002)(6512007)(9686003)(54906003)(6506007)(53546011)(6306002)(6436002)(4326008)(6246003)(25786009)(6486002)(186003)(102836004)(53936002)(68736007)(86362001)(26005)(6862004)(256004)(7736002)(4744005)(2906002)(966005)(14454004)(5660300002)(6636002)(1076003)(498600001)(486006)(66066001)(44832011)(229853002)(33716001)(8676002)(81166006)(81156014)(8936002)(305945005)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4209;
 H:AM0PR04MB5779.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 7/QH5ax1bmACzWnUPkdoidwV9/61FirazZ+NUifC426xOXxA0Kz5EurvgzHBRPpRanw/WyHq/nZX3y1okv6pzmt3irERMxG++xsdFatfAF/Idy2aZ5Gp1SEtwUQGZz1/hBNZan00AnUr8EASpXR8kaxnU2Hx0GWdWkNAd3yaVO++3Rs/r1c5Poc6Kr1li3XhP9XAkiA8/ao6YBw5ikuL+rcgBX+P+fQ+h8t4NRhLC6hUWbLwQlShkq5XdthVltMbZKhsZzGvXlIdgUYXzdUwGuz6nld59u/YnOGU9U+Hw/KDFEHSxZlHSfmBjP6fRRZbhfh8pTZcfQD3r1f2jSNR8yEeysz6rvMxT3EmHk1sRjS1vWXzlopC5br1UjYou3494kIlEd1NP62ijiOKcJiQ33K42ghJYZnN5iv4ZG8UDQQ=
Content-ID: <6A409CE82D50B94CBC334C2A645640EC@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ed80387e-495f-4537-59de-08d6dea424fa
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2019 10:56:29.4404 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4209
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_035634_636413_572A9B30 
X-CRM114-Status: GOOD (  10.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.74 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 Anson Huang <anson.huang@nxp.com>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19-05-22 09:48:28, Leonard Crestez wrote:
> Add gic clk and mark it as critical so that parents are not turned off
> by accident.
> 
> Changes since v1:
>  * Add imx8mq
>  * Split dt-bindings to separate patch
>  * Rebase on shawnguo/clk/imx
> Link to v1: https://patchwork.kernel.org/patch/10940303/
>

For the entire series.

Reviewed-by: Abel Vesa <abel.vesa@nxp.com> 

> Leonard Crestez (2):
>   dt-bindings: clock: imx8m: Add GIC clock
>   clk: imx8m: Add GIC clock
> 
>  drivers/clk/imx/clk-imx8mm.c             | 4 ++++
>  drivers/clk/imx/clk-imx8mq.c             | 4 ++++
>  include/dt-bindings/clock/imx8mm-clock.h | 4 +++-
>  include/dt-bindings/clock/imx8mq-clock.h | 4 +++-
>  4 files changed, 14 insertions(+), 2 deletions(-)
> 
> -- 
> 2.17.1
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
