Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D598F8DF8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 12:18:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HAod4TTcTuiPFBftS8l92vyljY4hXsUGfitts9rCa78=; b=Rnjy8RxJTbVJaz
	I4T91IsNyFjfKoM2KnAqi0w1TDKqh9m/xjdkkAHR/SuBI+uWYHLYPnO/hXz1YRoqMn9JPJDv9qB2E
	4x4CzMCw6Kdl0EPS6X51CTXlR5aSAF8MgWfwo0tntLNp55P0nGwUgG1pDzeAwJiCgeiqmGkzJdsFd
	24shFRtMM6JciWZhf3mJ6oY+H6DssiW9VanJ8AxL/IfZ97OGMHmggQol+QK+Y+0ojmysPY2iFnY5k
	R505Zacc114UVYlVEGQXRQ1OmtPiE1xxz6H2jyVTagtzKwUUa6Q+1vDCfs75SP/QyC49Zfn4FYt7N
	MClXBMHpdxatQnWgef0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUUCF-0004fQ-DV; Tue, 12 Nov 2019 11:18:55 +0000
Received: from mail-eopbgr20045.outbound.protection.outlook.com ([40.107.2.45]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUUC4-0004dw-VF
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 11:18:46 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UHwNlqFbnCqp9/RyW5BZwMkuUVEbpnEpGN+eW6sn+3l3qWwrO6NRlbZOD63YTwVJo2TCc7u6yItPP4zBj28zCRK/DLF1IHiTNY8fQ/FkFhtCtTPGg1wVcN95ans+YkJg4L4ds6II5JziUUsNKab5oZa+j0R+kDA8O2J4idwj2nuUMldXyen4KBQQgcxKjqHviMoG8WMhV1vla7ftke+8VAKDPVGQw51Ez5RnDOpAgM5SNXFMgrVQzDziD1P3aAwiZDSm6o1uGxrRCoKHKimRvIQoOHPQozQjw+G7y3afBpBZ3EtAfQbdzKBlaD7ZxyFgwSXixIs5rGVxtBETK8xgcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WT6j0VAgO9guqVEcCYsSLa/Vn+AN7lcTN5uVzEmKe4U=;
 b=Cl/MNZ0zkMP4auwyAkXAi7HpGF0LAML/ljeL4bUifT7fpoRR5ArOVhkZWA1mLQyDyOod7ps3p9DtJbm9fxM6pIV7+dZbeh1ZkTJe7ZS53YSGfPm2soCFyXf8XYclcpUVst1Pvk+nRLlEeKMV1T06DUr+T6Aw0iP6LYCeVpb9Ntukbb34sPF2y3fSGO5F5yQ6Gzqgi6ODm7+dub9LvyiuZpCfTVUYj6ik9HmOn1gyOUKN1ePprrwnJu0EmAP5YNsa1O4cHf348aCfSIGTQlf9KmcPe6T9RF736wfsupg7uSjBG+/4eNnpEQVPTU1u7mQYTweDHs4JEpP5NBwG3UFOXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WT6j0VAgO9guqVEcCYsSLa/Vn+AN7lcTN5uVzEmKe4U=;
 b=S6/8OSeOnbAM0skUuxyLIl3iPwqQR/7FOOoH3rPqnTdzeG7u1aPb88TqwS+sIvlWVUmIjBPkOs5WSRDEiQfK9tVQqZwxtUvgPyNl0fjAMG7fFMnIFS9hXq8q+8yfT1L0CBOwGTUG5YYRqJT4oXNRvYHNTNRjUCsWwfK7qdNzKS4=
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com (20.178.202.151) by
 AM0PR04MB4051.eurprd04.prod.outlook.com (52.134.125.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.24; Tue, 12 Nov 2019 11:18:41 +0000
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::fd44:1b14:587c:9fde]) by AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::fd44:1b14:587c:9fde%7]) with mapi id 15.20.2430.027; Tue, 12 Nov 2019
 11:18:41 +0000
From: Abel Vesa <abel.vesa@nxp.com>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH v4 2/6] clk: imx: Mark dram pll on 8mm and 8mn with
 CLK_GET_RATE_NOCACHE
Thread-Topic: [PATCH v4 2/6] clk: imx: Mark dram pll on 8mm and 8mn with
 CLK_GET_RATE_NOCACHE
Thread-Index: AQHVloV7TZnkkId7Yky0Y9av5sUpE6eHaNKA
Date: Tue, 12 Nov 2019 11:18:41 +0000
Message-ID: <20191112111839.jlshj6w567hzh6e7@fsr-ub1664-175>
References: <cover.1573252696.git.leonard.crestez@nxp.com>
 <e6230f49275e10e0cea625a8d806f3850ac2a29c.1573252696.git.leonard.crestez@nxp.com>
In-Reply-To: <e6230f49275e10e0cea625a8d806f3850ac2a29c.1573252696.git.leonard.crestez@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM0PR02CA0032.eurprd02.prod.outlook.com
 (2603:10a6:208:3e::45) To AM0PR04MB5779.eurprd04.prod.outlook.com
 (2603:10a6:208:131::23)
