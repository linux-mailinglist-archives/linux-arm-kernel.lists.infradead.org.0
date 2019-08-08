Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB142864DE
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 16:56:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Foqof4NQgr4Ng/lMsp+BM3rwQj0Sas76k77DPVzxP8Q=; b=vClGcjt4FNKTHz
	Umv09qgLAsPlHecyyLett28qB58fr4IOuXsLHh+2Zj6zOMPoeMq8FtNfkFl0UJ0hrmYCoxrhyR8Bc
	HwXGEuo0j1/92IlgcButXUdTQ6gbSzosl5gHs6WwqrHd4hP/prlWLNGfFCr7et26PvUgHNmevaWXk
	2Xabgaw1n27MYR+giY1ExLeKnMwu+NWz9vWEyISYH+tZZqASboC6W2PWf3YKbgo/Ty9yGN4tqmOdc
	Vf/Wbq1DwzfCjkc/aL7n1kw7m+6Ey+gD6ge6kOwn/qrkw4AvDxM2E2fa8CH0RfCYcNGcWOEeCKvKr
	Yo+eTgiPjjTV7cvDBEgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvjqP-0008V1-Bz; Thu, 08 Aug 2019 14:56:45 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvjqG-0008Uc-0O
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 14:56:37 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1hvjq9-0005mr-PZ; Thu, 08 Aug 2019 16:56:29 +0200
Message-ID: <1565276188.3656.24.camel@pengutronix.de>
Subject: Re: [PATCH] pinctrl: freescale: imx: Add of_node_put() before return
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Nishka Dasgupta <nishkadg.linux@gmail.com>, aisheng.dong@nxp.com, 
 festevam@gmail.com, shawnguo@kernel.org, stefan@agner.ch,
 kernel@pengutronix.de,  linus.walleij@linaro.org, s.hauer@pengutronix.de,
 linux-imx@nxp.com,  linux-gpio@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Date: Thu, 08 Aug 2019 16:56:28 +0200
In-Reply-To: <20190808074720.15754-1-nishkadg.linux@gmail.com>
References: <20190808074720.15754-1-nishkadg.linux@gmail.com>
X-Mailer: Evolution 3.22.6-1+deb9u2 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_075636_051694_BC4BF4B4 
X-CRM114-Status: GOOD (  14.62  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2019-08-08 at 13:17 +0530, Nishka Dasgupta wrote:
> Each iteration of for_each_child_of_node() puts the previous node;
> however, in the case of a return from the middle of the loop, there is no
> put, thus causing a memory leak. Hence put of_node_put() statements as
> required before two mid-loop return statements.
> Issue found with Coccinelle.
> 
> Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
> ---
>  drivers/pinctrl/freescale/pinctrl-imx.c | 13 ++++++++++---
>  1 file changed, 10 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/pinctrl/freescale/pinctrl-imx.c b/drivers/pinctrl/freescale/pinctrl-imx.c
> index 83ff9532bae6..9f42036c5fbb 100644
> --- a/drivers/pinctrl/freescale/pinctrl-imx.c
> +++ b/drivers/pinctrl/freescale/pinctrl-imx.c
> @@ -672,8 +672,10 @@ static int imx_pinctrl_parse_functions(struct device_node *np,
>  
>  		grp = devm_kzalloc(ipctl->dev, sizeof(struct group_desc),
>  				   GFP_KERNEL);

This looks to me like it could just allocate an array of struct
group_desc upfront, just like the group_names array. Same for the
functions in imx_pinctrl_probe_dt(). Not an issue with this patch
though.

Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>

regards
Philipp

> -		if (!grp)
> +		if (!grp) {
> +			of_node_put(child);
>  			return -ENOMEM;
> +		}
>  
>  		mutex_lock(&ipctl->mutex);
>  		radix_tree_insert(&pctl->pin_group_tree,
> @@ -697,12 +699,17 @@ static bool imx_pinctrl_dt_is_flat_functions(struct device_node *np)
>  	struct device_node *pinctrl_np;
>  
>  	for_each_child_of_node(np, function_np) {
> -		if (of_property_read_bool(function_np, "fsl,pins"))
> +		if (of_property_read_bool(function_np, "fsl,pins")) {
> +			of_node_put(function_np);
>  			return true;
> +		}
>  
>  		for_each_child_of_node(function_np, pinctrl_np) {
> -			if (of_property_read_bool(pinctrl_np, "fsl,pins"))
> +			if (of_property_read_bool(pinctrl_np, "fsl,pins")) {
> +				of_node_put(pinctrl_np);
> +				of_node_put(function_np);
>  				return false;
> +			}
>  		}
>  	}
>  

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
