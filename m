Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E03771B8C21
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 06:39:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=37TqHwy5jcyplDuHQBHnmYPLdnlH/fd2fPg2ySjhpGs=; b=PEaLtFximlXmii
	5432nqTN2eeqo+EE4ycE9NfA5QYKAUJzI6Q0s/QC4XX8XhPKd0eNhMSnQWS7MmiZtWiTf88O1Vl/I
	AX8oLgQ2QSGiJmVAmBN5DtrV4pJw6dZWsCVb64lDQohsBHfE6CaIsUVeTvlhBkKwNyDM5B8dpoCcf
	LR6AMhfS28f+4nXt1FvEgHseLfZ1Wh0IqWBBbOvhf6EfhtuoFaOETvonTuR2Te4waUL0ZEmP2mbZl
	2Lopglw9teJn0MJR4N9zwRYAn069qOxt6LybfjcLcKXTUG3VWuuxSD0ijlkXx4570VwBJ8YVaDjo5
	q9l5P+Ka1990L33Csr1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSZ4H-0003Bv-Ob; Sun, 26 Apr 2020 04:39:01 +0000
Received: from mail-eopbgr80088.outbound.protection.outlook.com ([40.107.8.88]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSZ45-0003AT-Q0
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 04:38:52 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Xv8ckh3idj9Kh3+HGlFYR/nKif5CdSGh957T0WKsySTQGQgiz8Uf3KERytIJzhU4WQib+s0987XebtgX6yHwVI2NDZVB6LtBirXAudzblzzaDPqo9DeiAOc3FsNUVusFTtU5tP+Ri56nDdYZtgE8uIHSyVa9ti/qydqxjGWPeNwMN/Ybo9xTqybmiYPP9qCU6KK8F9Bgfz5OzFMdm1gAOYENQPOAYPICbufanbUrc3CzEDygbb+rLBq9O3MxH875De9qIbLJmsI33b83MyJE1VUhFvjjuISXUsJrxNQD9ohUgdGt7AXlX+Hcf2J2v3IdPdZUmW0PM0UZmkiyQ5BxBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zkymBSUuIUPkSrOofiLPp57GZFpyYbgiwYCVakxq2Ek=;
 b=f1ETWVWIEsLb1kUAuhaoit9qNvqDMO5ivzwOnGcumkxDSVW+wv5Pe5ZR+pG79dAIZqdacXglLMH039/wrWg+Gbf2Tb8XFpLI4A1VTo+0nMa2s+n3+s9QCWwmDAUARwildQ5zcylLuH2ch9mpJVU5Y/mQk940cdGiN2ACDvwmkuwGrRRlJfnqXozSIMjg4vTckbi6yn3ts8wBfTm3UWTuXWy9McY41ZV/14nhBotUy+s6jQVxzTwKUrtHxi+Sse/7il+yVZW2N6G9/8ey1waqN0jtch/+V/tdPq0E9HFeGwoZfaMx6FXR9nyQvGc5VCCGP3o73cF0dAVy/LzXkD6hDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zkymBSUuIUPkSrOofiLPp57GZFpyYbgiwYCVakxq2Ek=;
 b=WGigNOQmX3SXclo0GcPTi96ujO443+TkWCpxYMeF2JUzdVi+MRE5alPJ4QvsUb/mO3mh+EqdywYdoMHgtmJecDrKeQ3ijHknpMMsEyh7zx1C3rH7SYnehiJWVbVHVllWvsCZ0wIEanuLiPG4IfRyoyVpervyYHY+B10A7Cmc9eI=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB5589.eurprd04.prod.outlook.com (2603:10a6:20b:a4::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.22; Sun, 26 Apr
 2020 04:38:45 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::d9f7:5527:e89d:1ae3]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::d9f7:5527:e89d:1ae3%7]) with mapi id 15.20.2937.020; Sun, 26 Apr 2020
 04:38:45 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Peng Fan <peng.fan@nxp.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>, 
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, Leonard Crestez
 <leonard.crestez@nxp.com>, "sboyd@kernel.org" <sboyd@kernel.org>, Abel Vesa
 <abel.vesa@nxp.com>
Subject: RE: [PATCH V2 05/10] clk: imx8mp: use imx8m_clk_hw_composite_core to
 simplify code
Thread-Topic: [PATCH V2 05/10] clk: imx8mp: use imx8m_clk_hw_composite_core to
 simplify code
