Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49B6EAC0A5
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 21:37:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=ozAFzRuU4f8aOekURKH7WRsFwhUKJ7dF9Z3qH5L6990=; b=Y9YEnQIsIE9pms
	//3gu3bJ1lDTZKfayLZUmpkrm1hp2o23FUe1Q4FG3VCmkPoOk0lPF5K+hfIFkg3Z4fa8aVt2Rrq/H
	QlOi5RimQGiq/lp580zzrzhev4r6tke15nSFv2V4bdfgy4IcQUh1URVCe7qcYXGZ2lBeQczBL53Yk
	TsvjgB/XPTCx+f6WxfSrorb2gmXu98x6gqOp+YdWYu/8qLtH+I/83MHaLu0bIJwNVmmzc8aB4h9bQ
	5a9BHtjfh4vEewxBUGdNyDkrLyKvThgcqL5CDg3l6R4kpQSggF8zEGhp+Ri4sdglNRFYSRbjt2kUn
	1alEUosBLz17O8wzLPPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6K2l-00005T-N3; Fri, 06 Sep 2019 19:37:15 +0000
Received: from mail-eopbgr20047.outbound.protection.outlook.com ([40.107.2.47]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6K2c-000059-58
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 19:37:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=O+rZs6HD7tTTkh7V/8Px0/uwCIbk6Nc0PBnJUWaSsP0PNHXIS31u2PpOcA2j9FD+2SqUVH4uEkOFqNCoA2B71thPL2pY0SKGWfYg43jIA+6uRg78A3yw0IRCMsb7rWnnN7UbsEsrdw4KHv6tdJXQx335EvruExXj/+BchXEIzIq3eeT4BHe9Wvd+i7/8gnJpH6kkfhnBECjaBDqFo/rqv9dTcOlBnlejTNOX4Is9cXGGkZe48BeYksS70Bg1sKE8Mbe8j1hU8ywZvyVVkwqSHB3DUysiGyFwgMiLrX0BfyZlo5x6BaKh7Cr3JdAsIwaIzdEv5feSWG3xpsDyrp8Dpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ljIEUsl9YYDvUzn3h/FkX32GvUboR1Ii0V0gti1Tr4s=;
 b=MhvMSdfaF0MIj4kDQCmgp2EOTu2y/LY9FULmM+qoGWHrDXmt/EDuouUSdooeTB87SvIhbSOtoIEq1javbIa3JR7pDPC1qonbnu79RmKZYvyWhZQZsEx4WnX4fTJWXa47cvFSO7hKlWMO1XR4/o5BqtjHdxwsu9zLaXtJAJrKJrIccpHlJY48MRYw5oSafMXDVsmnV1IhpGp3LYdIwwPPlsMEDylN250oQ8dTK2rN9NQ/oKBKvNydSjO9Pu2AcO2muTRktp74a2Vk8e0YNdabI/30gd+dIUIF6L/oejP35Op+I0MkBF9ZQHEcM3Qci2Szka3O6y0KCJC9+iuFbV7Zog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ljIEUsl9YYDvUzn3h/FkX32GvUboR1Ii0V0gti1Tr4s=;
 b=qOPY++TA4btOfKxl/tD/HRDq67EXAYYQwm6J1ICqHbLL50c70RMUOVVVB7d/WTorcDOPbY13q+P+81M/SJm5IDJTsZocIGGW6KFgLb/Y6QQsVEmvrDAUnRlLeUo4qBAZ8wrreu+sRiaei69o57mZsydhQg0mqYywCfHmoyJLITo=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB5312.eurprd04.prod.outlook.com (20.177.52.13) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2220.18; Fri, 6 Sep 2019 19:36:47 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::c5e8:90f8:da97:947e]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::c5e8:90f8:da97:947e%3]) with mapi id 15.20.2241.018; Fri, 6 Sep 2019
 19:36:47 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Stephen Boyd <sboyd@kernel.org>, Peng Fan <peng.fan@nxp.com>, Shawn Guo
 <shawnguo@kernel.org>, Daniel Baluta <daniel.baluta@nxp.com>
