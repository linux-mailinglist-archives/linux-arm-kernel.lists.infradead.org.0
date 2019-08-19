Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93FB795190
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 01:16:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kBzS7u56F3r7JAnhzerPK+XEHPsYRaL4VG1tH5kiMNo=; b=ucATUn7jIQSl5A
	mP+UyEyifEMs+xhMgk+OIYWgtdTrxIu3Fiw1RK5chlVZtqWc0GzwMhAue70wotjICVr3/BRPj2P6Z
	khwg99Y7SIPVlm1LCEPDgQTaZxUq6h+7FYrE13cqKv700AAGltwwgzQaiFStqRKLWZKum9lHvYvHa
	dyjkpBFyyzk3lWz08O7444WdCTL6gyQV1Pi2CqyFvETAaelYBMSRBzrfeMcT3D/ERYvCWulx3dh8q
	GgNm96ik3Q/XW3W7/AChwQJZLo5vD6D6nF/HUY7fbtMuQIagWULXWzJ/0O882qlMAMF5eeajt9OTy
	j0YgXb6ZAB/r5L0ABv6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzqtS-0002XL-JW; Mon, 19 Aug 2019 23:16:54 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzqsu-0002Wm-Jz
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 23:16:22 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7JNGFBw087770;
 Mon, 19 Aug 2019 18:16:15 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1566256575;
 bh=UDwHtVmIr6hlcbbOhoh1y1DJCtxZJXwP5T4cfzzgA58=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=m9O3WueLcnBINR5FMm2ys/ERTo4z0uTrNRsaILRHdZjB493nbkv+wPpj7x7LTw5Xp
 +uMwnpWCPU/6XvNYl2rzs4ANCkhOd+CLqLW04KfbieDmWZFAGbQu5lvp0VS1wY5Nmx
 sQO19SgJRrMafc9GHbZDx71OpDJRRLR1MrLBwcng=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7JNGFmc004915
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 19 Aug 2019 18:16:15 -0500
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 19
 Aug 2019 18:16:15 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 19 Aug 2019 18:16:15 -0500
Received: from [128.247.58.153] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7JNGFaj100994;
 Mon, 19 Aug 2019 18:16:15 -0500
Subject: Re: [PATCH 4/8] soc: ti: omap-prm: add support for denying idle for
 reset clockdomain
To: Tero Kristo <t-kristo@ti.com>, <ssantosh@kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-omap@vger.kernel.org>,
 <robh+dt@kernel.org>
References: <1565164139-21886-1-git-send-email-t-kristo@ti.com>
 <1565164139-21886-5-git-send-email-t-kristo@ti.com>
