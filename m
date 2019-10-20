Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4C7CDDEDA
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 20 Oct 2019 16:25:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uxFx9kEP05X4jZInYBURVITuhWNwZmaiLH4JJOT1y7o=; b=ld8vK6rYv8OxVu
	Bh/8e9c5QRyeiTLEleVTwSdS6vbgFSzgT5bzJog+zcM/FvHPyIl5S0zcQl7jgtIYfdUN5tlYJnxdp
	iqav8fH+yei3xvi7d7MI5fK6xN/8PpZ0YVHJX2VR/jiswnx6n6X1+ogMRfSbOGmps7HXMSCKaUfaN
	Uh+zahg0EeKuWT4IHjvttcLc1a4s3Q++TwOwPi1S6aNQJguGroTxMtF74hXN+MQYqnImDGSy0rbpy
	7Uf0+thpA4ifaux0DigYbbi/UIFuu7ZBtqFp1lueAfw6VtX0dXdBBh3mFMsNKb/W52RV84t2Y8+R1
	/HU15oSHyyInpiP04Enw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMC8h-0004jz-JM; Sun, 20 Oct 2019 14:24:59 +0000
Received: from mail-eopbgr10081.outbound.protection.outlook.com ([40.107.1.81]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMC8O-0003fv-7Y
 for linux-arm-kernel@lists.infradead.org; Sun, 20 Oct 2019 14:24:42 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TpVf9BTRjoskvxEc5j58WbltWIC+3s8qilONwx+hSBwzkdzUqsjFIWSqt+huept/5dbs5MKbsoIYgPSIVGUXYGcCT8koCEBCmlSU1AYXD8Q/X4I6jTLF33+oFJdrPZocGcNS9EdnIggrb9AZX3D9seH9DakT7l3uCIOmCpc8h8NQRrB1r/6ojPNQgBJ0jW8MpPq2SObWIefVVQBJsTif9ALitNArXE2N5a47UBdouBCpqOGfqpCqMPhm/YO9GJFEDxsP/OIO1N8MAhbWyeZSfsM6lSlnr94cnvYaD633IBAQSQempdLRJwMpRfStwFpDCu8xjMwzW+KVIqQHzlhJSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kxHkV/5Hlhgkc2c9pKbRzP3cQaWUTLXCFFifDeFuShA=;
 b=U9v8p1/MnJXh90s0gTg6LdsAu6Udc5bU8qnTmUQr2qXK9sZl6nPoX4i+UIOkW5t3dpIFtVxDvNTh/tsj7bsxnr3JWLzYNN6g/ZZnIX4lQSG080ebXxoawKsJOYmZEyLuRSbIHkgWvIkQPWTNFem9Ese6BRkIuIb37C8Uj7xqB3tkrLTFZVPxjin/Yh/MJYUqWVEkf0fkkG1ByHBKD3Ww/9kN4LVmRqa9EyJCChUzx+FrUQP+gqsM0fzP/4lSdhk5w8/ZxiLloOdKWHauevKK4O0sVuokiURx2sl7JEkAXezvCxX+KR1/8o7YtojxRdVAQrslYNccsNDL3YWMsVxBWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kxHkV/5Hlhgkc2c9pKbRzP3cQaWUTLXCFFifDeFuShA=;
 b=SO7qycVikloy+yLOyGBRq73aGQKQfdZNOBueCIYS8f5riOnbW1QYa4DcmtM6oLwuc+u7wbY+wyOGDCcLdNysTE368x+Es0C5yHAzt6FG3dK+BtMTjDzzRlkv8OktIPCyOtGRXK591JYbfrbToObl547L9OSN7CsXyJvDpDmxvas=
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com (20.178.202.151) by
 AM0PR04MB4017.eurprd04.prod.outlook.com (52.134.92.159) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.18; Sun, 20 Oct 2019 14:24:32 +0000
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::4122:fda5:e903:8c02]) by AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::4122:fda5:e903:8c02%3]) with mapi id 15.20.2347.028; Sun, 20 Oct 2019
 14:24:32 +0000