Subject: Re: [PATCH] clk: imx: pll14xx: Fix quick switch of S/K parameter
Thread-Topic: [PATCH] clk: imx: pll14xx: Fix quick switch of S/K parameter
Thread-Index: AQHVYwYI+hx87JSvwEWGyvesxHdlQw==
Date: Fri, 6 Sep 2019 19:36:47 +0000
Message-ID: <VI1PR04MB70239D5AA9604E72E74CD555EEBA0@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <c3e86b5a832a14278e8ba670d51defc70ee78d84.1567590349.git.leonard.crestez@nxp.com>
 <20190906172452.D1ED620838@mail.kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c8a76b9a-08b7-4fc6-cae0-08d733018e6d
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB5312; 
x-ms-traffictypediagnostic: VI1PR04MB5312:|VI1PR04MB5312:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB5312D213AD9EF6FF3CECBF94EEBA0@VI1PR04MB5312.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0152EBA40F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(39860400002)(366004)(346002)(376002)(136003)(199004)(189003)(7696005)(74316002)(305945005)(7736002)(8676002)(81156014)(81166006)(14454004)(478600001)(316002)(99286004)(8936002)(54906003)(110136005)(76116006)(91956017)(66946007)(66476007)(66556008)(64756008)(66446008)(33656002)(86362001)(486006)(44832011)(446003)(476003)(6506007)(53546011)(76176011)(102836004)(186003)(26005)(229853002)(6636002)(5660300002)(2906002)(25786009)(6436002)(256004)(66066001)(4326008)(53936002)(52536014)(55016002)(71200400001)(6246003)(9686003)(3846002)(71190400001)(6116002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5312;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: qtmxDXyIepOZDzzki6eqyyNf/YURy0IsQcNBfIrAxtYUGm+tC4CH0DwFBvxOEfGrqV2cDCN6KOQS5NgojVapGWxSCGUGW65aNsPHU77CnRkFJ8bZYMgYRIOb+DQR6zhU6K/QG2fSnlesrSuvOWRf7gFjKG8idVZEqFK01ubUHkgvx8FshtK6/nPJnB+MosdfDLiqLxTtPFmhiDLlBW3MTi2qR5laQ8Gzu083yGNnikYnfUpm9ahsW529/SftGtbyXlfw1RfOZSM9KPRnvQiUtTsKSzNtZhij7wrcEw6PC7eYx2vODEcE54q7Tr69PH+3rYAnZ5BfEU7N7OH6I1+zWaN1lMZCnNQ2OqMONWy3ZX7pZgZ6BdfLkXv3DxT7s5SQnqKgBrMvAwtz9aB7pHTENKf6guFzt2bkkB+8BxvCxME=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c8a76b9a-08b7-4fc6-cae0-08d733018e6d
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Sep 2019 19:36:47.1276 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0Gw0Y+ZYiKVEBcjlKhW2Xp3b+HS8QCvhwjX/YadElmI3kGcLMhm5F9mGhD4j8WGaA85uiosfy83hO1yncanciA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5312
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_123706_202962_7B253573 
X-CRM114-Status: UNSURE (   9.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.47 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 Michael Turquette <mturquette@baylibre.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Viorel Suman <viorel.suman@nxp.com>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Abel Vesa <abel.vesa@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 06.09.2019 20:24, Stephen Boyd wrote:
> Quoting Leonard Crestez (2019-09-04 02:49:18)
>> The PLL14xx on imx8m can change the S and K parameter without requiring
>> a reset and relock of the whole PLL.
>>
>> Fix clk_pll144xx_mp_change register reading and use it for pll1443 as
>> well since no reset+relock is required on K changes either.
>>
>> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
>> ---
>>   drivers/clk/imx/clk-pll14xx.c | 40 +++++++----------------------------
>>   1 file changed, 8 insertions(+), 32 deletions(-)
>>
>> The PLLs are currently table-based and none of the entries differ only
>> in S/K so further work would be required to make use of this. The
>> prospective user is audio doing tiny freq adjustments and there is no
>> standard API for that.
> 
> sub-Hz adjustments?

Maybe at the audio level? The PLL itself runs at ~400Mhz so wouldn't 
need sub-hz adjustment.

My understanding is that adjustments would be made based on an external 
clock so if CLK framework rounds to 1hz then it would just take longer 
for adjustment to kick in.

>> Lacking users is not a good reason to carry broken code around.
> 
> Maybe add a Fixes tag so if anyone wants to use it in LTS kernels there
> might be a chance that they'll find this patch mention code they're
> using.

It doesn't meet stable kernel rules because it doesn't "fix a real bug 
that bothers people" but it's still technically a fix:

Fixes: 8646d4dcc7fb ("clk: imx: Add PLLs driver for imx8mm soc")

--
Regards,
Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
