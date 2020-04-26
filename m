Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7DE51B8BD4
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 05:54:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=byUeW0KwgwC99QMQB1Bky1Cd5tTjbQ84QbJBSIgeyvU=; b=OHgIerxUnuv887
	74TcjGmEpxY6+djys8cCkdCRLVcrbKz+s4rmSfpdFakXMfgK9m2jVzoOK+NIlNa97vW56u4Fqm8wv
	3rEG0qQox8zDmpXdVmX2o4g6ORdG8Ue701fyb93EEx8hHzGqqDZzzSejxSDzlw4Mf6Et16iBGXUJ0
	R+49fc66XWd3tc3bip4oBMd2MkhQk50zmscBoEbYAYrT+fNRILgNyUy2c5k2mrIvnslIkba8VYUh9
	bDH/uhSk664dageAItzIi7z0m+2JuWJe4AFM7N52QFTubKDPH9M24f3tNdrk5vxqjCHW4tvLlxKrC
	EQzCRfyp2BN8GLBfTidg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSYNU-00078k-8s; Sun, 26 Apr 2020 03:54:48 +0000
Received: from mail-eopbgr40074.outbound.protection.outlook.com ([40.107.4.74]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSYNH-00076q-Et
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 03:54:36 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lqrupCWvrV5Yca3Cx6wgxt5Ao8BEHATMywqBjWQnvLhrSddBBrPw7JwBulvLGR4OvRqOQ6JJ4mT7J0eJuTdRs+Klqaa6DwOv8F5ncsnNij/uchJJQuKIs3ZA7UoBhjYYjfkxr2mG8PFaxpQHkxVOLH5fZ4oVLU1mYiqcuhruDsaeWqO23XUkLY/6X8nFvw+jBNljIzo6F7BuBu+4i3a834+Xu0U4XD8mMxscqkfgcWoknRJYjG3JaOCVUY7pM3tPSOhe7ZMiIC36C/HfMPHpVuShBvLieZFWEIx52pLXJagrirsvB/tYlJ4ZLMGlSdT3wX5TE8LaeUpdxO+7wUxL1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HxPF0cO5ibrbvdqUW2Bs/B7h3XnwrSxxTOKeDeSUcsY=;
 b=Q+zdMBHXbUG4HaXX+6Go/9n8lZpOsO3yL4sQNmb30dNZe7rpD8s2flfXXQXF6cARTR247/xgWrOoSUbb+EbYv3Uf2Js5f/0aWPJ4O2oojKZMumaXJUKpt1lH6voNi/whCMjrLqN3kQ5XNlrI4p4Py98AbjxrQsHQ5qQiTXjgHPszP0HfcsdnzidRniUbINRFY0JZch0rC6YszxNyRApZVQRqzAf6SAuFdycF3YdJaA6iME2ZrvIC1LMJBRgGO2nh1JoXxl5vLygdtevfrmnAo13SJ6g1RDV1HV299m78LiVE+Xp1PJohnWOZglDU+0iq4YAhO7tfg2Z3gZbL85DsdQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HxPF0cO5ibrbvdqUW2Bs/B7h3XnwrSxxTOKeDeSUcsY=;
 b=IwIsVSdWKXuDaUD8b2XfVlDFSdUSXDxeqLyFQjXrQHtQ+/CUjVti+zv8Yci1CHKp5gSjjuz6ZyAQVcwBZg+FwJ2hU5wLinCAbUqVM0vo9y2b5fiACSwULCs8C7FTVdmWsIX4Hb2JBABHYa9Dve4qhbA4+ZM0j/thnpwCTu2W1eE=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB5478.eurprd04.prod.outlook.com (2603:10a6:20b:97::30) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.13; Sun, 26 Apr
 2020 03:54:32 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::d9f7:5527:e89d:1ae3]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::d9f7:5527:e89d:1ae3%7]) with mapi id 15.20.2937.020; Sun, 26 Apr 2020
 03:54:32 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Peng Fan <peng.fan@nxp.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>, 
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, Leonard Crestez
 <leonard.crestez@nxp.com>, "sboyd@kernel.org" <sboyd@kernel.org>, Abel Vesa
 <abel.vesa@nxp.com>
Subject: RE: [PATCH V2 02/10] clk: imx8m: drop clk_hw_set_parent for A53
Thread-Topic: [PATCH V2 02/10] clk: imx8m: drop clk_hw_set_parent for A53
Thread-Index: AQHV+Fi7h9gjE1v5bESNTMZ7t/IAMqiLC02w
Date: Sun, 26 Apr 2020 03:54:32 +0000
Message-ID: <AM6PR04MB49667AF484D4609B5B5436B080AE0@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1584008384-11578-1-git-send-email-peng.fan@nxp.com>
 <1584008384-11578-3-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1584008384-11578-3-git-send-email-peng.fan@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [218.82.155.143]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 5da8c593-d347-4968-2c35-08d7e9958718
