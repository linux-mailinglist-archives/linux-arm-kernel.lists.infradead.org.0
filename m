Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 939F14FB3D
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Jun 2019 13:20:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hLFmApQfDmnlTNoXSnDTnzCgntFzM2d7WQaETXv2MX8=; b=a5lg9kz6YtMpSo
	oC6vs9JOeTdKT59z5JcBjqK8oDanUdDE+Yz4IiWPE6QGkLAMzy0gCs1QjTI5TXl+q4NwXPOY2YGS2
	miwenu1vTZ4V16b76DbkYNW3YJKUCRZASgaQUjQ5yArH9n8+9sCDTwsEcqJNVDrmS+vmDsn4QuNL4
	f5x1fJGQzveJBWeoeI0LfgV6rLG++nfPfb7ZafuyGclm6pTjVCv2JKUwH047ulD0x/6c6nqekt14H
	R9RbrB4GdFlp4qbQSAt3MnIuWxLWRzM7XAAC2My6+WdBsYqBHpVw+EdmPJ17im1F5T9KikBKnU5el
	L7/sD5V1W/zj1Q6KjiIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hf0YH-0005jx-Ry; Sun, 23 Jun 2019 11:20:53 +0000
Received: from mail-eopbgr130080.outbound.protection.outlook.com
 ([40.107.13.80] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hf0Y5-0005ix-Dq
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Jun 2019 11:20:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NllZTFARPBiLY5Ad+Gn0ez9Ow5idh95H78uOc3HLrG4=;
 b=VZ1oHWJZDm0K6Yel+lNvz179U9+FfZv2wzp22DJcbwKfV74qd7QBqIl03hRL5Pu1q2+jd/V5lDuh02WyuK5IgHKnxBjtlv5b8gDgdcSgLKRYE1wVeOYzhd/CMYEpaWHEaSp3WvptQLTDU0f/fe0LpgWeRvQtiNj3RGlD8DuQqsk=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3899.eurprd04.prod.outlook.com (52.134.71.154) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.16; Sun, 23 Jun 2019 11:20:35 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3945:fcda:5bdd:8191]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3945:fcda:5bdd:8191%4]) with mapi id 15.20.2008.014; Sun, 23 Jun 2019
 11:20:34 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Martin Kepplinger <martink@posteo.de>, "catalin.marinas@arm.com"
 <catalin.marinas@arm.com>, "will@kernel.org" <will@kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>, "sboyd@kernel.org"
 <sboyd@kernel.org>, Leonard Crestez <leonard.crestez@nxp.com>, Aisheng Dong
 <aisheng.dong@nxp.com>, Jacky Bai <ping.bai@nxp.com>, Daniel Baluta
 <daniel.baluta@nxp.com>, Peng Fan <peng.fan@nxp.com>, Abel Vesa
 <abel.vesa@nxp.com>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-clk@vger.kernel.org"
 <linux-clk@vger.kernel.org>
Subject: RE: [PATCH 4/4] arm64: dts: imx8mm: Add system counter node
Thread-Topic: [PATCH 4/4] arm64: dts: imx8mm: Add system counter node
Thread-Index: AQHVJ/+/0SOBOWGUd0q/sAmaJpF3+6anlvCAgAGD/jA=
Date: Sun, 23 Jun 2019 11:20:34 +0000
Message-ID: <DB3PR0402MB39164587E2F6F56DBB47BCE2F5E10@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <20190621070720.12395-1-Anson.Huang@nxp.com>
 <20190621070720.12395-4-Anson.Huang@nxp.com>
 <9f411a1c-50d2-e26b-a4e6-83e02b626378@posteo.de>
