Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B955100629
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 14:06:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=nDMuKdxy/qsFvtH6B6Hf87e2N1jzeKqkC7VLkP5lxqs=; b=c5ekAbuQPaBw5x
	wQ3Bmi+H/J/xt4KjVzoHHjM11vMtExznD8AKM983eQ9U8O3rhlkPYL8X6yQNDhHSQF/xTw59bUjwE
	Ytv2PI25QL/vuXAPnjqQcp0JCs2Q8oLg8xcxuYhv2KiUCSYLTmAF89TfeaJuSzcIvty/QNw8o1/oy
	0ydRpchqXbXMCvtadrP7Ap2lhUIsB/ZiUil9DqSO3tmFpG4R0k/lXbH/2tDfZhanyCh0f/kvWv5yR
	9wVS6Uc/cxjAdD5NmpIVVvlZfqoffG8dmXQoc2boxow4GMjnzW3njpR8lgZvzQxW64cpHzTqHLTpb
	LOOY7V7DK1oVou0380ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWgjq-00080X-1g; Mon, 18 Nov 2019 13:06:42 +0000
Received: from mail-eopbgr140052.outbound.protection.outlook.com
 ([40.107.14.52] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWgjf-0007zX-Mw
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 13:06:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Jiet+1mJ72DgSf6ca0A9NlYQUTs+U9QL+J2MrO+7h9ogT80DIAlgvPbMiX28DX8IlRo0Ip3J2Ed4Sy55NPslSshNftVI9sVRqlLeYae+L2gBBG8GF5K+2I2E8vcZ8cfehV1v9pr3b52+c15aghUlumCcUmVOT6cj/LbcVPnzEtizDMeEYUCRg8k8DwrdSdrpcYA72zLzp4++bREz2yDyWQndZoM7GUqKOYHJA/PDtcttkFeXL3iXYbZk5cAB1aodYwJpX4r3lP6hLkCvJLkvXh1TKs2sR5zyQfQe883s3BBSHa8qFFQzTwGjjLqnEJvFq8/FTS3JemvbG4RVEeHecw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UNeyeaM9yksRv7AN9YynCmrXyC4SHLHoY5MlTjMtTro=;
 b=IL3EXiJXdxV0UIXddJ7aQ3MpEHQzNHGDTzwX+Xd0gTyGNTB4VFiYn9Js2XimZM12nsV6jicdcvFa3jc87SfHMTRVyav7DUA27evv7erGj2OwiNNvFk1/0oG0Pxr8A8olhIY6qIhtvSVMLr8uXleMUiZvMkxugVv62m+GTH7c/caiNjRnks0WxY6TGFm2+qUbtXSZQA0qkz7IpVrEfOrywETIqpsxlAUblXTwJ+Dyjj5emyM1mpHCNF/yMfB2rcpbIuM6im9fkDymmv0reuBcuKtoBw63HnPCrSx/+R6BmZlsY8KISUhDjZOpzbCJ+I0/AT7D7HE84ydheTVb3V/UCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UNeyeaM9yksRv7AN9YynCmrXyC4SHLHoY5MlTjMtTro=;
 b=FTIG7pGkBfVzevw8UjlscSOXNztJ7JH+BSdUrTjbuk84iCf9CR/TFC954Q90cXtoJ5Yqdeo5dWnTnWKBWN1UuX1QnuVqPJ3vMx5ZHzpcl748LEE1RupP9JBTdGVP5/aQsfYx8Q7zOQyhyQ7C18Of4BnI8fJCIKJuF8M6DJcN5xM=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB4846.eurprd04.prod.outlook.com (20.177.50.202) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.26; Mon, 18 Nov 2019 13:06:26 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::dd0c:72dc:e462:16b3]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::dd0c:72dc:e462:16b3%5]) with mapi id 15.20.2451.029; Mon, 18 Nov 2019
 13:06:26 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Peng Fan <peng.fan@nxp.com>, "sboyd@kernel.org" <sboyd@kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>
