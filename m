Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEAFF16BCD7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 09:58:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jyO+2ZQpM1flSFhlvyJrkF8MLVubuYHWZNDGfloyw3o=; b=hkUGH+CmCcc82k
	Sp+Go4iP6aifa98j5ofoYLttskjwVCiqvog99HRh/5YQKaOObWK/XOC0gmRa2XB7TlvET1U6WZfZg
	TscMCJQnvduSoVxH0c7VKuaK8uEtfmrLRV6iFWgzpBYOzH1uRyvAalS2yFcIAqpKj5AG3DXNlSE32
	afnfqkD4XBkt2aeOJUoqvzLxoyHBfwRgBiZ467CG60eZHsz4dbCbRDEP2viL6PJibfBkYPvzMVCBq
	kkGiaDGFaAy0iQyWa2TYGaLWMjz/oZRq4DvAhFdOxZxVhvaOvEnN8GhF8g2GntvMtxnHS5tl05GDK
	Bc0VjhP7W1x5ClXg8zLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6W34-00054p-Gb; Tue, 25 Feb 2020 08:58:38 +0000
Received: from mail-vi1eur05on2075.outbound.protection.outlook.com
 ([40.107.21.75] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6W2u-00054B-JV
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 08:58:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QlkZtw7Lr4RDkG57fh5+thIYWHD8XQToK7O0dQiSR7LqT4Zc9mJvfIY5F3jCL+/PhXA/RQbkAP9xRLu5DuZwBV4C9d7ypzmzpBCCRSLW2psRubMOgZiuQ/12kKNit311Pdr0UKOF6rDev09RT9f5/RZPYD1qrcyk7GF11HrAVzhcoIQKkW/zP0JR0neUUEo1f/riu8w6iiuW+AjzJvf+ZVi3ofvzp6s4BlOkd50awFIloJ4jnwd7/z44yOki/vbzUqL5QDKpeiecHukIjC7eAW8WoKDAcBTD2jf0/lvBbmhBaVmxtZr1zfPxAHHkZ0f7H7gO6Rr8TL7J77RjkokQeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UpSmpbFgbbZ7GStM33pX9QJ0urAWkrjNAZeEzer5uOY=;
 b=l62y53lPUyp7yj3g4W7nT93nUOjo1B0xolJwmgoi4SyaXWT1Dt1MbxK+B9UOfqGtYyP8QOatBDmk9gPUCxCB3UllDMGZgfpPqQO/LqCR8zKvt99i1S8qbwS2m/fe7xMLzteoeHkN49diHs4O2KcpICPwS2Elg67dCCsAcvEa5xDIKCEvYMGJbQDJFon9l5a3CHBSXXGGB3Ol7qodcZpfFFpN+5IOzjKavV19gXwpdn3Bxa3qcACRN7AgQRhkmg8wFMsH5+AzPangMegYojeRK8zyZ2TaGhu5oaE/7vboYOgX8TooO8EL0W6N1Rm/0kVuYgiqdC3dJC0swVfSozWggA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UpSmpbFgbbZ7GStM33pX9QJ0urAWkrjNAZeEzer5uOY=;
 b=Txf3M9FbH56i9lePTOIHUEDMxdITYxZ5KZqOl2IvAqXWj6f6BA571QY5BxIp/UdwaS2bXW+Jz53XQP8QwFt9j/rZIgMGAUGDAg+caWgoWKWPU5qMdle6pB3K/YyQNYSmH3wwtb2w3+mccgItXm0b5fE2mC9pMLOXFKhWfol87Y0=
Received: from VI1PR0402MB3839.eurprd04.prod.outlook.com (52.134.16.147) by
 VI1PR0402MB3421.eurprd04.prod.outlook.com (52.134.2.140) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.21; Tue, 25 Feb 2020 08:58:22 +0000
Received: from VI1PR0402MB3839.eurprd04.prod.outlook.com
 ([fe80::8881:e155:f058:c0d1]) by VI1PR0402MB3839.eurprd04.prod.outlook.com
 ([fe80::8881:e155:f058:c0d1%4]) with mapi id 15.20.2750.021; Tue, 25 Feb 2020
 08:58:22 +0000
From: Daniel Baluta <daniel.baluta@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "mturquette@baylibre.com"
 <mturquette@baylibre.com>, "sboyd@kernel.org" <sboyd@kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, Leonard Crestez
 <leonard.crestez@nxp.com>, Abel Vesa <abel.vesa@nxp.com>, Peng Fan
 <peng.fan@nxp.com>, Jacky Bai <ping.bai@nxp.com>, Andy Duan
 <fugang.duan@nxp.com>, "linux-clk@vger.kernel.org"
 <linux-clk@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 1/4] clk: imx8mn: A53 core clock no need to be critical