From: Suman Anna <s-anna@ti.com>
Message-ID: <81cda31a-b321-f9b4-2df7-2b6c084b2ec5@ti.com>
Date: Mon, 19 Aug 2019 18:16:15 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1565164139-21886-5-git-send-email-t-kristo@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_161620_881022_40888508 
X-CRM114-Status: GOOD (  25.22  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: tony@atomide.com, devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Tero,

On 8/7/19 2:48 AM, Tero Kristo wrote:
> TI SoCs hardware reset signals require the parent clockdomain to be
> in force wakeup mode while de-asserting the reset, otherwise it may
> never complete. To support this, add pdata hooks to control the
> clockdomain directly.
> 
> Signed-off-by: Tero Kristo <t-kristo@ti.com>
> ---
>  drivers/soc/ti/omap_prm.c            | 32 ++++++++++++++++++++++++++++----
>  include/linux/platform_data/ti-prm.h | 21 +++++++++++++++++++++
>  2 files changed, 49 insertions(+), 4 deletions(-)
>  create mode 100644 include/linux/platform_data/ti-prm.h
> 
> diff --git a/drivers/soc/ti/omap_prm.c b/drivers/soc/ti/omap_prm.c
> index d412af3..870515e3 100644
> --- a/drivers/soc/ti/omap_prm.c
> +++ b/drivers/soc/ti/omap_prm.c
> @@ -16,6 +16,8 @@
>  #include <linux/reset-controller.h>
>  #include <linux/delay.h>
>  
> +#include <linux/platform_data/ti-prm.h>
> +
>  struct omap_rst_map {
>  	s8 rst;
>  	s8 st;
> @@ -24,6 +26,7 @@ struct omap_rst_map {
>  struct omap_prm_data {
>  	u32 base;
>  	const char *name;
> +	const char *clkdm_name;
>  	u16 pwstctrl;
>  	u16 pwstst;
>  	u16 rstctl;
> @@ -40,6 +43,8 @@ struct omap_prm {
>  struct omap_reset_data {
>  	struct reset_controller_dev rcdev;
>  	struct omap_prm *prm;
> +	struct clockdomain *clkdm;
> +	struct device *dev;
>  };
>  
>  #define to_omap_reset_data(p) container_of((p), struct omap_reset_data, rcdev)
> @@ -108,6 +113,8 @@ static int omap_reset_deassert(struct reset_controller_dev *rcdev,
>  	int st_bit = id;
>  	bool has_rstst;
>  	int timeout = 0;
> +	struct ti_prm_platform_data *pdata = dev_get_platdata(reset->dev);
> +	int ret = 0;
>  
>  	/* check the current status to avoid de-asserting the line twice */
>  	v = readl_relaxed(reset->prm->base + reset->prm->data->rstctl);
> @@ -125,13 +132,16 @@ static int omap_reset_deassert(struct reset_controller_dev *rcdev,
>  		writel_relaxed(v, reset->prm->base + reset->prm->data->rstst);
>  	}
>  
> +	if (pdata->clkdm_deny_idle && reset->clkdm)
> +		pdata->clkdm_deny_idle(reset->clkdm);
> +
>  	/* de-assert the reset control line */
>  	v = readl_relaxed(reset->prm->base + reset->prm->data->rstctl);
>  	v &= ~(1 << id);
>  	writel_relaxed(v, reset->prm->base + reset->prm->data->rstctl);
>  
>  	if (!has_rstst)
> -		return 0;
> +		goto exit;
>  
>  	/* wait for the status to be set */
>  	while (1) {
> @@ -140,13 +150,19 @@ static int omap_reset_deassert(struct reset_controller_dev *rcdev,
>  		if (v)
>  			break;
>  		timeout++;
> -		if (timeout > OMAP_RESET_MAX_WAIT)
> -			return -EBUSY;
> +		if (timeout > OMAP_RESET_MAX_WAIT) {
> +			ret = -EBUSY;
> +			goto exit;
> +		}
>  
>  		udelay(1);
>  	}
>  
> -	return 0;
> +exit:
> +	if (pdata->clkdm_allow_idle && reset->clkdm)
> +		pdata->clkdm_allow_idle(reset->clkdm);
> +
> +	return ret;
>  }
>  
>  static const struct reset_control_ops omap_reset_ops = {
> @@ -159,6 +175,8 @@ static int omap_prm_reset_probe(struct platform_device *pdev,
>  				struct omap_prm *prm)
>  {
>  	struct omap_reset_data *reset;
> +	struct ti_prm_platform_data *pdata = dev_get_platdata(&pdev->dev);

Please add checks for NULL callbacks. I don't think these are optional
right, so better to check in init rather than during runtime. Granted
you will probably not run into this after patch 8, but would be good to
check and print an error in case pdata quirks is missed out.

> +	char buf[32];
>  
>  	/*
>  	 * Check if we have resets. If either rstctl or rstst is
> @@ -177,9 +195,15 @@ static int omap_prm_reset_probe(struct platform_device *pdev,
>  	reset->rcdev.ops = &omap_reset_ops;
>  	reset->rcdev.of_node = pdev->dev.of_node;
>  	reset->rcdev.nr_resets = OMAP_MAX_RESETS;
> +	reset->dev = &pdev->dev;
>  
>  	reset->prm = prm;
>  
> +	sprintf(buf, "%s_clkdm", prm->data->clkdm_name ? prm->data->clkdm_name :
> +		prm->data->name);
> +
> +	reset->clkdm = pdata->clkdm_lookup(buf);

Not checking return status?

regards
Suman

> +
>  	return devm_reset_controller_register(&pdev->dev, &reset->rcdev);
>  }
>  
> diff --git a/include/linux/platform_data/ti-prm.h b/include/linux/platform_data/ti-prm.h
> new file mode 100644
> index 0000000..28154c3
> --- /dev/null
> +++ b/include/linux/platform_data/ti-prm.h
> @@ -0,0 +1,21 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/*
> + * TI PRM (Power & Reset Manager) platform data
> + *
> + * Copyright (C) 2019 Texas Instruments, Inc.
> + *
> + * Tero Kristo <t-kristo@ti.com>
> + */
> +
> +#ifndef _LINUX_PLATFORM_DATA_TI_PRM_H
> +#define _LINUX_PLATFORM_DATA_TI_PRM_H
> +
> +struct clockdomain;
> +
> +struct ti_prm_platform_data {
> +	void (*clkdm_deny_idle)(struct clockdomain *clkdm);
> +	void (*clkdm_allow_idle)(struct clockdomain *clkdm);
> +	struct clockdomain * (*clkdm_lookup)(const char *name);
> +};
> +
> +#endif /* _LINUX_PLATFORM_DATA_TI_PRM_H */
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
