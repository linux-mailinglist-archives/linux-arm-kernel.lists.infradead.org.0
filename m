Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77E86E2883
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 04:58:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jnN66ulN1t55DROnoDbgM4Pj8pr03ZQM11bLOWz1rug=; b=BF8fpr9A47IklC
	vdtXPRj3xnegygtm64K4L5Z8IJobuxc42pL3XjyfozoNh9zbUMRGYz5bBmXYVRlq81sDwx+SBaNsV
	Fh7uDlF6K9pIh+P/cvn0bXgc02fJHcsGNns1h4QOZ3G2uJAuNh1M5P1fMM+FQCwQkn6doJF/xU5jR
	WYiOHOLm6im4D8c+VPPLexIVUVYLa+KycjRY8cYUkrLkJVIJheC8ll8OPnxwFP9GgeixMTb2OZ2ag
	nY6idzc46p+KQdUX5Yz4Vf1X5fZbQsoz3NmY/LJpRAvcYA5j848VoHrBj4VkRROZlDa9Iq4taAjt0
	2jMtFASxnpfnh7/+9Jqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNTKS-0001fz-QA; Thu, 24 Oct 2019 02:58:24 +0000
Received: from mail-eopbgr40062.outbound.protection.outlook.com ([40.107.4.62]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNTJp-0001Qw-Os
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 02:57:47 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Y+2PMbsYoa2PaQ4tjm3oIYf5wp3CyyFDDDS4Y3wAxf8WcJkb7yy9W29PqAmD4mBWwp+RELd49cCAROpYVToKJ0gDBMvkMvonfa9LUXfU/VO3UdMtbcQ1j+DOXhqKq2mqiVkiZ31IC16o0WsKqTh+3bqiVnUFVA6THG6WNhW6v5gBsCSBK7F5wr3DSD7z5CeZxGW2O9HigTbWgzPZT5E2th+rxcHYWNMYfvTxJrwmTBRbu/A4qN7w/vReKd86KtUlQuNue384NcaAmWIkeRnHUev5bYjGfqWWmqWq352iMS9C46EWoNRia7/Uaj70L9n2pBdVj6EhVs5TZzIIgYvxHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8s/3rRA6QxN2yzgRix40R1LkLzzlsXwcMY7YwLaVTgU=;
 b=IE240OiFl6HavstcYnuC5gTN4GbQPsy1ozRSU0o3ol0vPbnu2GF8re6IJu7UoZOlHXmCbObyLMsVVnhAluep0Sm9wuy/l9Xk2Z1P4mrU4BbHf1zl84eU67TIlZfWuCbzND26tICzED2OskS7g0YtO+nFqUh7TOMYFiBMr5yqx9I08Y8xTrjPib6mkS87EtqPYt59We1DNF6oSxKmGib4CVzH7zH51GHTr4Ol3yG6GGCOkm+NHw566ZovYVI6zOq5BO3YrY0n2py+98kvfeaD5FOv5i98wAlhZPlqs8dBzagEx+XNV7jD2zB3dbzZL2M99y0toqOgxS4USFzPGuQ4DA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8s/3rRA6QxN2yzgRix40R1LkLzzlsXwcMY7YwLaVTgU=;
 b=ARWIyfCNeiAv68gCyAzkEP38HMm7IMyD/5bBSWFNQ9rIt2LvPw/iOkmd6IYV4pfWUxv6UXepDv+fUtHOinp2os2czCRxidK31YgSJpFS0atVeN793CCNz7x3818MiZOAU9aE64h+1MbvQpF3VVs5b8C/Pb3MtPVYVI8k4PxGTXE=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4372.eurprd04.prod.outlook.com (52.135.149.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.22; Thu, 24 Oct 2019 02:57:38 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::843c:e722:27cb:74e1]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::843c:e722:27cb:74e1%5]) with mapi id 15.20.2347.030; Thu, 24 Oct 2019
 02:57:38 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "mturquette@baylibre.com" <mturquette@baylibre.com>, "sboyd@kernel.org"
 <sboyd@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>
