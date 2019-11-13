Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F08CFAAF8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 08:29:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4eX0L1zZgDX6RW1mIcutUPnB99Ex9GFZN4lV4tWawf8=; b=g8qD7xs7tKvu1s
	CmHLCpBgPPGUikIg11tB5DM6u7sLn1m4+N8ltmYnr65Lb+WxhqISCzWxHoqkOSWD7T/4YTR4wEEXi
	yw9aVMz4ZkZDVqKyzwEONx+APo3CZzpQTKAFy452ek1KXjPI8qTzoUv5ERgL08J0+pBnA+v/lEr72
	ImK/YZIQT7OhJY2o4ivFqfMMBgQiPFjSuja9A393HOT2AbMcjZi6jldwAap06DpXmUBdvTYpxpSij
	IGkxNqKVOQu9bgFzRRTPkQ6p3gu+95yAIh0PMmFU4Lds7aPQmbz4RVyIQ+To3USdLlbdUQaXGeFk1
	M6ykcG5ERp2HMOG1Hx6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUn5l-0005H8-Sx; Wed, 13 Nov 2019 07:29:29 +0000
Received: from mail-eopbgr130053.outbound.protection.outlook.com
 ([40.107.13.53] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUn5d-0005Gk-LI
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 07:29:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bu3CmO/aiZrW619NsAcjPRVzzM5x/aYmu8Zc/qjST/PjUHybBGGAxpn+NHrpFk44bD1dVh9WOIS/QY4mXc/VyFt4UzwY/v3xlUvAVvhKVenUcKKhqVg5gPlhbQENU/vSQ4WoImyyNLr9cbK5B1jSDs9uT6Wbl9E8LEYFurDW8o944L6H4SP753OFLf5IpCukmH1f/fQzKVYJXQm3npkjZzrl5gv4b4phhp78dTihx3QsXf0o9D+/bJz8dBBW1sVCjM84Rw6Il7ktJ1tCEV+LP3ngKf2Q7DoeznPj/nPomLgi42W/80j0pN431WWZ0AEt4fIUzzlewUgjOmyoCM8Gag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=z9LdoxyajUVBdtWGcWtuZ2nCdtfZslONSipPx8DwjDs=;
 b=TmWOweXLIWgKnemJSg7HA6/4fESf6sF9wIJJatspGymKC9ZSGONGAY2Szh7r70p6PjKYtx4FyUyvKi26cI/iGRAQ1qaTsQxdNJJcR/FotPCqRZilUqdC/9AGfDNOUtaGDkY0lhNUwkMeVTF3xdZoYmF7Kl2VwXCpzEWQKBIdd0F9zDJbhyFRQaeGnemFtb+mp9FxywEMjc5B4vQjXZvUjyjKwjV4VdZAQpzOCjHvCmYVQBzRen0/V07LjqG1aSahmerAsv4U+//O7AGRcSdHe3yrHM6w5NfOjZXF9UV6jcg9OtQa2DvAx6KXnrNX9Dwp5K5Hjo1jm/3NeC3TGB9L7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=z9LdoxyajUVBdtWGcWtuZ2nCdtfZslONSipPx8DwjDs=;
 b=O4WJSbIT/VBTakAdfVnh0m15HKi+uLS/tDLndhDLQ1UuP32TFMJ+ttm7OnnoMT7UlLBcagzzEzAl/Rs0acNXePW6u7dZOX0uHxsrE2WtLvrJQcnkLsoHxv+pDVg9XALJKjsQosQvXcgoFYUeXoJo8l4i+uPlasfvTYbA4JYUq2E=
Received: from DB7PR04MB4490.eurprd04.prod.outlook.com (52.135.138.150) by
 DB7PR04MB5260.eurprd04.prod.outlook.com (20.176.237.25) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.22; Wed, 13 Nov 2019 07:29:17 +0000
Received: from DB7PR04MB4490.eurprd04.prod.outlook.com
 ([fe80::115f:1e4f:9ceb:2a2c]) by DB7PR04MB4490.eurprd04.prod.outlook.com
 ([fe80::115f:1e4f:9ceb:2a2c%7]) with mapi id 15.20.2430.028; Wed, 13 Nov 2019
 07:29:17 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Leonard Crestez <leonard.crestez@nxp.com>, Stephen Boyd
 <sboyd@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>, Rob Herring
 <robh+dt@kernel.org>
Subject: RE: [PATCH v5 2/5] clk: imx: Mark dram pll on 8mm and 8mn with
 CLK_GET_RATE_NOCACHE
Thread-Topic: [PATCH v5 2/5] clk: imx: Mark dram pll on 8mm and 8mn with
 CLK_GET_RATE_NOCACHE
Thread-Index: AQHVmaNNQleGyf6L90SmwJ7UhRbhVKeItGPQ
Date: Wed, 13 Nov 2019 07:29:17 +0000
Message-ID: <DB7PR04MB4490A934AC170E4BA1CD261788760@DB7PR04MB4490.eurprd04.prod.outlook.com>
References: <cover.1573595318.git.leonard.crestez@nxp.com>
 <65d08f34741f1ffa94a53bc128433e6c958091d2.1573595319.git.leonard.crestez@nxp.com>
In-Reply-To: <65d08f34741f1ffa94a53bc128433e6c958091d2.1573595319.git.leonard.crestez@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: f15df55d-4adb-4bd5-a5cb-08d7680b3157
x-ms-traffictypediagnostic: DB7PR04MB5260:|DB7PR04MB5260:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB5260C6D53F061F3001C4E05C88760@DB7PR04MB5260.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2803;
x-forefront-prvs: 0220D4B98D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(346002)(366004)(396003)(376002)(39860400002)(199004)(189003)(102836004)(55016002)(74316002)(86362001)(6116002)(7736002)(305945005)(3846002)(486006)(81156014)(81166006)(476003)(66476007)(8676002)(52536014)(7696005)(66946007)(7416002)(66446008)(66556008)(6506007)(44832011)(5660300002)(64756008)(76176011)(2906002)(6306002)(26005)(99286004)(9686003)(33656002)(6246003)(6436002)(478600001)(446003)(66066001)(4326008)(8936002)(966005)(14454004)(71190400001)(229853002)(256004)(76116006)(316002)(25786009)(54906003)(11346002)(110136005)(186003)(71200400001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB5260;
 H:DB7PR04MB4490.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4S80MecITYh2PixKWZmbdqg7EvDmpcvLq6nN708O1gNss8XI1rM3Q/fGBRYBpWl/rDWi7I5B2LnjBpE1FRXXdxaeAIs/UojN/kQs58s3Ni2a4VzTbS+z2eRUvFyp2E/9KuYBAn4KqO9DvGbedVJptJcC2plkHPjLHGoZAw0Neo0XheKr+bPHeMhdwK5BNc2IC30Ze+eDeh03eZUy7q6ENeWxozjOyV0chKnAFyI1FKIwhvDfdgTNzb8Fzd37TVC7skq4pmlsayIcwlqDXbIDRMZkZFOuR8C8p9hWj8KYIBDQlxnAeQabfPb5y79xsvVeSg+hon/f6GfiWOFdH4ZgKIwUMCI25QnrZ/ieyPszzi5EjApBzjj/lDfpONUTWlL/UInbSOMZR+KhBuvIgTCLNypUcCRNKftVcEBnHfK42ERi04c0n2vICZ5VyBBgxQGe
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f15df55d-4adb-4bd5-a5cb-08d7680b3157
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Nov 2019 07:29:17.6512 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VBVzNuRc3894/rZAGMIFqTq115OQ//3WNT2QhPu+BQS+LqY6Vkl9S2hxgYRVR9i4/wx9wdEZ2g3iwjVjLwFXhA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB5260
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_232921_697878_1BD6497A 
X-CRM114-Status: GOOD (  20.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.53 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 =?iso-8859-2?Q?Artur_=A6wigo=F1?= <a.swigon@partner.samsung.com>,
 Jacky Bai <ping.bai@nxp.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Angus Ainslie <angus@akkea.ca>,
 Alexandre Bailon <abailon@baylibre.com>, Matthias Kaehlcke <mka@chromium.org>,
 Abel Vesa <abel.vesa@nxp.com>, Saravana Kannan <saravanak@google.com>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, dl-linux-imx <linux-imx@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Martin Kepplinger <martink@posteo.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Georgi Djakov <georgi.djakov@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Leonard,

> Subject: [PATCH v5 2/5] clk: imx: Mark dram pll on 8mm and 8mn with
> CLK_GET_RATE_NOCACHE

This patch will conflict with https://patchwork.kernel.org/cover/11224933/
And I just post a new patch https://patchwork.kernel.org/patch/11241231/
 
Then no need add imx_1443x_dram_pll

Regards,
Peng.

> 
> DRAM frequency switches are executed in firmware and can change the
> configuration of the DRAM PLL outside linux. Mark these CLKs with
> CLK_GET_RATE_NOCACHE so we always read back the PLL config registers
> and recalculate rates.
> 
> In current DRAM frequency tables on 8mm/8mn only the maximum frequency
> uses the PLL so it's always configured in the same way. However reading back
> the PLL configuration is the correct behavior and allows additional setpoints in
> the future.
> 
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> Reviewed-by: Abel Vesa <abel.vesa@nxp.com>
> ---
>  drivers/clk/imx/clk-imx8mm.c  | 2 +-
>  drivers/clk/imx/clk-imx8mn.c  | 2 +-
>  drivers/clk/imx/clk-pll14xx.c | 7 +++++++
>  drivers/clk/imx/clk.h         | 1 +
>  4 files changed, 10 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/clk/imx/clk-imx8mm.c b/drivers/clk/imx/clk-imx8mm.c
> index e2bc3c90d93c..9246e89bb5fd 100644
> --- a/drivers/clk/imx/clk-imx8mm.c
> +++ b/drivers/clk/imx/clk-imx8mm.c
> @@ -326,11 +326,11 @@ static int imx8mm_clocks_probe(struct
> platform_device *pdev)
>  	clks[IMX8MM_SYS_PLL3_REF_SEL] = imx_clk_mux("sys_pll3_ref_sel",
> base + 0x114, 0, 2, pll_ref_sels, ARRAY_SIZE(pll_ref_sels));
> 
>  	clks[IMX8MM_AUDIO_PLL1] = imx_clk_pll14xx("audio_pll1",
> "audio_pll1_ref_sel", base, &imx_1443x_pll);
>  	clks[IMX8MM_AUDIO_PLL2] = imx_clk_pll14xx("audio_pll2",
> "audio_pll2_ref_sel", base + 0x14, &imx_1443x_pll);
>  	clks[IMX8MM_VIDEO_PLL1] = imx_clk_pll14xx("video_pll1",
> "video_pll1_ref_sel", base + 0x28, &imx_1443x_pll);
> -	clks[IMX8MM_DRAM_PLL] = imx_clk_pll14xx("dram_pll",
> "dram_pll_ref_sel", base + 0x50, &imx_1443x_pll);
> +	clks[IMX8MM_DRAM_PLL] = imx_clk_pll14xx("dram_pll",
> +"dram_pll_ref_sel", base + 0x50, &imx_1443x_dram_pll);
>  	clks[IMX8MM_GPU_PLL] = imx_clk_pll14xx("gpu_pll", "gpu_pll_ref_sel",
> base + 0x64, &imx_1416x_pll);
>  	clks[IMX8MM_VPU_PLL] = imx_clk_pll14xx("vpu_pll", "vpu_pll_ref_sel",
> base + 0x74, &imx_1416x_pll);
>  	clks[IMX8MM_ARM_PLL] = imx_clk_pll14xx("arm_pll", "arm_pll_ref_sel",
> base + 0x84, &imx_1416x_pll);
>  	clks[IMX8MM_SYS_PLL1] = imx_clk_fixed("sys_pll1", 800000000);
>  	clks[IMX8MM_SYS_PLL2] = imx_clk_fixed("sys_pll2", 1000000000); diff
> --git a/drivers/clk/imx/clk-imx8mn.c b/drivers/clk/imx/clk-imx8mn.c index
> de905e278b80..4749beab9fc8 100644
> --- a/drivers/clk/imx/clk-imx8mn.c
> +++ b/drivers/clk/imx/clk-imx8mn.c
> @@ -323,11 +323,11 @@ static int imx8mn_clocks_probe(struct
> platform_device *pdev)
>  	clks[IMX8MN_SYS_PLL3_REF_SEL] = imx_clk_mux("sys_pll3_ref_sel",
> base + 0x114, 0, 2, pll_ref_sels, ARRAY_SIZE(pll_ref_sels));
> 
>  	clks[IMX8MN_AUDIO_PLL1] = imx_clk_pll14xx("audio_pll1",
> "audio_pll1_ref_sel", base, &imx_1443x_pll);
>  	clks[IMX8MN_AUDIO_PLL2] = imx_clk_pll14xx("audio_pll2",
> "audio_pll2_ref_sel", base + 0x14, &imx_1443x_pll);
>  	clks[IMX8MN_VIDEO_PLL1] = imx_clk_pll14xx("video_pll1",
> "video_pll1_ref_sel", base + 0x28, &imx_1443x_pll);
> -	clks[IMX8MN_DRAM_PLL] = imx_clk_pll14xx("dram_pll",
> "dram_pll_ref_sel", base + 0x50, &imx_1443x_pll);
> +	clks[IMX8MN_DRAM_PLL] = imx_clk_pll14xx("dram_pll",
> +"dram_pll_ref_sel", base + 0x50, &imx_1443x_dram_pll);
>  	clks[IMX8MN_GPU_PLL] = imx_clk_pll14xx("gpu_pll", "gpu_pll_ref_sel",
> base + 0x64, &imx_1416x_pll);
>  	clks[IMX8MN_VPU_PLL] = imx_clk_pll14xx("vpu_pll", "vpu_pll_ref_sel",
> base + 0x74, &imx_1416x_pll);
>  	clks[IMX8MN_ARM_PLL] = imx_clk_pll14xx("arm_pll", "arm_pll_ref_sel",
> base + 0x84, &imx_1416x_pll);
>  	clks[IMX8MN_SYS_PLL1] = imx_clk_fixed("sys_pll1", 800000000);
>  	clks[IMX8MN_SYS_PLL2] = imx_clk_fixed("sys_pll2", 1000000000); diff
> --git a/drivers/clk/imx/clk-pll14xx.c b/drivers/clk/imx/clk-pll14xx.c index
> 5c458199060a..a6d31a7262ef 100644
> --- a/drivers/clk/imx/clk-pll14xx.c
> +++ b/drivers/clk/imx/clk-pll14xx.c
> @@ -65,10 +65,17 @@ struct imx_pll14xx_clk imx_1443x_pll = {
>  	.type = PLL_1443X,
>  	.rate_table = imx_pll1443x_tbl,
>  	.rate_count = ARRAY_SIZE(imx_pll1443x_tbl),  };
> 
> +struct imx_pll14xx_clk imx_1443x_dram_pll = {
> +	.type = PLL_1443X,
> +	.rate_table = imx_pll1443x_tbl,
> +	.rate_count = ARRAY_SIZE(imx_pll1443x_tbl),
> +	.flags = CLK_GET_RATE_NOCACHE,
> +};
> +
>  struct imx_pll14xx_clk imx_1416x_pll = {
>  	.type = PLL_1416X,
>  	.rate_table = imx_pll1416x_tbl,
>  	.rate_count = ARRAY_SIZE(imx_pll1416x_tbl),  }; diff --git
> a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h index
> bc5bb6ac8636..81122c9ab842 100644
> --- a/drivers/clk/imx/clk.h
> +++ b/drivers/clk/imx/clk.h
> @@ -50,10 +50,11 @@ struct imx_pll14xx_clk {
>  	int flags;
>  };
> 
>  extern struct imx_pll14xx_clk imx_1416x_pll;  extern struct
> imx_pll14xx_clk imx_1443x_pll;
> +extern struct imx_pll14xx_clk imx_1443x_dram_pll;
> 
>  #define imx_clk_cpu(name, parent_name, div, mux, pll, step) \
>  	imx_clk_hw_cpu(name, parent_name, div, mux, pll, step)->clk
> 
>  #define clk_register_gate2(dev, name, parent_name, flags, reg, bit_idx, \
> --
> 2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
