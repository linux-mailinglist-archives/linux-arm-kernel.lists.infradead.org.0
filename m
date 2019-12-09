Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76509116A28
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 10:51:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7LcfCCTfojmD4lU+Bk4ndCYPRyRfzMBmsZJAIiFIF54=; b=NIpdAJgCMi+r9c7Is08u9pR01i
	Lh2pEXZxz+oTUVFb02zOShJO6ZYSLaIUHS66cDl8Mh3bgnVdkF5ub1zvMzvAEzy+N2PqHiXQbiyYJ
	z4t1TYF7hRZd33W2B5YJYFNIZHbZGedFNvQbPCgAgOqrMWg2EA74Q2eQpcTdxdb+otXx9B0UHPSIG
	5HO9+kySPNH4O0eQlQXGQGC2uZv/Z4iUw4bAu5RRPhtsyGl7YfWvDLOoS3Aqp7sceyItv6TBidVsE
	khH2rL0VQpMhY0bQw1dS/NYGjyjHvRiy9fufi0S7pObWbidlmS8uSrKcwosg1f8J5CrozM8EWip7h
	M1fJ/dOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieFhQ-0003RR-Hv; Mon, 09 Dec 2019 09:51:28 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieFhE-0003Qs-JR
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 09:51:18 +0000
Received: by mail-wm1-x343.google.com with SMTP id b11so14708397wmj.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Dec 2019 01:51:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=/lV4JOds+hQfSWH7coNmWVW3vJirPTXEaWuWEYduTYk=;
 b=1QP8E5rEnnpU1XZQRU97MeWENs2Clw1QWJ71vLW8hAfEkhPVRwKXiPNjy/x0GSLHYy
 iEBd0l9DIz9rS1Oyx0EPugmBekdTVFsgULtW+CLZXn6/HjLgmtUzplUdlOsDM5LAUDj0
 ZcxA33nqqE0xugQ3p8BMXNCeyP1AYFooYXFa5XI0QPTEhBKECdxMuXuvxVKG7YuiLuvu
 HcyR3Y2Qfj6WJ/wDGu3KhySAy/so+P9mJ6kfLB8OW3wCl4ZRytOKZZXu2Ml1Q45RY5jB
 fTuVR/SzH8ZWZBk7CdkFP5J3sdSMCEMFKPUnlAg2AJyR7r3onPgGF9+GTHCkZZdD9moJ
 1SZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=/lV4JOds+hQfSWH7coNmWVW3vJirPTXEaWuWEYduTYk=;
 b=CKwZy4sDeD8EJRdpV04mUdI0B4g5OvLCbp5eKexb4wYCThafHP8IzrkgWyzVkcIJ2n
 LSCtv3XyGeYYxA2rU1jLvNH5fxuSTps4RX00n8fBtN5Em/5Gcp1GkAhtYYe/r7rB2Li+
 Yv49Ys5zeKwjvaeaE1FHcTShoRMrD8aPvueIH4z1Hbn9gQ59nP17fr05t48nFUOWiQiP
 j/6OdQhca37D/8BMD3bmpkL/VPP3OmFLM8uCqeRYfbycv+5FMVGXZE6qpZnKTk6nqQmd
 EWbFqqPJ16gUIgHkeXe2OJKJe1BPVMiNYJJuxVPZoSv/KooFoWOMO9mL1oL+CvFtV46O
 lbHA==
X-Gm-Message-State: APjAAAUB8qHvU5D5CJphDsK459QJ+ETYMEREHsd3tFIFKX0bp4ZIqlPX
 j94sIsAniGIoZ4WORTKtFbhRaA==
X-Google-Smtp-Source: APXvYqyJrZdhijAo9WBhDx6CQX/GMWF1YJMIkaeUQIf7KJnAzbt8wQFio/hP1vuXx3Nyfi9YFWG7zg==
X-Received: by 2002:a1c:238c:: with SMTP id
 j134mr24393284wmj.151.1575885074948; 
 Mon, 09 Dec 2019 01:51:14 -0800 (PST)
