Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5229012658
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 04:39:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=05mHn0L72+AT8+9lszyQYRTmAZdJZO07BhrcCHzT/3w=; b=eub1wwZyaTilpU
	o/pV4d7MzdvD9PVBWmVZSSlT4TEdNOp72LFbZy6klX3gIu00c/XE3t3Vp8C/prL1XJ5499xkNRIgx
	dmqd7TI/kBIHXEFNsCBfAr0ePgjTYnqR7Ipgv5jHbA0jH+qfGou6B7ryfpCdKsdqXjZRLG+I/GDjP
	0UshBudK2TO6VQYU7o8kiqe0df5flCwXEoVUMnz/faptEuP/f7e6HMjc5WXE1LjNv+Cdt/a1pNGr0
	AIeU/BeaP86ZtJqMt2iDfSmXOXyfohMoH4QwNbG16TUy92cX8BH3EMKMbjF8AqyA0XMgQ0a6Q5d8/
	wuuwassVX8rz1XxHXV8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMO6E-0008RP-24; Fri, 03 May 2019 02:38:58 +0000
Received: from mail-db3eur04on0616.outbound.protection.outlook.com
 ([2a01:111:f400:fe0c::616]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMO66-0008Qs-0e
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 02:38:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9DyR/VMc79T8e3vsOSHIHHZjnGjwQBVNynW38hDDuKo=;
 b=vpGZDjDnH4k6EZkhCURC6u5n6nbphTA2oYpA+h+QQJtgkFpyVSlWkx4PkrlMo6HoOctygTZk/pKPx0V2Yyso8ZHQ5eLNBbaym/k2UFkoeFd+9VXId8bqhC36JekJBXIwUNUpGHEgYIs2V7wLRPZUCp+OJ9HKSVkw1nuuYKlAKMk=
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com (52.134.92.158) by
 AM0PR04MB5588.eurprd04.prod.outlook.com (20.178.119.146) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.11; Fri, 3 May 2019 02:38:35 +0000
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::c415:3cab:a042:2e13]) by AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::c415:3cab:a042:2e13%6]) with mapi id 15.20.1856.008; Fri, 3 May 2019
 02:38:35 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Stephen Boyd <sboyd@kernel.org>, "festevam@gmail.com"
 <festevam@gmail.com>, "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-clk@vger.kernel.org"
 <linux-clk@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "mturquette@baylibre.com"
 <mturquette@baylibre.com>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, 
 "shawnguo@kernel.org" <shawnguo@kernel.org>, Anson Huang
 <anson.huang@nxp.com>
Subject: RE: [PATCH V2] clk: imx: pllv4: add fractional-N pll support
Thread-Topic: [PATCH V2] clk: imx: pllv4: add fractional-N pll support
Thread-Index: AQHU/u+rfzNhsf6HmUqZui5Dk6oOlaZWxBSAgAHvysA=
Date: Fri, 3 May 2019 02:38:34 +0000
Message-ID: <AM0PR04MB4211B63333AB7C50497AE17680350@AM0PR04MB4211.eurprd04.prod.outlook.com>
References: <1556585557-28795-1-git-send-email-Anson.Huang@nxp.com>
 <155674445915.200842.2835083854881674143@swboyd.mtv.corp.google.com>
In-Reply-To: <155674445915.200842.2835083854881674143@swboyd.mtv.corp.google.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [101.93.238.110]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f61156a8-36f4-46d9-aed9-08d6cf707083
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB5588; 
x-ms-traffictypediagnostic: AM0PR04MB5588:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <AM0PR04MB5588A574C15F7AAFE8C7575B80350@AM0PR04MB5588.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 0026334A56
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(136003)(366004)(346002)(376002)(39860400002)(189003)(199004)(256004)(478600001)(6436002)(966005)(11346002)(14454004)(66946007)(446003)(66066001)(55016002)(6306002)(110136005)(316002)(476003)(66476007)(66556008)(64756008)(33656002)(99286004)(9686003)(53936002)(66446008)(3846002)(6116002)(81156014)(8676002)(8936002)(81166006)(76116006)(6246003)(229853002)(68736007)(44832011)(73956011)(2501003)(7696005)(76176011)(2906002)(305945005)(4326008)(486006)(102836004)(6636002)(6506007)(25786009)(52536014)(5660300002)(7736002)(186003)(4744005)(26005)(2201001)(71200400001)(74316002)(86362001)(71190400001)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5588;
 H:AM0PR04MB4211.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: H1ewNlVAy4FDmQSMOq09xIwokzf0cl4onzDU/53npU7PzNc5irxJSpc01V5j0ni1FbMERiSxYSoUVrDYha8d//S1Heo5fEeXW8swYDHW60s7FMOgbx4ArGbi57M6jouHdzxGaytBX9pL9OvaqNuVSuRtq6DtTuGcH0yx4WkrLYT8YFpVZ2c6wMpdwIVVaM/jy9xRg5ufREHE7Jg+aRnv8LORogHt+22c+9H55UHv7H30tqO9rpwJP4Q72bpqH/EEWYWtj1HB9veFebFut4n5kRdxd2asXWo6Ly2Kn5H6rQGLsUwr4prf1ISHGnCiLq04ersZJQSqy10gKATahOzBGH5YO7LMoks8KbmxxHMadzuHeDmCgTXQ1OHAGT3UUsz46fahEi3plz5heBfPupgyGSIB1GSYIvO/Q9QHBXC9O0M=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f61156a8-36f4-46d9-aed9-08d6cf707083
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 May 2019 02:38:34.8869 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5588
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_193850_224849_87C26BDC 
X-CRM114-Status: GOOD (  11.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0c:0:0:0:616 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

> From: Stephen Boyd [mailto:sboyd@kernel.org]
> Sent: Thursday, May 2, 2019 5:01 AM
> 
> The Content-transfer-encoding header is still base64. I guess it can't be fixed.
> 

How can we know it's base64?
As I saw from the 'Headers' in patchwork, it's:
"Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit"
https://patchwork.kernel.org/patch/10922657/

We'd like to fix it this.

Regards
Dong Aisheng

> Quoting Anson Huang (2019-04-29 17:57:22)
> > The pllv4 supports fractional-N function, the formula is:
> >
> > PLL output freq = input * (mult + num/denom),
> >
> > This patch adds fractional-N function support, including clock round
> > rate, calculate rate and set rate, with this patch, the clock rate of
> > APLL in clock tree is more accurate than before:
> >
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
