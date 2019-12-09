Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19A49116E19
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 14:43:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=u7zwDkxpueVO9eD0fBmrnS3OJMF5Mr8evQWGqka91Os=; b=OiU2NtCj76MA3iNqnOjgJq2lX
	g87lGBZ3jBy+8DcLaM01FheJ+fqX69d5DOXv/oM4JyoM2YETmrXWvpgDsn3w5r6A8lcmKcn9f9S0T
	XJsXwo4DkdxKGaVBv10aPh5VDwvhQ4NzwkavXxoRUG6LudQmWAGK8OACJ8z000L0HvUS6YIEL8sDm
	dI3qnoXP9M2TwofdriPXRmDjO5V7xdUfU+63uxLc3IGgHtgHtHmUfiB+9NdCLyhxJ/xljohoOmCU6
	32nJckzrfvb0kEK0MtRXTd5CSagDUoGmDiRFYH4KXIcG0FBaxgZyM36j1rmQeRXHDPbMP7yNl2LcA
	tPRkFv9iA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieJJm-0003Wb-Ui; Mon, 09 Dec 2019 13:43:18 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieJJd-0003VO-60; Mon, 09 Dec 2019 13:43:10 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9A0B2328;
 Mon,  9 Dec 2019 05:43:07 -0800 (PST)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BFEB23F718;
 Mon,  9 Dec 2019 05:43:06 -0800 (PST)
Subject: Re: [PATCH] mfd: rk808: Always use poweroff when requested
To: Soeren Moch <smoch@web.de>, Lee Jones <lee.jones@linaro.org>
References: <20191209115746.12953-1-smoch@web.de>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <40f82334-8f89-e2bd-985a-b09f71be20ce@arm.com>
Date: Mon, 9 Dec 2019 13:43:05 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191209115746.12953-1-smoch@web.de>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_054309_267963_E3E4025A 
X-CRM114-Status: GOOD (  21.04  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 09/12/2019 11:57 am, Soeren Moch wrote:
> With the device tree property "rockchip,system-power-controller" we
> explicitly request to use this PMIC to power off the system. So always
> register our poweroff function, even if some other handler (probably
> PSCI poweroff) was registered before.

This seems preferable to abusing syscore ops, and at least it does allow 
the firmware behaviour to be encapsulated in the DT (and thus more 
easily updated if and when a firmware-based shutdown can be achieved on 
currently-crippled boards) rather than baking assumptions into the 
kernel. And in the meantime, I *would* quite like to be able to power 
down my RK3399 board without having to lean on the button... so I guess,

Acked-by: Robin Murphy <robin.murphy@arm.com>

> Signed-off-by: Soeren Moch <smoch@web.de>
> ---
> Cc: Lee Jones <lee.jones@linaro.org>
> Cc: Heiko Stuebner <heiko@sntech.de>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-rockchip@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org
> ---
>   drivers/mfd/rk808.c | 11 ++---------
>   1 file changed, 2 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/mfd/rk808.c b/drivers/mfd/rk808.c
> index a69a6742ecdc..616e44e7ef98 100644
> --- a/drivers/mfd/rk808.c
> +++ b/drivers/mfd/rk808.c
> @@ -550,7 +550,7 @@ static int rk808_probe(struct i2c_client *client,
>   	const struct mfd_cell *cells;
>   	int nr_pre_init_regs;
>   	int nr_cells;
> -	int pm_off = 0, msb, lsb;
> +	int msb, lsb;
>   	unsigned char pmic_id_msb, pmic_id_lsb;
>   	int ret;
>   	int i;
> @@ -674,16 +674,9 @@ static int rk808_probe(struct i2c_client *client,
>   		goto err_irq;
>   	}
> 
> -	pm_off = of_property_read_bool(np,
> -				"rockchip,system-power-controller");
> -	if (pm_off && !pm_power_off) {
> +	if (of_property_read_bool(np, "rockchip,system-power-controller")) {
>   		rk808_i2c_client = client;
>   		pm_power_off = rk808->pm_pwroff_fn;
> -	}
> -
> -	if (pm_off && !pm_power_off_prepare) {
> -		if (!rk808_i2c_client)
> -			rk808_i2c_client = client;
>   		pm_power_off_prepare = rk808->pm_pwroff_prep_fn;
>   	}
> 
> --
> 2.17.1
> 
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
