Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61EE5107A31
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 22:48:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=Hdl3CR0fD+94KB8amUKuC+onVai43Ml0erWAKQL1VKE=; b=MrQ2Wa9MjpQR1R
	pkWeo+dB/fsuLPMW99XDBYlJAldTTXyKHc8nytmzLwIqo9TIAEbq97157IlpJOYmmF9xFV+j4K2Fw
	W4/arHRCG7T2dTpN3F8RVCD3srwD2NECHtRtFaQc+tVgkM63aBrL3QvlTP0UGUk86u6iKVLKKcBQp
	7QbR64AUEmIrNvohpOzopDPIb9063pKD98wbmUPkiPYoYNG1L2mOF8Pnk+l1zk4HWwzBIMLwcT77l
	1sN3M+iktkVM5pDmCXoeVVdsq29pnQmAeV9g6TCSLswHLMwaqrzo4ZABg5401/85/ylhm9BiGiRYO
	TLk0nxjj4oV0zB8wEHuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYGnA-0006g0-1y; Fri, 22 Nov 2019 21:48:40 +0000
Received: from mail-eopbgr30050.outbound.protection.outlook.com ([40.107.3.50]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYGmy-0006OQ-Sr
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 21:48:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PxHR/2/UBq1Q16tU+LQQQjmGGG5cKseq2dxhqxbX9vz+Y9CTgWSj5YgpuvSobm+ooZGU/xM0VqDSK3fcNmf/d5+8RqIFgFtzJSk0HR4yQe6iGQgmO0+bzMIoQdtcWtbUK8ThXruB/rswOoebYFyV25a1/rQE03QB/1Kj51o5Zq0n4/W+W7mQ++lezyk3t99jmTZisPqwhaTS1Pnys/gyQQ4kznmBKO/b6VXDLII8RwLeBca3Sk/a02GHGn+MJdnGIhKyMaQkhoG7b6tWiVr/R6PLhUcQJPHrtGFvEk3PUzHJC1qKzYGry1Z1DManuMgnrP6QcMNMier/MIenm7Bm6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Dy5PXzy/0332xTEXm7r2jrYWu5zB5/tV/TBn5CIgU8I=;
 b=ZJsZcpVfaDSi2lFj/LoiL34YDOoqdNnKFbxLWK0lHkN9jHRYVuhzEz4z8O7iQfCC8Bs0FmImx+J8AFneRt2ZsTLt2uqeX9DdEhMDciFGBFimibQc57PSf0hpKjolop96pnel2ffmoXdxArCXVy8sc3xV+Yxj6ym8bcUmVVJotWgvo6L8pjNAVbtc3hdWz7oHzNhQj/9yWCByD2mFkrRDQdbZZix7p4P36R5Lo4uLKjVkLe142U+fde2gv5QHyS6uYsebGf7G7Oy9Trt23ClcB6Z8C64kCsHNhznzdNL/rOOsD5r2nxFnP1y7caCNXlyr4SRKg22n7m1q1jhNwFINNw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Dy5PXzy/0332xTEXm7r2jrYWu5zB5/tV/TBn5CIgU8I=;
 b=Ipr0UnoZ/+213mBRub9H3MtQg4qBEJVgiqhJPDMhsDQTBNp7qv9pPW1rcVIm/9HBCSrF3Tl0tl0EJrtFRY9TjqnA3P5L0IkSRbZ1CPX/MV4BKq/dHLaCrYhMP/TmHYlLPmhnmzFxF09itsVa2iwSeEhjgawm0pSIHkrSE1Psu5E=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB3149.eurprd04.prod.outlook.com (10.170.229.23) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2474.17; Fri, 22 Nov 2019 21:48:25 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::dd0c:72dc:e462:16b3]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::dd0c:72dc:e462:16b3%5]) with mapi id 15.20.2474.021; Fri, 22 Nov 2019
 21:48:25 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Abel Vesa <abel.vesa@nxp.com>, Shawn Guo <shawnguo@kernel.org>, Stephen
 Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v2 01/11] clk: imx: Add correct failure handling for clk
 based helpers
Thread-Topic: [PATCH v2 01/11] clk: imx: Add correct failure handling for clk
 based helpers
