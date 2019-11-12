Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0B2DF8DEC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 12:18:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+1cHtIJregkHdCNUkeVy7zyYREXxZPvgGexFh6m/ACU=; b=h0x9i+0j8XlPvm
	6Oj6H5IR2vtr6yPWWeMWv5i7BgJ7MTHkSjoXnBgLRYzTWSOIXI5G1DWQ/TBSopeWUdQQ3ShlgND3N
	Rvrd5Lr7xmYqAh9cK4EX7tubNgygV+e9dQVOPhiXz6sYMHDffX8aFz2eO3ipaoEpDjr6Qhm2f/lqB
	9czb49f7fMvE2uJ+LCy9WtjG8tfSJirDUljjtb1DWobrnAnHmVDBv9WyWfd2G286bj40uNUBkO5Yr
	uAdfMs7ADV7FmhxclIRtCLxeZXq+N1QIpYTQuq9jAsHwMAxF3KvlhLYEQKwj8FhHnQHIzFXFzGcsQ
	HdxpZa0iG2a6edYlh5wA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUUBf-0004GC-7H; Tue, 12 Nov 2019 11:18:19 +0000
Received: from mail-ve1eur02on061f.outbound.protection.outlook.com
 ([2a01:111:f400:fe06::61f]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUUBW-0004Et-JU
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 11:18:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=beY1kPs0ItmyEC9ara0M/79wNC3BYsu7lskAXzhE2V2lbSORlCn106vXdSspAk1M7wc8nibubK8IsBUMIlaPMtNyvzXhxChj7rtpqECV8AqLcI+qSzR0AJGQaOtq3+U7Q+kIqHW7cHXnLO53uE7aJGXxJ89KwOYImXndPR0/2bCJyvuZ+8YVa7ZmSFjaDk6Mt70JSSIOk79odwWyWAu/34KTIFPlsmDOxL4FFTT1WLLIAj7KgU8YGHMvlZiXjfQmskL3LUsdw2ilI80uyMbZPhHaDv23XaN0LY8LF8wOmeeWA1tE92g5q0Is/nrEjksdmfiJAUbD9p7swVzqSawRIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=L6gVKOTRJEEcvDhtPX8de3LGPo8grudqnmZUlbE1h5g=;
 b=FQp/LKuiGKwoCs1NVmrAvEFFzgpq1jhEE2x2m5ul2mZDQbJ0oITC8vNl27dzGkZbxHwY6lP4nP2kjA2DNaP+ASW8afFMXmOHgz2lRtEbMYPnIefr7YSWksD70idpaPJfawNY4Dbv0j/uYiLaqtZn/O83a7YyM3LJTQRvNMoAZUmsp2wjLx/QigAJAG1p1gHF9kZIDbRZNXmggA4LUeSJydoqxCH1yl0APyBZEfG2cGAj/YJ95cWPDyWDiwSq3uzY0BWU2w2kQlwq1BHci4cHq7eM99LrZy1VSj2Vsh+sGbC85RfeJcCZyxizwenUBrTuk6IEpBffN2ai/lW6GfXibA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=L6gVKOTRJEEcvDhtPX8de3LGPo8grudqnmZUlbE1h5g=;
 b=nV3+sqX8Ow3LajG1lF8D5tnigXE657i0fBMZZstXB44D2aSUoojjuHyTX9ICnruKUYBwjVmyQAu3rIF80Wi+px0r0hk0ZEgvoVNBbJqvtI0kNuzEvSq2eRXq4qY+hSFFIYKnGB6c1tjQqq0kw6pm/JWtPn6e5zLRqmmmCJbj45Y=
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com (20.178.202.151) by
 AM0PR04MB6113.eurprd04.prod.outlook.com (20.179.33.148) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.22; Tue, 12 Nov 2019 11:18:04 +0000
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::fd44:1b14:587c:9fde]) by AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::fd44:1b14:587c:9fde%7]) with mapi id 15.20.2430.027; Tue, 12 Nov 2019
 11:18:04 +0000
