Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC80F107A38
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 22:50:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=tvh/qkEqhkPNYvSgKifAeekG2DfnkiqXZA+N5GCgWJ8=; b=tbYJ4JVFxcpwAN
	l2PNDvXoY+kAPqSvFd/Sd7e3ABeAPzOACu4X7Oygid/VfnbJWZq7xnIMoJ1JIlUHmcOLUp5VeqDhc
	oDlVJhHANtZ9MfzQn9y7CZEn5IrRxmP97L2zWJcomwIDFLsR6S5pC85nq8g1KqqxJF3SUN0sGbKG+
	glPF9TZhskm6GDal8OOiwWjpC9dbmMSgLPRRMyK2lwRygEcdU0Mi0dOywgr5as8TKaEnGRMejwAOE
	IA8MJNYFhQjMHUfn4BayAsAa8cDBcVQQYSWyHJBUvClo3qk2WCFOM/iRDUWAMo8V4UnZNupfGGJ3M
	WDtwKNebbQSRBx3foyBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYGp8-0008Q1-2O; Fri, 22 Nov 2019 21:50:42 +0000
Received: from mail-eopbgr30071.outbound.protection.outlook.com ([40.107.3.71]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYGov-0008OV-M1
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 21:50:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kUDjeTAin+s/dgydtVAn4iYJKY0S/Btt6OHeLKWV3nNj2Axs8K9j/F+KOQmqEA3uiIR9CJaAFh7dytBcU0H+R0r90TTmI5BNXnN0p+AwB5XlVs+viaZcTblYeCLHTd1Ne4jWKkks6OVvMcnbnDeAzZHQ/3IsDeKLa+StYAp6KIaybHaYr2by2ckCsROtxyvJrf/WaK9vwRD7mGyJevjCn+7HiJbzoHrlYtyfxDaHBhtOOdALaVMQIuikOawAd18UiPmi1goUlFOVGM3Ynhm9fjTZ4GrLQZS2KJUziU9O5nwKoLXlEMf2C7h6kgRvZrugXPSCIoZbrc07AQGHohS/Rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=F3fHPGJLQ/lGHHMZBkvo9UnvRNyLbSlataNJGo7rYMk=;
 b=Sjar8Yt3gq14BB2FrlfGb3k3YE6SBKRCKeLjmKP4R5JLPyvpgvsIYOAhXRScNnrq8gtOHjqkzlXggqA0uSbLUKnITgtYPhz8HCtI4kl9p1a7Eyuv62Z2rcSqYnqnBqjqU83PAGPgTFbYlYgEH24COYn+Vp7J1EReC5htxMYDyqLC8ilwkw45rkdtgkqpbBKRbTKJAUaZjDBi+UUVa/gUwEdmkjWO/MBA2F67ry3FP1GZT6Dam5DbkHUBClliShtnAtigwwIVH8vT2SAC83xPHmYsVxiCqvBa/E05ql4f+p0tDe0FrXsUVXp388P+ExwXRv9UiGWVf1D/1O3OS8qNGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=F3fHPGJLQ/lGHHMZBkvo9UnvRNyLbSlataNJGo7rYMk=;
 b=Xto1aq4pKSklSN5ytmpKh93hLK4S5SyD52TzdTMQ9S1nZ2lma243FpfrbWhW0fCFLKB+ruk8K6RoCl2ox8Gx2TtQuf6TEsP68wZVXF3MLjm87mcEkH+K1xGrWYCwgxngfPEI15IfvP0Qznzw9uLtSDYNiIr80x3+ivdB/Tg+cbQ=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB3149.eurprd04.prod.outlook.com (10.170.229.23) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2474.17; Fri, 22 Nov 2019 21:50:26 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::dd0c:72dc:e462:16b3]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::dd0c:72dc:e462:16b3%5]) with mapi id 15.20.2474.021; Fri, 22 Nov 2019
 21:50:26 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Abel Vesa <abel.vesa@nxp.com>, Shawn Guo <shawnguo@kernel.org>, Stephen
 Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v2 02/11] clk: imx: Rename the SCCG to SSCG
Thread-Topic: [PATCH v2 02/11] clk: imx: Rename the SCCG to SSCG
Thread-Index: AQHVoSJWPnEyVXaurE6C0sqSvmTOAg==
Date: Fri, 22 Nov 2019 21:50:26 +0000
Message-ID: <VI1PR04MB702329ECA12C1135819809DFEE490@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <1574419679-3813-1-git-send-email-abel.vesa@nxp.com>
 <1574419679-3813-3-git-send-email-abel.vesa@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [92.121.36.197]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 49b21066-0472-464b-5fcb-08d76f95fbde