In-Reply-To: <9f411a1c-50d2-e26b-a4e6-83e02b626378@posteo.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8feae21b-1f88-4472-bac9-08d6f7cccfa9
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3899; 
x-ms-traffictypediagnostic: DB3PR0402MB3899:
x-microsoft-antispam-prvs: <DB3PR0402MB38996365D3EBF2A84A5120C1F5E10@DB3PR0402MB3899.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3968;
x-forefront-prvs: 00770C4423
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(346002)(39860400002)(396003)(366004)(136003)(13464003)(199004)(189003)(6506007)(53546011)(66476007)(2501003)(3846002)(68736007)(52536014)(446003)(11346002)(6116002)(6436002)(76176011)(256004)(476003)(2906002)(5660300002)(99286004)(110136005)(25786009)(7696005)(186003)(66066001)(71200400001)(55016002)(6246003)(71190400001)(229853002)(66946007)(305945005)(102836004)(33656002)(53936002)(8936002)(26005)(9686003)(73956011)(44832011)(316002)(8676002)(66556008)(7736002)(7416002)(14454004)(76116006)(4326008)(486006)(74316002)(478600001)(86362001)(81156014)(2201001)(81166006)(66446008)(64756008)(32563001)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3899;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: NxgQWbB5WrEz7EaW/3PVZ3s9P2bwHnvQURvM5Itr8NOAtmo0X9hCMDtsuYmGBUa1cg8YJTDYbMy5dV6MkAyKWFkDuYjk812RM8kaT3qUcp6WmAkVQvNP04aXUzCfBM3RcpVllZlZWyxraSSNPF3vb2Y9eUm6kumyfVDayadeUygVPWDzwRkvFPWJpM8MXxWBb4rQsXoLfPtBxIOB2y9CFwJ0DaSLpBBYGvm6HMTvNBtHCwVDYNTONiIPopV+hvidbew8fCztY4qSLOBX+197iegyGMVgYrEqj7dqBm/efcTNo/JRWkldVTNfgx4CkAfiY2FBx7jfEmw+qwEvv+TfFT0t35PT/a9F7R29wlNB5LXwMdsMFgW4SGzvg8+EskKqZzVIHlIkzowLEJD8yNOYr9pnZk/6RKr3K98KlK/tvpI=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8feae21b-1f88-4472-bac9-08d6f7cccfa9
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jun 2019 11:20:34.8050 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: anson.huang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3899
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_042041_569245_FE3915BD 
X-CRM114-Status: UNSURE (   9.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.80 listed in list.dnswl.org]
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Martin

> -----Original Message-----
> From: Martin Kepplinger <martink@posteo.de>
> Sent: Saturday, June 22, 2019 8:10 PM
> To: Anson Huang <anson.huang@nxp.com>; catalin.marinas@arm.com;
> will@kernel.org; robh+dt@kernel.org; mark.rutland@arm.com;
> shawnguo@kernel.org; s.hauer@pengutronix.de; kernel@pengutronix.de;
> festevam@gmail.com; mturquette@baylibre.com; sboyd@kernel.org;
> Leonard Crestez <leonard.crestez@nxp.com>; Aisheng Dong
> <aisheng.dong@nxp.com>; Jacky Bai <ping.bai@nxp.com>; Daniel Baluta
> <daniel.baluta@nxp.com>; Peng Fan <peng.fan@nxp.com>; Abel Vesa
> <abel.vesa@nxp.com>; linux-arm-kernel@lists.infradead.org; linux-
> kernel@vger.kernel.org; devicetree@vger.kernel.org; linux-
> clk@vger.kernel.org
> Cc: dl-linux-imx <linux-imx@nxp.com>
> Subject: Re: [PATCH 4/4] arm64: dts: imx8mm: Add system counter node
> 
> On 21.06.19 09:07, Anson.Huang@nxp.com wrote:
> > From: Anson Huang <Anson.Huang@nxp.com>
> >
> > Add i.MX8MM system counter node to enable timer-imx-sysctr broadcast
> > timer driver.
> >
> 
> 
> do we need similar additions to imx8mq? If so, I think these would fit in here
> too.

i.MX8MQ has something different about system counter driver enablement, I did
it in another patch series.

Anson.

> 
> thanks,
>                                 martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
