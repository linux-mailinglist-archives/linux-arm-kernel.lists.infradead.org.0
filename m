Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C99265304
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 10:19:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vw9OkGczGtCY+pBsxPI+z0AXpiKVA+hyKhsHQ8HQyAY=; b=t6HT8o6YnzL+B6
	Hu9WhMVWD0gn4K4mgMjOOr+ARUUl49MOtxK+HMS0MCxHTUTMvGwu/ysJ84YXxz9NT0he4yqz295+1
	voyB0pYC7Rds6HMXmr0Wou7cV5VA4rU7Uk7TxboIdUO9NUZqVnkevtiiQCU2ioA7LhD+C7ufK0gHa
	IaYv48tjXEWZ7zT3wHgVAThldWz/IUJQLy00Fv8pLE1bjQmSAcTqSzcawU3a3N9gdL2HgR7ULE7Kc
	805qLSfpIRHd66Px3TqK3zWASichl8YeO5Mgp1qMp60LKNXRCnGIMLGyV3sVqEVhA7FeDcEU7/oB2
	chFx9NS0FPwVb28ne4yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlUIa-0007SV-1d; Thu, 11 Jul 2019 08:19:28 +0000
Received: from mail-ve1eur03on0627.outbound.protection.outlook.com
 ([2a01:111:f400:fe09::627]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlUIK-0007S3-Rk
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 08:19:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hvgKQOx3TQOMnqFyD2o+7crNPLMTxXcy//5zmcmS2vQ=;
 b=TVq+40TBC2nARFt0rUIlhqnp1WxUuetfHry5RHjtLCUKPqPE7J2CLKwJ+Vg5+Rgb0u5UXi7qbpIrTJn4E9aPmOj5xVVB3G7ydH7P31LODwgi/+hKDGLHji3f+xJw4KnHcyFoFBXLogIpEP7ytHxG4+tS/SB8FVCjrxzGlWfK/rQ=
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com (20.178.202.151) by
 AM0PR04MB5042.eurprd04.prod.outlook.com (20.177.41.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2052.18; Thu, 11 Jul 2019 08:19:09 +0000
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::a126:d121:200:367]) by AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::a126:d121:200:367%7]) with mapi id 15.20.2052.022; Thu, 11 Jul 2019
 08:19:09 +0000
From: Abel Vesa <abel.vesa@nxp.com>
To: Anson Huang <anson.huang@nxp.com>
Subject: Re: [PATCH 3/4] clk: imx8mm: Add system counter to clock tree
Thread-Topic: [PATCH 3/4] clk: imx8mm: Add system counter to clock tree
Thread-Index: AQHVJ/++eyD/ffxNeUuXAhbVfUjkiabFMp8A
Date: Thu, 11 Jul 2019 08:19:09 +0000
Message-ID: <20190711081908.ray2pjtigbjaezyc@fsr-ub1664-175>
References: <20190621070720.12395-1-Anson.Huang@nxp.com>
 <20190621070720.12395-3-Anson.Huang@nxp.com>
In-Reply-To: <20190621070720.12395-3-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=abel.vesa@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5d5431ea-9207-4b60-2ca8-08d705d872d0
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB5042; 
x-ms-traffictypediagnostic: AM0PR04MB5042:
x-microsoft-antispam-prvs: <AM0PR04MB50425AC223D7AC8D924927F3F6F30@AM0PR04MB5042.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:337;
x-forefront-prvs: 0095BCF226
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(7916004)(366004)(376002)(396003)(346002)(136003)(39860400002)(189003)(199004)(4326008)(81156014)(81166006)(8676002)(186003)(66066001)(102836004)(26005)(54906003)(8936002)(11346002)(6862004)(71200400001)(446003)(7416002)(229853002)(99286004)(476003)(305945005)(3846002)(71190400001)(7736002)(2906002)(6116002)(486006)(6506007)(53546011)(5660300002)(316002)(25786009)(76176011)(6636002)(53936002)(68736007)(66946007)(86362001)(6512007)(9686003)(478600001)(1076003)(44832011)(33716001)(6246003)(64756008)(66476007)(76116006)(91956017)(14454004)(66556008)(66446008)(256004)(6486002)(6436002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5042;
 H:AM0PR04MB5779.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: rm6YTvqApxJjTFgcSp4Vj8A4skF1vxoxCBpM0HWi1zjXa4zyIsBY1Veg46KNfXqTcPXe2LGOYgShpv9KndG5AkhSI1/h0nJMuRdyc97OIpN9JqZxGojr/2hGahLz17QK+kJBHrjD4SdufZ/GD81NxElf3jLuOF/iK4WEgoL6qOnZW4jbXv9LulsFL0R4BNYJsugKE3kTUT48CyyNSr8IYChl/y+7Q3XoQ/WAsE5XL6zXH2QBVGlxpdcXulbbXhq1syCXZLxkoGJWlKFwnkJM5r7Qn+pMf33Tq0NOAhlTIiQnIKrZZ1Y6etrkazleeaKu6YAGqVgU6/eMxs8UWOX94ZcBHUD5cot2xE0v7Yc50SjMcSU37ae4Rf9dqmYPg5aiwy1sFwgSkU3MdZGCVkgSnZlV+0Zy5A0Z5NwzosyaQ8g=
Content-ID: <5D9D0CDF90B35D4FB3BC742B2D394AB9@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5d5431ea-9207-4b60-2ca8-08d705d872d0
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jul 2019 08:19:09.2305 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: abel.vesa@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5042
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_011912_899963_260D4821 
X-CRM114-Status: GOOD (  12.38  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe09:0:0:0:627 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
 Aisheng Dong <aisheng.dong@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>, Jacky Bai <ping.bai@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "sboyd@kernel.org" <sboyd@kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 Leonard Crestez <leonard.crestez@nxp.com>, "will@kernel.org" <will@kernel.org>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19-06-21 15:07:19, Anson.Huang@nxp.com wrote:
> From: Anson Huang <Anson.Huang@nxp.com>
> 
> i.MX8MM timer-imx-sysctr driver needs system counter clock
> for proper function, add it into clock tree.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Reviewed-by: Abel Vesa <abel.vesa@nxp.com>

> ---
>  drivers/clk/imx/clk-imx8mm.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/clk/imx/clk-imx8mm.c b/drivers/clk/imx/clk-imx8mm.c
> index 43fa9c3..56d53dd 100644
> --- a/drivers/clk/imx/clk-imx8mm.c
> +++ b/drivers/clk/imx/clk-imx8mm.c
> @@ -645,6 +645,8 @@ static int __init imx8mm_clocks_init(struct device_node *ccm_node)
>  	clks[IMX8MM_CLK_DRAM_ALT_ROOT] = imx_clk_fixed_factor("dram_alt_root", "dram_alt", 1, 4);
>  	clks[IMX8MM_CLK_DRAM_CORE] = imx_clk_mux2_flags("dram_core_clk", base + 0x9800, 24, 1, imx8mm_dram_core_sels, ARRAY_SIZE(imx8mm_dram_core_sels), CLK_IS_CRITICAL);
>  
> +	clks[IMX8MM_CLK_SYS_CTR] = imx_clk_fixed_factor("sys_ctr", "osc_24m", 1, 3);
> +
>  	clks[IMX8MM_CLK_ARM] = imx_clk_cpu("arm", "arm_a53_div",
>  					   clks[IMX8MM_CLK_A53_DIV],
>  					   clks[IMX8MM_CLK_A53_SRC],
> -- 
> 2.7.4
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