x-ms-traffictypediagnostic: AM6PR04MB5478:|AM6PR04MB5478:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB547852724203415DEC7ADCAC80AE0@AM6PR04MB5478.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 03853D523D
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(396003)(366004)(136003)(346002)(376002)(9686003)(110136005)(4326008)(55016002)(7416002)(186003)(8676002)(86362001)(5660300002)(52536014)(6506007)(7696005)(44832011)(6636002)(2906002)(54906003)(66476007)(66946007)(316002)(478600001)(64756008)(66556008)(8936002)(66446008)(33656002)(81156014)(76116006)(26005)(71200400001)(32563001);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: tLPhHnnn7zuCtBAWsaY7JOfOIHmF83cYPe6LG3UP2wi3NQQ0oelF7kfY5d+rXrTd/hMUoKHqrwVPvy9mZh18nk1NSgE2+Uiu67VcZ4k0M2VsBr3ZmjaZQ/Sv8g/Rv2ftHECRGResQ97b8o+mofw4K/ESXamgq/PanLNkhjFKnzcfheMM5dnEp87hBo6zW+RamZshoc453x8Ek4UZ70KnF8+gaiEKKUBJnp5VMQzF1L40kWnQDBeoZ3LAgHx6M0Ia7HG880IBdokKidparEah/tiodVRn+l59BExm/gGJ7exJ2SyPp5nApvttFHFiapiIS6MCLbpe8RAw6MAiJNFVAX86r8DEXC68VO56sGLwFMYPCRMtKaICnZvohYXUcNWWSm5JPeGQ3hxlun5ephqIOn/sojgCGvlnSSQNDnLEIWgo1rHFG35u87X2SINzwrT9/PLLKe79dYgUgt96KJR49AeZvLIY579w80ox7XMsxLMWDoz0I2xqflIHz2tEPTUX
x-ms-exchange-antispam-messagedata: 6UO+mXJbtNh3Qxie+qkJBeJMZyr6u0oMckjhm/wnUzYMiCuiiUUH7EDOsxgrd8awyna4qfBEmWThQ6eEHtbJW2IV/xtHG3MtSZTiS3XBA0hVfDDvaXitdaEI9cN8ynT1hpLktVRHaekNZt38aKM/0G953sBQTMzOAEG+7N1O5vzYgIeeKIG+5Xi3Xh5858P9qQMGKOtzogJylijgWNx/Dh+SK+ENslwBIaCiTJk8lsHk15NO1WprFgUthRjGc8doN8+l/aURz6/UhvzH1Y+MKllxfUGwlkZVfxS1frggemdcy0gmE6ghbqJDKQSHax80sfBZ2CqlnPjePjhrjAA9uzTfQi+k6cLjvbOHooW8uqciYxuSDm6WDnYpXozcfZsqGrnK66XTTzr4I/uhQzzeWHZPTF+RIAa1keG26JSYz05mIe2tkch+1wNbxMoT/mWaZ3x5JD2XatxDQcdB3llkuMSlSkuCRXhM6NdgcMZfB8bCJYNwq7xrSSvp4/Cms0ndPHpW7g9HlV/2AbWj1u5DZ5qLvXxZiYSXE/minAWA6vWGDBaNEexnbsNHHK14AAm5MB9cZxC82kDGFoBcGXtFTeuTD/77tTiGpVxH+tQqKNhRaxky32A6kw8CWF+mhsbOkXeiDif95flzilbQoR5n7f6GlMzzWvZmEehqYvYN9VQTAhTTSRSb11xfMGklrMo+5k+/5RGaWiPD2UwSkug/M32WwbTp6WjC+6qIgriXJSEMeCMQltLUpoTtK3eGAdF+PMNn6PW3GdYGgUR7VtqDcHz6ldMM8H0Lcl7/DywbC60=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5da8c593-d347-4968-2c35-08d7e9958718
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Apr 2020 03:54:32.1392 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: x94cnUCKR8dunjxcCfn1OyDUlV0JQZUEOLQS++PANtUU8cizGKM4ADPOCvDLXqD3zoVNAZe2U14/ZmOQd3PSbQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB5478
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_205435_505064_DF570295 
X-CRM114-Status: GOOD (  11.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.74 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
> The parent settings have been moved to dtsi, we no need to set parent here. And
> clk_hw_set_parent will trigger lockdep warning, because this api not have
> prepare_lock.
> 
> Reported-by: Leonard Crestez <leonard.crestez@nxp.com>
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

For the patch:
Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>

BTW, What kind of lockdep warning? 
Do you mean it's generic issue that we can't use clk_hw_set_parent in clock driver?

Regards
Aisheng

> ---
>  drivers/clk/imx/clk-imx8mm.c | 3 ---
>  drivers/clk/imx/clk-imx8mn.c | 3 ---
>  drivers/clk/imx/clk-imx8mp.c | 3 ---
>  drivers/clk/imx/clk-imx8mq.c | 3 ---
>  4 files changed, 12 deletions(-)
> 
> diff --git a/drivers/clk/imx/clk-imx8mm.c b/drivers/clk/imx/clk-imx8mm.c index
> 925670438f23..5435042a06e3 100644
> --- a/drivers/clk/imx/clk-imx8mm.c
> +++ b/drivers/clk/imx/clk-imx8mm.c
> @@ -614,9 +614,6 @@ static int imx8mm_clocks_probe(struct
> platform_device *pdev)
>  					   hws[IMX8MM_ARM_PLL_OUT]->clk,
>  					   hws[IMX8MM_CLK_A53_DIV]->clk);
> 
> -	clk_hw_set_parent(hws[IMX8MM_CLK_A53_SRC],
> hws[IMX8MM_SYS_PLL1_800M]);
> -	clk_hw_set_parent(hws[IMX8MM_CLK_A53_CORE],
> hws[IMX8MM_ARM_PLL_OUT]);
> -
>  	imx_check_clk_hws(hws, IMX8MM_CLK_END);
> 
>  	ret = of_clk_add_hw_provider(np, of_clk_hw_onecell_get, clk_hw_data);
> diff --git a/drivers/clk/imx/clk-imx8mn.c b/drivers/clk/imx/clk-imx8mn.c index
> 0bc7070235bd..6cac6ca03e12 100644
> --- a/drivers/clk/imx/clk-imx8mn.c
> +++ b/drivers/clk/imx/clk-imx8mn.c
> @@ -565,9 +565,6 @@ static int imx8mn_clocks_probe(struct platform_device
> *pdev)
>  					   hws[IMX8MN_ARM_PLL_OUT]->clk,
>  					   hws[IMX8MN_CLK_A53_DIV]->clk);
> 
> -	clk_hw_set_parent(hws[IMX8MN_CLK_A53_SRC],
> hws[IMX8MN_SYS_PLL1_800M]);
> -	clk_hw_set_parent(hws[IMX8MN_CLK_A53_CORE],
> hws[IMX8MN_ARM_PLL_OUT]);
> -
>  	imx_check_clk_hws(hws, IMX8MN_CLK_END);
> 
>  	ret = of_clk_add_hw_provider(np, of_clk_hw_onecell_get, clk_hw_data);
> diff --git a/drivers/clk/imx/clk-imx8mp.c b/drivers/clk/imx/clk-imx8mp.c index
> 41469e2cc3de..e05ec56df285 100644
> --- a/drivers/clk/imx/clk-imx8mp.c
> +++ b/drivers/clk/imx/clk-imx8mp.c
> @@ -735,9 +735,6 @@ static int imx8mp_clocks_probe(struct platform_device
> *pdev)
>  					     hws[IMX8MP_ARM_PLL_OUT]->clk,
>  					     hws[IMX8MP_CLK_A53_DIV]->clk);
> 
> -	clk_hw_set_parent(hws[IMX8MP_CLK_A53_SRC],
> hws[IMX8MP_SYS_PLL1_800M]);
> -	clk_hw_set_parent(hws[IMX8MP_CLK_A53_CORE],
> hws[IMX8MP_ARM_PLL_OUT]);
> -
>  	imx_check_clk_hws(hws, IMX8MP_CLK_END);
> 
>  	of_clk_add_hw_provider(np, of_clk_hw_onecell_get, clk_hw_data); diff
> --git a/drivers/clk/imx/clk-imx8mq.c b/drivers/clk/imx/clk-imx8mq.c index
> fdc68db68de5..201c7bbb201f 100644
> --- a/drivers/clk/imx/clk-imx8mq.c
> +++ b/drivers/clk/imx/clk-imx8mq.c
> @@ -599,9 +599,6 @@ static int imx8mq_clocks_probe(struct platform_device
> *pdev)
>  					   hws[IMX8MQ_ARM_PLL_OUT]->clk,
>  					   hws[IMX8MQ_CLK_A53_DIV]->clk);
> 
> -	clk_hw_set_parent(hws[IMX8MQ_CLK_A53_SRC],
> hws[IMX8MQ_SYS1_PLL_800M]);
> -	clk_hw_set_parent(hws[IMX8MQ_CLK_A53_CORE],
> hws[IMX8MQ_ARM_PLL_OUT]);
> -
>  	imx_check_clk_hws(hws, IMX8MQ_CLK_END);
> 
>  	err = of_clk_add_hw_provider(np, of_clk_hw_onecell_get, clk_hw_data);
> --
> 2.16.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