From: Abel Vesa <abel.vesa@nxp.com>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH v4 1/6] clk: imx8m: Set CLK_GET_RATE_NOCACHE on dram clocks
Thread-Topic: [PATCH v4 1/6] clk: imx8m: Set CLK_GET_RATE_NOCACHE on dram
 clocks
Thread-Index: AQHVloV7VZOJz0hWAkeO+G3807P1dqeHaKeA
Date: Tue, 12 Nov 2019 11:18:04 +0000
Message-ID: <20191112111803.c5624in2masqipqf@fsr-ub1664-175>
References: <cover.1573252696.git.leonard.crestez@nxp.com>
 <0e0eeeee546a3bb664935184d66866f1c66458ce.1573252696.git.leonard.crestez@nxp.com>
In-Reply-To: <0e0eeeee546a3bb664935184d66866f1c66458ce.1573252696.git.leonard.crestez@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM0PR0202CA0035.eurprd02.prod.outlook.com
 (2603:10a6:208:1::48) To AM0PR04MB5779.eurprd04.prod.outlook.com
 (2603:10a6:208:131::23)
x-originating-ip: [89.37.124.34]
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=abel.vesa@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 7ac35b0d-7eec-436f-9fa9-08d76761fcb4
x-ms-traffictypediagnostic: AM0PR04MB6113:|AM0PR04MB6113:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB6113D9C5381B288DE3617C3FF6770@AM0PR04MB6113.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:843;
x-forefront-prvs: 021975AE46
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(7916004)(376002)(39860400002)(366004)(346002)(136003)(396003)(189003)(199004)(86362001)(3846002)(33716001)(4326008)(6116002)(66066001)(6486002)(5660300002)(64756008)(66946007)(66446008)(66476007)(66556008)(6246003)(1076003)(478600001)(7736002)(316002)(44832011)(305945005)(7416002)(25786009)(6862004)(52116002)(99286004)(102836004)(76176011)(2906002)(6636002)(486006)(26005)(53546011)(6506007)(6512007)(71200400001)(9686003)(386003)(14454004)(6436002)(14444005)(186003)(8676002)(81156014)(229853002)(256004)(446003)(8936002)(54906003)(476003)(11346002)(71190400001)(81166006)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6113;
 H:AM0PR04MB5779.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: QLOnpDQ50oy4YYD3vso7LoVB1Q9PRHPgxPlAPXF8Q9K4+EXYQ1X/tMiHq4+tm+rqxvEtBinIDaO6qc6/w7XWVFOsCWuwCfpu+2/a0zKw1hqhEn4vxKpOrsvQdageglqMYn6rpyzq6yF+PRk4ZXMr2Mt1O000EWN0z8Is557gNEI+vIUzcFqAKByKJUgPm2/zO99QZSaXSlBs2lWYSzAhdR5DudNJw/+gJ89LT3YN74OvVkjl70rLBBDtVLALIGny68USCZWIkcpWMLjZ4aczMKvEjQBYkwTfBYv11nU89iscR1x4/U9FTP6LS2yg7y8bf02Rv2RdIL2qsiq0Y0de3vAvYCGmXkQdCRJ7QRuwKn/0A02H1Ec8Bh1ZBzunqhIjBtADBFt8snaNqku0d/8tjEXxgBta1LbB0bA2lJzwZPnLT/rLTnThAsTr7Orwire2
