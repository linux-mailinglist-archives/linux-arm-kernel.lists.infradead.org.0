Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30CC516BBD4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 09:28:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5X3dG9GL+fQUNpzbbVQuVJWzRIZAluHEiumZuq/Efdk=; b=TbLXlugl/UA0Pz
	db/QTq2lnblr2ND+FCriy0uSXraS1dEyI8csSnTjOwepytYX9gNOICWkTdLqgk7EIJ4VqV/1C1F4b
	dOuti1a39TJalApMZPN00VZkQKAkxgURB6IpTe0T3sTy7yH7lmDr90vUvXDSuEnUfpv2TbGB1HzlI
	HcunEvFTaXRqoawKm7kD8kOdctYOI5aEUTJr0mCdTjoL7AeA3j9gwq8oBFMrgrQK5gzGFm6sBs2/j
	Msyaq4gRgdzVn9XiGBG+6G3zanv64Virq22AXw92kSr/aD4aNk5uIhKxdATpC4FnUqk6INMSVYCV0
	/44hv+PopGzGSTTmMyvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6VZG-0007y1-Ag; Tue, 25 Feb 2020 08:27:50 +0000
Received: from mail-ve1eur03on0628.outbound.protection.outlook.com
 ([2a01:111:f400:fe09::628]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6VZ6-0007xW-PK
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 08:27:42 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UKeHbb8GqDJZh4PjaZS0T0YisdElNqjiJdk+lYg/uyshEak7krth8p1esP+dRP44lb+m/zii3r1kiQLX3MeZ4Q5CXiOrJpgC6P9E+iSsE8yYBl8NCsj8BKhFadLLkxmXPDY9GqCsXhlVZWz3yXXXMIMOy6njoI3NikwksqMsPLkPmHsItysfzoxa3OXvpjFvFoAzyjHpSAB+9WyX6yvotp/uA/kIfNUMuwfLVnhSshGc9fAJ8Tt5u1Cf/spDA1o2OtJZ7Grg65Ybqs/Kd06zzeY0keU9yeFRexGnIg2E1s+paNvOWAm2BlT+Yd8xW3Jy31J6/fNR1prnjZCNC7yHwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Sx7a72s8/SHpixSvDcyA5LG27FwlKHHq4b9us1Rh6wE=;
 b=VAr5HtBOEE9YTz6BBQhVA7wT1SqgUcSfSt0jeLDcIdKB9RQlvzgnZTe8ZApasp0CGFB/A7ZIg3qCHOKNc7s5G+BhInJxnTHbDlpIrABF/R6o2K5C9j+OpfzkrQ8newab1EjRzQqNnTQeh5+DkIdkpeXYaZGpjqfidEX52cHHRT7RrAAsJHcxno3CPedrLtJqKF55ALUxVR80bpQnNJTn1d9R7hIglgu1WfacxZMz1fZUUIGQDO+gPdhqTEGKF0Ca5cLoepOJWK3xojt2Mb+h9cNEv/PN+54foSaja6e3wN7b2B+8BgI9e6QjGwXcooxlWXtbtj2+aC8Huh6IFjMv5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Sx7a72s8/SHpixSvDcyA5LG27FwlKHHq4b9us1Rh6wE=;
 b=YsdbwzZK5KNqWCD0CnPjnJnisd+IafyWtKvEJ2JWN8TzD1eg0tu0saoBZCDq4ObzNl4uMbn/BzrB0GcNAQw0OATETyVjAsFSymylF73YfVI9ZSflppUtGDixN3ZivdheMRtrqb3tcxs/2zWl++ERgirYi8kxljhEAA0Ld9ZOrjs=
Received: from VI1PR04MB6992.eurprd04.prod.outlook.com (52.133.247.22) by
 VI1PR04MB6879.eurprd04.prod.outlook.com (52.133.245.71) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.21; Tue, 25 Feb 2020 08:27:37 +0000
Received: from VI1PR04MB6992.eurprd04.prod.outlook.com
 ([fe80::9879:13e1:8f56:cb3b]) by VI1PR04MB6992.eurprd04.prod.outlook.com
 ([fe80::9879:13e1:8f56:cb3b%6]) with mapi id 15.20.2750.021; Tue, 25 Feb 2020
 08:27:37 +0000
From: Jacky Bai <ping.bai@nxp.com>
To: Peng Fan <peng.fan@nxp.com>, "sboyd@kernel.org" <sboyd@kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>, Abel
 Vesa <abel.vesa@nxp.com>
Subject: RE: [PATCH 2/3] clk: imx: imx8mp: mark sys_pll1/2 as fixed clock
Thread-Topic: [PATCH 2/3] clk: imx: imx8mp: mark sys_pll1/2 as fixed clock
Thread-Index: AQHV67EJMasWcpA7OE6netguTosUuagrkvPg
Date: Tue, 25 Feb 2020 08:27:37 +0000
Message-ID: <VI1PR04MB6992355349477F8A7E41161A87ED0@VI1PR04MB6992.eurprd04.prod.outlook.com>
References: <1582616959-933-1-git-send-email-peng.fan@nxp.com>
 <1582616959-933-2-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1582616959-933-2-git-send-email-peng.fan@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=ping.bai@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 3897e6a6-8f65-42f1-f658-08d7b9cc923e
x-ms-traffictypediagnostic: VI1PR04MB6879:|VI1PR04MB6879:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB6879DBD7140A405CCB7996CC87ED0@VI1PR04MB6879.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 0324C2C0E2
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(376002)(39860400002)(396003)(346002)(366004)(189003)(199004)(66556008)(55016002)(4326008)(9686003)(110136005)(64756008)(66446008)(2906002)(66946007)(5660300002)(66476007)(86362001)(54906003)(316002)(76116006)(52536014)(186003)(81156014)(33656002)(8676002)(81166006)(478600001)(26005)(71200400001)(53546011)(8936002)(6506007)(7696005)(6636002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB6879;
 H:VI1PR04MB6992.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: lNp/o64ZmVAxbIWwFHEpmqGXvdJ2H+kefkfepuNpMvy3iwH6dNUo8u8RfdowGrVMbZApmhZNDdva10vjvAbGr602/x8K6iEnMcR074Pqwoglo61oExWm0s1vuOp47QvGVS/0QQGyzP45CeGg+ozhuK5uJgtP4XZesbR+9qyRkh2Uh8wC/8+FqJVX1S/D3ZZKC7xXS0RIZRgv8cfgKJemLU5MXXhN2fZcLebe9NqBpLSla3bf6g7+DfXzQgV89vatvaUeiOFr6WwxRNdKoP7V2rW4CB7mZUwj8Jb5hRLj2sBb8HXo2ohsfWjny4OBzgDyOoWR0mbHfF9ar+ioF9OhdOT/B18k8qukDhltmfsyjaU168TM8g1n3W2hkeYx2ump2pxqdToASbibX4wOxyeZPuXVCvKi5Wc7LZ4uj6chaJieICnlazoqnYlW81zSZDa9lNl2bo5CZ0sSaFievBFLuCrB134Y/zpcu+/p27hhBy8XVhv8KwIBlayfqI4sSO68
x-ms-exchange-antispam-messagedata: U7WcX6eiY2zWUBpN8QtCkqmBf3bwLokDQcBpfa1kpRb9HUua22L3ABpCAdQAf9ykGodKZJaXJA6euaXiXQ2HY2dQX6leRXi1YIIIeH/hG2xyeIVtIGWf8hzYqzKLfjYEIus+/rfi/6SwTzfNoqVDSQ==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3897e6a6-8f65-42f1-f658-08d7b9cc923e
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Feb 2020 08:27:37.2429 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DzOAU/xptUfsZ/lOaop7PyvQIMEzBdh37KhjFoqePf0ufoS+OBJoQkmVhUgzMs5mBeADldUwFHJtnBce+aqAzQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB6879
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_002741_164406_3C1045E7 
X-CRM114-Status: GOOD (  16.85  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe09:0:0:0:628 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.0 FORGED_SPF_HELO        No description available.
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Anson Huang <anson.huang@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: Peng Fan <peng.fan@nxp.com>
> Sent: Tuesday, February 25, 2020 3:49 PM
> To: sboyd@kernel.org; shawnguo@kernel.org; s.hauer@pengutronix.de;
> festevam@gmail.com; Abel Vesa <abel.vesa@nxp.com>
> Cc: kernel@pengutronix.de; dl-linux-imx <linux-imx@nxp.com>; Anson Huang
> <anson.huang@nxp.com>; linux-clk@vger.kernel.org;
> linux-arm-kernel@lists.infradead.org; linux-kernel@vger.kernel.org;
> devicetree@vger.kernel.org; Leonard Crestez <leonard.crestez@nxp.com>;
> Peng Fan <peng.fan@nxp.com>
> Subject: [PATCH 2/3] clk: imx: imx8mp: mark sys_pll1/2 as fixed clock
> 
> From: Peng Fan <peng.fan@nxp.com>
> 
> Same to i.MX8MN/i.MX8MM, according Architecture definition guide,
> SYS_PLL1 is fixed at 800MHz, SYS_PLL2 is fixed at 1000MHz, so let's use
> imx_clk_fixed to register the clocks and drop code that could change the rate.
> 

Better to keep it as PLL for now, we may have the situation that need to power down the PLL in some case.

BR
Jacky Bai
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>  drivers/clk/imx/clk-imx8mp.c | 14 ++++----------
>  1 file changed, 4 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/clk/imx/clk-imx8mp.c b/drivers/clk/imx/clk-imx8mp.c
> index a85039cfdbf1..77b79f61aab5 100644
> --- a/drivers/clk/imx/clk-imx8mp.c
> +++ b/drivers/clk/imx/clk-imx8mp.c
> @@ -26,8 +26,6 @@ static const char * const dram_pll_bypass_sels[] =
> {"dram_pll", "dram_pll_ref_se  static const char * const
> gpu_pll_bypass_sels[] = {"gpu_pll", "gpu_pll_ref_sel", };  static const char *
> const vpu_pll_bypass_sels[] = {"vpu_pll", "vpu_pll_ref_sel", };  static const
> char * const arm_pll_bypass_sels[] = {"arm_pll", "arm_pll_ref_sel", }; -static
> const char * const sys_pll1_bypass_sels[] = {"sys_pll1", "sys_pll1_ref_sel", };
> -static const char * const sys_pll2_bypass_sels[] = {"sys_pll2",
> "sys_pll2_ref_sel", };  static const char * const sys_pll3_bypass_sels[] =
> {"sys_pll3", "sys_pll3_ref_sel", };
> 
>  static const char * const imx8mp_a53_sels[] = {"osc_24m", "arm_pll_out",
> "sys_pll2_500m", @@ -471,8 +469,6 @@ static int
> imx8mp_clocks_probe(struct platform_device *pdev)
>  	hws[IMX8MP_GPU_PLL_REF_SEL] = imx_clk_hw_mux("gpu_pll_ref_sel",
> anatop_base + 0x64, 0, 2, pll_ref_sels, ARRAY_SIZE(pll_ref_sels));
>  	hws[IMX8MP_VPU_PLL_REF_SEL] = imx_clk_hw_mux("vpu_pll_ref_sel",
> anatop_base + 0x74, 0, 2, pll_ref_sels, ARRAY_SIZE(pll_ref_sels));
>  	hws[IMX8MP_ARM_PLL_REF_SEL] = imx_clk_hw_mux("arm_pll_ref_sel",
> anatop_base + 0x84, 0, 2, pll_ref_sels, ARRAY_SIZE(pll_ref_sels));
> -	hws[IMX8MP_SYS_PLL1_REF_SEL] =
> imx_clk_hw_mux("sys_pll1_ref_sel", anatop_base + 0x94, 0, 2, pll_ref_sels,
> ARRAY_SIZE(pll_ref_sels));
> -	hws[IMX8MP_SYS_PLL2_REF_SEL] =
> imx_clk_hw_mux("sys_pll2_ref_sel", anatop_base + 0x104, 0, 2, pll_ref_sels,
> ARRAY_SIZE(pll_ref_sels));
>  	hws[IMX8MP_SYS_PLL3_REF_SEL] =
> imx_clk_hw_mux("sys_pll3_ref_sel", anatop_base + 0x114, 0, 2, pll_ref_sels,
> ARRAY_SIZE(pll_ref_sels));
> 
>  	hws[IMX8MP_AUDIO_PLL1] = imx_clk_hw_pll14xx("audio_pll1",
> "audio_pll1_ref_sel", anatop_base, &imx_1443x_pll); @@ -482,8 +478,8 @@
> static int imx8mp_clocks_probe(struct platform_device *pdev)
>  	hws[IMX8MP_GPU_PLL] = imx_clk_hw_pll14xx("gpu_pll",
> "gpu_pll_ref_sel", anatop_base + 0x64, &imx_1416x_pll);
>  	hws[IMX8MP_VPU_PLL] = imx_clk_hw_pll14xx("vpu_pll",
> "vpu_pll_ref_sel", anatop_base + 0x74, &imx_1416x_pll);
>  	hws[IMX8MP_ARM_PLL] = imx_clk_hw_pll14xx("arm_pll",
> "arm_pll_ref_sel", anatop_base + 0x84, &imx_1416x_pll);
> -	hws[IMX8MP_SYS_PLL1] = imx_clk_hw_pll14xx("sys_pll1",
> "sys_pll1_ref_sel", anatop_base + 0x94, &imx_1416x_pll);
> -	hws[IMX8MP_SYS_PLL2] = imx_clk_hw_pll14xx("sys_pll2",
> "sys_pll2_ref_sel", anatop_base + 0x104, &imx_1416x_pll);
> +	hws[IMX8MP_SYS_PLL1] = imx_clk_hw_fixed("sys_pll1", 800000000);
> +	hws[IMX8MP_SYS_PLL2] = imx_clk_hw_fixed("sys_pll2", 1000000000);
>  	hws[IMX8MP_SYS_PLL3] = imx_clk_hw_pll14xx("sys_pll3",
> "sys_pll3_ref_sel", anatop_base + 0x114, &imx_1416x_pll);
> 
>  	hws[IMX8MP_AUDIO_PLL1_BYPASS] =
> imx_clk_hw_mux_flags("audio_pll1_bypass", anatop_base, 16, 1,
> audio_pll1_bypass_sels, ARRAY_SIZE(audio_pll1_bypass_sels),
> CLK_SET_RATE_PARENT); @@ -493,8 +489,6 @@ static int
> imx8mp_clocks_probe(struct platform_device *pdev)
>  	hws[IMX8MP_GPU_PLL_BYPASS] =
> imx_clk_hw_mux_flags("gpu_pll_bypass", anatop_base + 0x64, 28, 1,
> gpu_pll_bypass_sels, ARRAY_SIZE(gpu_pll_bypass_sels),
> CLK_SET_RATE_PARENT);
>  	hws[IMX8MP_VPU_PLL_BYPASS] =
> imx_clk_hw_mux_flags("vpu_pll_bypass", anatop_base + 0x74, 28, 1,
> vpu_pll_bypass_sels, ARRAY_SIZE(vpu_pll_bypass_sels),
> CLK_SET_RATE_PARENT);
>  	hws[IMX8MP_ARM_PLL_BYPASS] =
> imx_clk_hw_mux_flags("arm_pll_bypass", anatop_base + 0x84, 28, 1,
> arm_pll_bypass_sels, ARRAY_SIZE(arm_pll_bypass_sels),
> CLK_SET_RATE_PARENT);
> -	hws[IMX8MP_SYS_PLL1_BYPASS] =
> imx_clk_hw_mux_flags("sys_pll1_bypass", anatop_base + 0x94, 28, 1,
> sys_pll1_bypass_sels, ARRAY_SIZE(sys_pll1_bypass_sels),
> CLK_SET_RATE_PARENT);
> -	hws[IMX8MP_SYS_PLL2_BYPASS] =
> imx_clk_hw_mux_flags("sys_pll2_bypass", anatop_base + 0x104, 28, 1,
> sys_pll2_bypass_sels, ARRAY_SIZE(sys_pll2_bypass_sels),
> CLK_SET_RATE_PARENT);
>  	hws[IMX8MP_SYS_PLL3_BYPASS] =
> imx_clk_hw_mux_flags("sys_pll3_bypass", anatop_base + 0x114, 28, 1,
> sys_pll3_bypass_sels, ARRAY_SIZE(sys_pll3_bypass_sels),
> CLK_SET_RATE_PARENT);
> 
>  	hws[IMX8MP_AUDIO_PLL1_OUT] = imx_clk_hw_gate("audio_pll1_out",
> "audio_pll1_bypass", anatop_base, 13); @@ -504,8 +498,8 @@ static int
> imx8mp_clocks_probe(struct platform_device *pdev)
>  	hws[IMX8MP_GPU_PLL_OUT] = imx_clk_hw_gate("gpu_pll_out",
> "gpu_pll_bypass", anatop_base + 0x64, 11);
>  	hws[IMX8MP_VPU_PLL_OUT] = imx_clk_hw_gate("vpu_pll_out",
> "vpu_pll_bypass", anatop_base + 0x74, 11);
>  	hws[IMX8MP_ARM_PLL_OUT] = imx_clk_hw_gate("arm_pll_out",
> "arm_pll_bypass", anatop_base + 0x84, 11);
> -	hws[IMX8MP_SYS_PLL1_OUT] = imx_clk_hw_gate("sys_pll1_out",
> "sys_pll1_bypass", anatop_base + 0x94, 11);
> -	hws[IMX8MP_SYS_PLL2_OUT] = imx_clk_hw_gate("sys_pll2_out",
> "sys_pll2_bypass", anatop_base + 0x104, 11);
> +	hws[IMX8MP_SYS_PLL1_OUT] = imx_clk_hw_gate("sys_pll1_out",
> "sys_pll1", anatop_base + 0x94, 11);
> +	hws[IMX8MP_SYS_PLL2_OUT] = imx_clk_hw_gate("sys_pll2_out",
> "sys_pll2",
> +anatop_base + 0x104, 11);
>  	hws[IMX8MP_SYS_PLL3_OUT] = imx_clk_hw_gate("sys_pll3_out",
> "sys_pll3_bypass", anatop_base + 0x114, 11);
> 
>  	hws[IMX8MP_SYS_PLL1_40M] =
> imx_clk_hw_fixed_factor("sys_pll1_40m", "sys_pll1_out", 1, 20);
> --
> 2.16.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