Received: from localhost (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id y6sm25826838wrl.17.2019.12.09.01.51.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Dec 2019 01:51:14 -0800 (PST)
References: <20191208212206.16808-1-repk@triplefau.lt>
User-agent: mu4e 1.3.3; emacs 26.2
From: Jerome Brunet <jbrunet@baylibre.com>
To: Remi Pommarel <repk@triplefau.lt>, Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH] clk: meson: pll: Fix by 0 division in
 __pll_params_to_rate()
In-reply-to: <20191208212206.16808-1-repk@triplefau.lt>
Date: Mon, 09 Dec 2019 10:51:13 +0100
Message-ID: <1jo8whesj2.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_015116_642378_B0831749 
X-CRM114-Status: GOOD (  15.49  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Stephen Boyd <sboyd@kernel.org>, Kevin Hilman <khilman@baylibre.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On Sun 08 Dec 2019 at 22:22, Remi Pommarel <repk@triplefau.lt> wrote:

> Some meson pll registers can be initialized with 0 as N value, introducing
> the following division by 0 when computing rate :
>
>   UBSAN: Undefined behaviour in drivers/clk/meson/clk-pll.c:75:9
>   division by zero
>   CPU: 0 PID: 1 Comm: swapper/0 Not tainted 5.4.0-rc3-608075-g86c9af8630e1-dirty #400
>   Call trace:
>    dump_backtrace+0x0/0x1c0
>    show_stack+0x14/0x20
>    dump_stack+0xc4/0x100
>    ubsan_epilogue+0x14/0x68
>    __ubsan_handle_divrem_overflow+0x98/0xb8
>    __pll_params_to_rate+0xdc/0x140
>    meson_clk_pll_recalc_rate+0x278/0x3a0
>    __clk_register+0x7c8/0xbb0
>    devm_clk_hw_register+0x54/0xc0
>    meson_eeclkc_probe+0xf4/0x1a0
>    platform_drv_probe+0x54/0xd8
>    really_probe+0x16c/0x438
>    driver_probe_device+0xb0/0xf0
>    device_driver_attach+0x94/0xa0
>    __driver_attach+0x70/0x108
>    bus_for_each_dev+0xd8/0x128
>    driver_attach+0x30/0x40
>    bus_add_driver+0x1b0/0x2d8
>    driver_register+0xbc/0x1d0
>    __platform_driver_register+0x78/0x88
>    axg_driver_init+0x18/0x20
>    do_one_initcall+0xc8/0x24c
>    kernel_init_freeable+0x2b0/0x344
>    kernel_init+0x10/0x128
>    ret_from_fork+0x10/0x18
>
> This checks if N is null before doing the division.

Thanks for reporting this

>
> Fixes: 8289aafa4f36 ("clk: meson: improve pll driver results with
> frac")

In mainline, the commit above went in with sha1 3c4fe763d64d.

Also, this commit is not really responsible for the problem. Having HW
initialized with N = 0 would have failed since the beginning, I believe.

In this case the correct fixes would be:
Fixes: 7a29a869434e ("clk: meson: Add support for Meson clock controller")


> Signed-off-by: Remi Pommarel <repk@triplefau.lt>
> ---
>  drivers/clk/meson/clk-pll.c | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/drivers/clk/meson/clk-pll.c b/drivers/clk/meson/clk-pll.c
> index ddb1e5634739..6649659f216a 100644
> --- a/drivers/clk/meson/clk-pll.c
> +++ b/drivers/clk/meson/clk-pll.c
> @@ -66,6 +66,10 @@ static unsigned long __pll_params_to_rate(unsigned long parent_rate,
>  					 (1 << pll->frac.width));
>  	}
>  
> +	/* Avoid by zero division */
> +	if (n == 0)
> +		return 0;

This can only really happen after init, in recalc() rate.

I would much prefer if you could check the n value right after it is
read (meson_parm_read()) in .recalc_rate() and add a comment explaining
that some HW may have this parameter set 0 on init.

> +
>  	return DIV_ROUND_UP_ULL(rate, n);
>  }


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
