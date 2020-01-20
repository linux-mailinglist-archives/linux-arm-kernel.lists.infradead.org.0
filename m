Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0544142C50
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 14:40:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=q1DmJav4ERNIJoakW8VhPk2nk9SVTDvxMXtBJZe0+Ls=; b=tFgbTFmJZtxFfA
	IkoF0cn6VOTQOn03s66msa/JQspTSB3XJEuzGkiXm5x2nUp7IMkc98Z6OjoDaxxN/CxtXxMRJH3Kg
	BPbqJoiKcHqZzhe7DzzU+0Gl0nq1bhpSyZD+ULcWmRw0nqM/jcJWrrR5EDmddH4oQJTNfJN3UoTBU
	PZBWDhRupF9by+YjMR132lTjgmBGMEDMZQ8C+47ceu7MUhrW91FsROdZ+yYHscIPRfhNnSgZUuH4j
	ZxNyQz40TKSM8pqiS0QqaFtvEb06ZD4Kwd2GoltBH9Pvt1IYtR8FeQev26oCuwcBzUWSMtmZldvP3
	7RlrsfAQM2sFhJnRTBpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itXI2-0005UD-5Q; Mon, 20 Jan 2020 13:40:26 +0000
Received: from mail-eopbgr60080.outbound.protection.outlook.com ([40.107.6.80]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itXHp-0005Si-8J
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 13:40:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WQz582JJut6a3XXUOeJBE5ANXtlJ0bn8j+Focf5ohjxvtsmpBzYbm3GLGg9l+KqRh/5aCIso4cBYRWKJbscqYw8xdXjbcSbZCNJi8LhSFOCZX2jy7fmQMzLNfIpEpvZ8VCcjgdqvIF4nZylCnyfPrFiqemDnWNK7E0enFuR16j5rgvZXfXAuaHUXL4EWq+Tlc6zmLY1AgCV1ebGTB1N3ftCFsGCsKxL/f9pnMDL5tO7yJMCYOQmPfoxHrvl1wHCayalTtFWreq9ToFmLMkBJk53ef9/QbihIkbM+LZqj2jHjh57vRyYqPTvVXJfgbsgyZk9AbB+2xeI2XoxO1Qa0Ow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LyGZy3sD8EmZuxkstiz1d477j7s9NMXzEstrmtRDH6U=;
 b=dHNeCrbfikInOM0tsUn4aYJB0+XleFXx+9Q3puyllX9kwqzdv0sowILQxfn4d3vkpXgwb/HlLeP+gZAZn2XkH+VnzigyGXbaxTgGQ2r//ob0Us+QfKWDDUjC42cqP7BmjBWIKtspbQVjGHm3lQcjxtIJG1ZbbJKud1Nns8yf+yUj4ASUAoEG+aUoXRBTPJJzaB9+mAIBiW+GP9fT+RrErOyMYM3pxUIzFFDJ5a8Y5o+6TLKJ1t/AhIX/Wna2rYbe4o6Q/SnOQmAJQ8MJXuFnQOZEFIO0cWyRaIX7DHPIhKHo6sm/fjF3Q5VpRzxAcVGu6/ssWOX4LIw5KKOxwyCgOw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LyGZy3sD8EmZuxkstiz1d477j7s9NMXzEstrmtRDH6U=;
 b=lg28HM97Ym9G+vTgC/sVxPU390osKrZSiPLWzOh7oUsqeCimUw+CI+PdTz1X3Z71m61xVFVgG699zdQSOy2F1f1HOxiN2wlhBBBQm7Pys8QZD69YNdhVlrXoyYC+ilty0Yc+zj1aNnjRuSAVNZu/zDSbbxrWXsYpddgT1olUgFw=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB4109.eurprd04.prod.outlook.com (52.133.15.10) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.22; Mon, 20 Jan 2020 13:40:10 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::58c5:f02f:2211:4953]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::58c5:f02f:2211:4953%7]) with mapi id 15.20.2644.024; Mon, 20 Jan 2020
 13:40:10 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Peng Fan <peng.fan@nxp.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>
