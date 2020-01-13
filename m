Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54D59139BD7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 22:48:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=wHlrw5YmAMjbDAOgsIUhwCQ3ZsU3MRKShb57Gd6D3bM=; b=dofo6lDdOG1jFP
	vwLM+siLdTv5SQhKSRQlniv3Pqqyu8YWhpTKiKvEddkHBF/CpbZBRytM85IFIhpjOmBddHIa2udY/
	z3LfuOxnccj/2dmPxxwChqby9E/YB6bZsnPMRKKxnQ1pJOpbi3pqlX6Glo9+y/W8M3kPMwvSgk28+
	vlEdwwfRBjzz3PF/TLFXailCuUHg5RGmOtkQ2gvU+814jPJKrOWkrP/3fhCzp8aDx5h81Yx1I/8VL
	v+HEKZuev63kvGuQ8dZwHcP4ibjmfn+UUlUYlerm8v3cqyzNBkC+MHgKiprdio3+2113QO3gG1yrD
	nyZpXgHE9LcjxtEplVFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir7Zn-0005H2-6s; Mon, 13 Jan 2020 21:48:47 +0000
Received: from mail-he1eur01on061c.outbound.protection.outlook.com
 ([2a01:111:f400:fe1e::61c]
 helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir7Ze-0005GY-Bm
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 21:48:39 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Qh5cXC3Mi/07Y0slkhSg8oj23LTfO4dkXs72Nv7qb8KAuGG3GhpgFfCkewiu9ohfwaMEc7wM2yFYwb1EQsZb5NhHklphqTIx4fPwEf+83ypvdGNUJWX3psBCsTOyzvHugwltY3PG156SnX6DEa1bb51D3wslfSss+UqFDw7ilOf4Nx1IaOFP/853UCGYeUaZELbWRg4NiRWGLEkCUp9d7xTVEVR9DCrB8IDO8pqOjtNBKmYZkUFDBvFjim8NamEMYmyAQ6s/epD/1LzBC4vFTiAH90DP3Yi6EciEYU2FlXcRp4EDXC2Riz4G2tAEVEA/VTjNtHfNLAl7awDDxky6gQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YsUHYK3xGrq3V+57zjg02kzd1iqubfAyG5hTJUNdUGo=;
 b=RZsKC4A48Gudvm9eLqy3Nb79Pu4XI6pUselwalCG2iAe7YuqL/cUs2sRuH6TZwTBNdV2Uv8V8ni8cyvsygFaTI2TLuxVfiJnEf7BG3LxUSlre4LsuaxUVtzjApuEn4xrxjId/RS1zFo82FITwE+pKvBlujAFo4iv48IklynZIO6nAH78/HwFcVdZ++PwtjWkP+4PSd7DVTHVrgCOpkZzWEkZ2r2EkdROZ/ZpIgNWos0PIBUE/xUxyxsQsNZ4qxLJOXiZLm+178NYNEqlA33r2M23kI9kSsRWGZZPPiEB8iMV3K+Jz4ixo8+k0yqlJ456TBInxDGDgiRaEsLegeaQeQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YsUHYK3xGrq3V+57zjg02kzd1iqubfAyG5hTJUNdUGo=;
 b=ZdwVJneBuchnir5iQRI9BbFVs1LD2NDidGf7PjYNAvOig+Ftp9fcouclvBEumqoT6BeVqjbE8+UghJJu8jfWAUmIIBpMiRNpmpz4Mx5AGqxKqA1kg4tJL8M5fyy09Pa5PwfT/nfZA2kgieKBMqEcWBF9MaKc9C98HVgAPyGPHTk=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB4942.eurprd04.prod.outlook.com (20.177.50.77) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.16; Mon, 13 Jan 2020 21:48:35 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::58c5:f02f:2211:4953]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::58c5:f02f:2211:4953%7]) with mapi id 15.20.2623.015; Mon, 13 Jan 2020
 21:48:34 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Peng Fan <peng.fan@nxp.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>, 
 Abel Vesa <abel.vesa@nxp.com>