Thread-Topic: [PATCH 1/4] clk: imx8mn: A53 core clock no need to be critical
Thread-Index: AQHV67lXcMqetl8NvkmUcnxVH88LyKgrnAKA
Date: Tue, 25 Feb 2020 08:58:22 +0000
Message-ID: <65500dc7-dc03-7dc1-92cd-5557cd73232e@nxp.com>
References: <1582620554-32689-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1582620554-32689-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=daniel.baluta@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: d4198b2b-ecc6-48a4-7c8c-08d7b9d0dde1
x-ms-traffictypediagnostic: VI1PR0402MB3421:|VI1PR0402MB3421:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0402MB3421F452E929302AA445F14BF9ED0@VI1PR0402MB3421.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2089;
x-forefront-prvs: 0324C2C0E2
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(39860400002)(396003)(136003)(376002)(346002)(199004)(189003)(81156014)(66476007)(81166006)(66446008)(8936002)(64756008)(66946007)(66556008)(8676002)(36756003)(71200400001)(5660300002)(6512007)(4326008)(6486002)(31696002)(316002)(478600001)(110136005)(6506007)(2906002)(86362001)(53546011)(26005)(44832011)(186003)(2616005)(76116006)(31686004)(921003)(32563001)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB3421;
 H:VI1PR0402MB3839.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qN4bNajEPX8MOjMV/2T4o4cGJ7DLghmgmyQhpB79REb+Yaa8OfUUX4eF+fDjAZASdF4khX3rqZ5uxXc9eQE9FX42anGrfabKQomAXv1f9hBMyOeaEKQ6/2hceMi/JYZyv0yYoDkxHEVw+rdAbkJ1z3fCdECgl4PTxOpmMXiS81jfie5kfFEEC+KqiT9rqCqRKrWQPJrevfHMKtmkWEL19SPfmrEenDDlZHGBbfmBLD9hjsXqxTOxEBA6gRpUQrR72IqzcvQySw+C25dARMGJrj88+TxcwyKxcl7QZg/+uxL69BY5RHV/pacefHVYrsylw+K6SSCN2EjUze6H21Cph5NB7nsPHyDwGc29jWf7c6cSPfvtbdqvxw/M2KPQnHeXgrPlOIzT3qhr8KR7uQvTdnnTkxMVgjV1B76X8P6gjMzxm73TmASHxtX4LJUIEnl6rGtYgDe+3FNXnj2uAa6NqLHsE7EdJqJONzf2qyN22pD4Pl+wNX4f3U25aLRzbRA4OFsVb2QeKGA+ms3ZxCCrCg==
