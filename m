Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCFC86C5E4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 05:12:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uVfShxoZoB1jZCmC2r/+W+bTcjQhCPbV4P7BqwfRVLI=; b=gM0syyQywozzvg
	Tp03Z/P5zJ3sPI5+P/ncxQuKxrsrjr4qPdUtxJri5ZhK3UtNcAQ31gfiFBrt4FF0nWOpWISJFfoTS
	Kwyf13OSZLD5r9J/ohrbW0FXEb0EOdvemukjS74WBglOuceny2GH3ZD6YO2HQ0xZOw4nixs/dhnH/
	LzT17kNgYm1PlLm2vAz3rd7UnRqLTn4tB3OYLTY1szH9YgHAK/G4km/MOUady/1IZ/H+rCVlz6++9
	MO6B7hFUzPaKeEQ/ZY5ioUogbdtyVA5fFg/GdIEd5yFm2A5CZH8E+Y4Rzf7AdRjvvfslmAKU4vL2O
	rzxI4meQxqTbdy0Ojihw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnwps-0006Lq-EB; Thu, 18 Jul 2019 03:12:00 +0000
Received: from mail-db5eur03on061e.outbound.protection.outlook.com
 ([2a01:111:f400:fe0a::61e]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnwpa-0006LC-HJ
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 03:11:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k8tL5IbbLeN2qYjHtDYkT/7CWpLak68kq2s+Ac9V+Cfrns6dNP7vlXz12H+69T4MRT7X0V51cL43fPvcWoSwQ3nlyaj489hOLWBrMIBdN1pTIn1RZ2xOeupdHoEWhp5AzyxVxdOhwtEikuHfxNTRAxbNlAl4m4nimD17SnD0Yp5+n/qHSkT0Af8OX/0xObeAPXOGeDO+1ZjTRKAmfajXMq/EpK+aUibIPYCE00QBJjfwc8LgMAyt42HC6eKAdVCwoFjx4eNnWMVFOZ2o3oHrJrqNlQUWq+Gj7iB3JMZBK711ISnRNEuVwPLNy1icnT5cDQpQcJtSN31+EhxY1UD7cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yF5wM9BaVnnUInEdaLt++JwvuA9BIlwmSC+Wmwa9F0c=;
 b=afpd+pY1rw9jqfP89maWR2VQICdEC2kWQ5+NuIR31T2sCAJ8dX6gm9W4gxZJHfWaySNcW19uA6qMIaOGMAginHmOo7oWHgAWbWZknbM75KYow7XJ/aUjxE7XU9VvHzpeW9i5JW951FTJPtfd/sQO3cyw07eJ3M3sVVhUsRNkgaWK9gX8VySslQWL9jSVH+wQyfCAL5apIenuXRNBhNnn8+j8R/gU05ARuIZV5O9DJOv44PZtCEIOjMZUELGJuCXeZ1x7EixAbBJeB1dWjoT/U4PaCbYjpu71uA0BdVNZPBoTjYdItL7N20NGOSZbTMxv0+z4tHFyeGxKHL/jRVt0+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yF5wM9BaVnnUInEdaLt++JwvuA9BIlwmSC+Wmwa9F0c=;
 b=PJDCofpmcMXBZvZhQUGb2D/jqKeR6sjV0Fex79pX8+370qzPicUaluPwni1a5nAGvVcu+npC25C0W3BNnetQ+o/gDl13MJrnk/mSiYeTrcyRK1vhqJ/DE9wJAMk9oOdL017siy3aMB9+avVQFYdmb2gGqKrUvVMkTBAj1g2EdCI=
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com (52.134.92.158) by
 AM0PR04MB5619.eurprd04.prod.outlook.com (20.178.119.155) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2073.14; Thu, 18 Jul 2019 03:11:33 +0000
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::7882:51:e491:8431]) by AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::7882:51:e491:8431%7]) with mapi id 15.20.2073.012; Thu, 18 Jul 2019
 03:11:33 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Daniel Baluta <daniel.baluta@nxp.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>