Thread-Index: AQHV+FjHM8JkPFRL50GlI4CMYstLtKiLFpyg
Date: Sun, 26 Apr 2020 04:38:45 +0000
Message-ID: <AM6PR04MB49662BE2A6456DD9B62F28D980AE0@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1584008384-11578-1-git-send-email-peng.fan@nxp.com>
 <1584008384-11578-6-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1584008384-11578-6-git-send-email-peng.fan@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [218.82.155.143]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: ec1a5ef8-ad21-411f-ac8d-08d7e99bb4d8
x-ms-traffictypediagnostic: AM6PR04MB5589:|AM6PR04MB5589:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB55891E2D4B1CEB8BCD4B2E3680AE0@AM6PR04MB5589.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2331;
x-forefront-prvs: 03853D523D
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(366004)(39860400002)(136003)(396003)(376002)(7696005)(76116006)(2906002)(26005)(66446008)(66946007)(6636002)(4326008)(66556008)(66476007)(7416002)(64756008)(71200400001)(8936002)(33656002)(5660300002)(44832011)(110136005)(9686003)(54906003)(81156014)(316002)(8676002)(52536014)(55016002)(478600001)(86362001)(186003)(6506007)(32563001);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Orn7R4tHJsghL0xoDQF7RYodX1YeUzrYOEXHCS4c8rqvOYNisp7Nyb7dKnbgdrY3/CF4Rzs3Ix39Mm3zf4lPEOHXhSo0X5F94yNQ/c7D21xK76N9qJ/D2UKh7jvFq9DzbOnQMwa0TZhJROBax1Mm/326Jnv6rjURJ9ffNtUdEXZyw7/2VaOkU8mFZKM3uFjw2h8Bc9nlSRKGKdDjAsZc6JXIw2fmdnCg/rbuc8CHt7xLAGTiYbnjUKGGORiJseypUNl5jMg4gduu7K3tYFTaYNps71/76F0EjUqBYMqJtvA467wwNnQcdJgoENHy+5NXwWFngFIbDLXUCBMZBjRZYGrG/knHkeVUjzKP8unAuheWpqT0jmKTixRGZuBpm5+2GdqkVYhrE+FNkg+TAOxzoRDOeIUUPDtIswZZdbh6qHQACiOLp9fNsFQ1n0B4N0qgy6414d4ppMzsJ48X9HutVkI+wpGKIw+kfZuv/HToZ8FkW2WsSueHHbhFFKpaMIXW
x-ms-exchange-antispam-messagedata: jpc6tLxoavSTOJjUkEcSTD19Y+LEHrxXstidYJZzNcFHMsloev3nspnYW0mV0EMNFcYVr9yXXXEKcrF7yxQ+jCXrFgTwiVRr1P8QGKECVgqjGaei1dDU76pRklTBK35PgmMXgOHTaihbdLEDv6yTr9PY47sudXwvhbIduw1KPzyoE7YKnWOp6uHR8TyOOEJ5x73yuUs52zIdyBmyIWaphYSQyLAdJSbquHRQkeAafMAZsByUOka49umbx2QlwhGUNnze0gkDnnhO1NDV3u7ctqIx6eyJRXq5NXN1NO2uvJyZ7MxwMrnHB3n3k19yiqxs6ouPlFF7hJvJt0TUrF3IJhTlePMPdOH+zhEv4LMDmNPfHX6/rKkV6ie1knBK2S26E5fiTgFm0fJtsfvkl2VkfP3i9hGqOTdeNL31zOIg1aGvNIevlUxke+VE5uGvXO0h7Ghm0aaukbEEP0/GCqaxxjzwu2Kw3runJH6ODCylk6hvIXwrF3ZGcLK7cmLWs28R5ogDNwU81hWxH0fGlYskociWmMxaBXcY5/RWMCOBx+nAOsERglynglLUbt7usr0mE2iKzn9KHq/Bisg6XoRNjnBDk5zN6P1JBb5xePoJ2Q3F5kqHRXRdsWn0hLEQ8HUHaut9s4Uh937j504XTw8JLTGQgTatgQyIHvGSu03o6lh9j8Q2dMgTfzFuDLubCXsxDIEAyf5EZMukxbQfs3f8CRT9dy+4fqR9lyFbo6PSSV6G8VR3ehVNfqtzeNaK7YqpT/crLeCvIIbHmccomBcvqqp0eqixlztimhvvoTGfVdA=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ec1a5ef8-ad21-411f-ac8d-08d7e99bb4d8
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Apr 2020 04:38:45.8686 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IBobfZsqTS0Qli6TMQADnhfRzHm81krF4WXG6krXV28Zy/PwtzMAyxd7hjCKxQFtSsiqdAZtTXqoXYJGgKuphQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB5589
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_213850_007354_4B7E098E 
X-CRM114-Status: GOOD (  12.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.88 listed in list.dnswl.org]
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
Cc: Andy Duan <fugang.duan@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 Anson Huang <anson.huang@nxp.com>,
 "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>,
 Daniel Baluta <daniel.baluta@nxp.com>, "agx@sigxcpu.org" <agx@sigxcpu.org>,
 "angus@akkea.ca" <angus@akkea.ca>, "heiko@sntech.de" <heiko@sntech.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "aford173@gmail.com" <aford173@gmail.com>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jun Li <jun.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Peng Fan <peng.fan@nxp.com>