x-ms-exchange-antispam-messagedata: qmz/zjxbS29gD4VpO6rYS9/Nq63EDqpl+tkfMg1VtmW66So/Z9H6Ptkr5qHt9mw2epeBalCCyMAmEQEHiPU2uutLMSE5WPutnXUSfKSP1Chcpct6UUQXK2I7gKspio6ki8wCCza1QOZdOYaFRNMMLg==
Content-ID: <CA91AB0ACE7DDD40B5448B9D95081730@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d4198b2b-ecc6-48a4-7c8c-08d7b9d0dde1
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Feb 2020 08:58:22.1473 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: otwt8jGAEo+f9AuAw7hlPxtOmqgM4Mtkwgcxh692DxYkXUXo2+IsjTEGYbQQCa0QuqA1HIvgOWPsGua65iuaMQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB3421
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_005828_721803_12F269B1 
X-CRM114-Status: GOOD (  14.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.21.75 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Anson,

One comment inline:

On 25.02.2020 10:49, Anson Huang wrote:
> 'A53_CORE' is just a mux and no need to be critical, being critical
> will cause its parent clock always ON which does NOT make sense,
> to make sure CPU's hardware clock source NOT being disabled during
> clock tree setup, need to move the 'A53_SRC'/'A53_CORE' reparent
> operations to after critical clock 'ARM_CLK' setup finished.
>
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>   drivers/clk/imx/clk-imx8mn.c | 8 ++++----
>   1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/clk/imx/clk-imx8mn.c b/drivers/clk/imx/clk-imx8mn.c
> index 83618af..0bc7070 100644
> --- a/drivers/clk/imx/clk-imx8mn.c
> +++ b/drivers/clk/imx/clk-imx8mn.c
> @@ -428,7 +428,7 @@ static int imx8mn_clocks_probe(struct platform_device *pdev)
>   	hws[IMX8MN_CLK_GPU_SHADER_DIV] = hws[IMX8MN_CLK_GPU_SHADER];
>   
>   	/* CORE SEL */
> -	hws[IMX8MN_CLK_A53_CORE] = imx_clk_hw_mux2_flags("arm_a53_core", base + 0x9880, 24, 1, imx8mn_a53_core_sels, ARRAY_SIZE(imx8mn_a53_core_sels), CLK_IS_CRITICAL);
> +	hws[IMX8MN_CLK_A53_CORE] = imx_clk_hw_mux2("arm_a53_core", base + 0x9880, 24, 1, imx8mn_a53_core_sels, ARRAY_SIZE(imx8mn_a53_core_sels));
>   
>   	/* BUS */
>   	hws[IMX8MN_CLK_MAIN_AXI] = imx8m_clk_hw_composite_critical("main_axi", imx8mn_main_axi_sels, base + 0x8800);
> @@ -559,15 +559,15 @@ static int imx8mn_clocks_probe(struct platform_device *pdev)
>   
>   	hws[IMX8MN_CLK_DRAM_ALT_ROOT] = imx_clk_hw_fixed_factor("dram_alt_root", "dram_alt", 1, 4);
>   
> -	clk_hw_set_parent(hws[IMX8MN_CLK_A53_SRC], hws[IMX8MN_SYS_PLL1_800M]);
> -	clk_hw_set_parent(hws[IMX8MN_CLK_A53_CORE], hws[IMX8MN_ARM_PLL_OUT]);


Why do you need to move this code? If there is a reason please add a 
separate patch and explain why.

> -
>   	hws[IMX8MN_CLK_ARM] = imx_clk_hw_cpu("arm", "arm_a53_core",
>   					   hws[IMX8MN_CLK_A53_CORE]->clk,
>   					   hws[IMX8MN_CLK_A53_CORE]->clk,
>   					   hws[IMX8MN_ARM_PLL_OUT]->clk,
>   					   hws[IMX8MN_CLK_A53_DIV]->clk);
>   
> +	clk_hw_set_parent(hws[IMX8MN_CLK_A53_SRC], hws[IMX8MN_SYS_PLL1_800M]);
> +	clk_hw_set_parent(hws[IMX8MN_CLK_A53_CORE], hws[IMX8MN_ARM_PLL_OUT]);
> +
>   	imx_check_clk_hws(hws, IMX8MN_CLK_END);
>   
>   	ret = of_clk_add_hw_provider(np, of_clk_hw_onecell_get, clk_hw_data);


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