Subject: Re: [PATCH V2 3/4] clk: imx: imx8mm: use imx8m_clk_hw_composite_core
Thread-Topic: [PATCH V2 3/4] clk: imx: imx8mm: use imx8m_clk_hw_composite_core
Thread-Index: AQHVx4YX3PTv50+zWUiBWV9s8OC3Ag==
Date: Mon, 13 Jan 2020 21:48:34 +0000
Message-ID: <VI1PR04MB70237EA2E18574985CAB529DEE350@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <1578640411-16991-1-git-send-email-peng.fan@nxp.com>
 <1578640411-16991-4-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 7a7e8161-a55e-45e4-85db-08d7987256fe
x-ms-traffictypediagnostic: VI1PR04MB4942:|VI1PR04MB4942:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB4942EE1DF885966CC344F98CEE350@VI1PR04MB4942.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:404;
x-forefront-prvs: 028166BF91
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(136003)(366004)(376002)(346002)(39860400002)(199004)(189003)(81156014)(5660300002)(33656002)(4326008)(66946007)(6636002)(8936002)(66556008)(91956017)(44832011)(66446008)(76116006)(478600001)(66476007)(53546011)(8676002)(86362001)(186003)(54906003)(316002)(2906002)(64756008)(6506007)(110136005)(81166006)(7696005)(52536014)(71200400001)(9686003)(55016002)(26005)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB4942;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7YOlKN5rvXrgvdQvVPXspbLwJTDmOgp28DzQCKzE8Xo1Ra41QHcVsO8jbIvqqEpDGVKpQ+GTBn0faNLfb/8odtkNCZBo2cvea+LQjL4Q1Xqxo8ObuYRKnsa77Oo0vEfAYg52RplC5/bBYsl+XK3aiM66V6yoq4rjjXlxKkqkCYntvJpEd1zxsv00ebDfcXWnrp+0N4NfXZBJhp+LX/GrTjCEinkPTTOfpAiwhT/BWWWIl+ZVdzK65OjteeYMp26CJB5LceHsyErzrCCUIvee/4aPM5jS9orUQdYBQW1Iqtlp1dQYrPM0aGVtz7GR7f6Yzq+qo214tt6bE3/7ug2iKhWn8OqK/zVM1Ue5BsnCXy6nEU6auqcpysbE6BMvGoRulm2VUlR0Q5cjIFCP9tBcrKO7ch3nRIAJwix137ftjzK5TeOZnCWxZov0SeIRfExRe7i4eIyH6K2dgR3jWdmU5FVh4f9+vEDknHX2i52z3MajPpbdzWF6SJtcMfAgt+kF
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a7e8161-a55e-45e4-85db-08d7987256fe
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jan 2020 21:48:34.8224 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YZMoFB5bGBlbygj0pxgJFN62QeE7pEWHrN0iuloyDaDwM4bfaji070AwNvylAlHeonySLFeTX3RltoQjN97Y/g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4942
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_134838_474704_59F1F9F5 
X-CRM114-Status: GOOD (  11.04  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe1e:0:0:0:61c listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 Anson Huang <anson.huang@nxp.com>, "sboyd@kernel.org" <sboyd@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10.01.2020 09:18, Peng Fan wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> Use imx8m_clk_hw_composite_core to simplify code.
> 
> Reviewed-by: Abel Vesa <abel.vesa@nxp.com>
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

This seems to break imx8mm-evk boot in next-20200113. Board boots fine 
if I revert commit 15a8b30ba79f ("clk: imx: imx8mm: use 
imx8m_clk_hw_composite_core").

It works on imx8mq-evk tough, not clear why this is happening.

> ---
>   drivers/clk/imx/clk-imx8mm.c | 17 +++++------------
>   1 file changed, 5 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/clk/imx/clk-imx8mm.c b/drivers/clk/imx/clk-imx8mm.c
> index 2ed93fc25087..197ba2cdab7d 100644
> --- a/drivers/clk/imx/clk-imx8mm.c
> +++ b/drivers/clk/imx/clk-imx8mm.c
> @@ -414,20 +414,13 @@ static int imx8mm_clocks_probe(struct platform_device *pdev)
>   
>   	/* Core Slice */
>   	hws[IMX8MM_CLK_A53_SRC] = imx_clk_hw_mux2("arm_a53_src", base + 0x8000, 24, 3, imx8mm_a53_sels, ARRAY_SIZE(imx8mm_a53_sels));
> -	hws[IMX8MM_CLK_M4_SRC] = imx_clk_hw_mux2("arm_m4_src", base + 0x8080, 24, 3, imx8mm_m4_sels, ARRAY_SIZE(imx8mm_m4_sels));
> -	hws[IMX8MM_CLK_VPU_SRC] = imx_clk_hw_mux2("vpu_src", base + 0x8100, 24, 3, imx8mm_vpu_sels, ARRAY_SIZE(imx8mm_vpu_sels));
> -	hws[IMX8MM_CLK_GPU3D_SRC] = imx_clk_hw_mux2("gpu3d_src", base + 0x8180, 24, 3,  imx8mm_gpu3d_sels, ARRAY_SIZE(imx8mm_gpu3d_sels));
> -	hws[IMX8MM_CLK_GPU2D_SRC] = imx_clk_hw_mux2("gpu2d_src", base + 0x8200, 24, 3, imx8mm_gpu2d_sels,  ARRAY_SIZE(imx8mm_gpu2d_sels));
>   	hws[IMX8MM_CLK_A53_CG] = imx_clk_hw_gate3("arm_a53_cg", "arm_a53_src", base + 0x8000, 28);
> -	hws[IMX8MM_CLK_M4_CG] = imx_clk_hw_gate3("arm_m4_cg", "arm_m4_src", base + 0x8080, 28);
> -	hws[IMX8MM_CLK_VPU_CG] = imx_clk_hw_gate3("vpu_cg", "vpu_src", base + 0x8100, 28);
> -	hws[IMX8MM_CLK_GPU3D_CG] = imx_clk_hw_gate3("gpu3d_cg", "gpu3d_src", base + 0x8180, 28);
> -	hws[IMX8MM_CLK_GPU2D_CG] = imx_clk_hw_gate3("gpu2d_cg", "gpu2d_src", base + 0x8200, 28);
>   	hws[IMX8MM_CLK_A53_DIV] = imx_clk_hw_divider2("arm_a53_div", "arm_a53_cg", base + 0x8000, 0, 3);
> -	hws[IMX8MM_CLK_M4_DIV] = imx_clk_hw_divider2("arm_m4_div", "arm_m4_cg", base + 0x8080, 0, 3);
> -	hws[IMX8MM_CLK_VPU_DIV] = imx_clk_hw_divider2("vpu_div", "vpu_cg", base + 0x8100, 0, 3);
> -	hws[IMX8MM_CLK_GPU3D_DIV] = imx_clk_hw_divider2("gpu3d_div", "gpu3d_cg", base + 0x8180, 0, 3);
> -	hws[IMX8MM_CLK_GPU2D_DIV] = imx_clk_hw_divider2("gpu2d_div", "gpu2d_cg", base + 0x8200, 0, 3);
> +
> +	hws[IMX8MM_CLK_M4_DIV] = imx8m_clk_hw_composite_core("arm_m4_div", imx8mm_m4_sels, base + 0x8080);
> +	hws[IMX8MM_CLK_VPU_DIV] = imx8m_clk_hw_composite_core("vpu_div", imx8mm_vpu_sels, base + 0x8100);
> +	hws[IMX8MM_CLK_GPU3D_DIV] = imx8m_clk_hw_composite_core("gpu3d_div", imx8mm_gpu3d_sels, base + 0x8180);
> +	hws[IMX8MM_CLK_GPU2D_DIV] = imx8m_clk_hw_composite_core("gpu2d_div", imx8mm_gpu2d_sels, base + 0x8200);
>   
>   	/* BUS */
>   	hws[IMX8MM_CLK_MAIN_AXI] = imx8m_clk_hw_composite_critical("main_axi",  imx8mm_main_axi_sels, base + 0x8800);
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
