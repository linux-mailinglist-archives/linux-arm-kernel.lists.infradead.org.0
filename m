Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7A6C13504
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 23:51:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nIEZDJFTiFUB4HViJA6nouczfg4rR6etqxnaIcFAOm8=; b=Kjv6MYywsNZIML
	WQjbDeGuahUSLyL20kAva0f9ILCFKYFKq3uGPpazV3J10P22i3hxrFn7XtfIUQ4xBuDf/uxTQCqPe
	lKnBkrG7t1Xuz24xzWEP49vL6sVM4jqStFClfYTeN+f2HVfSOjXZj0dqeTv6b959EATfxcbWbNQnf
	RZdEv83nCgJee55EResRgoHeqWZ7KuMZ0nk+xbbhg/3RM0mfJ3WH6iZ4vFsg1vz++BkBX7M6G8rsS
	bC5t2IAUeOENR8CObscAjnTVd6Jyl33yAlMiGe2ktQOEfbc01ltSs6KDTH6ItAdG1g3MAFabm5WE2
	7Uc21JEnHtLyCtt/4gYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMg5R-0004O4-55; Fri, 03 May 2019 21:51:21 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMg5H-0004Mn-TR; Fri, 03 May 2019 21:51:14 +0000
Received: from p508fd516.dip0.t-ipconnect.de ([80.143.213.22]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hMg58-0007vr-4r; Fri, 03 May 2019 23:51:02 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Douglas Anderson <dianders@chromium.org>
Subject: Re: [PATCH] clk: rockchip: Don't yell about bad mmc phases when
 getting
Date: Fri, 03 May 2019 23:51:01 +0200
Message-ID: <1783321.PXM97fLzLk@phil>
In-Reply-To: <20190503212208.223232-1-dianders@chromium.org>
References: <20190503212208.223232-1-dianders@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_145112_103145_1B7CF9B0 
X-CRM114-Status: GOOD (  20.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: hal@halemmerich.com, Stephen Boyd <sboyd@kernel.org>,
 Shawn Lin <shawn.lin@rock-chips.com>, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org,
 mka@chromium.org, Michael Turquette <mturquette@baylibre.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Freitag, 3. Mai 2019, 23:22:08 CEST schrieb Douglas Anderson:
> At boot time, my rk3288-veyron devices yell with 8 lines that look
> like this:
>   [    0.000000] rockchip_mmc_get_phase: invalid clk rate
> 
> This is because the clock framework at clk_register() time tries to
> get the phase but we don't have a parent yet.
> 
> While the errors appear to be harmless they are still ugly and, in
> general, we don't want yells like this in the log unless they are
> important.
> 
> There's no real reason to be yelling here.  We can still return
> -EINVAL to indicate that the phase makes no sense without a parent.
> If someone really tries to do tuning and the clock is reported as 0
> then we'll see the yells in rockchip_mmc_set_phase().
> 
> Fixes: 4bf59902b500 ("clk: rockchip: Prevent calculating mmc phase if clock rate is zero")
> Signed-off-by: Douglas Anderson <dianders@chromium.org>

Thanks for fixing that. I always meant to handle that yell, but hadn't
found the time yet.

@Stephen, Mike: if you want to just apply this atop the other Rockchip
clock patches for 5.2, here is a

Reviewed-by: Heiko Stuebner <heiko@sntech.de>

Otherwise I'l queue that up for 5.3 later on.

Thanks
Heiko

> ---
> 
>  drivers/clk/rockchip/clk-mmc-phase.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/clk/rockchip/clk-mmc-phase.c b/drivers/clk/rockchip/clk-mmc-phase.c
> index 026a26bb702d..dbec84238ecd 100644
> --- a/drivers/clk/rockchip/clk-mmc-phase.c
> +++ b/drivers/clk/rockchip/clk-mmc-phase.c
> @@ -61,10 +61,8 @@ static int rockchip_mmc_get_phase(struct clk_hw *hw)
>  	u32 delay_num = 0;
>  
>  	/* See the comment for rockchip_mmc_set_phase below */
> -	if (!rate) {
> -		pr_err("%s: invalid clk rate\n", __func__);
> +	if (!rate)
>  		return -EINVAL;
> -	}
>  
>  	raw_value = readl(mmc_clock->reg) >> (mmc_clock->shift);
>  
> 





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