Subject: Re: [PATCH V2 2/4] clk: imx: imx8mn: Switch to clk_hw based API
Thread-Topic: [PATCH V2 2/4] clk: imx: imx8mn: Switch to clk_hw based API
Thread-Index: AQHVktMr9vdJ3yj43k2cixXCwuTSvQ==
Date: Mon, 18 Nov 2019 13:06:26 +0000
Message-ID: <VI1PR04MB7023CC47DC123A66627940E9EE4D0@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <1572846270-24375-1-git-send-email-peng.fan@nxp.com>
 <1572846270-24375-3-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [212.146.100.6]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 627280d4-78d6-4979-99c9-08d76c281e98
x-ms-traffictypediagnostic: VI1PR04MB4846:|VI1PR04MB4846:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB4846A4D4C5B9E460CB80FBF4EE4D0@VI1PR04MB4846.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3044;
x-forefront-prvs: 0225B0D5BC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(396003)(136003)(366004)(346002)(376002)(189003)(199004)(86362001)(7696005)(446003)(9686003)(55016002)(71200400001)(2906002)(305945005)(74316002)(6436002)(8936002)(66066001)(4326008)(7736002)(6116002)(3846002)(186003)(26005)(52536014)(81166006)(81156014)(76176011)(54906003)(476003)(102836004)(478600001)(6506007)(53546011)(110136005)(5660300002)(2501003)(8676002)(316002)(256004)(71190400001)(6246003)(229853002)(99286004)(486006)(44832011)(14454004)(33656002)(25786009)(91956017)(76116006)(66946007)(66476007)(66556008)(64756008)(66446008)(2201001)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB4846;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: JUHuOxCmYGgZ2AKlvKaT17n/7iAX8MgVdEfqvB10/nBk5eHAAdKxx+bTjQ8oJafK0Co5JsdqG66Pw+A16srLdJ52qmlsEiKc6Xrsud7wHGiwPoH9IWkxHtj5E9AXvlJPSxAlAm6OgzUKFKtE9N0E1Uo9/IFfLJxccD/bLMIojuI/5xeOUBBJzUKdCQzUPrJDTcGta6T2E6+xfbxy4Rsk7wxsbNL4+RwWnJatoBnK0LM8l7JiWejcYTXDJVXR4h/2uGkGqvNSgbyok9bRFQCsNmxl+YRWDtAMnl9nuLy1rS4cG+REHHaIbV5vNHi3M0Rja9nkWmjBO1xCELr8b4K+g1SCjWjB7vaoOQ+wQXWDJ06AmCbQC3W30uoRG4hxhEqNt7SGv6OKANPuuJokGTnBfOg/2qKGfijzylwSVhs/X4X7NgI3nc+5V/vpcRMEp6sT
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 627280d4-78d6-4979-99c9-08d76c281e98
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Nov 2019 13:06:26.2271 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YIcpygG943t6Lbkw3x4HE92SPTJToxdzQDq5xJl7Q9T3DGvv5G3Xdqa/rqJgNqS/wQ8EIcVEjQ9IIB68zkMrpg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4846
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_050631_826370_836C2D7B 
X-CRM114-Status: UNSURE (   9.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.52 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-11-04 7:46 AM, Peng Fan wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> Switch the entire clk-imx8mn driver to clk_hw based API.
> This allows us to move closer to a clear split between
> consumer and provider clk APIs.

> -	clks[IMX8MN_AUDIO_PLL1] = imx_clk_pll14xx("audio_pll1", "audio_pll1_ref_sel", base, &imx_1443x_pll);
> -	clks[IMX8MN_AUDIO_PLL2] = imx_clk_pll14xx("audio_pll2", "audio_pll2_ref_sel", base + 0x14, &imx_1443x_pll);
> -	clks[IMX8MN_VIDEO_PLL1] = imx_clk_pll14xx("video_pll1", "video_pll1_ref_sel", base + 0x28, &imx_1443x_pll);
> -	clks[IMX8MN_DRAM_PLL] = imx_clk_pll14xx("dram_pll", "dram_pll_ref_sel", base + 0x50, &imx_1443x_pll);
> -	clks[IMX8MN_GPU_PLL] = imx_clk_pll14xx("gpu_pll", "gpu_pll_ref_sel", base + 0x64, &imx_1416x_pll);
> -	clks[IMX8MN_VPU_PLL] = imx_clk_pll14xx("vpu_pll", "vpu_pll_ref_sel", base + 0x74, &imx_1416x_pll);
> -	clks[IMX8MN_ARM_PLL] = imx_clk_pll14xx("arm_pll", "arm_pll_ref_sel", base + 0x84, &imx_1416x_pll);
> -	clks[IMX8MN_SYS_PLL1] = imx_clk_fixed("sys_pll1", 800000000);
> -	clks[IMX8MN_SYS_PLL2] = imx_clk_fixed("sys_pll2", 1000000000);
> -	clks[IMX8MN_SYS_PLL3] = imx_clk_pll14xx("sys_pll3", "sys_pll3_ref_sel", base + 0x114, &imx_1416x_pll);
> +	clks[IMX8MN_AUDIO_PLL1] = imx_clk_hw_pll14xx("audio_pll1", "audio_pll1_ref_sel", base, &imx_1416x_pll);
> +	clks[IMX8MN_AUDIO_PLL2] = imx_clk_hw_pll14xx("audio_pll2", "audio_pll2_ref_sel", base + 0x14, &imx_1416x_pll);
> +	clks[IMX8MN_VIDEO_PLL1] = imx_clk_hw_pll14xx("video_pll1", "video_pll1_ref_sel", base + 0x28, &imx_1416x_pll);
> +	clks[IMX8MN_DRAM_PLL] = imx_clk_hw_pll14xx("dram_pll", "dram_pll_ref_sel", base + 0x50, &imx_1416x_pll);
> +	clks[IMX8MN_GPU_PLL] = imx_clk_hw_pll14xx("gpu_pll", "gpu_pll_ref_sel", base + 0x64, &imx_1416x_pll);
> +	clks[IMX8MN_VPU_PLL] = imx_clk_hw_pll14xx("vpu_pll", "vpu_pll_ref_sel", base + 0x74, &imx_1416x_pll);
> +	clks[IMX8MN_ARM_PLL] = imx_clk_hw_pll14xx("arm_pll", "arm_pll_ref_sel", base + 0x84, &imx_1416x_pll);
> +	clks[IMX8MN_SYS_PLL1] = imx_clk_hw_fixed("sys_pll1", 800000000);
> +	clks[IMX8MN_SYS_PLL2] = imx_clk_hw_fixed("sys_pll2", 1000000000);
> +	clks[IMX8MN_SYS_PLL3] = imx_clk_hw_pll14xx("sys_pll3", "sys_pll3_ref_sel", base + 0x114, &imx_1416x_pll);

You are switching audio/video/dram PLL from imx_1443x_pll to 
imx_1416x_pll, are you sure this is correct?

If this is intentional it should be an separate patch.

> -	clks[IMX8MN_CLK_ARM] = imx_clk_cpu("arm", "arm_a53_div",
> -					   clks[IMX8MN_CLK_A53_DIV],
> -					   clks[IMX8MN_CLK_A53_SRC],
> -					   clks[IMX8MN_ARM_PLL_OUT],
> -					   clks[IMX8MN_CLK_24M]);

> +	clks[IMX8MN_CLK_ARM] = imx_clk_hw_cpu("arm", "arm_a53_div",
> +					      clks[IMX8MN_CLK_A53_DIV]->clk,
> +					      clks[IMX8MN_CLK_A53_SRC]->clk,
> +					      clks[IMX8MN_ARM_PLL_OUT]->clk,
> +					      clks[IMX8MN_CLK_24M]->clk);

This series seems to be against Shawn's clk/imx but there is an 
additional patch in Stephen's tree which changes this 24M to PLL1_800M. 
Maybe that should be pulled into clk/imx? Otherwise it might spawn an 
unreadable merge conflicts since almost the entire file is rewritten.

--
Regards,
Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