Content-ID: <38B37E1CA4CBAC4B94040C69C2ECE4D2@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7ac35b0d-7eec-436f-9fa9-08d76761fcb4
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Nov 2019 11:18:04.7257 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: C3AMSYKqQxkBy2umZK8AeBdBt2u8oQRYgtqCj+neXpEPrHz99WgVeppWFlyu0Rv9wzqPoZmZUhoW+5+gMGKZ1Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6113
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_031810_929993_08E1B6CB 
X-CRM114-Status: GOOD (  19.24  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe06:0:0:0:61f listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 1.0 FORGED_SPF_HELO        No description available.
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

On 19-11-09 00:39:51, Leonard Crestez wrote:
> These clocks are only modified as part of DRAM frequency switches during
> which DRAM itself is briefly inaccessible. The switch is performed with
> a SMC call to by TF-A which runs from a SRAM area; upon returning to
> linux several clocks bits are modified and we need to update them.
> 
> For rate bits an easy solution is to just mark with
> CLK_GET_RATE_NOCACHE so that new rates are always read back from
> registers.
> 
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> ---
>  drivers/clk/imx/clk-imx8mm.c | 11 +++++++++--
>  drivers/clk/imx/clk-imx8mn.c | 12 ++++++++++--
>  drivers/clk/imx/clk-imx8mq.c | 15 +++++++++++----
>  3 files changed, 30 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/clk/imx/clk-imx8mm.c b/drivers/clk/imx/clk-imx8mm.c
> index 030b15d7c0ce..c58f988191a5 100644
> --- a/drivers/clk/imx/clk-imx8mm.c
> +++ b/drivers/clk/imx/clk-imx8mm.c
> @@ -440,13 +440,20 @@ static int imx8mm_clocks_probe(struct platform_device *pdev)
>  
>  	/* IPG */
>  	clks[IMX8MM_CLK_IPG_ROOT] = imx_clk_divider2("ipg_root", "ahb", base + 0x9080, 0, 1);
>  	clks[IMX8MM_CLK_IPG_AUDIO_ROOT] = imx_clk_divider2("ipg_audio_root", "audio_ahb", base + 0x9180, 0, 1);
>  
> +	/*
> +	 * DRAM clocks are manipulated from TF-A outside clock framework.
> +	 * Mark with GET_RATE_NOCACHE to always read div value from hardware
> +	 */
> +	clks[IMX8MM_CLK_DRAM_ALT] = __imx8m_clk_composite("dram_alt", imx8mm_dram_alt_sels, base + 0xa000,
> +			CLK_GET_RATE_NOCACHE);
> +	clks[IMX8MM_CLK_DRAM_APB] = __imx8m_clk_composite("dram_apb", imx8mm_dram_apb_sels, base + 0xa080,
> +			CLK_IS_CRITICAL | CLK_GET_RATE_NOCACHE);
> +
>  	/* IP */
> -	clks[IMX8MM_CLK_DRAM_ALT] = imx8m_clk_composite("dram_alt", imx8mm_dram_alt_sels, base + 0xa000);
> -	clks[IMX8MM_CLK_DRAM_APB] = imx8m_clk_composite_critical("dram_apb", imx8mm_dram_apb_sels, base + 0xa080);
>  	clks[IMX8MM_CLK_VPU_G1] = imx8m_clk_composite("vpu_g1", imx8mm_vpu_g1_sels, base + 0xa100);
>  	clks[IMX8MM_CLK_VPU_G2] = imx8m_clk_composite("vpu_g2", imx8mm_vpu_g2_sels, base + 0xa180);
>  	clks[IMX8MM_CLK_DISP_DTRC] = imx8m_clk_composite("disp_dtrc", imx8mm_disp_dtrc_sels, base + 0xa200);
>  	clks[IMX8MM_CLK_DISP_DC8000] = imx8m_clk_composite("disp_dc8000", imx8mm_disp_dc8000_sels, base + 0xa280);
>  	clks[IMX8MM_CLK_PCIE1_CTRL] = imx8m_clk_composite("pcie1_ctrl", imx8mm_pcie1_ctrl_sels, base + 0xa300);
> diff --git a/drivers/clk/imx/clk-imx8mn.c b/drivers/clk/imx/clk-imx8mn.c
> index 9f5a5a56b45e..ca78cb1249a7 100644
> --- a/drivers/clk/imx/clk-imx8mn.c
> +++ b/drivers/clk/imx/clk-imx8mn.c
> @@ -428,12 +428,20 @@ static int imx8mn_clocks_probe(struct platform_device *pdev)
>  	clks[IMX8MN_CLK_AHB] = imx8m_clk_composite_critical("ahb", imx8mn_ahb_sels, base + 0x9000);
>  	clks[IMX8MN_CLK_AUDIO_AHB] = imx8m_clk_composite("audio_ahb", imx8mn_audio_ahb_sels, base + 0x9100);
>  	clks[IMX8MN_CLK_IPG_ROOT] = imx_clk_divider2("ipg_root", "ahb", base + 0x9080, 0, 1);
>  	clks[IMX8MN_CLK_IPG_AUDIO_ROOT] = imx_clk_divider2("ipg_audio_root", "audio_ahb", base + 0x9180, 0, 1);
>  	clks[IMX8MN_CLK_DRAM_CORE] = imx_clk_mux2_flags("dram_core_clk", base + 0x9800, 24, 1, imx8mn_dram_core_sels, ARRAY_SIZE(imx8mn_dram_core_sels), CLK_IS_CRITICAL);
> -	clks[IMX8MN_CLK_DRAM_ALT] = imx8m_clk_composite("dram_alt", imx8mn_dram_alt_sels, base + 0xa000);
> -	clks[IMX8MN_CLK_DRAM_APB] = imx8m_clk_composite_critical("dram_apb", imx8mn_dram_apb_sels, base + 0xa080);
> +
> +	/*
> +	 * DRAM clocks are manipulated from TF-A outside clock framework.
> +	 * Mark with GET_RATE_NOCACHE to always read div value from hardware
> +	 */
> +	clks[IMX8MN_CLK_DRAM_ALT] = __imx8m_clk_composite("dram_alt", imx8mn_dram_alt_sels, base + 0xa000,
> +			CLK_GET_RATE_NOCACHE);
> +	clks[IMX8MN_CLK_DRAM_APB] = __imx8m_clk_composite("dram_apb", imx8mn_dram_apb_sels, base + 0xa080,
> +			CLK_IS_CRITICAL | CLK_GET_RATE_NOCACHE);

nitpick: I think it looks better if we stick to one line each clock. 
I know it's against the 80 chars rule, but at least is consistent.

> +
>  	clks[IMX8MN_CLK_DISP_PIXEL] = imx8m_clk_composite("disp_pixel", imx8mn_disp_pixel_sels, base + 0xa500);
>  	clks[IMX8MN_CLK_SAI2] = imx8m_clk_composite("sai2", imx8mn_sai2_sels, base + 0xa600);
>  	clks[IMX8MN_CLK_SAI3] = imx8m_clk_composite("sai3", imx8mn_sai3_sels, base + 0xa680);
>  	clks[IMX8MN_CLK_SAI5] = imx8m_clk_composite("sai5", imx8mn_sai5_sels, base + 0xa780);
>  	clks[IMX8MN_CLK_SAI6] = imx8m_clk_composite("sai6", imx8mn_sai6_sels, base + 0xa800);
> diff --git a/drivers/clk/imx/clk-imx8mq.c b/drivers/clk/imx/clk-imx8mq.c
> index 5f10a606d836..3e2ccc17dc66 100644
> --- a/drivers/clk/imx/clk-imx8mq.c
> +++ b/drivers/clk/imx/clk-imx8mq.c
> @@ -341,11 +341,12 @@ static int imx8mq_clocks_probe(struct platform_device *pdev)
>  	clks[IMX8MQ_VIDEO_PLL1_OUT] = imx_clk_gate("video_pll1_out", "video_pll1_bypass", base + 0x10, 21);
>  
>  	clks[IMX8MQ_SYS1_PLL_OUT] = imx_clk_fixed("sys1_pll_out", 800000000);
>  	clks[IMX8MQ_SYS2_PLL_OUT] = imx_clk_fixed("sys2_pll_out", 1000000000);
>  	clks[IMX8MQ_SYS3_PLL_OUT] = imx_clk_sccg_pll("sys3_pll_out", sys3_pll_out_sels, ARRAY_SIZE(sys3_pll_out_sels), 0, 0, 0, base + 0x48, CLK_IS_CRITICAL);
> -	clks[IMX8MQ_DRAM_PLL_OUT] = imx_clk_sccg_pll("dram_pll_out", dram_pll_out_sels, ARRAY_SIZE(dram_pll_out_sels), 0, 0, 0, base + 0x60, CLK_IS_CRITICAL);
> +	clks[IMX8MQ_DRAM_PLL_OUT] = imx_clk_sccg_pll("dram_pll_out", dram_pll_out_sels, ARRAY_SIZE(dram_pll_out_sels), 0, 0, 0, base + 0x60,
> +			CLK_IS_CRITICAL | CLK_GET_RATE_NOCACHE);
>  	clks[IMX8MQ_VIDEO2_PLL_OUT] = imx_clk_sccg_pll("video2_pll_out", video2_pll_out_sels, ARRAY_SIZE(video2_pll_out_sels), 0, 0, 0, base + 0x54, 0);
>  
>  	/* SYS PLL1 fixed output */
>  	clks[IMX8MQ_SYS1_PLL_40M_CG] = imx_clk_gate("sys1_pll_40m_cg", "sys1_pll_out", base + 0x30, 9);
>  	clks[IMX8MQ_SYS1_PLL_80M_CG] = imx_clk_gate("sys1_pll_80m_cg", "sys1_pll_out", base + 0x30, 11);
> @@ -433,15 +434,21 @@ static int imx8mq_clocks_probe(struct platform_device *pdev)
>  
>  	/* IPG */
>  	clks[IMX8MQ_CLK_IPG_ROOT] = imx_clk_divider2("ipg_root", "ahb", base + 0x9080, 0, 1);
>  	clks[IMX8MQ_CLK_IPG_AUDIO_ROOT] = imx_clk_divider2("ipg_audio_root", "audio_ahb", base + 0x9180, 0, 1);
>  
> -	/* IP */
> +	/*
> +	 * DRAM clocks are manipulated from TF-A outside clock framework.
> +	 * Mark with GET_RATE_NOCACHE to always read div value from hardware
> +	 */
>  	clks[IMX8MQ_CLK_DRAM_CORE] = imx_clk_mux2_flags("dram_core_clk", base + 0x9800, 24, 1, imx8mq_dram_core_sels, ARRAY_SIZE(imx8mq_dram_core_sels), CLK_IS_CRITICAL);
> +	clks[IMX8MQ_CLK_DRAM_ALT] = __imx8m_clk_composite("dram_alt", imx8mq_dram_alt_sels, base + 0xa000,
> +			CLK_GET_RATE_NOCACHE);
> +	clks[IMX8MQ_CLK_DRAM_APB] = __imx8m_clk_composite("dram_apb", imx8mq_dram_apb_sels, base + 0xa080,
> +			CLK_IS_CRITICAL | CLK_GET_RATE_NOCACHE);
>  
> -	clks[IMX8MQ_CLK_DRAM_ALT] = imx8m_clk_composite("dram_alt", imx8mq_dram_alt_sels, base + 0xa000);
> -	clks[IMX8MQ_CLK_DRAM_APB] = imx8m_clk_composite_critical("dram_apb", imx8mq_dram_apb_sels, base + 0xa080);
> +	/* IP */
>  	clks[IMX8MQ_CLK_VPU_G1] = imx8m_clk_composite("vpu_g1", imx8mq_vpu_g1_sels, base + 0xa100);
>  	clks[IMX8MQ_CLK_VPU_G2] = imx8m_clk_composite("vpu_g2", imx8mq_vpu_g2_sels, base + 0xa180);
>  	clks[IMX8MQ_CLK_DISP_DTRC] = imx8m_clk_composite("disp_dtrc", imx8mq_disp_dtrc_sels, base + 0xa200);
>  	clks[IMX8MQ_CLK_DISP_DC8000] = imx8m_clk_composite("disp_dc8000", imx8mq_disp_dc8000_sels, base + 0xa280);
>  	clks[IMX8MQ_CLK_PCIE1_CTRL] = imx8m_clk_composite("pcie1_ctrl", imx8mq_pcie1_ctrl_sels, base + 0xa300);
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