Subject: RE: [PATCH] clk: imx8: Add DSP related clocks
Thread-Topic: [PATCH] clk: imx8: Add DSP related clocks
Thread-Index: AQHVMOmjjQ4zLh0oI0SdOjI+DVS1VabPysGA
Date: Thu, 18 Jul 2019 03:11:33 +0000
Message-ID: <AM0PR04MB4211AA9543908F6302C49B1C80C80@AM0PR04MB4211.eurprd04.prod.outlook.com>
References: <20190702152007.12190-1-daniel.baluta@nxp.com>
In-Reply-To: <20190702152007.12190-1-daniel.baluta@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6346b8e4-2b39-4d4c-1291-08d70b2da35d
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:AM0PR04MB5619; 
x-ms-traffictypediagnostic: AM0PR04MB5619:
x-microsoft-antispam-prvs: <AM0PR04MB5619734D7FD127435FDF7A5080C80@AM0PR04MB5619.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:224;
x-forefront-prvs: 01026E1310
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(366004)(39860400002)(346002)(376002)(136003)(189003)(199004)(53936002)(66066001)(86362001)(71190400001)(71200400001)(6436002)(52536014)(6246003)(7736002)(6506007)(4326008)(66446008)(25786009)(256004)(76116006)(478600001)(486006)(64756008)(7696005)(102836004)(66556008)(66476007)(5660300002)(9686003)(55016002)(44832011)(229853002)(68736007)(66946007)(54906003)(316002)(305945005)(74316002)(11346002)(476003)(558084003)(8676002)(446003)(8936002)(81156014)(81166006)(7416002)(110136005)(6116002)(99286004)(26005)(2906002)(76176011)(3846002)(33656002)(14454004)(2501003)(186003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5619;
 H:AM0PR04MB4211.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 57mZidokdy0qtMq6Ufihv1EsqDhtBO+BefK4HGzHdrovKi6WYwTKW+a2rfXxuNKiz38CGPUizH4NnAhdc+vWfzLl2AXJBVmq0UBJg5fxznqkgBvuJ6W13Vx2dBCh9k9z9MkEUzKahHZrzSCHHhq/8SzgkZsF1esqQLAh46NMUKoL4w9aN4TbXi/al09BdlXkWWNb3rszfs6lKKyuC6HTnXBAL7j4MoI0WlqlelCUoC/00+UUGFOHzCoFf3C1rTX+0JXwZ2IHAym2NGpg3M5XxcDEKYoXnbIXYwO3Zntus8Pe7mbSMysIyR+Zntrbl5rZLf5PIYfGFfyorIo4xwYeEul4nBer3BM9mE+x5LzM/PHdh3wxfDQmI7zdwkAHyaP8FaLaxRApWDDXEfwZGivYvmxZUFhjSMUht7owY0nCpXo=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6346b8e4-2b39-4d4c-1291-08d70b2da35d
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jul 2019 03:11:33.7904 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aisheng.dong@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5619
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_201142_578156_AEC634F5 
X-CRM114-Status: UNSURE (   6.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0a:0:0:0:61e listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "S.j. Wang" <shengjiu.wang@nxp.com>, "sboyd@kernel.org" <sboyd@kernel.org>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "weiyongjun1@huawei.com" <weiyongjun1@huawei.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Daniel Baluta <daniel.baluta@nxp.com>
> Sent: Tuesday, July 2, 2019 11:20 PM
> 
> i.MX8QXP contains Hifi4 DSP. There are four clocks associated with DSP:
>   * dsp_lpcg_core_clk
>   * dsp_lpcg_ipg_clk
>   * dsp_lpcg_adb_aclk
>   * ocram_lpcg_ipg_clk
> 
> Signed-off-by: Daniel Baluta <daniel.baluta@nxp.com>

Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>

Regards
Aisheng
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
