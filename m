Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BE4C1B9F2D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 10:58:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T1YsBGGYODSvuyjNHXsTiPB3mLSStvWXfsOC3aveU9c=; b=AavLniVuzjHwr8
	yGryr+CyE2bApKlQzuMGwyLKtIySQBQaHkWVtvi0w6ufzFVVWS7hDt6p69/Azni1RXdGcBxWDPWLV
	A5YGaI+mXYT1IZ/cL/uSH7gehlxa/B4Dzlg6oRtjhDsRn8Yr98paDl4ncN04wq917IapZR/cR7Qj4
	hkF0Efq4llFWIGq4WvTmCt5oCdZyzVon3JzwtgDfWi6dUbsGP6AvRrnUQEvTCqCFJAUkkoKksYQoX
	VsHWzDrW2Xtu9D3U3cJj8ZkLrTlD17/0uVKW+vDFmbtHglKNTc5mihdQQ5heGA5lZtlxeoGiwlqtf
	NlVyCBIvfY61OiZ8bxiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSzaY-0005eh-F6; Mon, 27 Apr 2020 08:58:06 +0000
Received: from mail-eopbgr80072.outbound.protection.outlook.com ([40.107.8.72]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSzaK-0005d6-Qj
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 08:57:54 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PsU67DqSp4/iI+l79I6eUlFkWX/RQv80EAH32TRt8eQm2Q0xLxNL++apkYST/U+O35ZCEG0vKBxUl7IaAj03T98ikTD6QSvNLTq9RPAjksqXdj1Gd4d8v8SeA/yGc6t8KjHvvwFjJ1HvXXTyzAxxkrNyCfy7uHy0u1lAnP84SXpO7WfUvkAXUsu/gr5fBqgt0pWlyrnwAkdQDwBKNBs8aY6Ay0tPgMXaF9JN3U3CHyfRtgqvJNkBmY6PWN/jNyZsIPMTNmcPqNm+r35zbnpjLU7SYpdb8emDbIioa1PqJPoA/5Vg6ZRZyOmhOebf8pAYiy22K5Bmrg/iltzGQEEpTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=U8/rptKhBi2NQGd03qo3bkm7YTNrOgltG0GCLGr4/PY=;
 b=hXgkQUhcJtQtzWCe8ZAOVKSU5ItNPEs9kfCJ2uPjhHeY7u2PrHSiuXHvFM+fDtaQueszCvvRXDCaRe+FNPdnAYTx6PDbvwS1eXXS+EsiaxrkvPsY9hUPvdNJWTfqC6YRasoqkypBOjGG1CsR1mn4hTB86JFcpMkFZ/usGO70PK+U/Go+DA7IYNYqYAeFhaJy6K9yR5e8G0ChELNT5dKodLKGfpZPFMifwyHEahmqgoNgzRqiIZ6Jd5VfiaiBDOOO/sO1/oNP7xLDfTNCca3PVJAahOH5tDXZhGffVVmVGf3DxZ1LzrrMyiqTdvxhDAc3117MIhk+yNQzATSlEULHGA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=U8/rptKhBi2NQGd03qo3bkm7YTNrOgltG0GCLGr4/PY=;
 b=BJlmpUDwSzC5omc2BWDMHIj4ELMn8y3YIVkyMCGy0dSxXlZsE5UseUuF9lyHGvCudV5uSJ4yNvywPN7Eeh0QsCY7Yp6S7iQ+K5Xi5RkrwobPa98EHThXAWGPcS4eH09JmoIVdKvXIY5QI35xDRAM99kzPpHFTl+dQdeYgLQbtfE=
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com (2603:10a6:4:a1::14)
 by DB6PR0402MB2711.eurprd04.prod.outlook.com (2603:10a6:4:96::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.13; Mon, 27 Apr
 2020 08:57:49 +0000
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871]) by DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871%6]) with mapi id 15.20.2937.020; Mon, 27 Apr 2020
 08:57:49 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Aisheng Dong <aisheng.dong@nxp.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>, "sboyd@kernel.org"
 <sboyd@kernel.org>, Abel Vesa <abel.vesa@nxp.com>