Thread-Index: AQHVoSJWiPUbLE4/j0WIQrxGUo4alw==
Date: Fri, 22 Nov 2019 21:48:25 +0000
Message-ID: <VI1PR04MB70231491C8375159CB07702BEE490@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <1574419679-3813-1-git-send-email-abel.vesa@nxp.com>
 <1574419679-3813-2-git-send-email-abel.vesa@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [92.121.36.197]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 110ee35e-7684-4c8f-a374-08d76f95b3af
x-ms-traffictypediagnostic: VI1PR04MB3149:|VI1PR04MB3149:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB3149B0CB0C3E17652908C6C7EE490@VI1PR04MB3149.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 02296943FF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(366004)(346002)(396003)(39860400002)(376002)(189003)(199004)(3846002)(66066001)(55016002)(6246003)(102836004)(6436002)(4326008)(71200400001)(71190400001)(86362001)(256004)(2906002)(14444005)(6116002)(186003)(4001150100001)(229853002)(26005)(6506007)(7736002)(74316002)(478600001)(44832011)(110136005)(52536014)(33656002)(9686003)(66946007)(76116006)(91956017)(66446008)(64756008)(66476007)(5660300002)(66556008)(53546011)(305945005)(8936002)(81166006)(446003)(76176011)(25786009)(7696005)(316002)(14454004)(99286004)(81156014)(8676002)(54906003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB3149;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HIYZmMj8tgCbtKe5ECjXcsy9homrdZzbjDEwYgG9Hd5OO1s1p4vkFDGFMlQ/yc1I7HLdueDB813TGS4oPa8g0OmJ6dV6j7IVaAZJ7uu22/9/F/LKMV+vAYvpYtpTAVJ7Ka4rdEj3/raxFU07DVl/EL7biU15xxNtqLxUELT3hKaUV5tGm6GbVV8ptRfF4AldJtAQBjM9bOhK20t9bgCBRKegUMMXtODTuQgO9Ox5N4sdof5koPzxh9UJI73jPybXRux9y1exflALfxbaSlrPCaWsyjNvd1+RuC2+XGs/pvBx3UQtvElu+7+3Oms0Aimw4cVSqFBxI/hmwpnISt9NQtb0vd3QECOQdE1uuX++9lMGozS4LA/X3KifyhvoblntKvzlPzc0Fwz+8gMnZl1Flny77RhAwUMINphwyvwMD2PevFoOpt3Qd5kFVrBwd3/p
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 110ee35e-7684-4c8f-a374-08d76f95b3af
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Nov 2019 21:48:25.0392 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aWPC8Juv8g6mikIlOLjqLgH4Ne3ciG8m0IgYDA/23VRvNh4Zj9+WkmcbmqTouCjurA3N1+qP3zNUIE+9xtddiQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB3149
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_134829_041544_1CDFE010 
X-CRM114-Status: GOOD (  12.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.50 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 Jacky Bai <ping.bai@nxp.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-11-22 12:48 PM, Abel Vesa wrote:
> If the clk_hw based API returns an error, trying to return the clk from
> hw will end up in a NULL pointer dereference. So adding the to_clk
> checker and using it inside every clk based macro helper we handle that
> case correctly.
> 
> This to_clk is also temporary and will go away along with the clk based
> macro helpers once there is no user that need them anymore.
> 
> Signed-off-by: Abel Vesa <abel.vesa@nxp.com>

Reviewed-by: Leonard Crestez <leonard.crestez@nxp.com>

> ---
>   drivers/clk/imx/clk.h | 37 ++++++++++++++++++++++---------------
>   1 file changed, 22 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
> index bc5bb6a..30ddbc1 100644
> --- a/drivers/clk/imx/clk.h
> +++ b/drivers/clk/imx/clk.h
> @@ -54,48 +54,48 @@ extern struct imx_pll14xx_clk imx_1416x_pll;
>   extern struct imx_pll14xx_clk imx_1443x_pll;
>   
>   #define imx_clk_cpu(name, parent_name, div, mux, pll, step) \
> -	imx_clk_hw_cpu(name, parent_name, div, mux, pll, step)->clk
> +	to_clk(imx_clk_hw_cpu(name, parent_name, div, mux, pll, step))
>   
>   #define clk_register_gate2(dev, name, parent_name, flags, reg, bit_idx, \
>   				cgr_val, clk_gate_flags, lock, share_count) \
> -	clk_hw_register_gate2(dev, name, parent_name, flags, reg, bit_idx, \
> -				cgr_val, clk_gate_flags, lock, share_count)->clk
> +	to_clk(clk_hw_register_gate2(dev, name, parent_name, flags, reg, bit_idx, \
> +				cgr_val, clk_gate_flags, lock, share_count))
>   
>   #define imx_clk_pllv3(type, name, parent_name, base, div_mask) \
> -	imx_clk_hw_pllv3(type, name, parent_name, base, div_mask)->clk
> +	to_clk(imx_clk_hw_pllv3(type, name, parent_name, base, div_mask))
>   
>   #define imx_clk_pfd(name, parent_name, reg, idx) \
> -	imx_clk_hw_pfd(name, parent_name, reg, idx)->clk
> +	to_clk(imx_clk_hw_pfd(name, parent_name, reg, idx))
>   
>   #define imx_clk_gate_exclusive(name, parent, reg, shift, exclusive_mask) \
> -	imx_clk_hw_gate_exclusive(name, parent, reg, shift, exclusive_mask)->clk
> +	to_clk(imx_clk_hw_gate_exclusive(name, parent, reg, shift, exclusive_mask))
>   
>   #define imx_clk_fixed_factor(name, parent, mult, div) \
> -	imx_clk_hw_fixed_factor(name, parent, mult, div)->clk
> +	to_clk(imx_clk_hw_fixed_factor(name, parent, mult, div))
>   
>   #define imx_clk_divider2(name, parent, reg, shift, width) \
> -	imx_clk_hw_divider2(name, parent, reg, shift, width)->clk
> +	to_clk(imx_clk_hw_divider2(name, parent, reg, shift, width))
>   
>   #define imx_clk_gate_dis(name, parent, reg, shift) \
> -	imx_clk_hw_gate_dis(name, parent, reg, shift)->clk
> +	to_clk(imx_clk_hw_gate_dis(name, parent, reg, shift))
>   
>   #define imx_clk_gate2(name, parent, reg, shift) \
> -	imx_clk_hw_gate2(name, parent, reg, shift)->clk
> +	to_clk(imx_clk_hw_gate2(name, parent, reg, shift))
>   
>   #define imx_clk_gate2_flags(name, parent, reg, shift, flags) \
> -	imx_clk_hw_gate2_flags(name, parent, reg, shift, flags)->clk
> +	to_clk(imx_clk_hw_gate2_flags(name, parent, reg, shift, flags))
>   
>   #define imx_clk_gate2_shared2(name, parent, reg, shift, share_count) \
> -	imx_clk_hw_gate2_shared2(name, parent, reg, shift, share_count)->clk
> +	to_clk(imx_clk_hw_gate2_shared2(name, parent, reg, shift, share_count))
>   
>   #define imx_clk_gate3(name, parent, reg, shift) \
> -	imx_clk_hw_gate3(name, parent, reg, shift)->clk
> +	to_clk(imx_clk_hw_gate3(name, parent, reg, shift))
>   
>   #define imx_clk_gate4(name, parent, reg, shift) \
> -	imx_clk_hw_gate4(name, parent, reg, shift)->clk
> +	to_clk(imx_clk_hw_gate4(name, parent, reg, shift))
>   
>   #define imx_clk_mux(name, reg, shift, width, parents, num_parents) \
> -	imx_clk_hw_mux(name, reg, shift, width, parents, num_parents)->clk
> +	to_clk(imx_clk_hw_mux(name, reg, shift, width, parents, num_parents))
>   
>   struct clk *imx_clk_pll14xx(const char *name, const char *parent_name,
>   		 void __iomem *base, const struct imx_pll14xx_clk *pll_clk);
> @@ -198,6 +198,13 @@ struct clk_hw *imx_clk_hw_fixup_mux(const char *name, void __iomem *reg,
>   			      u8 shift, u8 width, const char * const *parents,
>   			      int num_parents, void (*fixup)(u32 *val));
>   
> +static inline struct clk *to_clk(struct clk_hw *hw)
> +{
> +	if (IS_ERR_OR_NULL(hw))
> +		return ERR_CAST(hw);
> +	return hw->clk;
> +}
> +
>   static inline struct clk *imx_clk_fixed(const char *name, int rate)
>   {
>   	return clk_register_fixed_rate(NULL, name, NULL, 0, rate);
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
