Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B684C15D93A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 15:17:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yMLqbT8PoNNfL/H5Hgo6hrTgO9T6q0mt28eg0SfjwC4=; b=upKhkD8KXYQDTz
	V1jBtnbeZoMtozHjLZKDJwQTaF/q05W02LMNlWuSUttEC8rTpqqL9UYp7/ejistuyUfCPalPtfu5U
	XbMMILfE7KEYbYTyoVIHc2uTHpiL9tsv8zO2GxFLxDG7Q0Z/UUGCJCawCc0czYrnUxz+gVhLxPOoB
	HtL9G+JAcIUA1Hna3T1jgQwk8U43mzhnEFF7u5GAot8UForo5FXoSZBVBAnyQJlAgKCGuH3I7N6zp
	/gYPkKFOASZKIfUhXHtgBXfYk6BNhDG9pGkb+MXbJijBBKtDea4kU/X5PpiDUo0Wq+pU/EN1kNBL1
	lk5+oEFhrQ1Ah7ikQkLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2bme-0004hJ-41; Fri, 14 Feb 2020 14:17:32 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2bmV-0004h0-Ep
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 14:17:24 +0000
Received: by mail-pg1-x544.google.com with SMTP id v23so1633844pgk.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Feb 2020 06:17:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=76JpXRWS3a2ABcUF6vWy9HDRZvc+hNwLnaKgXe8RuAI=;
 b=T7yeJuzzh3K1vLn8EbNBqnwsROHUoo7JAuFO2lfAi/M9FGp05QdjtlRKRIaW6kz+QA
 j1aBkAbc/kbGlTkKVndGe6TTW/WIto0NBk340o5Eu0J8w5IctHiKj00LkC6RhuMXMHyC
 02X9Rd1PY0OWnHCWchXDkOeseUL+RBCx64kPQc3fXCq26P5YhdchWt1Nqd476EwPZVED
 afnHKQlvu9WzWxrc97n0LaUvCyx5ARwBJtJNAo1LcWnjMaIjWigYWr2lbjsbDQoWSKvv
 qpbD98HgYf3Cgo7j6UUM+EYCo1qb5Fe8F4Ho1CF+E7b3/jLic1oi5zXCrtdY9wLIYgxY
 AwRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=76JpXRWS3a2ABcUF6vWy9HDRZvc+hNwLnaKgXe8RuAI=;
 b=MeI1DZHx/Dnwuo7/FwGVVau5/g6Hf0U44oOZGao1IZ2WqhGHyXWEIZfCxHzJ0LKuOt
 ElsyeC8XgrgPpPyrPZb5p2mtMcOfO5PiEuyJE+YRNr5x0EZ7CyFXszI6eWaAjFN2/6OB
 X7yhyjR+YLocZXCEtnt2Uyw2AhaZqO9IqDnQ6P4ZXVpZDyMm50vXKbmLP19fwuKwK5O8
 iKwfmCBKD/t6giNm2oNm9yqqYpUG8cNAIuAYjz7W335M9kKyj4GWtVpfoWbQf3yaIRE0
 On15wYPfC/9ZFO8dw+SReXkP0EOxOIP6rP6n4/ZPItOhWx0+1VsAaBEFhy34PWtVlubu
 +nRQ==
X-Gm-Message-State: APjAAAWyNiYa8/9VG9BGUokG5GQdfX3uCXoX2pIEaIreC6AtPbmpluUG
 Rd2OrMsKfoCbnlPDK5qI4Gy9
X-Google-Smtp-Source: APXvYqxYdTLclVLetZph+T3I3PhZRBBc7kOHye8qPgArAilW71/kx17mkRrpQINw3y89d4QYXJ2Y3g==
X-Received: by 2002:a65:641a:: with SMTP id a26mr3686775pgv.425.1581689841979; 
 Fri, 14 Feb 2020 06:17:21 -0800 (PST)
Received: from Mani-XPS-13-9360 ([2409:4072:482:690f:50bb:adfb:86f:a4bf])
 by smtp.gmail.com with ESMTPSA id c11sm7295050pfo.170.2020.02.14.06.17.17
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 14 Feb 2020 06:17:20 -0800 (PST)
Date: Fri, 14 Feb 2020 19:47:14 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Matheus Castello <matheus@castello.eng.br>
Subject: Re: [PATCH] clocksource: owl: Improve owl_timer_init fail messages
Message-ID: <20200214141714.GA30872@Mani-XPS-13-9360>
References: <20200214064923.190035-1-matheus@castello.eng.br>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200214064923.190035-1-matheus@castello.eng.br>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_061723_505094_D14570A5 
X-CRM114-Status: GOOD (  20.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: tglx@linutronix.de, daniel.lezcano@linaro.org, afaerber@suse.de,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Thanks for the patch!

On Fri, Feb 14, 2020 at 03:49:23AM -0300, Matheus Castello wrote:
> Adding error messages, in case of not having a defined clock property
> and in case of an error in clocksource_mmio_init, which may not be
> fatal, so just adding a pr_err to notify that it failed.
> 
> Signed-off-by: Matheus Castello <matheus@castello.eng.br>
> ---
> 
> Tested on my Caninos Labrador s500 based board. If the clock property is not
> set this message would help debug:
> 
> ...
> [    0.000000] Failed to get OF clock for clocksource
> [    0.000000] Failed to initialize '/soc/timer@b0168000': -2
> [    0.000000] timer_probe: no matching timers found
> ...
> 
>  drivers/clocksource/timer-owl.c | 11 ++++++++---
>  1 file changed, 8 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/clocksource/timer-owl.c b/drivers/clocksource/timer-owl.c
> index 900fe736145d..f53596f9e86c 100644
> --- a/drivers/clocksource/timer-owl.c
> +++ b/drivers/clocksource/timer-owl.c
> @@ -135,8 +135,10 @@ static int __init owl_timer_init(struct device_node *node)
>  	}
> 
>  	clk = of_clk_get(node, 0);
> -	if (IS_ERR(clk))
> +	if (IS_ERR(clk)) {
> +		pr_err("Failed to get OF clock for clocksource\n");

No need to mention OF here. Just, "Failed to get clock for clocksource"
is good enough.

>  		return PTR_ERR(clk);
> +	}
> 
>  	rate = clk_get_rate(clk);
> 
> @@ -144,8 +146,11 @@ static int __init owl_timer_init(struct device_node *node)
>  	owl_timer_set_enabled(owl_clksrc_base, true);
> 
>  	sched_clock_register(owl_timer_sched_read, 32, rate);
> -	clocksource_mmio_init(owl_clksrc_base + OWL_Tx_VAL, node->name,
> -			      rate, 200, 32, clocksource_mmio_readl_up);
> +	ret = clocksource_mmio_init(owl_clksrc_base + OWL_Tx_VAL, node->name,
> +				    rate, 200, 32, clocksource_mmio_readl_up);
> +
> +	if (ret)
> +		pr_err("Failed to register clocksource %d\n", ret);
> 

Do you want to continue if it fails? I'd bail out.

Thanks,
Mani

>  	owl_timer_reset(owl_clkevt_base);
> 
> --
> 2.25.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