x-ms-traffictypediagnostic: VI1PR04MB3149:|VI1PR04MB3149:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB314973F2C8190F5FCDCA3409EE490@VI1PR04MB3149.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4502;
x-forefront-prvs: 02296943FF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(366004)(346002)(396003)(39860400002)(376002)(189003)(199004)(3846002)(66066001)(55016002)(6246003)(102836004)(6436002)(4326008)(71200400001)(71190400001)(30864003)(86362001)(256004)(2906002)(14444005)(6116002)(186003)(4001150100001)(229853002)(26005)(6506007)(7736002)(966005)(74316002)(478600001)(44832011)(110136005)(52536014)(33656002)(9686003)(66946007)(76116006)(91956017)(66446008)(64756008)(66476007)(5660300002)(66556008)(53546011)(305945005)(8936002)(81166006)(446003)(6306002)(76176011)(25786009)(7696005)(316002)(14454004)(99286004)(81156014)(8676002)(54906003)(559001)(569006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB3149;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: asE0otjpsRaNiLTfOTIkmO5cKOfXrnDIOKV3u/eJ6j6e+z2POpkAkSjT4YWd1DLSUygfWJFVuJJJq9PhW+vyKkJKYgfy1BbLNoPhG7dGhP45l6OlL3aSrI9nWXpV49Hyxc6+REyrkI2DwGLCIVTb6+bwqdAt49N+zDn7tvUqNjFuNmXorfXMRmG7buCq8ItaTluM1AIPTttsc5kYxmXnw317y8LtMcyiNJjn06CxFdhb870450b1JVoP7Rjd/K+v8AJxuAsN+y+sdguNF/5zEftmAZ7s+qdVoW5RP1KpvjG1+m0n8JT/Zt5/yVb+ySxCyjBC7j6LQiR2huYC7EEyPhu4mBaD/o6xeAhBRmfFI2jQH10mHhQn5F+U6vW7ehzKIYbidV7R6DMQwyvGv9u+OlBkMVmz3HL9pFc6LMZYfU/GjRXHqX3WufYPp3sluKv4RvaZ8zrUsC3k/CR3GSdJ/qQ8xmMgBbmRC3CYYjQdpe4=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 49b21066-0472-464b-5fcb-08d76f95fbde
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Nov 2019 21:50:26.1295 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OBYP2vxmBL106Gde5m5C6sZ6RCAvsagNNseDvHcGXPe3zuwtlghBaqIoFs3UrVl5nqKTP3dCgh0sMNg+fzfSdQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB3149
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_135030_043519_0CCEDA48 
X-CRM114-Status: GOOD (  15.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.71 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 Jacky Bai <ping.bai@nxp.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-11-22 12:48 PM, Abel Vesa wrote:
> According to the manual the acronym stands for
> Spread Sprectum Clock Generator.
> 
> Signed-off-by: Abel Vesa <abel.vesa@nxp.com>

Reviewed-by: Leonard Crestez <leonard.crestez@nxp.com>

This misspelling bothered me for some reason.

> ---
>   drivers/clk/imx/Makefile       |   2 +-
>   drivers/clk/imx/clk-imx8mq.c   |   6 +-
>   drivers/clk/imx/clk-sccg-pll.c | 549 -----------------------------------------
>   drivers/clk/imx/clk-sscg-pll.c | 549 +++++++++++++++++++++++++++++++++++++++++
>   drivers/clk/imx/clk.h          |   4 +-
>   5 files changed, 555 insertions(+), 555 deletions(-)
>   delete mode 100644 drivers/clk/imx/clk-sccg-pll.c
>   create mode 100644 drivers/clk/imx/clk-sscg-pll.c
> 
> diff --git a/drivers/clk/imx/Makefile b/drivers/clk/imx/Makefile
> index 77a3d71..3724ba7 100644
> --- a/drivers/clk/imx/Makefile
> +++ b/drivers/clk/imx/Makefile
> @@ -18,7 +18,7 @@ obj-$(CONFIG_MXC_CLK) += \
>   	clk-pllv2.o \
>   	clk-pllv3.o \
>   	clk-pllv4.o \
> -	clk-sccg-pll.o \
> +	clk-sscg-pll.o \
>   	clk-pll14xx.o
>   
>   obj-$(CONFIG_MXC_CLK_SCU) += \
> diff --git a/drivers/clk/imx/clk-imx8mq.c b/drivers/clk/imx/clk-imx8mq.c
> index 5f10a60..f2a35b1 100644
> --- a/drivers/clk/imx/clk-imx8mq.c
> +++ b/drivers/clk/imx/clk-imx8mq.c
> @@ -342,9 +342,9 @@ static int imx8mq_clocks_probe(struct platform_device *pdev)
>   
>   	clks[IMX8MQ_SYS1_PLL_OUT] = imx_clk_fixed("sys1_pll_out", 800000000);
>   	clks[IMX8MQ_SYS2_PLL_OUT] = imx_clk_fixed("sys2_pll_out", 1000000000);
> -	clks[IMX8MQ_SYS3_PLL_OUT] = imx_clk_sccg_pll("sys3_pll_out", sys3_pll_out_sels, ARRAY_SIZE(sys3_pll_out_sels), 0, 0, 0, base + 0x48, CLK_IS_CRITICAL);
> -	clks[IMX8MQ_DRAM_PLL_OUT] = imx_clk_sccg_pll("dram_pll_out", dram_pll_out_sels, ARRAY_SIZE(dram_pll_out_sels), 0, 0, 0, base + 0x60, CLK_IS_CRITICAL);
> -	clks[IMX8MQ_VIDEO2_PLL_OUT] = imx_clk_sccg_pll("video2_pll_out", video2_pll_out_sels, ARRAY_SIZE(video2_pll_out_sels), 0, 0, 0, base + 0x54, 0);
> +	clks[IMX8MQ_SYS3_PLL_OUT] = imx_clk_sscg_pll("sys3_pll_out", sys3_pll_out_sels, ARRAY_SIZE(sys3_pll_out_sels), 0, 0, 0, base + 0x48, CLK_IS_CRITICAL);
> +	clks[IMX8MQ_DRAM_PLL_OUT] = imx_clk_sscg_pll("dram_pll_out", dram_pll_out_sels, ARRAY_SIZE(dram_pll_out_sels), 0, 0, 0, base + 0x60, CLK_IS_CRITICAL);
> +	clks[IMX8MQ_VIDEO2_PLL_OUT] = imx_clk_sscg_pll("video2_pll_out", video2_pll_out_sels, ARRAY_SIZE(video2_pll_out_sels), 0, 0, 0, base + 0x54, 0);
>   
>   	/* SYS PLL1 fixed output */
>   	clks[IMX8MQ_SYS1_PLL_40M_CG] = imx_clk_gate("sys1_pll_40m_cg", "sys1_pll_out", base + 0x30, 9);
> diff --git a/drivers/clk/imx/clk-sccg-pll.c b/drivers/clk/imx/clk-sccg-pll.c
> deleted file mode 100644
> index 5d65f65..00000000
> --- a/drivers/clk/imx/clk-sccg-pll.c
> +++ /dev/null
> @@ -1,549 +0,0 @@
> -// SPDX-License-Identifier: (GPL-2.0 OR MIT)
> -/*
> - * Copyright 2018 NXP.
> - *
> - * This driver supports the SCCG plls found in the imx8m SOCs
> - *
> - * Documentation for this SCCG pll can be found at:
> - *   https://www.nxp.com/docs/en/reference-manual/IMX8MDQLQRM.pdf#page=834
> - */
> -
> -#include <linux/clk-provider.h>
> -#include <linux/err.h>
> -#include <linux/io.h>
> -#include <linux/iopoll.h>
> -#include <linux/slab.h>
> -#include <linux/bitfield.h>
> -
> -#include "clk.h"
> -
> -/* PLL CFGs */
> -#define PLL_CFG0		0x0
> -#define PLL_CFG1		0x4
> -#define PLL_CFG2		0x8
> -
> -#define PLL_DIVF1_MASK		GENMASK(18, 13)
> -#define PLL_DIVF2_MASK		GENMASK(12, 7)
> -#define PLL_DIVR1_MASK		GENMASK(27, 25)
> -#define PLL_DIVR2_MASK		GENMASK(24, 19)
> -#define PLL_DIVQ_MASK           GENMASK(6, 1)
> -#define PLL_REF_MASK		GENMASK(2, 0)
> -
> -#define PLL_LOCK_MASK		BIT(31)
> -#define PLL_PD_MASK		BIT(7)
> -
> -/* These are the specification limits for the SSCG PLL */
> -#define PLL_REF_MIN_FREQ		25000000UL
> -#define PLL_REF_MAX_FREQ		235000000UL
> -
> -#define PLL_STAGE1_MIN_FREQ		1600000000UL
> -#define PLL_STAGE1_MAX_FREQ		2400000000UL
> -
> -#define PLL_STAGE1_REF_MIN_FREQ		25000000UL
> -#define PLL_STAGE1_REF_MAX_FREQ		54000000UL
> -
> -#define PLL_STAGE2_MIN_FREQ		1200000000UL
> -#define PLL_STAGE2_MAX_FREQ		2400000000UL
> -
> -#define PLL_STAGE2_REF_MIN_FREQ		54000000UL
> -#define PLL_STAGE2_REF_MAX_FREQ		75000000UL
> -
> -#define PLL_OUT_MIN_FREQ		20000000UL
> -#define PLL_OUT_MAX_FREQ		1200000000UL
> -
> -#define PLL_DIVR1_MAX			7
> -#define PLL_DIVR2_MAX			63
> -#define PLL_DIVF1_MAX			63
> -#define PLL_DIVF2_MAX			63
> -#define PLL_DIVQ_MAX			63
> -
> -#define PLL_BYPASS_NONE			0x0
> -#define PLL_BYPASS1			0x2
> -#define PLL_BYPASS2			0x1
> -
> -#define SSCG_PLL_BYPASS1_MASK           BIT(5)
> -#define SSCG_PLL_BYPASS2_MASK           BIT(4)
> -#define SSCG_PLL_BYPASS_MASK		GENMASK(5, 4)
> -
> -#define PLL_SCCG_LOCK_TIMEOUT		70
> -
> -struct clk_sccg_pll_setup {
> -	int divr1, divf1;
> -	int divr2, divf2;
> -	int divq;
> -	int bypass;
> -
> -	uint64_t vco1;
> -	uint64_t vco2;
> -	uint64_t fout;
> -	uint64_t ref;
> -	uint64_t ref_div1;
> -	uint64_t ref_div2;
> -	uint64_t fout_request;
> -	int fout_error;
> -};
> -
> -struct clk_sccg_pll {
> -	struct clk_hw	hw;
> -	const struct clk_ops  ops;
> -
> -	void __iomem *base;
> -
> -	struct clk_sccg_pll_setup setup;
> -
> -	u8 parent;
> -	u8 bypass1;
> -	u8 bypass2;
> -};
> -
> -#define to_clk_sccg_pll(_hw) container_of(_hw, struct clk_sccg_pll, hw)
> -
> -static int clk_sccg_pll_wait_lock(struct clk_sccg_pll *pll)
> -{
> -	u32 val;
> -
> -	val = readl_relaxed(pll->base + PLL_CFG0);
> -
> -	/* don't wait for lock if all plls are bypassed */
> -	if (!(val & SSCG_PLL_BYPASS2_MASK))
> -		return readl_poll_timeout(pll->base, val, val & PLL_LOCK_MASK,
> -						0, PLL_SCCG_LOCK_TIMEOUT);
> -
> -	return 0;
> -}
> -
> -static int clk_sccg_pll2_check_match(struct clk_sccg_pll_setup *setup,
> -					struct clk_sccg_pll_setup *temp_setup)
> -{
> -	int new_diff = temp_setup->fout - temp_setup->fout_request;
> -	int diff = temp_setup->fout_error;
> -
> -	if (abs(diff) > abs(new_diff)) {
> -		temp_setup->fout_error = new_diff;
> -		memcpy(setup, temp_setup, sizeof(struct clk_sccg_pll_setup));
> -
> -		if (temp_setup->fout_request == temp_setup->fout)
> -			return 0;
> -	}
> -	return -1;
> -}
> -
> -static int clk_sccg_divq_lookup(struct clk_sccg_pll_setup *setup,
> -				struct clk_sccg_pll_setup *temp_setup)
> -{
> -	int ret = -EINVAL;
> -
> -	for (temp_setup->divq = 0; temp_setup->divq <= PLL_DIVQ_MAX;
> -	     temp_setup->divq++) {
> -		temp_setup->vco2 = temp_setup->vco1;
> -		do_div(temp_setup->vco2, temp_setup->divr2 + 1);
> -		temp_setup->vco2 *= 2;
> -		temp_setup->vco2 *= temp_setup->divf2 + 1;
> -		if (temp_setup->vco2 >= PLL_STAGE2_MIN_FREQ &&
> -				temp_setup->vco2 <= PLL_STAGE2_MAX_FREQ) {
> -			temp_setup->fout = temp_setup->vco2;
> -			do_div(temp_setup->fout, 2 * (temp_setup->divq + 1));
> -
> -			ret = clk_sccg_pll2_check_match(setup, temp_setup);
> -			if (!ret) {
> -				temp_setup->bypass = PLL_BYPASS1;
> -				return ret;
> -			}
> -		}
> -	}
> -
> -	return ret;
> -}
> -
> -static int clk_sccg_divf2_lookup(struct clk_sccg_pll_setup *setup,
> -					struct clk_sccg_pll_setup *temp_setup)
> -{
> -	int ret = -EINVAL;
> -
> -	for (temp_setup->divf2 = 0; temp_setup->divf2 <= PLL_DIVF2_MAX;
> -	     temp_setup->divf2++) {
> -		ret = clk_sccg_divq_lookup(setup, temp_setup);
> -		if (!ret)
> -			return ret;
> -	}
> -
> -	return ret;
> -}
> -
> -static int clk_sccg_divr2_lookup(struct clk_sccg_pll_setup *setup,
> -				struct clk_sccg_pll_setup *temp_setup)
> -{
> -	int ret = -EINVAL;
> -
> -	for (temp_setup->divr2 = 0; temp_setup->divr2 <= PLL_DIVR2_MAX;
> -	     temp_setup->divr2++) {
> -		temp_setup->ref_div2 = temp_setup->vco1;
> -		do_div(temp_setup->ref_div2, temp_setup->divr2 + 1);
> -		if (temp_setup->ref_div2 >= PLL_STAGE2_REF_MIN_FREQ &&
> -		    temp_setup->ref_div2 <= PLL_STAGE2_REF_MAX_FREQ) {
> -			ret = clk_sccg_divf2_lookup(setup, temp_setup);
> -			if (!ret)
> -				return ret;
> -		}
> -	}
> -
> -	return ret;
> -}
> -
> -static int clk_sccg_pll2_find_setup(struct clk_sccg_pll_setup *setup,
> -					struct clk_sccg_pll_setup *temp_setup,
> -					uint64_t ref)
> -{
> -
> -	int ret = -EINVAL;
> -
> -	if (ref < PLL_STAGE1_MIN_FREQ || ref > PLL_STAGE1_MAX_FREQ)
> -		return ret;
> -
> -	temp_setup->vco1 = ref;
> -
> -	ret = clk_sccg_divr2_lookup(setup, temp_setup);
> -	return ret;
> -}
> -
> -static int clk_sccg_divf1_lookup(struct clk_sccg_pll_setup *setup,
> -				struct clk_sccg_pll_setup *temp_setup)
> -{
> -	int ret = -EINVAL;
> -
> -	for (temp_setup->divf1 = 0; temp_setup->divf1 <= PLL_DIVF1_MAX;
> -	     temp_setup->divf1++) {
> -		uint64_t vco1 = temp_setup->ref;
> -
> -		do_div(vco1, temp_setup->divr1 + 1);
> -		vco1 *= 2;
> -		vco1 *= temp_setup->divf1 + 1;
> -
> -		ret = clk_sccg_pll2_find_setup(setup, temp_setup, vco1);
> -		if (!ret) {
> -			temp_setup->bypass = PLL_BYPASS_NONE;
> -			return ret;
> -		}
> -	}
> -
> -	return ret;
> -}
> -
> -static int clk_sccg_divr1_lookup(struct clk_sccg_pll_setup *setup,
> -				struct clk_sccg_pll_setup *temp_setup)
> -{
> -	int ret = -EINVAL;
> -
> -	for (temp_setup->divr1 = 0; temp_setup->divr1 <= PLL_DIVR1_MAX;
> -	     temp_setup->divr1++) {
> -		temp_setup->ref_div1 = temp_setup->ref;
> -		do_div(temp_setup->ref_div1, temp_setup->divr1 + 1);
> -		if (temp_setup->ref_div1 >= PLL_STAGE1_REF_MIN_FREQ &&
> -		    temp_setup->ref_div1 <= PLL_STAGE1_REF_MAX_FREQ) {
> -			ret = clk_sccg_divf1_lookup(setup, temp_setup);
> -			if (!ret)
> -				return ret;
> -		}
> -	}
> -
> -	return ret;
> -}
> -
> -static int clk_sccg_pll1_find_setup(struct clk_sccg_pll_setup *setup,
> -					struct clk_sccg_pll_setup *temp_setup,
> -					uint64_t ref)
> -{
> -
> -	int ret = -EINVAL;
> -
> -	if (ref < PLL_REF_MIN_FREQ || ref > PLL_REF_MAX_FREQ)
> -		return ret;
> -
> -	temp_setup->ref = ref;
> -
> -	ret = clk_sccg_divr1_lookup(setup, temp_setup);
> -
> -	return ret;
> -}
> -
> -static int clk_sccg_pll_find_setup(struct clk_sccg_pll_setup *setup,
> -					uint64_t prate,
> -					uint64_t rate, int try_bypass)
> -{
> -	struct clk_sccg_pll_setup temp_setup;
> -	int ret = -EINVAL;
> -
> -	memset(&temp_setup, 0, sizeof(struct clk_sccg_pll_setup));
> -	memset(setup, 0, sizeof(struct clk_sccg_pll_setup));
> -
> -	temp_setup.fout_error = PLL_OUT_MAX_FREQ;
> -	temp_setup.fout_request = rate;
> -
> -	switch (try_bypass) {
> -
> -	case PLL_BYPASS2:
> -		if (prate == rate) {
> -			setup->bypass = PLL_BYPASS2;
> -			setup->fout = rate;
> -			ret = 0;
> -		}
> -		break;
> -
> -	case PLL_BYPASS1:
> -		ret = clk_sccg_pll2_find_setup(setup, &temp_setup, prate);
> -		break;
> -
> -	case PLL_BYPASS_NONE:
> -		ret = clk_sccg_pll1_find_setup(setup, &temp_setup, prate);
> -		break;
> -	}
> -
> -	return ret;
> -}
> -
> -
> -static int clk_sccg_pll_is_prepared(struct clk_hw *hw)
> -{
> -	struct clk_sccg_pll *pll = to_clk_sccg_pll(hw);
> -
> -	u32 val = readl_relaxed(pll->base + PLL_CFG0);
> -
> -	return (val & PLL_PD_MASK) ? 0 : 1;
> -}
> -
> -static int clk_sccg_pll_prepare(struct clk_hw *hw)
> -{
> -	struct clk_sccg_pll *pll = to_clk_sccg_pll(hw);
> -	u32 val;
> -
> -	val = readl_relaxed(pll->base + PLL_CFG0);
> -	val &= ~PLL_PD_MASK;
> -	writel_relaxed(val, pll->base + PLL_CFG0);
> -
> -	return clk_sccg_pll_wait_lock(pll);
> -}
> -
> -static void clk_sccg_pll_unprepare(struct clk_hw *hw)
> -{
> -	struct clk_sccg_pll *pll = to_clk_sccg_pll(hw);
> -	u32 val;
> -
> -	val = readl_relaxed(pll->base + PLL_CFG0);
> -	val |= PLL_PD_MASK;
> -	writel_relaxed(val, pll->base + PLL_CFG0);
> -}
> -
> -static unsigned long clk_sccg_pll_recalc_rate(struct clk_hw *hw,
> -					 unsigned long parent_rate)
> -{
> -	struct clk_sccg_pll *pll = to_clk_sccg_pll(hw);
> -	u32 val, divr1, divf1, divr2, divf2, divq;
> -	u64 temp64;
> -
> -	val = readl_relaxed(pll->base + PLL_CFG2);
> -	divr1 = FIELD_GET(PLL_DIVR1_MASK, val);
> -	divr2 = FIELD_GET(PLL_DIVR2_MASK, val);
> -	divf1 = FIELD_GET(PLL_DIVF1_MASK, val);
> -	divf2 = FIELD_GET(PLL_DIVF2_MASK, val);
> -	divq = FIELD_GET(PLL_DIVQ_MASK, val);
> -
> -	temp64 = parent_rate;
> -
> -	val = readl(pll->base + PLL_CFG0);
> -	if (val & SSCG_PLL_BYPASS2_MASK) {
> -		temp64 = parent_rate;
> -	} else if (val & SSCG_PLL_BYPASS1_MASK) {
> -		temp64 *= divf2;
> -		do_div(temp64, (divr2 + 1) * (divq + 1));
> -	} else {
> -		temp64 *= 2;
> -		temp64 *= (divf1 + 1) * (divf2 + 1);
> -		do_div(temp64, (divr1 + 1) * (divr2 + 1) * (divq + 1));
> -	}
> -
> -	return temp64;
> -}
> -
> -static int clk_sccg_pll_set_rate(struct clk_hw *hw, unsigned long rate,
> -			    unsigned long parent_rate)
> -{
> -	struct clk_sccg_pll *pll = to_clk_sccg_pll(hw);
> -	struct clk_sccg_pll_setup *setup = &pll->setup;
> -	u32 val;
> -
> -	/* set bypass here too since the parent might be the same */
> -	val = readl(pll->base + PLL_CFG0);
> -	val &= ~SSCG_PLL_BYPASS_MASK;
> -	val |= FIELD_PREP(SSCG_PLL_BYPASS_MASK, setup->bypass);
> -	writel(val, pll->base + PLL_CFG0);
> -
> -	val = readl_relaxed(pll->base + PLL_CFG2);
> -	val &= ~(PLL_DIVF1_MASK | PLL_DIVF2_MASK);
> -	val &= ~(PLL_DIVR1_MASK | PLL_DIVR2_MASK | PLL_DIVQ_MASK);
> -	val |= FIELD_PREP(PLL_DIVF1_MASK, setup->divf1);
> -	val |= FIELD_PREP(PLL_DIVF2_MASK, setup->divf2);
> -	val |= FIELD_PREP(PLL_DIVR1_MASK, setup->divr1);
> -	val |= FIELD_PREP(PLL_DIVR2_MASK, setup->divr2);
> -	val |= FIELD_PREP(PLL_DIVQ_MASK, setup->divq);
> -	writel_relaxed(val, pll->base + PLL_CFG2);
> -
> -	return clk_sccg_pll_wait_lock(pll);
> -}
> -
> -static u8 clk_sccg_pll_get_parent(struct clk_hw *hw)
> -{
> -	struct clk_sccg_pll *pll = to_clk_sccg_pll(hw);
> -	u32 val;
> -	u8 ret = pll->parent;
> -
> -	val = readl(pll->base + PLL_CFG0);
> -	if (val & SSCG_PLL_BYPASS2_MASK)
> -		ret = pll->bypass2;
> -	else if (val & SSCG_PLL_BYPASS1_MASK)
> -		ret = pll->bypass1;
> -	return ret;
> -}
> -
> -static int clk_sccg_pll_set_parent(struct clk_hw *hw, u8 index)
> -{
> -	struct clk_sccg_pll *pll = to_clk_sccg_pll(hw);
> -	u32 val;
> -
> -	val = readl(pll->base + PLL_CFG0);
> -	val &= ~SSCG_PLL_BYPASS_MASK;
> -	val |= FIELD_PREP(SSCG_PLL_BYPASS_MASK, pll->setup.bypass);
> -	writel(val, pll->base + PLL_CFG0);
> -
> -	return clk_sccg_pll_wait_lock(pll);
> -}
> -
> -static int __clk_sccg_pll_determine_rate(struct clk_hw *hw,
> -					struct clk_rate_request *req,
> -					uint64_t min,
> -					uint64_t max,
> -					uint64_t rate,
> -					int bypass)
> -{
> -	struct clk_sccg_pll *pll = to_clk_sccg_pll(hw);
> -	struct clk_sccg_pll_setup *setup = &pll->setup;
> -	struct clk_hw *parent_hw = NULL;
> -	int bypass_parent_index;
> -	int ret = -EINVAL;
> -
> -	req->max_rate = max;
> -	req->min_rate = min;
> -
> -	switch (bypass) {
> -	case PLL_BYPASS2:
> -		bypass_parent_index = pll->bypass2;
> -		break;
> -	case PLL_BYPASS1:
> -		bypass_parent_index = pll->bypass1;
> -		break;
> -	default:
> -		bypass_parent_index = pll->parent;
> -		break;
> -	}
> -
> -	parent_hw = clk_hw_get_parent_by_index(hw, bypass_parent_index);
> -	ret = __clk_determine_rate(parent_hw, req);
> -	if (!ret) {
> -		ret = clk_sccg_pll_find_setup(setup, req->rate,
> -						rate, bypass);
> -	}
> -
> -	req->best_parent_hw = parent_hw;
> -	req->best_parent_rate = req->rate;
> -	req->rate = setup->fout;
> -
> -	return ret;
> -}
> -
> -static int clk_sccg_pll_determine_rate(struct clk_hw *hw,
> -				       struct clk_rate_request *req)
> -{
> -	struct clk_sccg_pll *pll = to_clk_sccg_pll(hw);
> -	struct clk_sccg_pll_setup *setup = &pll->setup;
> -	uint64_t rate = req->rate;
> -	uint64_t min = req->min_rate;
> -	uint64_t max = req->max_rate;
> -	int ret = -EINVAL;
> -
> -	if (rate < PLL_OUT_MIN_FREQ || rate > PLL_OUT_MAX_FREQ)
> -		return ret;
> -
> -	ret = __clk_sccg_pll_determine_rate(hw, req, req->rate, req->rate,
> -						rate, PLL_BYPASS2);
> -	if (!ret)
> -		return ret;
> -
> -	ret = __clk_sccg_pll_determine_rate(hw, req, PLL_STAGE1_REF_MIN_FREQ,
> -						PLL_STAGE1_REF_MAX_FREQ, rate,
> -						PLL_BYPASS1);
> -	if (!ret)
> -		return ret;
> -
> -	ret = __clk_sccg_pll_determine_rate(hw, req, PLL_REF_MIN_FREQ,
> -						PLL_REF_MAX_FREQ, rate,
> -						PLL_BYPASS_NONE);
> -	if (!ret)
> -		return ret;
> -
> -	if (setup->fout >= min && setup->fout <= max)
> -		ret = 0;
> -
> -	return ret;
> -}
> -
> -static const struct clk_ops clk_sccg_pll_ops = {
> -	.prepare	= clk_sccg_pll_prepare,
> -	.unprepare	= clk_sccg_pll_unprepare,
> -	.is_prepared	= clk_sccg_pll_is_prepared,
> -	.recalc_rate	= clk_sccg_pll_recalc_rate,
> -	.set_rate	= clk_sccg_pll_set_rate,
> -	.set_parent	= clk_sccg_pll_set_parent,
> -	.get_parent	= clk_sccg_pll_get_parent,
> -	.determine_rate	= clk_sccg_pll_determine_rate,
> -};
> -
> -struct clk *imx_clk_sccg_pll(const char *name,
> -				const char * const *parent_names,
> -				u8 num_parents,
> -				u8 parent, u8 bypass1, u8 bypass2,
> -				void __iomem *base,
> -				unsigned long flags)
> -{
> -	struct clk_sccg_pll *pll;
> -	struct clk_init_data init;
> -	struct clk_hw *hw;
> -	int ret;
> -
> -	pll = kzalloc(sizeof(*pll), GFP_KERNEL);
> -	if (!pll)
> -		return ERR_PTR(-ENOMEM);
> -
> -	pll->parent = parent;
> -	pll->bypass1 = bypass1;
> -	pll->bypass2 = bypass2;
> -
> -	pll->base = base;
> -	init.name = name;
> -	init.ops = &clk_sccg_pll_ops;
> -
> -	init.flags = flags;
> -	init.parent_names = parent_names;
> -	init.num_parents = num_parents;
> -
> -	pll->base = base;
> -	pll->hw.init = &init;
> -
> -	hw = &pll->hw;
> -
> -	ret = clk_hw_register(NULL, hw);
> -	if (ret) {
> -		kfree(pll);
> -		return ERR_PTR(ret);
> -	}
> -
> -	return hw->clk;
> -}
> diff --git a/drivers/clk/imx/clk-sscg-pll.c b/drivers/clk/imx/clk-sscg-pll.c
> new file mode 100644
> index 00000000..0669e17
> --- /dev/null
> +++ b/drivers/clk/imx/clk-sscg-pll.c
> @@ -0,0 +1,549 @@
> +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
> +/*
> + * Copyright 2018 NXP.
> + *
> + * This driver supports the SCCG plls found in the imx8m SOCs
> + *
> + * Documentation for this SCCG pll can be found at:
> + *   https://www.nxp.com/docs/en/reference-manual/IMX8MDQLQRM.pdf#page=834
> + */
> +
> +#include <linux/clk-provider.h>
> +#include <linux/err.h>
> +#include <linux/io.h>
> +#include <linux/iopoll.h>
> +#include <linux/slab.h>
> +#include <linux/bitfield.h>
> +
> +#include "clk.h"
> +
> +/* PLL CFGs */
> +#define PLL_CFG0		0x0
> +#define PLL_CFG1		0x4
> +#define PLL_CFG2		0x8
> +
> +#define PLL_DIVF1_MASK		GENMASK(18, 13)
> +#define PLL_DIVF2_MASK		GENMASK(12, 7)
> +#define PLL_DIVR1_MASK		GENMASK(27, 25)
> +#define PLL_DIVR2_MASK		GENMASK(24, 19)
> +#define PLL_DIVQ_MASK           GENMASK(6, 1)
> +#define PLL_REF_MASK		GENMASK(2, 0)
> +
> +#define PLL_LOCK_MASK		BIT(31)
> +#define PLL_PD_MASK		BIT(7)
> +
> +/* These are the specification limits for the SSCG PLL */
> +#define PLL_REF_MIN_FREQ		25000000UL
> +#define PLL_REF_MAX_FREQ		235000000UL
> +
> +#define PLL_STAGE1_MIN_FREQ		1600000000UL
> +#define PLL_STAGE1_MAX_FREQ		2400000000UL
> +
> +#define PLL_STAGE1_REF_MIN_FREQ		25000000UL
> +#define PLL_STAGE1_REF_MAX_FREQ		54000000UL
> +
> +#define PLL_STAGE2_MIN_FREQ		1200000000UL
> +#define PLL_STAGE2_MAX_FREQ		2400000000UL
> +
> +#define PLL_STAGE2_REF_MIN_FREQ		54000000UL
> +#define PLL_STAGE2_REF_MAX_FREQ		75000000UL
> +
> +#define PLL_OUT_MIN_FREQ		20000000UL
> +#define PLL_OUT_MAX_FREQ		1200000000UL
> +
> +#define PLL_DIVR1_MAX			7
> +#define PLL_DIVR2_MAX			63
> +#define PLL_DIVF1_MAX			63
> +#define PLL_DIVF2_MAX			63
> +#define PLL_DIVQ_MAX			63
> +
> +#define PLL_BYPASS_NONE			0x0
> +#define PLL_BYPASS1			0x2
> +#define PLL_BYPASS2			0x1
> +
> +#define SSCG_PLL_BYPASS1_MASK           BIT(5)
> +#define SSCG_PLL_BYPASS2_MASK           BIT(4)
> +#define SSCG_PLL_BYPASS_MASK		GENMASK(5, 4)
> +
> +#define PLL_SCCG_LOCK_TIMEOUT		70
> +
> +struct clk_sscg_pll_setup {
> +	int divr1, divf1;
> +	int divr2, divf2;
> +	int divq;
> +	int bypass;
> +
> +	uint64_t vco1;
> +	uint64_t vco2;
> +	uint64_t fout;
> +	uint64_t ref;
> +	uint64_t ref_div1;
> +	uint64_t ref_div2;
> +	uint64_t fout_request;
> +	int fout_error;
> +};
> +
> +struct clk_sscg_pll {
> +	struct clk_hw	hw;
> +	const struct clk_ops  ops;
> +
> +	void __iomem *base;
> +
> +	struct clk_sscg_pll_setup setup;
> +
> +	u8 parent;
> +	u8 bypass1;
> +	u8 bypass2;
> +};
> +
> +#define to_clk_sscg_pll(_hw) container_of(_hw, struct clk_sscg_pll, hw)
> +
> +static int clk_sscg_pll_wait_lock(struct clk_sscg_pll *pll)
> +{
> +	u32 val;
> +
> +	val = readl_relaxed(pll->base + PLL_CFG0);
> +
> +	/* don't wait for lock if all plls are bypassed */
> +	if (!(val & SSCG_PLL_BYPASS2_MASK))
> +		return readl_poll_timeout(pll->base, val, val & PLL_LOCK_MASK,
> +						0, PLL_SCCG_LOCK_TIMEOUT);
> +
> +	return 0;
> +}
> +
> +static int clk_sscg_pll2_check_match(struct clk_sscg_pll_setup *setup,
> +					struct clk_sscg_pll_setup *temp_setup)
> +{
> +	int new_diff = temp_setup->fout - temp_setup->fout_request;
> +	int diff = temp_setup->fout_error;
> +
> +	if (abs(diff) > abs(new_diff)) {
> +		temp_setup->fout_error = new_diff;
> +		memcpy(setup, temp_setup, sizeof(struct clk_sscg_pll_setup));
> +
> +		if (temp_setup->fout_request == temp_setup->fout)
> +			return 0;
> +	}
> +	return -1;
> +}
> +
> +static int clk_sscg_divq_lookup(struct clk_sscg_pll_setup *setup,
> +				struct clk_sscg_pll_setup *temp_setup)
> +{
> +	int ret = -EINVAL;
> +
> +	for (temp_setup->divq = 0; temp_setup->divq <= PLL_DIVQ_MAX;
> +	     temp_setup->divq++) {
> +		temp_setup->vco2 = temp_setup->vco1;
> +		do_div(temp_setup->vco2, temp_setup->divr2 + 1);
> +		temp_setup->vco2 *= 2;
> +		temp_setup->vco2 *= temp_setup->divf2 + 1;
> +		if (temp_setup->vco2 >= PLL_STAGE2_MIN_FREQ &&
> +				temp_setup->vco2 <= PLL_STAGE2_MAX_FREQ) {
> +			temp_setup->fout = temp_setup->vco2;
> +			do_div(temp_setup->fout, 2 * (temp_setup->divq + 1));
> +
> +			ret = clk_sscg_pll2_check_match(setup, temp_setup);
> +			if (!ret) {
> +				temp_setup->bypass = PLL_BYPASS1;
> +				return ret;
> +			}
> +		}
> +	}
> +
> +	return ret;
> +}
> +
> +static int clk_sscg_divf2_lookup(struct clk_sscg_pll_setup *setup,
> +					struct clk_sscg_pll_setup *temp_setup)
> +{
> +	int ret = -EINVAL;
> +
> +	for (temp_setup->divf2 = 0; temp_setup->divf2 <= PLL_DIVF2_MAX;
> +	     temp_setup->divf2++) {
> +		ret = clk_sscg_divq_lookup(setup, temp_setup);
> +		if (!ret)
> +			return ret;
> +	}
> +
> +	return ret;
> +}
> +
> +static int clk_sscg_divr2_lookup(struct clk_sscg_pll_setup *setup,
> +				struct clk_sscg_pll_setup *temp_setup)
> +{
> +	int ret = -EINVAL;
> +
> +	for (temp_setup->divr2 = 0; temp_setup->divr2 <= PLL_DIVR2_MAX;
> +	     temp_setup->divr2++) {
> +		temp_setup->ref_div2 = temp_setup->vco1;
> +		do_div(temp_setup->ref_div2, temp_setup->divr2 + 1);
> +		if (temp_setup->ref_div2 >= PLL_STAGE2_REF_MIN_FREQ &&
> +		    temp_setup->ref_div2 <= PLL_STAGE2_REF_MAX_FREQ) {
> +			ret = clk_sscg_divf2_lookup(setup, temp_setup);
> +			if (!ret)
> +				return ret;
> +		}
> +	}
> +
> +	return ret;
> +}
> +
> +static int clk_sscg_pll2_find_setup(struct clk_sscg_pll_setup *setup,
> +					struct clk_sscg_pll_setup *temp_setup,
> +					uint64_t ref)
> +{
> +
> +	int ret = -EINVAL;
> +
> +	if (ref < PLL_STAGE1_MIN_FREQ || ref > PLL_STAGE1_MAX_FREQ)
> +		return ret;
> +
> +	temp_setup->vco1 = ref;
> +
> +	ret = clk_sscg_divr2_lookup(setup, temp_setup);
> +	return ret;
> +}
> +
> +static int clk_sscg_divf1_lookup(struct clk_sscg_pll_setup *setup,
> +				struct clk_sscg_pll_setup *temp_setup)
> +{
> +	int ret = -EINVAL;
> +
> +	for (temp_setup->divf1 = 0; temp_setup->divf1 <= PLL_DIVF1_MAX;
> +	     temp_setup->divf1++) {
> +		uint64_t vco1 = temp_setup->ref;
> +
> +		do_div(vco1, temp_setup->divr1 + 1);
> +		vco1 *= 2;
> +		vco1 *= temp_setup->divf1 + 1;
> +
> +		ret = clk_sscg_pll2_find_setup(setup, temp_setup, vco1);
> +		if (!ret) {
> +			temp_setup->bypass = PLL_BYPASS_NONE;
> +			return ret;
> +		}
> +	}
> +
> +	return ret;
> +}
> +
> +static int clk_sscg_divr1_lookup(struct clk_sscg_pll_setup *setup,
> +				struct clk_sscg_pll_setup *temp_setup)
> +{
> +	int ret = -EINVAL;
> +
> +	for (temp_setup->divr1 = 0; temp_setup->divr1 <= PLL_DIVR1_MAX;
> +	     temp_setup->divr1++) {
> +		temp_setup->ref_div1 = temp_setup->ref;
> +		do_div(temp_setup->ref_div1, temp_setup->divr1 + 1);
> +		if (temp_setup->ref_div1 >= PLL_STAGE1_REF_MIN_FREQ &&
> +		    temp_setup->ref_div1 <= PLL_STAGE1_REF_MAX_FREQ) {
> +			ret = clk_sscg_divf1_lookup(setup, temp_setup);
> +			if (!ret)
> +				return ret;
> +		}
> +	}
> +
> +	return ret;
> +}
> +
> +static int clk_sscg_pll1_find_setup(struct clk_sscg_pll_setup *setup,
> +					struct clk_sscg_pll_setup *temp_setup,
> +					uint64_t ref)
> +{
> +
> +	int ret = -EINVAL;
> +
> +	if (ref < PLL_REF_MIN_FREQ || ref > PLL_REF_MAX_FREQ)
> +		return ret;
> +
> +	temp_setup->ref = ref;
> +
> +	ret = clk_sscg_divr1_lookup(setup, temp_setup);
> +
> +	return ret;
> +}
> +
> +static int clk_sscg_pll_find_setup(struct clk_sscg_pll_setup *setup,
> +					uint64_t prate,
> +					uint64_t rate, int try_bypass)
> +{
> +	struct clk_sscg_pll_setup temp_setup;
> +	int ret = -EINVAL;
> +
> +	memset(&temp_setup, 0, sizeof(struct clk_sscg_pll_setup));
> +	memset(setup, 0, sizeof(struct clk_sscg_pll_setup));
> +
> +	temp_setup.fout_error = PLL_OUT_MAX_FREQ;
> +	temp_setup.fout_request = rate;
> +
> +	switch (try_bypass) {
> +
> +	case PLL_BYPASS2:
> +		if (prate == rate) {
> +			setup->bypass = PLL_BYPASS2;
> +			setup->fout = rate;
> +			ret = 0;
> +		}
> +		break;
> +
> +	case PLL_BYPASS1:
> +		ret = clk_sscg_pll2_find_setup(setup, &temp_setup, prate);
> +		break;
> +
> +	case PLL_BYPASS_NONE:
> +		ret = clk_sscg_pll1_find_setup(setup, &temp_setup, prate);
> +		break;
> +	}
> +
> +	return ret;
> +}
> +
> +
> +static int clk_sscg_pll_is_prepared(struct clk_hw *hw)
> +{
> +	struct clk_sscg_pll *pll = to_clk_sscg_pll(hw);
> +
> +	u32 val = readl_relaxed(pll->base + PLL_CFG0);
> +
> +	return (val & PLL_PD_MASK) ? 0 : 1;
> +}
> +
> +static int clk_sscg_pll_prepare(struct clk_hw *hw)
> +{
> +	struct clk_sscg_pll *pll = to_clk_sscg_pll(hw);
> +	u32 val;
> +
> +	val = readl_relaxed(pll->base + PLL_CFG0);
> +	val &= ~PLL_PD_MASK;
> +	writel_relaxed(val, pll->base + PLL_CFG0);
> +
> +	return clk_sscg_pll_wait_lock(pll);
> +}
> +
> +static void clk_sscg_pll_unprepare(struct clk_hw *hw)
> +{
> +	struct clk_sscg_pll *pll = to_clk_sscg_pll(hw);
> +	u32 val;
> +
> +	val = readl_relaxed(pll->base + PLL_CFG0);
> +	val |= PLL_PD_MASK;
> +	writel_relaxed(val, pll->base + PLL_CFG0);
> +}
> +
> +static unsigned long clk_sscg_pll_recalc_rate(struct clk_hw *hw,
> +					 unsigned long parent_rate)
> +{
> +	struct clk_sscg_pll *pll = to_clk_sscg_pll(hw);
> +	u32 val, divr1, divf1, divr2, divf2, divq;
> +	u64 temp64;
> +
> +	val = readl_relaxed(pll->base + PLL_CFG2);
> +	divr1 = FIELD_GET(PLL_DIVR1_MASK, val);
> +	divr2 = FIELD_GET(PLL_DIVR2_MASK, val);
> +	divf1 = FIELD_GET(PLL_DIVF1_MASK, val);
> +	divf2 = FIELD_GET(PLL_DIVF2_MASK, val);
> +	divq = FIELD_GET(PLL_DIVQ_MASK, val);
> +
> +	temp64 = parent_rate;
> +
> +	val = readl(pll->base + PLL_CFG0);
> +	if (val & SSCG_PLL_BYPASS2_MASK) {
> +		temp64 = parent_rate;
> +	} else if (val & SSCG_PLL_BYPASS1_MASK) {
> +		temp64 *= divf2;
> +		do_div(temp64, (divr2 + 1) * (divq + 1));
> +	} else {
> +		temp64 *= 2;
> +		temp64 *= (divf1 + 1) * (divf2 + 1);
> +		do_div(temp64, (divr1 + 1) * (divr2 + 1) * (divq + 1));
> +	}
> +
> +	return temp64;
> +}
> +
> +static int clk_sscg_pll_set_rate(struct clk_hw *hw, unsigned long rate,
> +			    unsigned long parent_rate)
> +{
> +	struct clk_sscg_pll *pll = to_clk_sscg_pll(hw);
> +	struct clk_sscg_pll_setup *setup = &pll->setup;
> +	u32 val;
> +
> +	/* set bypass here too since the parent might be the same */
> +	val = readl(pll->base + PLL_CFG0);
> +	val &= ~SSCG_PLL_BYPASS_MASK;
> +	val |= FIELD_PREP(SSCG_PLL_BYPASS_MASK, setup->bypass);
> +	writel(val, pll->base + PLL_CFG0);
> +
> +	val = readl_relaxed(pll->base + PLL_CFG2);
> +	val &= ~(PLL_DIVF1_MASK | PLL_DIVF2_MASK);
> +	val &= ~(PLL_DIVR1_MASK | PLL_DIVR2_MASK | PLL_DIVQ_MASK);
> +	val |= FIELD_PREP(PLL_DIVF1_MASK, setup->divf1);
> +	val |= FIELD_PREP(PLL_DIVF2_MASK, setup->divf2);
> +	val |= FIELD_PREP(PLL_DIVR1_MASK, setup->divr1);
> +	val |= FIELD_PREP(PLL_DIVR2_MASK, setup->divr2);
> +	val |= FIELD_PREP(PLL_DIVQ_MASK, setup->divq);
> +	writel_relaxed(val, pll->base + PLL_CFG2);
> +
> +	return clk_sscg_pll_wait_lock(pll);
> +}
> +
> +static u8 clk_sscg_pll_get_parent(struct clk_hw *hw)
> +{
> +	struct clk_sscg_pll *pll = to_clk_sscg_pll(hw);
> +	u32 val;
> +	u8 ret = pll->parent;
> +
> +	val = readl(pll->base + PLL_CFG0);
> +	if (val & SSCG_PLL_BYPASS2_MASK)
> +		ret = pll->bypass2;
> +	else if (val & SSCG_PLL_BYPASS1_MASK)
> +		ret = pll->bypass1;
> +	return ret;
> +}
> +
> +static int clk_sscg_pll_set_parent(struct clk_hw *hw, u8 index)
> +{
> +	struct clk_sscg_pll *pll = to_clk_sscg_pll(hw);
> +	u32 val;
> +
> +	val = readl(pll->base + PLL_CFG0);
> +	val &= ~SSCG_PLL_BYPASS_MASK;
> +	val |= FIELD_PREP(SSCG_PLL_BYPASS_MASK, pll->setup.bypass);
> +	writel(val, pll->base + PLL_CFG0);
> +
> +	return clk_sscg_pll_wait_lock(pll);
> +}
> +
> +static int __clk_sscg_pll_determine_rate(struct clk_hw *hw,
> +					struct clk_rate_request *req,
> +					uint64_t min,
> +					uint64_t max,
> +					uint64_t rate,
> +					int bypass)
> +{
> +	struct clk_sscg_pll *pll = to_clk_sscg_pll(hw);
> +	struct clk_sscg_pll_setup *setup = &pll->setup;
> +	struct clk_hw *parent_hw = NULL;
> +	int bypass_parent_index;
> +	int ret = -EINVAL;
> +
> +	req->max_rate = max;
> +	req->min_rate = min;
> +
> +	switch (bypass) {
> +	case PLL_BYPASS2:
> +		bypass_parent_index = pll->bypass2;
> +		break;
> +	case PLL_BYPASS1:
> +		bypass_parent_index = pll->bypass1;
> +		break;
> +	default:
> +		bypass_parent_index = pll->parent;
> +		break;
> +	}
> +
> +	parent_hw = clk_hw_get_parent_by_index(hw, bypass_parent_index);
> +	ret = __clk_determine_rate(parent_hw, req);
> +	if (!ret) {
> +		ret = clk_sscg_pll_find_setup(setup, req->rate,
> +						rate, bypass);
> +	}
> +
> +	req->best_parent_hw = parent_hw;
> +	req->best_parent_rate = req->rate;
> +	req->rate = setup->fout;
> +
> +	return ret;
> +}
> +
> +static int clk_sscg_pll_determine_rate(struct clk_hw *hw,
> +				       struct clk_rate_request *req)
> +{
> +	struct clk_sscg_pll *pll = to_clk_sscg_pll(hw);
> +	struct clk_sscg_pll_setup *setup = &pll->setup;
> +	uint64_t rate = req->rate;
> +	uint64_t min = req->min_rate;
> +	uint64_t max = req->max_rate;
> +	int ret = -EINVAL;
> +
> +	if (rate < PLL_OUT_MIN_FREQ || rate > PLL_OUT_MAX_FREQ)
> +		return ret;
> +
> +	ret = __clk_sscg_pll_determine_rate(hw, req, req->rate, req->rate,
> +						rate, PLL_BYPASS2);
> +	if (!ret)
> +		return ret;
> +
> +	ret = __clk_sscg_pll_determine_rate(hw, req, PLL_STAGE1_REF_MIN_FREQ,
> +						PLL_STAGE1_REF_MAX_FREQ, rate,
> +						PLL_BYPASS1);
> +	if (!ret)
> +		return ret;
> +
> +	ret = __clk_sscg_pll_determine_rate(hw, req, PLL_REF_MIN_FREQ,
> +						PLL_REF_MAX_FREQ, rate,
> +						PLL_BYPASS_NONE);
> +	if (!ret)
> +		return ret;
> +
> +	if (setup->fout >= min && setup->fout <= max)
> +		ret = 0;
> +
> +	return ret;
> +}
> +
> +static const struct clk_ops clk_sscg_pll_ops = {
> +	.prepare	= clk_sscg_pll_prepare,
> +	.unprepare	= clk_sscg_pll_unprepare,
> +	.is_prepared	= clk_sscg_pll_is_prepared,
> +	.recalc_rate	= clk_sscg_pll_recalc_rate,
> +	.set_rate	= clk_sscg_pll_set_rate,
> +	.set_parent	= clk_sscg_pll_set_parent,
> +	.get_parent	= clk_sscg_pll_get_parent,
> +	.determine_rate	= clk_sscg_pll_determine_rate,
> +};
> +
> +struct clk *imx_clk_sscg_pll(const char *name,
> +				const char * const *parent_names,
> +				u8 num_parents,
> +				u8 parent, u8 bypass1, u8 bypass2,
> +				void __iomem *base,
> +				unsigned long flags)
> +{
> +	struct clk_sscg_pll *pll;
> +	struct clk_init_data init;
> +	struct clk_hw *hw;
> +	int ret;
> +
> +	pll = kzalloc(sizeof(*pll), GFP_KERNEL);
> +	if (!pll)
> +		return ERR_PTR(-ENOMEM);
> +
> +	pll->parent = parent;
> +	pll->bypass1 = bypass1;
> +	pll->bypass2 = bypass2;
> +
> +	pll->base = base;
> +	init.name = name;
> +	init.ops = &clk_sscg_pll_ops;
> +
> +	init.flags = flags;
> +	init.parent_names = parent_names;
> +	init.num_parents = num_parents;
> +
> +	pll->base = base;
> +	pll->hw.init = &init;
> +
> +	hw = &pll->hw;
> +
> +	ret = clk_hw_register(NULL, hw);
> +	if (ret) {
> +		kfree(pll);
> +		return ERR_PTR(ret);
> +	}
> +
> +	return hw->clk;
> +}
> diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
> index 30ddbc1..9330632 100644
> --- a/drivers/clk/imx/clk.h
> +++ b/drivers/clk/imx/clk.h
> @@ -24,7 +24,7 @@ enum imx_pllv1_type {
>   	IMX_PLLV1_IMX35,
>   };
>   
> -enum imx_sccg_pll_type {
> +enum imx_sscg_pll_type {
>   	SCCG_PLL1,
>   	SCCG_PLL2,
>   };
> @@ -109,7 +109,7 @@ struct clk *imx_clk_pllv2(const char *name, const char *parent,
>   struct clk *imx_clk_frac_pll(const char *name, const char *parent_name,
>   			     void __iomem *base);
>   
> -struct clk *imx_clk_sccg_pll(const char *name,
> +struct clk *imx_clk_sscg_pll(const char *name,
>   				const char * const *parent_names,
>   				u8 num_parents,
>   				u8 parent, u8 bypass1, u8 bypass2,
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