Subject: RE: [PATCH V2 05/10] clk: imx8mp: use imx8m_clk_hw_composite_core to
 simplify code
Thread-Topic: [PATCH V2 05/10] clk: imx8mp: use imx8m_clk_hw_composite_core to
 simplify code
Thread-Index: AQHV+FjGU1lNq/r0A0G9ZYg3Llm9kaiLGHKAgAHagFA=
Date: Mon, 27 Apr 2020 08:57:49 +0000
Message-ID: <DB6PR0402MB276036F3AB9AB74A5235144A88AF0@DB6PR0402MB2760.eurprd04.prod.outlook.com>
References: <1584008384-11578-1-git-send-email-peng.fan@nxp.com>
 <1584008384-11578-6-git-send-email-peng.fan@nxp.com>
 <AM6PR04MB49662BE2A6456DD9B62F28D980AE0@AM6PR04MB4966.eurprd04.prod.outlook.com>
In-Reply-To: <AM6PR04MB49662BE2A6456DD9B62F28D980AE0@AM6PR04MB4966.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 576696e2-de48-45ee-f228-08d7ea890fe7
x-ms-traffictypediagnostic: DB6PR0402MB2711:|DB6PR0402MB2711:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB6PR0402MB2711C57D5B52872A6EA55E5E88AF0@DB6PR0402MB2711.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 0386B406AA
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB6PR0402MB2760.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(376002)(396003)(136003)(366004)(39860400002)(81156014)(8676002)(44832011)(33656002)(186003)(52536014)(110136005)(9686003)(7416002)(316002)(478600001)(54906003)(5660300002)(2906002)(8936002)(4326008)(55016002)(7696005)(6506007)(86362001)(26005)(6636002)(66556008)(64756008)(66446008)(76116006)(71200400001)(66476007)(66946007)(30864003)(32563001);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: JdUPkv83SPbTfdfRrOSkHIfvuMg1+5/5POM6R0FaPU8H+IMVzER1lOHWLk5yF99ImtGeONKuGPa3UIlbtprA+RzIDHdbt5mc7/aXbV2ldP9Nub2NbZTYLiDDhPE2NzdOAKLE3lCKUkx4QEcKXXbTBd7AIh/S2PESJinZERu94ih2ymEIv0agL3F166GfQk8eA6GZ9Bf5Rzqec4zs8VN4NI6XOrQd16K3wm8HqcFVw/pTtedB+tiUheR5QJQ0vCn8OW2wGTYK+EQ3ZebPTdbBYLEWQZ1IZNELNifS+rqe+rTZq98kdKmLcMyi0ho4mWr0vyPXSdnsodCBwIGHG/ZTIBS+qYf9wUT7jlbR+wve6cVys3A+npk0jz9VltlctRDXqlBV0+lrHkQGx7cntZ2BU7+nFWfInN70ky8IMM19K8UB45ZwYqY8hyWBzk7F6Wr/ZsTTQ5PSjr4VDlmH6i8Bc5Z16VP36jKHVAL+NdQlsjS+B4ijN9UeO2aiaBFGsha4
x-ms-exchange-antispam-messagedata: Lubm/eGZPZf3YgFYTgTyrJMdlM3mhb/rb89sATEXWyssTLaVPLtYucbq5PhT6i8TP1a8Bp1ODl4PuhutwiCnKUw3D4OzORWGKzJXsn/5UpWULhbxQaSn4I+P4/STMZmu8orrJgbMELoqwHz1bBJxS3ahBxTdMzdspWA8UMdCdGwpGFoJArZTdnwMi10o4nBKfTpaG+qock3ZiVJVbHKSuMFoeYixYDCEAZvihicK0Jx7sWH5X9VFV5m1CF94fCiX40W0Z9e4wsNWoOKelqUPLONWsrci1mAy8EUP8oJbdsXQAqY8dHOEIbduwshGyRmsXT9de2AEZU8n4EV7PlJEW5DxZYk9418mpbhcRBgDFYI8mjzQcbDS7XzBmJiARTo+UM0PIOFvoIashIzHCe7kDjGWjFHZ6qSEMVL/dlegCNVvvBVwF4VugMlTcTQ+rF1I8DbvMeBFz+u+8ddxSiuvk6PVXoQe09rZlIGCzZEA+EJLJPOhQZkuuOAmR1jRFksQIvQt5VdyJut2CrGv2C6Fvbo1d6jE7wzKg70tMs1qRxYFwrGNX6reWfI7dE0ddHiNYDAERn0ugmCGgalWrjDHEvrbilc1SJ8pk9eWCWk/Sm5s5r2ZaqIBn6t71jocjMK0ZfM/O8w9ASlEn2iOP1/bm39doJrK0g3p6ZUdg+CtXvnd9syHFwY1KuEi5y7PGmzsFj1xsdUMO+nTfF9RLWEyGN+ft7Xc+FLhg5Zh+9qYKrBuPj+PYmqoJ56xbXgYtdY1VxM/nQ0pDzw7U9oXDyQhgcyARTSX74WSIzqwa48o400=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 576696e2-de48-45ee-f228-08d7ea890fe7
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Apr 2020 08:57:49.3063 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: W7jGh0owjnKwP7MVLCiV56LEYMJcLreBj7cTE1Zu4QqSD4eMq17BdWEcUoHxzavokATlGf50RD8hijc0uNZVgQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0402MB2711
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_015753_022074_6A01DDB2 
X-CRM114-Status: GOOD (  13.44  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.8.72 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.8.72 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

> Subject: RE: [PATCH V2 05/10] clk: imx8mp: use
> imx8m_clk_hw_composite_core to simplify code
> 
> > From: Peng Fan <peng.fan@nxp.com>
> > Sent: Thursday, March 12, 2020 6:20 PM
> >
> > Use imx8m_clk_hw_composite_core to simpliy clks that belong to core clk
> slice.
> >
> > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> 
> Should we also deprecated the old clock ids which will not be supported by
> driver anymore?

To keep dt backward compatible, those ids are kept as what we did for other
i.MX8M platform.

Thanks,
Peng.

> Otherwise:
> Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>
> 
> Regards
> Aisheng
> 
> > ---
> >  drivers/clk/imx/clk-imx8mp.c             | 47
> > +++++++++++---------------------
> >  include/dt-bindings/clock/imx8mp-clock.h | 11 +++++++-
> >  2 files changed, 26 insertions(+), 32 deletions(-)
> >
> > diff --git a/drivers/clk/imx/clk-imx8mp.c
> > b/drivers/clk/imx/clk-imx8mp.c index
> > a7613c7355c8..998e9e63f831 100644
> > --- a/drivers/clk/imx/clk-imx8mp.c
> > +++ b/drivers/clk/imx/clk-imx8mp.c
> > @@ -546,33 +546,18 @@ static int imx8mp_clocks_probe(struct
> > platform_device *pdev)
> >  	hws[IMX8MP_SYS_PLL2_500M] =
> > imx_clk_hw_fixed_factor("sys_pll2_500m", "sys_pll2_500m_cg", 1, 2);
> >  	hws[IMX8MP_SYS_PLL2_1000M] =
> > imx_clk_hw_fixed_factor("sys_pll2_1000m", "sys_pll2_out", 1, 1);
> >
> > -	hws[IMX8MP_CLK_A53_SRC] = imx_clk_hw_mux2("arm_a53_src",
> > ccm_base + 0x8000, 24, 3, imx8mp_a53_sels,
> ARRAY_SIZE(imx8mp_a53_sels));
> > -	hws[IMX8MP_CLK_M7_SRC] = imx_clk_hw_mux2("arm_m7_src",
> > ccm_base + 0x8080, 24, 3, imx8mp_m7_sels,
> ARRAY_SIZE(imx8mp_m7_sels));
> > -	hws[IMX8MP_CLK_ML_SRC] = imx_clk_hw_mux2("ml_src", ccm_base +
> > 0x8100, 24, 3, imx8mp_ml_sels, ARRAY_SIZE(imx8mp_ml_sels));
> > -	hws[IMX8MP_CLK_GPU3D_CORE_SRC] =
> > imx_clk_hw_mux2("gpu3d_core_src", ccm_base + 0x8180, 24, 3,
> > imx8mp_gpu3d_core_sels, ARRAY_SIZE(imx8mp_gpu3d_core_sels));
> > -	hws[IMX8MP_CLK_GPU3D_SHADER_SRC] =
> > imx_clk_hw_mux2("gpu3d_shader_src", ccm_base + 0x8200, 24, 3,
> > imx8mp_gpu3d_shader_sels, ARRAY_SIZE(imx8mp_gpu3d_shader_sels));
> > -	hws[IMX8MP_CLK_GPU2D_SRC] = imx_clk_hw_mux2("gpu2d_src",
> > ccm_base + 0x8280, 24, 3, imx8mp_gpu2d_sels,
> > ARRAY_SIZE(imx8mp_gpu2d_sels));
> > -	hws[IMX8MP_CLK_AUDIO_AXI_SRC] =
> imx_clk_hw_mux2("audio_axi_src",
> > ccm_base + 0x8300, 24, 3, imx8mp_audio_axi_sels,
> > ARRAY_SIZE(imx8mp_audio_axi_sels));
> > -	hws[IMX8MP_CLK_HSIO_AXI_SRC] = imx_clk_hw_mux2("hsio_axi_src",
> > ccm_base + 0x8380, 24, 3, imx8mp_hsio_axi_sels,
> > ARRAY_SIZE(imx8mp_hsio_axi_sels));
> > -	hws[IMX8MP_CLK_MEDIA_ISP_SRC] =
> imx_clk_hw_mux2("media_isp_src",
> > ccm_base + 0x8400, 24, 3, imx8mp_media_isp_sels,
> > ARRAY_SIZE(imx8mp_media_isp_sels));
> > -	hws[IMX8MP_CLK_A53_CG] = imx_clk_hw_gate3("arm_a53_cg",
> > "arm_a53_src", ccm_base + 0x8000, 28);
> > -	hws[IMX8MP_CLK_M4_CG] = imx_clk_hw_gate3("arm_m7_cg",
> > "arm_m7_src", ccm_base + 0x8080, 28);
> > -	hws[IMX8MP_CLK_ML_CG] = imx_clk_hw_gate3("ml_cg", "ml_src",
> > ccm_base + 0x8100, 28);
> > -	hws[IMX8MP_CLK_GPU3D_CORE_CG] =
> > imx_clk_hw_gate3("gpu3d_core_cg", "gpu3d_core_src", ccm_base +
> 0x8180,
> > 28);
> > -	hws[IMX8MP_CLK_GPU3D_SHADER_CG] =
> > imx_clk_hw_gate3("gpu3d_shader_cg", "gpu3d_shader_src", ccm_base +
> > 0x8200, 28);
> > -	hws[IMX8MP_CLK_GPU2D_CG] = imx_clk_hw_gate3("gpu2d_cg",
> > "gpu2d_src", ccm_base + 0x8280, 28);
> > -	hws[IMX8MP_CLK_AUDIO_AXI_CG] =
> imx_clk_hw_gate3("audio_axi_cg",
> > "audio_axi_src", ccm_base + 0x8300, 28);
> > -	hws[IMX8MP_CLK_HSIO_AXI_CG] = imx_clk_hw_gate3("hsio_axi_cg",
> > "hsio_axi_src", ccm_base + 0x8380, 28);
> > -	hws[IMX8MP_CLK_MEDIA_ISP_CG] =
> imx_clk_hw_gate3("media_isp_cg",
> > "media_isp_src", ccm_base + 0x8400, 28);
> > -	hws[IMX8MP_CLK_A53_DIV] = imx_clk_hw_divider2("arm_a53_div",
> > "arm_a53_cg", ccm_base + 0x8000, 0, 3);
> > -	hws[IMX8MP_CLK_M7_DIV] = imx_clk_hw_divider2("arm_m7_div",
> > "arm_m7_cg", ccm_base + 0x8080, 0, 3);
> > -	hws[IMX8MP_CLK_ML_DIV] = imx_clk_hw_divider2("ml_div", "ml_cg",
> > ccm_base + 0x8100, 0, 3);
> > -	hws[IMX8MP_CLK_GPU3D_CORE_DIV] =
> > imx_clk_hw_divider2("gpu3d_core_div", "gpu3d_core_cg", ccm_base +
> > 0x8180, 0, 3);
> > -	hws[IMX8MP_CLK_GPU3D_SHADER_DIV] =
> > imx_clk_hw_divider2("gpu3d_shader_div", "gpu3d_shader_cg", ccm_base +
> > 0x8200, 0, 3);
> > -	hws[IMX8MP_CLK_GPU2D_DIV] = imx_clk_hw_divider2("gpu2d_div",
> > "gpu2d_cg", ccm_base + 0x8280, 0, 3);
> > -	hws[IMX8MP_CLK_AUDIO_AXI_DIV] =
> > imx_clk_hw_divider2("audio_axi_div", "audio_axi_cg", ccm_base +
> > 0x8300, 0, 3);
> > -	hws[IMX8MP_CLK_HSIO_AXI_DIV] =
> imx_clk_hw_divider2("hsio_axi_div",
> > "hsio_axi_cg", ccm_base + 0x8380, 0, 3);
> > -	hws[IMX8MP_CLK_MEDIA_ISP_DIV] =
> > imx_clk_hw_divider2("media_isp_div", "media_isp_cg", ccm_base +
> > 0x8400, 0, 3);
> > +	hws[IMX8MP_CLK_A53_DIV] =
> > imx8m_clk_hw_composite_core("arm_a53_div", imx8mp_a53_sels,
> ccm_base
> > + 0x8000);
> > +	hws[IMX8MP_CLK_A53_SRC] = hws[IMX8MP_CLK_A53_DIV];
> > +	hws[IMX8MP_CLK_A53_CG] = hws[IMX8MP_CLK_A53_DIV];
> > +	hws[IMX8MP_CLK_M7_CORE] =
> > imx8m_clk_hw_composite_core("m7_core", imx8mp_m7_sels, ccm_base +
> > 0x8080);
> > +	hws[IMX8MP_CLK_ML_CORE] =
> > imx8m_clk_hw_composite_core("ml_core", imx8mp_ml_sels, ccm_base +
> > 0x8100);
> > +	hws[IMX8MP_CLK_GPU3D_CORE] =
> > imx8m_clk_hw_composite_core("gpu3d_core", imx8mp_gpu3d_core_sels,
> > ccm_base + 0x8180);
> > +	hws[IMX8MP_CLK_GPU3D_SHADER_CORE] =
> > imx8m_clk_hw_composite("gpu3d_shader_core",
> imx8mp_gpu3d_shader_sels,
> > ccm_base + 0x8200);
> > +	hws[IMX8MP_CLK_GPU2D_CORE] =
> > imx8m_clk_hw_composite("gpu2d_core", imx8mp_gpu2d_sels, ccm_base +
> > 0x8280);
> > +	hws[IMX8MP_CLK_AUDIO_AXI] =
> imx8m_clk_hw_composite("audio_axi",
> > imx8mp_audio_axi_sels, ccm_base + 0x8300);
> > +	hws[IMX8MP_CLK_AUDIO_AXI_SRC] = hws[IMX8MP_CLK_AUDIO_AXI];
> > +	hws[IMX8MP_CLK_HSIO_AXI] = imx8m_clk_hw_composite("hsio_axi",
> > imx8mp_hsio_axi_sels, ccm_base + 0x8380);
> > +	hws[IMX8MP_CLK_MEDIA_ISP] =
> imx8m_clk_hw_composite("media_isp",
> > +imx8mp_media_isp_sels, ccm_base + 0x8400);
> >
> >  	/* CORE SEL */
> >  	hws[IMX8MP_CLK_A53_CORE] = imx_clk_hw_mux2("arm_a53_core",
> ccm_base
> > + 0x9880, 24, 1, imx8mp_a53_core_sels,
> > ARRAY_SIZE(imx8mp_a53_core_sels));
> > @@ -713,8 +698,8 @@ static int imx8mp_clocks_probe(struct
> > platform_device
> > *pdev)
> >  	hws[IMX8MP_CLK_SDMA1_ROOT] =
> imx_clk_hw_gate4("sdma1_root_clk",
> > "ipg_root", ccm_base + 0x43a0, 0);
> >  	hws[IMX8MP_CLK_ENET_QOS_ROOT] =
> > imx_clk_hw_gate4("enet_qos_root_clk", "sim_enet_root_clk", ccm_base +
> > 0x43b0, 0);
> >  	hws[IMX8MP_CLK_SIM_ENET_ROOT] =
> > imx_clk_hw_gate4("sim_enet_root_clk", "enet_axi", ccm_base + 0x4400,
> 0);
> > -	hws[IMX8MP_CLK_GPU2D_ROOT] =
> imx_clk_hw_gate4("gpu2d_root_clk",
> > "gpu2d_div", ccm_base + 0x4450, 0);
> > -	hws[IMX8MP_CLK_GPU3D_ROOT] =
> imx_clk_hw_gate4("gpu3d_root_clk",
> > "gpu3d_core_div", ccm_base + 0x4460, 0);
> > +	hws[IMX8MP_CLK_GPU2D_ROOT] =
> imx_clk_hw_gate4("gpu2d_root_clk",
> > "gpu2d_core", ccm_base + 0x4450, 0);
> > +	hws[IMX8MP_CLK_GPU3D_ROOT] =
> imx_clk_hw_gate4("gpu3d_root_clk",
> > +"gpu3d_core", ccm_base + 0x4460, 0);
> >  	hws[IMX8MP_CLK_SNVS_ROOT] = imx_clk_hw_gate4("snvs_root_clk",
> > "ipg_root", ccm_base + 0x4470, 0);
> >  	hws[IMX8MP_CLK_UART1_ROOT] =
> imx_clk_hw_gate4("uart1_root_clk",
> > "uart1", ccm_base + 0x4490, 0);
> >  	hws[IMX8MP_CLK_UART2_ROOT] =
> imx_clk_hw_gate4("uart2_root_clk",
> > "uart2", ccm_base + 0x44a0, 0); @@ -731,7 +716,7 @@ static int
> > imx8mp_clocks_probe(struct platform_device *pdev)
> >  	hws[IMX8MP_CLK_GPU_ROOT] = imx_clk_hw_gate4("gpu_root_clk",
> > "gpu_axi", ccm_base + 0x4570, 0);
> >  	hws[IMX8MP_CLK_VPU_VC8KE_ROOT] =
> > imx_clk_hw_gate4("vpu_vc8ke_root_clk", "vpu_vc8000e", ccm_base +
> > 0x4590, 0);
> >  	hws[IMX8MP_CLK_VPU_G2_ROOT] =
> > imx_clk_hw_gate4("vpu_g2_root_clk", "vpu_g2", ccm_base + 0x45a0, 0);
> > -	hws[IMX8MP_CLK_NPU_ROOT] = imx_clk_hw_gate4("npu_root_clk",
> > "ml_div", ccm_base + 0x45b0, 0);
> > +	hws[IMX8MP_CLK_NPU_ROOT] = imx_clk_hw_gate4("npu_root_clk",
> > "ml_core",
> > +ccm_base + 0x45b0, 0);
> >  	hws[IMX8MP_CLK_HSIO_ROOT] = imx_clk_hw_gate4("hsio_root_clk",
> > "ipg_root", ccm_base + 0x45c0, 0);
> >  	hws[IMX8MP_CLK_MEDIA_APB_ROOT] =
> > imx_clk_hw_gate2_shared2("media_apb_root_clk", "media_apb",
> ccm_base +
> > 0x45d0, 0, &share_count_media);
> >  	hws[IMX8MP_CLK_MEDIA_AXI_ROOT] =
> > imx_clk_hw_gate2_shared2("media_axi_root_clk", "media_axi", ccm_base
> +
> > 0x45d0, 0, &share_count_media); @@ -739,7 +724,7 @@ static int
> > imx8mp_clocks_probe(struct platform_device *pdev)
> >  	hws[IMX8MP_CLK_MEDIA_CAM2_PIX_ROOT] =
> > imx_clk_hw_gate2_shared2("media_cam2_pix_root_clk",
> "media_cam2_pix",
> > ccm_base + 0x45d0, 0, &share_count_media);
> >  	hws[IMX8MP_CLK_MEDIA_DISP1_PIX_ROOT] =
> > imx_clk_hw_gate2_shared2("media_disp1_pix_root_clk",
> > "media_disp1_pix", ccm_base + 0x45d0, 0, &share_count_media);
> >  	hws[IMX8MP_CLK_MEDIA_DISP2_PIX_ROOT] =
> > imx_clk_hw_gate2_shared2("media_disp2_pix_root_clk",
> > "media_disp2_pix", ccm_base + 0x45d0, 0, &share_count_media);
> > -	hws[IMX8MP_CLK_MEDIA_ISP_ROOT] =
> > imx_clk_hw_gate2_shared2("media_isp_root_clk", "media_isp_div",
> > ccm_base
> > + 0x45d0, 0, &share_count_media);
> > +	hws[IMX8MP_CLK_MEDIA_ISP_ROOT] =
> > +imx_clk_hw_gate2_shared2("media_isp_root_clk", "media_isp",
> ccm_base
> > ++ 0x45d0, 0, &share_count_media);
> >
> >  	hws[IMX8MP_CLK_USDHC3_ROOT] =
> > imx_clk_hw_gate4("usdhc3_root_clk", "usdhc3", ccm_base + 0x45e0, 0);
> >  	hws[IMX8MP_CLK_HDMI_ROOT] = imx_clk_hw_gate4("hdmi_root_clk",
> > "hdmi_axi", ccm_base + 0x45f0, 0); diff --git
> > a/include/dt-bindings/clock/imx8mp-clock.h
> > b/include/dt-bindings/clock/imx8mp-clock.h
> > index 46c69cd66c62..8430bc4fd182 100644
> > --- a/include/dt-bindings/clock/imx8mp-clock.h
> > +++ b/include/dt-bindings/clock/imx8mp-clock.h
> > @@ -313,6 +313,15 @@
> >  #define IMX8MP_SYS_PLL2_333M_CG			303
> >  #define IMX8MP_SYS_PLL2_500M_CG			304
> >
> > -#define IMX8MP_CLK_END				305
> > +#define IMX8MP_CLK_M7_CORE			305
> > +#define IMX8MP_CLK_ML_CORE			306
> > +#define IMX8MP_CLK_GPU3D_CORE			307
> > +#define IMX8MP_CLK_GPU3D_SHADER_CORE		308
> > +#define IMX8MP_CLK_GPU2D_CORE			309
> > +#define IMX8MP_CLK_AUDIO_AXI			310
> > +#define IMX8MP_CLK_HSIO_AXI			311
> > +#define IMX8MP_CLK_MEDIA_ISP			312
> > +
> > +#define IMX8MP_CLK_END				313
> >
> >  #endif
> > --
> > 2.16.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