Subject: RE: [PATCH 0/3] clk: imx: imx6x: use imx_obtain_fixed_clk_hw
Thread-Topic: [PATCH 0/3] clk: imx: imx6x: use imx_obtain_fixed_clk_hw
Thread-Index: AQHVihMHWm1jS7cCrE+ghlbtE9L0L6dpGVLg
Date: Thu, 24 Oct 2019 02:57:38 +0000
Message-ID: <AM0PR04MB4481226E209D2851DA1FCFA0886A0@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1571884049-29263-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1571884049-29263-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 2f7ca6b2-029b-43fc-7f67-08d7582dee10
x-ms-traffictypediagnostic: AM0PR04MB4372:|AM0PR04MB4372:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB43729DD765FFF33C8BADF183886A0@AM0PR04MB4372.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-forefront-prvs: 0200DDA8BE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(366004)(376002)(136003)(39860400002)(346002)(199004)(189003)(64756008)(66946007)(66476007)(66556008)(52536014)(66446008)(4744005)(8676002)(8936002)(81156014)(76116006)(305945005)(74316002)(66066001)(7736002)(2501003)(2201001)(81166006)(54906003)(99286004)(86362001)(186003)(33656002)(5660300002)(14454004)(76176011)(316002)(7696005)(6506007)(26005)(102836004)(256004)(9686003)(6436002)(71190400001)(71200400001)(110136005)(446003)(11346002)(229853002)(25786009)(55016002)(486006)(44832011)(4326008)(476003)(2906002)(6246003)(478600001)(6116002)(3846002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4372;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: XWpTfRKmVDUbgb/fD242/K103awrfTf1KFnA2YW7WpHUfU9kgpEN9/Fv2BdhVKJIQ/q4bOVp2N57DoXLFIczlEy5sWIhcFLU6wQmH9C5TcdS6py3XsSSd1o1cgJ5qVIzBQU9mr2bw2f3WngBstLkG71iIQxHP1+Y+Bh74n9q3v6DlLijm57ekLsadlxE560pwtSIzlkJ1Gmw/yM+jZZpbGW82Gzd1nwJIO38RdQgFi8jmY6DUuqY5uq5cTTZMHabXz5VjzWQqTwOUQ3BbsLaI6P/CK6Vnt8efCKba7LC00kUMGN00apIIk3H+Fk+B5WAVQVtTmIYCpyPdL0WuB/ggQNnhz7NVPj+Sh+ruEHy2Fc2IN2tGa+ucSJJ8PkP1Jt6salgu6c0su5i0TRYDrW8AvWshq/He2vqygo2qqfGbx5JuFzqcYQAdOfV9RwLDbu/
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2f7ca6b2-029b-43fc-7f67-08d7582dee10
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Oct 2019 02:57:38.6336 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jo9v8yhWANwy/ohM6zboSvfaKVZcuqDhhXhy0oiZzq9N6z8Unc7P3l2iXint6EZCkkPYC3egrF7Cu1bD9bPX7w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4372
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_195745_812378_A876D452 
X-CRM114-Status: UNSURE (   9.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.62 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: [PATCH 0/3] clk: imx: imx6x: use imx_obtain_fixed_clk_hw

Drop this v1, push button early, need a fix for 6ul.

Thanks,
Peng.

> 
> From: Peng Fan <peng.fan@nxp.com>
> 
> This is to use imx_obtain_fixed_clk_hw to replace
> __clk_get_hw(of_clk_get_by_name(node, "name")) to simplify code.
> 
> Peng Fan (3):
>   clk: imx: imx6sll: use imx_obtain_fixed_clk_hw to simplify code
>   clk: imx: imx6sx: use imx_obtain_fixed_clk_hw to simplify code
>   clk: imx: imx6ul: use imx_obtain_fixed_clk_hw to simplify code
> 
>  drivers/clk/imx/clk-imx6sll.c |  8 ++++----  drivers/clk/imx/clk-imx6sx.c
> | 12 ++++++------  drivers/clk/imx/clk-imx6ul.c  |  8 ++++----
>  3 files changed, 14 insertions(+), 14 deletions(-)
> 
> --
> 2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
