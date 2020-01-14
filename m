Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB12A139EA4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 01:57:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jszN9kUYz+CezcPLGEKD8I6wSp+WjOoJ88wIeZKQEXE=; b=tMg1zAdLTLaGEv
	YUbf3fnnmaVBPMqVYP5yzyGaqVWMS4F76h06ff1C4Ds5Nq1dSyhnYFIXEDDhoPThQtZ5qwBtoPxCO
	XYMkj5Zgnw2zSe7oFXZDwhpVmpBHJAnlSepLTRxrEzLqP0kiN+sbdFfG7fxJMnE8CtiiSO2uYXVSU
	ORuVlKU39lCzm1uHybHkTJrmFbdZ43oby490ZJcLI3E592OPh7no4eajMYpwQbSkPwH44VAz1siw8
	pCrEgj3eYmga55V4ss8UWbw3ciRLk7drFZDZS27jlnYNfsVAMWDuyPHtIonI1V01+HM7xmF96D1Tb
	shY1bD5g8mAyz7wYc51Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irAWB-0001Hi-MM; Tue, 14 Jan 2020 00:57:15 +0000
Received: from mail-eopbgr20040.outbound.protection.outlook.com ([40.107.2.40]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irAW2-0001Gz-W5
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 00:57:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QzJgm49MshEW0egw+Q9Jt190XGTlnAVW9KlpuP4n84lga3vsQ88p1iUgiEOBLfCft13N6WXA+Nfl2yU5svp/ajgXxpEFXUYLS2pxaIxV+gkyTUIkt21cd+5pQnnmrTa83cFb2NAd/oheysah6bJPyz1HXMsl35dxeJaVMhWD8Z6TkB1DcRjB4ONdSt3pQuVqPhbMbG5ksDDqOUeoEW4OyxjK+0/tJyQV1/HPgmOombln06aLgmhlGwOZo/HCRwWfwM1WD7fzkhk26egf1qcDoajvkgFdS/9Wksl79w8y3SiUDKpghRsypTAwrIwLiYPhPVrfdVJwOwcB52f5XuS7Sg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TcGIBz/db69OYXmirLcCGh6Pw5Tk43KXUKpR/bTbRsg=;
 b=U5CNUjKR2JigTneFRcGIAuVFJ3CmsujtUwZXHr4cLlfBbjlz8uh92HBFMBKM1El6/Bf+kSpinGy5J09SBiHAcMQBfshJNX4hfi6L02QYlhynxjIDxtOuJLuQEHmEKXtD7zSV4ym+lchT/5pA74wSN5YMFEWP4NSYRAOrNwDKu09S6a0DO0oSCSfds6OWDMAPY+rPH5oqX1eJD2jYb3gmpQ5MJZEMcHC15U9Qhvxn1vaKep2sdq5iVsTEkKqAhwWZ/JZIc3JMSp0z6P44zejpfmJLaf9T80xpaivbZJCwLBSyKjCd3+tHjzX1X9L4ZYTHYF1AoFCPkUjNX+WdA7mNGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TcGIBz/db69OYXmirLcCGh6Pw5Tk43KXUKpR/bTbRsg=;
 b=e0MTToNQb6kuSxE7giaHmMmsgPhTUcGOo/0ddvATG/n+KIWhCWj4kwHvxIyACTScf3zSFNhjrqXkhbLqxI0HVS/OLVKyQigaFzhpjvFG9ML/3Z2pkqqVj2Go5wViQpMd7bxJqPCraKMixIaaw9md5I1VbNb5bCr26hkp1rTyAR4=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4515.eurprd04.prod.outlook.com (52.135.148.153) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.10; Tue, 14 Jan 2020 00:41:18 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2623.015; Tue, 14 Jan 2020
 00:41:18 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Leonard Crestez <leonard.crestez@nxp.com>, Shawn Guo
 <shawnguo@kernel.org>, Abel Vesa <abel.vesa@nxp.com>
Subject: RE: [PATCH] clk: imx: Fix imx8m_clk_hw_composite_core flags
Thread-Topic: [PATCH] clk: imx: Fix imx8m_clk_hw_composite_core flags
Thread-Index: AQHVymsgxSNPh4gp0UOGSwdBPHiohqfpUaiQ
Date: Tue, 14 Jan 2020 00:41:17 +0000
Message-ID: <AM0PR04MB4481E14B1E82DE106F6D579188340@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <7d118c8ad52e87a7cadb438097fcdfbeeb822dd7.1578958643.git.leonard.crestez@nxp.com>
In-Reply-To: <7d118c8ad52e87a7cadb438097fcdfbeeb822dd7.1578958643.git.leonard.crestez@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 0dfbd3d0-d923-4b88-95b1-08d7988a780e
x-ms-traffictypediagnostic: AM0PR04MB4515:|AM0PR04MB4515:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB4515F27513F187553EBF5A7488340@AM0PR04MB4515.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 028256169F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(136003)(396003)(366004)(346002)(376002)(199004)(189003)(186003)(44832011)(33656002)(4326008)(26005)(6506007)(7696005)(478600001)(86362001)(8676002)(81156014)(81166006)(71200400001)(316002)(110136005)(55016002)(5660300002)(9686003)(64756008)(8936002)(2906002)(54906003)(76116006)(66556008)(66476007)(66946007)(52536014)(6636002)(66446008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4515;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GrZc9GOXp95dOuglAlhzyON7alkZYfwq7wGa+gltOOicqVfgbhWq4rRHbaq0pfPhahv1xdJSPJmNy286llZZqknToZO+dVGBiUHX8iOW/DiqjIv3uyvZaWv7v+XdgKxbF2LgXHt0pcQN6dT4PcXuj2XB0Ki9bnFZ7P6NKzqcKXyL4OITusyXeccZKy0CNcFxsHK/Xuj/7+jHYdxXD3aO3DMc2etRDSSWiSCJWbEB8SfRHpvUHMK2+cRHpSmCwcwctW/o2ALGOf7smbx5Zy/eUL1Nn48U/d1xAiYoem2X7tsk+MOeGWjjqOPpXoQMl6YDrvhUTCzdCA1/9BPSznBiviaez4IrP5+PCdUZsCDjZLUfmHn0Qaqnc8IxQUhCO+UAmtimrwHUaw3GTmeXZ2nBFpfuALGTu3HnPPf/xQA7JKyYVH9EkdRek7J6gyzxHaBD
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0dfbd3d0-d923-4b88-95b1-08d7988a780e
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jan 2020 00:41:17.7728 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 889SggpDWVud6hP0HbOzXie1LOIGvZXVocicKECqzhaeVOHHOKhZDklK3ejTfPRdieXe54mpqOHKXrEi5d1YIw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4515
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_165707_037457_A037EA3A 
X-CRM114-Status: GOOD (  13.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.40 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Anson Huang <anson.huang@nxp.com>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Marco Felsch <m.felsch@pengutronix.de>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


> Subject: [PATCH] clk: imx: Fix imx8m_clk_hw_composite_core flags
> 
> Just like other imx8m composites the "core" slice needs the
> CLK_SET_RATE_NO_REPARENT and CLK_OPS_PARENT_ENABLE flags. It is not
> clear why they were omitted.
> 
> In particular without the CLK_OPS_PARENT_ENABLE flag the system can hang
> when attempting to disable a clock whose parent is disabled. This current
> happens for arm_m4_div on imx8mm-evk, breaking boot.
> 
> Fixes: 5fcdb45497a0 ("clk: imx: composite-8m: add
> imx8m_clk_hw_composite_core")
> 
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>

My bad. Thanks for the fix.

Reviewed-by: Peng Fan <peng.fan@nxp.com>

> 
> ---
> Since this is a very recent breakage (just next-20200113) the fix should
> probably be squashed.
> 
>  drivers/clk/imx/clk.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h index
> cd2a60c10a71..17a66a4290fb 100644
> --- a/drivers/clk/imx/clk.h
> +++ b/drivers/clk/imx/clk.h
> @@ -487,11 +487,11 @@ struct clk_hw
> *imx8m_clk_hw_composite_flags(const char *name,
>  					    unsigned long flags);
> 
>  #define imx8m_clk_hw_composite_core(name, parent_names, reg)	\
>  	imx8m_clk_hw_composite_flags(name, parent_names, \
>  			ARRAY_SIZE(parent_names), reg, \
> -			IMX_COMPOSITE_CORE, 0)
> +			IMX_COMPOSITE_CORE, CLK_SET_RATE_NO_REPARENT |
> +CLK_OPS_PARENT_ENABLE)
> 
>  #define imx8m_clk_composite_flags(name, parent_names, num_parents,
> reg, \
>  				  flags) \
>  	to_clk(imx8m_clk_hw_composite_flags(name, parent_names, \
>  				num_parents, reg, 0, flags))
> --
> 2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