> Sent: Thursday, March 12, 2020 6:20 PM
> 
> Use imx8m_clk_hw_composite_core to simpliy clks that belong to core clk slice.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Should we also deprecated the old clock ids which will not be supported by driver anymore?
Otherwise:
Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>

Regards
Aisheng

> ---
>  drivers/clk/imx/clk-imx8mp.c             | 47
> +++++++++++---------------------
>  include/dt-bindings/clock/imx8mp-clock.h | 11 +++++++-
>  2 files changed, 26 insertions(+), 32 deletions(-)
> 
> diff --git a/drivers/clk/imx/clk-imx8mp.c b/drivers/clk/imx/clk-imx8mp.c index
> a7613c7355c8..998e9e63f831 100644
> --- a/drivers/clk/imx/clk-imx8mp.c
> +++ b/drivers/clk/imx/clk-imx8mp.c
> @@ -546,33 +546,18 @@ static int imx8mp_clocks_probe(struct
> platform_device *pdev)
>  	hws[IMX8MP_SYS_PLL2_500M] =
> imx_clk_hw_fixed_factor("sys_pll2_500m", "sys_pll2_500m_cg", 1, 2);
>  	hws[IMX8MP_SYS_PLL2_1000M] =
> imx_clk_hw_fixed_factor("sys_pll2_1000m", "sys_pll2_out", 1, 1);
> 
> -	hws[IMX8MP_CLK_A53_SRC] = imx_clk_hw_mux2("arm_a53_src",
> ccm_base + 0x8000, 24, 3, imx8mp_a53_sels, ARRAY_SIZE(imx8mp_a53_sels));
> -	hws[IMX8MP_CLK_M7_SRC] = imx_clk_hw_mux2("arm_m7_src",
> ccm_base + 0x8080, 24, 3, imx8mp_m7_sels, ARRAY_SIZE(imx8mp_m7_sels));
> -	hws[IMX8MP_CLK_ML_SRC] = imx_clk_hw_mux2("ml_src", ccm_base +
> 0x8100, 24, 3, imx8mp_ml_sels, ARRAY_SIZE(imx8mp_ml_sels));
> -	hws[IMX8MP_CLK_GPU3D_CORE_SRC] =
> imx_clk_hw_mux2("gpu3d_core_src", ccm_base + 0x8180, 24, 3,
> imx8mp_gpu3d_core_sels, ARRAY_SIZE(imx8mp_gpu3d_core_sels));
> -	hws[IMX8MP_CLK_GPU3D_SHADER_SRC] =
> imx_clk_hw_mux2("gpu3d_shader_src", ccm_base + 0x8200, 24, 3,
> imx8mp_gpu3d_shader_sels, ARRAY_SIZE(imx8mp_gpu3d_shader_sels));
> -	hws[IMX8MP_CLK_GPU2D_SRC] = imx_clk_hw_mux2("gpu2d_src",
> ccm_base + 0x8280, 24, 3, imx8mp_gpu2d_sels,
> ARRAY_SIZE(imx8mp_gpu2d_sels));
> -	hws[IMX8MP_CLK_AUDIO_AXI_SRC] = imx_clk_hw_mux2("audio_axi_src",
> ccm_base + 0x8300, 24, 3, imx8mp_audio_axi_sels,
> ARRAY_SIZE(imx8mp_audio_axi_sels));
> -	hws[IMX8MP_CLK_HSIO_AXI_SRC] = imx_clk_hw_mux2("hsio_axi_src",
> ccm_base + 0x8380, 24, 3, imx8mp_hsio_axi_sels,
> ARRAY_SIZE(imx8mp_hsio_axi_sels));
> -	hws[IMX8MP_CLK_MEDIA_ISP_SRC] = imx_clk_hw_mux2("media_isp_src",
> ccm_base + 0x8400, 24, 3, imx8mp_media_isp_sels,
> ARRAY_SIZE(imx8mp_media_isp_sels));
> -	hws[IMX8MP_CLK_A53_CG] = imx_clk_hw_gate3("arm_a53_cg",
> "arm_a53_src", ccm_base + 0x8000, 28);
> -	hws[IMX8MP_CLK_M4_CG] = imx_clk_hw_gate3("arm_m7_cg",
> "arm_m7_src", ccm_base + 0x8080, 28);
> -	hws[IMX8MP_CLK_ML_CG] = imx_clk_hw_gate3("ml_cg", "ml_src",
> ccm_base + 0x8100, 28);
> -	hws[IMX8MP_CLK_GPU3D_CORE_CG] =
> imx_clk_hw_gate3("gpu3d_core_cg", "gpu3d_core_src", ccm_base + 0x8180,
> 28);
> -	hws[IMX8MP_CLK_GPU3D_SHADER_CG] =
> imx_clk_hw_gate3("gpu3d_shader_cg", "gpu3d_shader_src", ccm_base +
> 0x8200, 28);
> -	hws[IMX8MP_CLK_GPU2D_CG] = imx_clk_hw_gate3("gpu2d_cg",
> "gpu2d_src", ccm_base + 0x8280, 28);
> -	hws[IMX8MP_CLK_AUDIO_AXI_CG] = imx_clk_hw_gate3("audio_axi_cg",
> "audio_axi_src", ccm_base + 0x8300, 28);
> -	hws[IMX8MP_CLK_HSIO_AXI_CG] = imx_clk_hw_gate3("hsio_axi_cg",
> "hsio_axi_src", ccm_base + 0x8380, 28);
> -	hws[IMX8MP_CLK_MEDIA_ISP_CG] = imx_clk_hw_gate3("media_isp_cg",
> "media_isp_src", ccm_base + 0x8400, 28);
> -	hws[IMX8MP_CLK_A53_DIV] = imx_clk_hw_divider2("arm_a53_div",
> "arm_a53_cg", ccm_base + 0x8000, 0, 3);
> -	hws[IMX8MP_CLK_M7_DIV] = imx_clk_hw_divider2("arm_m7_div",
> "arm_m7_cg", ccm_base + 0x8080, 0, 3);
> -	hws[IMX8MP_CLK_ML_DIV] = imx_clk_hw_divider2("ml_div", "ml_cg",
> ccm_base + 0x8100, 0, 3);
> -	hws[IMX8MP_CLK_GPU3D_CORE_DIV] =
> imx_clk_hw_divider2("gpu3d_core_div", "gpu3d_core_cg", ccm_base + 0x8180,
> 0, 3);
> -	hws[IMX8MP_CLK_GPU3D_SHADER_DIV] =
> imx_clk_hw_divider2("gpu3d_shader_div", "gpu3d_shader_cg", ccm_base +
> 0x8200, 0, 3);
> -	hws[IMX8MP_CLK_GPU2D_DIV] = imx_clk_hw_divider2("gpu2d_div",
> "gpu2d_cg", ccm_base + 0x8280, 0, 3);
> -	hws[IMX8MP_CLK_AUDIO_AXI_DIV] =
> imx_clk_hw_divider2("audio_axi_div", "audio_axi_cg", ccm_base + 0x8300, 0,
> 3);
> -	hws[IMX8MP_CLK_HSIO_AXI_DIV] = imx_clk_hw_divider2("hsio_axi_div",
> "hsio_axi_cg", ccm_base + 0x8380, 0, 3);
> -	hws[IMX8MP_CLK_MEDIA_ISP_DIV] =
> imx_clk_hw_divider2("media_isp_div", "media_isp_cg", ccm_base + 0x8400, 0,
> 3);
> +	hws[IMX8MP_CLK_A53_DIV] =
> imx8m_clk_hw_composite_core("arm_a53_div", imx8mp_a53_sels, ccm_base
> + 0x8000);
> +	hws[IMX8MP_CLK_A53_SRC] = hws[IMX8MP_CLK_A53_DIV];
> +	hws[IMX8MP_CLK_A53_CG] = hws[IMX8MP_CLK_A53_DIV];
> +	hws[IMX8MP_CLK_M7_CORE] =
> imx8m_clk_hw_composite_core("m7_core", imx8mp_m7_sels, ccm_base +
> 0x8080);
> +	hws[IMX8MP_CLK_ML_CORE] =
> imx8m_clk_hw_composite_core("ml_core", imx8mp_ml_sels, ccm_base +
> 0x8100);
> +	hws[IMX8MP_CLK_GPU3D_CORE] =
> imx8m_clk_hw_composite_core("gpu3d_core", imx8mp_gpu3d_core_sels,
> ccm_base + 0x8180);
> +	hws[IMX8MP_CLK_GPU3D_SHADER_CORE] =
> imx8m_clk_hw_composite("gpu3d_shader_core", imx8mp_gpu3d_shader_sels,
> ccm_base + 0x8200);
> +	hws[IMX8MP_CLK_GPU2D_CORE] =
> imx8m_clk_hw_composite("gpu2d_core", imx8mp_gpu2d_sels, ccm_base +
> 0x8280);
> +	hws[IMX8MP_CLK_AUDIO_AXI] = imx8m_clk_hw_composite("audio_axi",
> imx8mp_audio_axi_sels, ccm_base + 0x8300);
> +	hws[IMX8MP_CLK_AUDIO_AXI_SRC] = hws[IMX8MP_CLK_AUDIO_AXI];
> +	hws[IMX8MP_CLK_HSIO_AXI] = imx8m_clk_hw_composite("hsio_axi",
> imx8mp_hsio_axi_sels, ccm_base + 0x8380);
> +	hws[IMX8MP_CLK_MEDIA_ISP] = imx8m_clk_hw_composite("media_isp",
> +imx8mp_media_isp_sels, ccm_base + 0x8400);
> 
>  	/* CORE SEL */
>  	hws[IMX8MP_CLK_A53_CORE] = imx_clk_hw_mux2("arm_a53_core",
> ccm_base + 0x9880, 24, 1, imx8mp_a53_core_sels,
> ARRAY_SIZE(imx8mp_a53_core_sels));
> @@ -713,8 +698,8 @@ static int imx8mp_clocks_probe(struct platform_device
> *pdev)
>  	hws[IMX8MP_CLK_SDMA1_ROOT] = imx_clk_hw_gate4("sdma1_root_clk",
> "ipg_root", ccm_base + 0x43a0, 0);
>  	hws[IMX8MP_CLK_ENET_QOS_ROOT] =
> imx_clk_hw_gate4("enet_qos_root_clk", "sim_enet_root_clk", ccm_base +
> 0x43b0, 0);
>  	hws[IMX8MP_CLK_SIM_ENET_ROOT] =
> imx_clk_hw_gate4("sim_enet_root_clk", "enet_axi", ccm_base + 0x4400, 0);
> -	hws[IMX8MP_CLK_GPU2D_ROOT] = imx_clk_hw_gate4("gpu2d_root_clk",
> "gpu2d_div", ccm_base + 0x4450, 0);
> -	hws[IMX8MP_CLK_GPU3D_ROOT] = imx_clk_hw_gate4("gpu3d_root_clk",
> "gpu3d_core_div", ccm_base + 0x4460, 0);
> +	hws[IMX8MP_CLK_GPU2D_ROOT] = imx_clk_hw_gate4("gpu2d_root_clk",
> "gpu2d_core", ccm_base + 0x4450, 0);
> +	hws[IMX8MP_CLK_GPU3D_ROOT] = imx_clk_hw_gate4("gpu3d_root_clk",
> +"gpu3d_core", ccm_base + 0x4460, 0);
>  	hws[IMX8MP_CLK_SNVS_ROOT] = imx_clk_hw_gate4("snvs_root_clk",
> "ipg_root", ccm_base + 0x4470, 0);
>  	hws[IMX8MP_CLK_UART1_ROOT] = imx_clk_hw_gate4("uart1_root_clk",
> "uart1", ccm_base + 0x4490, 0);
>  	hws[IMX8MP_CLK_UART2_ROOT] = imx_clk_hw_gate4("uart2_root_clk",
> "uart2", ccm_base + 0x44a0, 0); @@ -731,7 +716,7 @@ static int
> imx8mp_clocks_probe(struct platform_device *pdev)
>  	hws[IMX8MP_CLK_GPU_ROOT] = imx_clk_hw_gate4("gpu_root_clk",
> "gpu_axi", ccm_base + 0x4570, 0);
>  	hws[IMX8MP_CLK_VPU_VC8KE_ROOT] =
> imx_clk_hw_gate4("vpu_vc8ke_root_clk", "vpu_vc8000e", ccm_base + 0x4590,
> 0);
>  	hws[IMX8MP_CLK_VPU_G2_ROOT] =
> imx_clk_hw_gate4("vpu_g2_root_clk", "vpu_g2", ccm_base + 0x45a0, 0);
> -	hws[IMX8MP_CLK_NPU_ROOT] = imx_clk_hw_gate4("npu_root_clk",
> "ml_div", ccm_base + 0x45b0, 0);
> +	hws[IMX8MP_CLK_NPU_ROOT] = imx_clk_hw_gate4("npu_root_clk",
> "ml_core",
> +ccm_base + 0x45b0, 0);
>  	hws[IMX8MP_CLK_HSIO_ROOT] = imx_clk_hw_gate4("hsio_root_clk",
> "ipg_root", ccm_base + 0x45c0, 0);
>  	hws[IMX8MP_CLK_MEDIA_APB_ROOT] =
> imx_clk_hw_gate2_shared2("media_apb_root_clk", "media_apb", ccm_base +
> 0x45d0, 0, &share_count_media);
>  	hws[IMX8MP_CLK_MEDIA_AXI_ROOT] =
> imx_clk_hw_gate2_shared2("media_axi_root_clk", "media_axi", ccm_base +
> 0x45d0, 0, &share_count_media); @@ -739,7 +724,7 @@ static int
> imx8mp_clocks_probe(struct platform_device *pdev)
>  	hws[IMX8MP_CLK_MEDIA_CAM2_PIX_ROOT] =
> imx_clk_hw_gate2_shared2("media_cam2_pix_root_clk", "media_cam2_pix",
> ccm_base + 0x45d0, 0, &share_count_media);
>  	hws[IMX8MP_CLK_MEDIA_DISP1_PIX_ROOT] =
> imx_clk_hw_gate2_shared2("media_disp1_pix_root_clk", "media_disp1_pix",
> ccm_base + 0x45d0, 0, &share_count_media);
>  	hws[IMX8MP_CLK_MEDIA_DISP2_PIX_ROOT] =
> imx_clk_hw_gate2_shared2("media_disp2_pix_root_clk", "media_disp2_pix",
> ccm_base + 0x45d0, 0, &share_count_media);
> -	hws[IMX8MP_CLK_MEDIA_ISP_ROOT] =
> imx_clk_hw_gate2_shared2("media_isp_root_clk", "media_isp_div", ccm_base
> + 0x45d0, 0, &share_count_media);
> +	hws[IMX8MP_CLK_MEDIA_ISP_ROOT] =
> +imx_clk_hw_gate2_shared2("media_isp_root_clk", "media_isp", ccm_base +
> +0x45d0, 0, &share_count_media);
> 
>  	hws[IMX8MP_CLK_USDHC3_ROOT] =
> imx_clk_hw_gate4("usdhc3_root_clk", "usdhc3", ccm_base + 0x45e0, 0);
>  	hws[IMX8MP_CLK_HDMI_ROOT] = imx_clk_hw_gate4("hdmi_root_clk",
> "hdmi_axi", ccm_base + 0x45f0, 0); diff --git
> a/include/dt-bindings/clock/imx8mp-clock.h
> b/include/dt-bindings/clock/imx8mp-clock.h
> index 46c69cd66c62..8430bc4fd182 100644
> --- a/include/dt-bindings/clock/imx8mp-clock.h
> +++ b/include/dt-bindings/clock/imx8mp-clock.h
> @@ -313,6 +313,15 @@
>  #define IMX8MP_SYS_PLL2_333M_CG			303
>  #define IMX8MP_SYS_PLL2_500M_CG			304
> 
> -#define IMX8MP_CLK_END				305
> +#define IMX8MP_CLK_M7_CORE			305
> +#define IMX8MP_CLK_ML_CORE			306
> +#define IMX8MP_CLK_GPU3D_CORE			307
> +#define IMX8MP_CLK_GPU3D_SHADER_CORE		308
> +#define IMX8MP_CLK_GPU2D_CORE			309
> +#define IMX8MP_CLK_AUDIO_AXI			310
> +#define IMX8MP_CLK_HSIO_AXI			311
> +#define IMX8MP_CLK_MEDIA_ISP			312
> +
> +#define IMX8MP_CLK_END				313
> 
>  #endif
> --
> 2.16.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
