Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B44FBE707
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 23:26:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1HxE/26VRUfUGxJkqGNsTu0Mxzo7bpsOnLzsZLi/SGI=; b=S+GCBPKBgKA0iE
	Jq4jXinM9c5CilGcY0/Ao7y2RMU2aJLfOxsbjzkQPrIy443u4kq7sMbbzH2gmlh0QefmhvOtmpCZf
	Q3U23oXMUn0tJtUzongKxp78Lyr1uHbVFnlyD0Jzpdh/BYNJxDzSL1gNV22PKzswd19tJgZstxsvF
	v/xVU21BYlEdQeZDR3GjDjCNRdpr3bRL/Ql8DJNJPZR4S0OZuxoG+9oqY+qRUnP0wgCCFr3CQXqgQ
	MzJTqBy4q7rx7rvPfE2y6ivLKru4+EufrF+kXPJOwtV53NtPtMH/BNPZ68OBWuknxxp/55ESy8Sxl
	gWk7jee8Jl3Hi5b0BkDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDEnQ-0005V6-Sa; Wed, 25 Sep 2019 21:26:00 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDEnC-0005Tm-0J
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 21:25:47 +0000
Received: by mail-pf1-x443.google.com with SMTP id q21so220660pfn.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Sep 2019 14:25:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=1Y1J1Kw/LXYSdUV06b1dy3Hdb52qSoFy0DppBDWha44=;
 b=fDG7GLpWOijl3/znkPByFyhC2Hzp+IvPmDBuEn9x9EfiC8H7q1Mt/fO3YAofHgjPni
 io2vWxqDMyaMj0cJs2bjquKDfDbWJfym4YrTr7UUokWpPqe01xFaXadxSTIRfp9LHBjA
 68atluJ2Q1iKYX3MuXlDh79prBM9tS4F2dHDnm5M7ff+Q6mV+uawWu5WRb85e/yJwerU
 FN+X/Acm1R02RsIVxHPG/5UOnQ3coOZyhOl2cJYKPqUqe2/nlRQ1ffvjKfv6LPUsgE1q
 fEyS1vl+EAQT3pjO4wZBxIEgqOXH4bvMqaM8hvpC3iMSSUQLMek7TioHNItI24HpGDw7
 p1Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=1Y1J1Kw/LXYSdUV06b1dy3Hdb52qSoFy0DppBDWha44=;
 b=Yf0aP7ydrrfqRrWsm1rdLH5TlHZmGsfvgdBWp6OFvYXUK/XUl+5Mmi4r6Szr7+AhO5
 aGNBQ14Pw7zlxsR+gPdUod8rsJawNyDbakxZGY4HuhAU0kUXi/ei3NK1fUz4c6wThP2o
 F09Sr5oi1XmTCoGaPWqfEvNxiiCS3OPP5OFuH8m8D09VOHoV4T8VYLJJ1qmma1imQs22
 sWxz0I1IfD6172F4DbaFg3QSdPj4YKpK/c+WsvGcw3VmnhpPfD9dranynKiv9Dp4vJeA
 n+UzsSmE8OdEpP2IDMDm6qt4ElKql+ypeF8paVZMBqPWZwh27vZ9XzTF6XbfzVWxW6BT
 0pPw==
X-Gm-Message-State: APjAAAXYqRNAoA4eq/kVXOOvXKHX0nNogOZeoFFJudYrjSgDTgpKTU+k
 lj2wYRc3T00zYlAU33Q7DyucIw==
X-Google-Smtp-Source: APXvYqwgUR4Z8HtrG9mlqqRXWQIUNeORyF7p+25oUPoAEWkRMulS2hiRlTY2wV+lUnYfhKuGjxHm6Q==
X-Received: by 2002:a17:90b:d91:: with SMTP id
 bg17mr8643532pjb.79.1569446744835; 
 Wed, 25 Sep 2019 14:25:44 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id 5sm488979pgk.75.2019.09.25.14.25.44
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 25 Sep 2019 14:25:44 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: linux-amlogic@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH 2/2] soc: amlogic: ee-pwrc: ensure driver state maches HW
 state
In-Reply-To: <20190925191233.22253-3-khilman@baylibre.com>
References: <20190925191233.22253-1-khilman@baylibre.com>
 <20190925191233.22253-3-khilman@baylibre.com>
Date: Wed, 25 Sep 2019 14:25:43 -0700
Message-ID: <7hftkkukyw.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_142546_052311_F61065F6 
X-CRM114-Status: GOOD (  18.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Kevin Hilman <khilman@baylibre.com> writes:

> During init, ensure that the driver on/off state as well as clock
> state matches the hardware state by calling drivers on/off functions
> based on whether the HW state is on/off.
>
> Signed-off-by: Kevin Hilman <khilman@baylibre.com>
> ---
>  drivers/soc/amlogic/meson-ee-pwrc.c | 30 +++++++++--------------------
>  1 file changed, 9 insertions(+), 21 deletions(-)
>
> diff --git a/drivers/soc/amlogic/meson-ee-pwrc.c b/drivers/soc/amlogic/meson-ee-pwrc.c
> index dcce8e694a07..2cb5341aedfa 100644
> --- a/drivers/soc/amlogic/meson-ee-pwrc.c
> +++ b/drivers/soc/amlogic/meson-ee-pwrc.c
> @@ -323,6 +323,8 @@ static int meson_ee_pwrc_init_domain(struct platform_device *pdev,
>  				     struct meson_ee_pwrc *pwrc,
>  				     struct meson_ee_pwrc_domain *dom)
>  {
> +	bool is_off;
> +
>  	dom->pwrc = pwrc;
>  	dom->num_rstc = dom->desc.reset_names_count;
>  	dom->num_clks = dom->desc.clk_names_count;
> @@ -356,27 +358,13 @@ static int meson_ee_pwrc_init_domain(struct platform_device *pdev,
>  	dom->base.power_on = meson_ee_pwrc_on;
>  	dom->base.power_off = meson_ee_pwrc_off;
>  
> -	/*
> -         * TOFIX: This is a special case for the VPU power domain, which can
> -	 * be enabled previously by the bootloader. In this case the VPU
> -         * pipeline may be functional but no driver maybe never attach
> -         * to this power domain, and if the domain is disabled it could
> -         * cause system errors. This is why the pm_domain_always_on_gov
> -         * is used here.
> -         * For the same reason, the clocks should be enabled in case
> -         * we need to power the domain off, otherwise the internal clocks
> -         * prepare/enable counters won't be in sync.
> -         */
> -	if (dom->num_clks && dom->desc.is_off && !dom->desc.is_off(dom)) {
> -		int ret = clk_bulk_prepare_enable(dom->num_clks, dom->clks);
> -		if (ret)
> -			return ret;
> -
> -		pm_genpd_init(&dom->base, &pm_domain_always_on_gov, false);
> -	} else
> -		pm_genpd_init(&dom->base, NULL,
> -			      (dom->desc.is_off ?
> -			       dom->desc.is_off(dom) : true));
> +	/* Ensure that driver state matches HW state */
> +	is_off = dom->desc.is_off ? dom->desc.is_off(dom) : true;
> +	if (is_off)
> +		meson_ee_pwrc_off(&dom->base);

Neil pointed out off-list that this isn't quite right.

This _off() call can potentially try to disable clocks that have never
been enabled (by the clock fwk) resulting in noisy warnings.

I'll send a v2 which always calls _on() and then optionall calls _off().
That will ensure that the drivers notion of the clock state also matches
the HW state.

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