From: Abel Vesa <abel.vesa@nxp.com>
To: Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH 1/3] clk: imx: imx8mm: mark sys_pll1/2 as fixed clock
Thread-Topic: [PATCH 1/3] clk: imx: imx8mm: mark sys_pll1/2 as fixed clock
Thread-Index: AQHVfogREXMSqkErfE+B9jsiOEYyjqdjpxsA
Date: Sun, 20 Oct 2019 14:24:32 +0000
Message-ID: <20191020141355.px6o3ifnjy45hli4@fsr-ub1664-175>
References: <1570614940-17239-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1570614940-17239-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM5PR0601CA0028.eurprd06.prod.outlook.com
 (2603:10a6:203:68::14) To AM0PR04MB5779.eurprd04.prod.outlook.com
 (2603:10a6:208:131::23)
x-originating-ip: [89.37.124.34]
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=abel.vesa@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ed3f786e-eec7-4cc2-16a9-08d755693974
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: AM0PR04MB4017:|AM0PR04MB4017:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB4017CF00E0B0A69D99814FD1F66E0@AM0PR04MB4017.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2399;
x-forefront-prvs: 0196A226D1
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(7916004)(4636009)(366004)(376002)(136003)(346002)(39860400002)(396003)(199004)(189003)(3846002)(446003)(1076003)(316002)(11346002)(102836004)(44832011)(99286004)(66476007)(66556008)(64756008)(66446008)(476003)(53546011)(486006)(66946007)(71190400001)(71200400001)(54906003)(8676002)(76176011)(52116002)(8936002)(186003)(6506007)(26005)(5660300002)(81166006)(81156014)(66066001)(6116002)(25786009)(386003)(9686003)(6512007)(6636002)(86362001)(2906002)(4326008)(305945005)(7736002)(6246003)(6862004)(478600001)(229853002)(256004)(14454004)(33716001)(6486002)(6436002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4017;
 H:AM0PR04MB5779.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kUG079oKzexEOP4s/pAI3GvP/q8LM+qBk8PsoeREX4K6661tRhT+b0ETz/xG0t5rCt/iZo3hFMzHmNDQogQaC/Y+ruUaoiamr//dhPhK2BmZen8Im+CsdH+QQNwv/o1KnDROsH5AYTvAfUiIHSvg7L1hFZf6+Yrv5BjL38h5zaAdBtxh3MzjQcufxZ7KDl+l6CI6uQgkIDEsy1bdz0m/HBbKIDKAHE2gJ2JbarllWVQos3krA6JTDOkNJBeT+J92tT0R3DtbjbKpwiIqZy6+moyWkwC2Zg1JkvGuftC2lmTlEvPYuMeHeKfbTnOE7iy3jvYIrCst/qXm53/WbhtN61V3nW70PLOLMKeXXbQMFc4gGB9iMfaMBUuIhJBRuzGDqTatUgw5ZscK17Wx2N2jYdfx57ESK+M8zgIQo+P0ijg=
Content-ID: <1D7E3E0C12D6B14B809F90044067B5F6@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ed3f786e-eec7-4cc2-16a9-08d755693974
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Oct 2019 14:24:32.1989 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: c0Z9ZqCowJLvO0x0rHUh8+usw5DYfnoktaswke1nF1vGAETP9FpaBB++nbZDAqcSsz9IT2fRzx3I/pSiK3C99w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4017
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191020_072440_339096_D7F171AC 
X-CRM114-Status: GOOD (  14.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.81 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Jacky Bai <ping.bai@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "sboyd@kernel.org" <sboyd@kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19-10-09 09:58:14, Peng Fan wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> According Architecture definition guide, SYS_PLL1 is fixed at
> 800MHz, SYS_PLL2 is fixed at 1000MHz, so let's use imx_clk_fixed
> to register the clocks and drop code that could change the rate.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

For the entire series:

Reviewed-by: Abel Vesa <abel.vesa@nxp.com>

> ---
>  drivers/clk/imx/clk-imx8mm.c | 14 ++++----------
>  1 file changed, 4 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/clk/imx/clk-imx8mm.c b/drivers/clk/imx/clk-imx8mm.c
> index 04876ec66127..ae7321ab7837 100644
> --- a/drivers/clk/imx/clk-imx8mm.c
> +++ b/drivers/clk/imx/clk-imx8mm.c
> @@ -34,8 +34,6 @@ static const char *dram_pll_bypass_sels[] = {"dram_pll", "dram_pll_ref_sel", };
>  static const char *gpu_pll_bypass_sels[] = {"gpu_pll", "gpu_pll_ref_sel", };
>  static const char *vpu_pll_bypass_sels[] = {"vpu_pll", "vpu_pll_ref_sel", };
>  static const char *arm_pll_bypass_sels[] = {"arm_pll", "arm_pll_ref_sel", };
> -static const char *sys_pll1_bypass_sels[] = {"sys_pll1", "sys_pll1_ref_sel", };
> -static const char *sys_pll2_bypass_sels[] = {"sys_pll2", "sys_pll2_ref_sel", };
>  static const char *sys_pll3_bypass_sels[] = {"sys_pll3", "sys_pll3_ref_sel", };
>  
>  /* CCM ROOT */
> @@ -325,8 +323,6 @@ static int imx8mm_clocks_probe(struct platform_device *pdev)
>  	clks[IMX8MM_GPU_PLL_REF_SEL] = imx_clk_mux("gpu_pll_ref_sel", base + 0x64, 0, 2, pll_ref_sels, ARRAY_SIZE(pll_ref_sels));
>  	clks[IMX8MM_VPU_PLL_REF_SEL] = imx_clk_mux("vpu_pll_ref_sel", base + 0x74, 0, 2, pll_ref_sels, ARRAY_SIZE(pll_ref_sels));
>  	clks[IMX8MM_ARM_PLL_REF_SEL] = imx_clk_mux("arm_pll_ref_sel", base + 0x84, 0, 2, pll_ref_sels, ARRAY_SIZE(pll_ref_sels));
> -	clks[IMX8MM_SYS_PLL1_REF_SEL] = imx_clk_mux("sys_pll1_ref_sel", base + 0x94, 0, 2, pll_ref_sels, ARRAY_SIZE(pll_ref_sels));
> -	clks[IMX8MM_SYS_PLL2_REF_SEL] = imx_clk_mux("sys_pll2_ref_sel", base + 0x104, 0, 2, pll_ref_sels, ARRAY_SIZE(pll_ref_sels));
>  	clks[IMX8MM_SYS_PLL3_REF_SEL] = imx_clk_mux("sys_pll3_ref_sel", base + 0x114, 0, 2, pll_ref_sels, ARRAY_SIZE(pll_ref_sels));
>  
>  	clks[IMX8MM_AUDIO_PLL1] = imx_clk_pll14xx("audio_pll1", "audio_pll1_ref_sel", base, &imx_1443x_pll);
> @@ -336,8 +332,8 @@ static int imx8mm_clocks_probe(struct platform_device *pdev)
>  	clks[IMX8MM_GPU_PLL] = imx_clk_pll14xx("gpu_pll", "gpu_pll_ref_sel", base + 0x64, &imx_1416x_pll);
>  	clks[IMX8MM_VPU_PLL] = imx_clk_pll14xx("vpu_pll", "vpu_pll_ref_sel", base + 0x74, &imx_1416x_pll);
>  	clks[IMX8MM_ARM_PLL] = imx_clk_pll14xx("arm_pll", "arm_pll_ref_sel", base + 0x84, &imx_1416x_pll);
> -	clks[IMX8MM_SYS_PLL1] = imx_clk_pll14xx("sys_pll1", "sys_pll1_ref_sel", base + 0x94, &imx_1416x_pll);
> -	clks[IMX8MM_SYS_PLL2] = imx_clk_pll14xx("sys_pll2", "sys_pll2_ref_sel", base + 0x104, &imx_1416x_pll);
> +	clks[IMX8MM_SYS_PLL1] = imx_clk_fixed("sys_pll1", 800000000);
> +	clks[IMX8MM_SYS_PLL2] = imx_clk_fixed("sys_pll2", 1000000000);
>  	clks[IMX8MM_SYS_PLL3] = imx_clk_pll14xx("sys_pll3", "sys_pll3_ref_sel", base + 0x114, &imx_1416x_pll);
>  
>  	/* PLL bypass out */
> @@ -348,8 +344,6 @@ static int imx8mm_clocks_probe(struct platform_device *pdev)
>  	clks[IMX8MM_GPU_PLL_BYPASS] = imx_clk_mux_flags("gpu_pll_bypass", base + 0x64, 28, 1, gpu_pll_bypass_sels, ARRAY_SIZE(gpu_pll_bypass_sels), CLK_SET_RATE_PARENT);
>  	clks[IMX8MM_VPU_PLL_BYPASS] = imx_clk_mux_flags("vpu_pll_bypass", base + 0x74, 28, 1, vpu_pll_bypass_sels, ARRAY_SIZE(vpu_pll_bypass_sels), CLK_SET_RATE_PARENT);
>  	clks[IMX8MM_ARM_PLL_BYPASS] = imx_clk_mux_flags("arm_pll_bypass", base + 0x84, 28, 1, arm_pll_bypass_sels, ARRAY_SIZE(arm_pll_bypass_sels), CLK_SET_RATE_PARENT);
> -	clks[IMX8MM_SYS_PLL1_BYPASS] = imx_clk_mux_flags("sys_pll1_bypass", base + 0x94, 28, 1, sys_pll1_bypass_sels, ARRAY_SIZE(sys_pll1_bypass_sels), CLK_SET_RATE_PARENT);
> -	clks[IMX8MM_SYS_PLL2_BYPASS] = imx_clk_mux_flags("sys_pll2_bypass", base + 0x104, 28, 1, sys_pll2_bypass_sels, ARRAY_SIZE(sys_pll2_bypass_sels), CLK_SET_RATE_PARENT);
>  	clks[IMX8MM_SYS_PLL3_BYPASS] = imx_clk_mux_flags("sys_pll3_bypass", base + 0x114, 28, 1, sys_pll3_bypass_sels, ARRAY_SIZE(sys_pll3_bypass_sels), CLK_SET_RATE_PARENT);
>  
>  	/* PLL out gate */
> @@ -360,8 +354,8 @@ static int imx8mm_clocks_probe(struct platform_device *pdev)
>  	clks[IMX8MM_GPU_PLL_OUT] = imx_clk_gate("gpu_pll_out", "gpu_pll_bypass", base + 0x64, 11);
>  	clks[IMX8MM_VPU_PLL_OUT] = imx_clk_gate("vpu_pll_out", "vpu_pll_bypass", base + 0x74, 11);
>  	clks[IMX8MM_ARM_PLL_OUT] = imx_clk_gate("arm_pll_out", "arm_pll_bypass", base + 0x84, 11);
> -	clks[IMX8MM_SYS_PLL1_OUT] = imx_clk_gate("sys_pll1_out", "sys_pll1_bypass", base + 0x94, 11);
> -	clks[IMX8MM_SYS_PLL2_OUT] = imx_clk_gate("sys_pll2_out", "sys_pll2_bypass", base + 0x104, 11);
> +	clks[IMX8MM_SYS_PLL1_OUT] = imx_clk_gate("sys_pll1_out", "sys_pll1", base + 0x94, 11);
> +	clks[IMX8MM_SYS_PLL2_OUT] = imx_clk_gate("sys_pll2_out", "sys_pll2", base + 0x104, 11);
>  	clks[IMX8MM_SYS_PLL3_OUT] = imx_clk_gate("sys_pll3_out", "sys_pll3_bypass", base + 0x114, 11);
>  
>  	/* SYS PLL fixed output */
> -- 
> 2.16.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
