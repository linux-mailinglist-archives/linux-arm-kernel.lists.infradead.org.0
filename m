Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D498D116D26
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 13:32:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AHjpc45yaoWE8E5XvG35rm5yn5RtpUAY0ST0icfI0QI=; b=L3svBxWqktseQA
	GEHmqWkaZuA58cRRnDSrh1PHgr9Xu/bmyBoycQwLBLn55AnXdGBxSKcX4OLP40g18/XItTvUNX1D3
	NgmCCvi0nMNHo99Lev+OwvpDENWg8D+1yodmyQtKZRJH4V+eO9jxwt/b2I0uTKtwMTEvfCa86MyHZ
	ZmHCNSY7uGrShZvYwez4rvKstCo3d1+h9H3R/SvtFIArPn2RfUcl1V1L0ssVBE/ons9+OCZOlBROo
	He2Pqnvlo3RRzSXV9bvPF/uPzSmgA9IJuT1USiTvUyGZUlnrErlb4m5F4z39MO8Y1R541RnO6jEdS
	1vYJ62kBmOynzjzmqUOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieIDY-0002P4-6a; Mon, 09 Dec 2019 12:32:48 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieIDS-0002OV-7Q; Mon, 09 Dec 2019 12:32:43 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1ieIDP-0000Ql-D2; Mon, 09 Dec 2019 13:32:39 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Soeren Moch <smoch@web.de>
Subject: Re: [PATCH] mfd: rk808: Always use poweroff when requested
Date: Mon, 09 Dec 2019 13:32:38 +0100
Message-ID: <6655566.N6zq5d2jo2@diego>
In-Reply-To: <20191209115746.12953-1-smoch@web.de>
References: <20191209115746.12953-1-smoch@web.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_043242_412253_6C418966 
X-CRM114-Status: GOOD (  15.68  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-rockchip@lists.infradead.org, Lee Jones <lee.jones@linaro.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Montag, 9. Dezember 2019, 12:57:46 CET schrieb Soeren Moch:
> With the device tree property "rockchip,system-power-controller" we
> explicitly request to use this PMIC to power off the system. So always
> register our poweroff function, even if some other handler (probably
> PSCI poweroff) was registered before.
> 
> Signed-off-by: Soeren Moch <smoch@web.de>

Sounds very sensible
Reviewed-by: Heiko Stuebner <heiko@sntech.de>


> ---
> Cc: Lee Jones <lee.jones@linaro.org>
> Cc: Heiko Stuebner <heiko@sntech.de>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-rockchip@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org
> ---
>  drivers/mfd/rk808.c | 11 ++---------
>  1 file changed, 2 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/mfd/rk808.c b/drivers/mfd/rk808.c
> index a69a6742ecdc..616e44e7ef98 100644
> --- a/drivers/mfd/rk808.c
> +++ b/drivers/mfd/rk808.c
> @@ -550,7 +550,7 @@ static int rk808_probe(struct i2c_client *client,
>  	const struct mfd_cell *cells;
>  	int nr_pre_init_regs;
>  	int nr_cells;
> -	int pm_off = 0, msb, lsb;
> +	int msb, lsb;
>  	unsigned char pmic_id_msb, pmic_id_lsb;
>  	int ret;
>  	int i;
> @@ -674,16 +674,9 @@ static int rk808_probe(struct i2c_client *client,
>  		goto err_irq;
>  	}
> 
> -	pm_off = of_property_read_bool(np,
> -				"rockchip,system-power-controller");
> -	if (pm_off && !pm_power_off) {
> +	if (of_property_read_bool(np, "rockchip,system-power-controller")) {
>  		rk808_i2c_client = client;
>  		pm_power_off = rk808->pm_pwroff_fn;
> -	}
> -
> -	if (pm_off && !pm_power_off_prepare) {
> -		if (!rk808_i2c_client)
> -			rk808_i2c_client = client;
>  		pm_power_off_prepare = rk808->pm_pwroff_prep_fn;
>  	}
> 
> --
> 2.17.1
> 





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