Subject: Re: [PATCH V3 2/4] clk: imx: imx8mq: use imx8m_clk_hw_composite_core
Thread-Topic: [PATCH V3 2/4] clk: imx: imx8mq: use imx8m_clk_hw_composite_core
Thread-Index: AQHVzBLhUkGtl3RwMUeoFEsar3ylZA==
Date: Mon, 20 Jan 2020 13:40:10 +0000
Message-ID: <VI1PR04MB70239267F223F63918362DDCEE320@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <1579140562-8060-1-git-send-email-peng.fan@nxp.com>
 <1579140562-8060-3-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 44fceb7f-dbe2-4a75-b72b-08d79dae453e
x-ms-traffictypediagnostic: VI1PR04MB4109:|VI1PR04MB4109:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB410930A5A3604E52081C0E93EE320@VI1PR04MB4109.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2512;
x-forefront-prvs: 0288CD37D9
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(396003)(376002)(366004)(346002)(39860400002)(199004)(189003)(8936002)(55016002)(81166006)(81156014)(71200400001)(9686003)(478600001)(8676002)(110136005)(54906003)(316002)(86362001)(33656002)(186003)(5660300002)(6506007)(53546011)(2906002)(4326008)(76116006)(66946007)(66446008)(64756008)(66476007)(44832011)(66556008)(7696005)(26005)(52536014)(91956017)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB4109;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: uCv584JttstAW8geNG8aQLJa8goH904BKlAXjhcwt60byZCYv3ZkDAGMyAj3fNIP3Jc49RRT2D+SkCi9I9e1bbY7YHMtq5z2/wA7+x0oRCzBgcRU/GzmSzqeQWKK+2EQn3yW0lIHs/b5Rf+DS/v1poeTKgkn+ZP4emK+wRkjYDkRvmGLt+hiUTEXa5FtSS8sZmVgBHKPjyzz4cTr96VJRSTZDkvBHJgbImB2yl62py9zqeXi9isEfude2fgkZVksoE80P6YVQUo+gDSC0Oq7YYZi3vDe1XVUErKFYmEIg3N2DNvAB5E+KZyg+X1TiDAmpcMECLEyYW77zqjHe53zoAdj9VUcsMJJ35B25TyLUMVM0xcrMg/dX2i5YH2Va+K/EGpBXUaEZbFL5t2WPHWcfQIArzVMihOWc4u7CS1O19FRTjH5lXslZA7ZHwEc02ax5MK0GdI8rhg6iwZ/66B7vVw3MBV8/Ev5DahcEbArEpqVOCP6COxbCfL9fe8lUoRg
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 44fceb7f-dbe2-4a75-b72b-08d79dae453e
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jan 2020 13:40:10.6100 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 671PO2fm5mTwNbMX7inSluGjh7gEsvQw99/WJRfVnPMKTQXr3afm3iSiyjVNBvVFqS0pX9IpwJbhyNm688Vu6A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4109
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_054013_297450_8142E25E 
X-CRM114-Status: GOOD (  10.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.80 listed in list.dnswl.org]
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <anson.huang@nxp.com>, "sboyd@kernel.org" <sboyd@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 16.01.2020 04:15, Peng Fan wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> Use imx8m_clk_hw_composite_core to simplify code.
> 
> Reviewed-by: Abel Vesa <abel.vesa@nxp.com>
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>   drivers/clk/imx/clk-imx8mq.c | 22 ++++++++--------------
>   1 file changed, 8 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/clk/imx/clk-imx8mq.c b/drivers/clk/imx/clk-imx8mq.c
> index 4c0edca1a6d0..e928c1355ad8 100644
> --- a/drivers/clk/imx/clk-imx8mq.c
> +++ b/drivers/clk/imx/clk-imx8mq.c
> @@ -403,22 +403,16 @@ static int imx8mq_clocks_probe(struct platform_device *pdev)
>   
>   	/* CORE */
>   	hws[IMX8MQ_CLK_A53_SRC] = imx_clk_hw_mux2("arm_a53_src", base + 0x8000, 24, 3, imx8mq_a53_sels, ARRAY_SIZE(imx8mq_a53_sels));
> -	hws[IMX8MQ_CLK_M4_SRC] = imx_clk_hw_mux2("arm_m4_src", base + 0x8080, 24, 3, imx8mq_arm_m4_sels, ARRAY_SIZE(imx8mq_arm_m4_sels));
> -	hws[IMX8MQ_CLK_VPU_SRC] = imx_clk_hw_mux2("vpu_src", base + 0x8100, 24, 3, imx8mq_vpu_sels, ARRAY_SIZE(imx8mq_vpu_sels));
> -	hws[IMX8MQ_CLK_GPU_CORE_SRC] = imx_clk_hw_mux2("gpu_core_src", base + 0x8180, 24, 3,  imx8mq_gpu_core_sels, ARRAY_SIZE(imx8mq_gpu_core_sels));
> -	hws[IMX8MQ_CLK_GPU_SHADER_SRC] = imx_clk_hw_mux2("gpu_shader_src", base + 0x8200, 24, 3, imx8mq_gpu_shader_sels,  ARRAY_SIZE(imx8mq_gpu_shader_sels));
> -
>   	hws[IMX8MQ_CLK_A53_CG] = imx_clk_hw_gate3_flags("arm_a53_cg", "arm_a53_src", base + 0x8000, 28, CLK_IS_CRITICAL);
> -	hws[IMX8MQ_CLK_M4_CG] = imx_clk_hw_gate3("arm_m4_cg", "arm_m4_src", base + 0x8080, 28);
> -	hws[IMX8MQ_CLK_VPU_CG] = imx_clk_hw_gate3("vpu_cg", "vpu_src", base + 0x8100, 28);
> -	hws[IMX8MQ_CLK_GPU_CORE_CG] = imx_clk_hw_gate3("gpu_core_cg", "gpu_core_src", base + 0x8180, 28);
> -	hws[IMX8MQ_CLK_GPU_SHADER_CG] = imx_clk_hw_gate3("gpu_shader_cg", "gpu_shader_src", base + 0x8200, 28);
> -
>   	hws[IMX8MQ_CLK_A53_DIV] = imx_clk_hw_divider2("arm_a53_div", "arm_a53_cg", base + 0x8000, 0, 3);
> -	hws[IMX8MQ_CLK_M4_DIV] = imx_clk_hw_divider2("arm_m4_div", "arm_m4_cg", base + 0x8080, 0, 3);
> -	hws[IMX8MQ_CLK_VPU_DIV] = imx_clk_hw_divider2("vpu_div", "vpu_cg", base + 0x8100, 0, 3);
> -	hws[IMX8MQ_CLK_GPU_CORE_DIV] = imx_clk_hw_divider2("gpu_core_div", "gpu_core_cg", base + 0x8180, 0, 3);
> -	hws[IMX8MQ_CLK_GPU_SHADER_DIV] = imx_clk_hw_divider2("gpu_shader_div", "gpu_shader_cg", base + 0x8200, 0, 3);
> +
> +	hws[IMX8MQ_CLK_M4_DIV] = imx8m_clk_hw_composite_core("arm_m4_div", imx8mq_arm_m4_sels, base + 0x8080);
> +	hws[IMX8MQ_CLK_VPU_DIV] = imx8m_clk_hw_composite_core("vpu_div", imx8mq_vpu_sels, base + 0x8100);
> +	hws[IMX8MQ_CLK_GPU_CORE_DIV] = imx8m_clk_hw_composite_core("gpu_core_div", imx8mq_gpu_core_sels, base + 0x8180);
> +	hws[IMX8MQ_CLK_GPU_SHADER_DIV] = imx8m_clk_hw_composite("gpu_shader_div", imx8mq_gpu_shader_sels, base + 0x8200);

> +	/* For DTS which still assign parents for gpu core src clk */
> +	hws[IMX8MQ_CLK_GPU_CORE_SRC] = hws[IMX8MQ_CLK_GPU_CORE_DIV];
> +	hws[IMX8MQ_CLK_GPU_SHADER_SRC] = hws[IMX8MQ_CLK_GPU_SHADER_DIV];

Why not assign to all the old clocks?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