x-originating-ip: [89.37.124.34]
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=abel.vesa@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 2deb979e-6c56-4ff8-468a-08d76762125a
x-ms-traffictypediagnostic: AM0PR04MB4051:|AM0PR04MB4051:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB4051DEDDC2EBDBDAB132571FF6770@AM0PR04MB4051.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2657;
x-forefront-prvs: 021975AE46
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(7916004)(4636009)(366004)(199004)(189003)(66946007)(6436002)(9686003)(71200400001)(71190400001)(6512007)(1076003)(229853002)(14454004)(256004)(66476007)(64756008)(66446008)(6862004)(66066001)(4326008)(66556008)(6246003)(5660300002)(33716001)(6486002)(44832011)(6636002)(52116002)(7736002)(486006)(76176011)(476003)(446003)(25786009)(11346002)(54906003)(498600001)(86362001)(6116002)(3846002)(2906002)(7416002)(8936002)(6506007)(386003)(99286004)(53546011)(81166006)(81156014)(305945005)(26005)(186003)(8676002)(102836004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4051;
 H:AM0PR04MB5779.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wTGoxY4cLG2SahgiiDBcg7IvS5VBTMsWd5XDpq92iZD/+/UDJettZS7V230Ktsw10UQ444S5NCLYb76W5PyElWBBkQ19agNtO1505YxCJ3q+1b0JtwAZjoa3ub+tzypaSD6+qP04iG7muDYIFmefnjLOznaB+hy2h4y6Jhthibk9+29FL++kmFSh7crW1PSKo7UCPDsCB5//AHPSGR76V3nKBN+lsZrkDyq/LUBbgcq7oLB5t5uf0AVwKu11puLEsrsX9B4syAzF49tjJooS0Yr/gxfdb3b1ji3v4PqL8Bw31SxjG5MvEhtLHcvPOLp3nZIG9vEgzdnVqvCZdcrUKoe3Arak4huXO9qzX3zcYKZj8nEemmhkmaoo0ww5tr2trToUD50S/NFow+Z2yCOQdgmLGJjXX5YZDOtv21VPDhQlft3/MLpy/b86ZtFSYghr
Content-ID: <5C8B47F4FE43BA4E867456A48B2087B8@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2deb979e-6c56-4ff8-468a-08d76762125a
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Nov 2019 11:18:41.0295 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QquLOKwYWRWLxk4rwA1kzQp/NQSqJEp+wxBn12/TboXQhLRvG9T7gIyq17C3B5yJo1hMpFBGNtrhUTHtvugJBA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4051
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_031845_006721_28CAA951 
X-CRM114-Status: GOOD (  19.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.45 listed in list.dnswl.org]
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
 Saravana Kannan <saravanak@google.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 Chanwoo Choi <cw00.choi@samsung.com>, MyungJoo Ham <myungjoo.ham@samsung.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Martin Kepplinger <martink@posteo.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 Stephen Boyd <sboyd@kernel.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Georgi Djakov <georgi.djakov@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19-11-09 00:39:52, Leonard Crestez wrote:
> DRAM frequency switches are executed in firmware and can change the
> configuration of the DRAM PLL outside linux. Mark these CLKs with
> CLK_GET_RATE_NOCACHE so we always read back the PLL config registers and
> recalculate rates.
> 
> In current DRAM frequency tables on 8mm/8mn only the maximum frequency
> uses the PLL so it's always configured in the same way. However reading
> back the PLL configuration is the correct behavior and allows additional
> setpoints in the future.
> 
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>

This one looks fine.

Reviewed-by: Abel Vesa <abel.vesa@nxp.com>

> ---
>  drivers/clk/imx/clk-imx8mm.c  | 2 +-
>  drivers/clk/imx/clk-imx8mn.c  | 2 +-
>  drivers/clk/imx/clk-pll14xx.c | 7 +++++++
>  drivers/clk/imx/clk.h         | 1 +
>  4 files changed, 10 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/clk/imx/clk-imx8mm.c b/drivers/clk/imx/clk-imx8mm.c
> index c58f988191a5..d500bac3afa1 100644
> --- a/drivers/clk/imx/clk-imx8mm.c
> +++ b/drivers/clk/imx/clk-imx8mm.c
> @@ -326,11 +326,11 @@ static int imx8mm_clocks_probe(struct platform_device *pdev)
>  	clks[IMX8MM_SYS_PLL3_REF_SEL] = imx_clk_mux("sys_pll3_ref_sel", base + 0x114, 0, 2, pll_ref_sels, ARRAY_SIZE(pll_ref_sels));
>  
>  	clks[IMX8MM_AUDIO_PLL1] = imx_clk_pll14xx("audio_pll1", "audio_pll1_ref_sel", base, &imx_1443x_pll);
>  	clks[IMX8MM_AUDIO_PLL2] = imx_clk_pll14xx("audio_pll2", "audio_pll2_ref_sel", base + 0x14, &imx_1443x_pll);
>  	clks[IMX8MM_VIDEO_PLL1] = imx_clk_pll14xx("video_pll1", "video_pll1_ref_sel", base + 0x28, &imx_1443x_pll);
> -	clks[IMX8MM_DRAM_PLL] = imx_clk_pll14xx("dram_pll", "dram_pll_ref_sel", base + 0x50, &imx_1443x_pll);
> +	clks[IMX8MM_DRAM_PLL] = imx_clk_pll14xx("dram_pll", "dram_pll_ref_sel", base + 0x50, &imx_1443x_dram_pll);
>  	clks[IMX8MM_GPU_PLL] = imx_clk_pll14xx("gpu_pll", "gpu_pll_ref_sel", base + 0x64, &imx_1416x_pll);
>  	clks[IMX8MM_VPU_PLL] = imx_clk_pll14xx("vpu_pll", "vpu_pll_ref_sel", base + 0x74, &imx_1416x_pll);
>  	clks[IMX8MM_ARM_PLL] = imx_clk_pll14xx("arm_pll", "arm_pll_ref_sel", base + 0x84, &imx_1416x_pll);
>  	clks[IMX8MM_SYS_PLL1] = imx_clk_fixed("sys_pll1", 800000000);
>  	clks[IMX8MM_SYS_PLL2] = imx_clk_fixed("sys_pll2", 1000000000);
> diff --git a/drivers/clk/imx/clk-imx8mn.c b/drivers/clk/imx/clk-imx8mn.c
> index ca78cb1249a7..9c605ca1b631 100644
> --- a/drivers/clk/imx/clk-imx8mn.c
> +++ b/drivers/clk/imx/clk-imx8mn.c
> @@ -323,11 +323,11 @@ static int imx8mn_clocks_probe(struct platform_device *pdev)
>  	clks[IMX8MN_SYS_PLL3_REF_SEL] = imx_clk_mux("sys_pll3_ref_sel", base + 0x114, 0, 2, pll_ref_sels, ARRAY_SIZE(pll_ref_sels));
>  
>  	clks[IMX8MN_AUDIO_PLL1] = imx_clk_pll14xx("audio_pll1", "audio_pll1_ref_sel", base, &imx_1443x_pll);
>  	clks[IMX8MN_AUDIO_PLL2] = imx_clk_pll14xx("audio_pll2", "audio_pll2_ref_sel", base + 0x14, &imx_1443x_pll);
>  	clks[IMX8MN_VIDEO_PLL1] = imx_clk_pll14xx("video_pll1", "video_pll1_ref_sel", base + 0x28, &imx_1443x_pll);
> -	clks[IMX8MN_DRAM_PLL] = imx_clk_pll14xx("dram_pll", "dram_pll_ref_sel", base + 0x50, &imx_1443x_pll);
> +	clks[IMX8MN_DRAM_PLL] = imx_clk_pll14xx("dram_pll", "dram_pll_ref_sel", base + 0x50, &imx_1443x_dram_pll);
>  	clks[IMX8MN_GPU_PLL] = imx_clk_pll14xx("gpu_pll", "gpu_pll_ref_sel", base + 0x64, &imx_1416x_pll);
>  	clks[IMX8MN_VPU_PLL] = imx_clk_pll14xx("vpu_pll", "vpu_pll_ref_sel", base + 0x74, &imx_1416x_pll);
>  	clks[IMX8MN_ARM_PLL] = imx_clk_pll14xx("arm_pll", "arm_pll_ref_sel", base + 0x84, &imx_1416x_pll);
>  	clks[IMX8MN_SYS_PLL1] = imx_clk_fixed("sys_pll1", 800000000);
>  	clks[IMX8MN_SYS_PLL2] = imx_clk_fixed("sys_pll2", 1000000000);
> diff --git a/drivers/clk/imx/clk-pll14xx.c b/drivers/clk/imx/clk-pll14xx.c
> index 5c458199060a..a6d31a7262ef 100644
> --- a/drivers/clk/imx/clk-pll14xx.c
> +++ b/drivers/clk/imx/clk-pll14xx.c
> @@ -65,10 +65,17 @@ struct imx_pll14xx_clk imx_1443x_pll = {
>  	.type = PLL_1443X,
>  	.rate_table = imx_pll1443x_tbl,
>  	.rate_count = ARRAY_SIZE(imx_pll1443x_tbl),
>  };
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
>  	.rate_count = ARRAY_SIZE(imx_pll1416x_tbl),
>  };
> diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
> index bc5bb6ac8636..81122c9ab842 100644
> --- a/drivers/clk/imx/clk.h
> +++ b/drivers/clk/imx/clk.h
> @@ -50,10 +50,11 @@ struct imx_pll14xx_clk {
>  	int flags;
>  };
>  
>  extern struct imx_pll14xx_clk imx_1416x_pll;
>  extern struct imx_pll14xx_clk imx_1443x_pll;
> +extern struct imx_pll14xx_clk imx_1443x_dram_pll;
>  
>  #define imx_clk_cpu(name, parent_name, div, mux, pll, step) \
>  	imx_clk_hw_cpu(name, parent_name, div, mux, pll, step)->clk
>  
>  #define clk_register_gate2(dev, name, parent_name, flags, reg, bit_idx, \
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
