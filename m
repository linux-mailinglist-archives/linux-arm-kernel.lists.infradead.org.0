Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83D71B7A02
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 15:02:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=38XPqfa+QetNXOPSAjKHZS9MV/Y15g1icUAxws9X29g=; b=uV4MO4rb0mceqG
	hIt3BaT1eeVdSOFm1TbZ0Z+cm+AueUteKE6d/OFusN2QLrC5psIfW6fmdxUoPy1b4CbsOTXHMQHLM
	ooI9tapytMuq0BB+1MLyskYmGvrIDW2ceJAcQ92Qq0nOjCF3XyWiFOOSUXn3CcPTIW/t6ZenCA1n1
	UGv9G6hmKN+UdVxdSPnqUYQgtgy8jG+Tz+4kq0XoRI5JC7xON6fDiUmP4WE7zCzPKqdzlEZTMWzhk
	XTwTOmKnX/hEEhY1HPodqzRZGQ4ExDb36VRESWUaSfSwoidc90twEJksfxCsoIZT7xZvwC0dglHtX
	ffU8fWeePCcxgmI5lfZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAw4O-00041a-VA; Thu, 19 Sep 2019 13:02:01 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAw3w-00040U-3k
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 13:01:34 +0000
Received: by mail-wr1-x444.google.com with SMTP id v8so3032592wrt.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Sep 2019 06:01:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=T/oUm0WVxShCr4Uz7hk8J9IALquJO7fiM1qSUhv05Fw=;
 b=hn5FeatfnL4cSmnI9pQY3P9osYNKz/jSMr9nvitnLWGqkM6yvb/KGWYyxLf0EWZMEI
 KgwmvOwSr91t9Mdl7+1BaWEye0QJfGIrTU3vNMygFbaStWk0TycOssQlLpCEvM/clXy+
 3c3DwwJsbMG7A8Q9+NOW0CeeOeSpBuu+QCb79uhRFq52xorUxM7W5ZX6CRCE0mcZhwO7
 ervFdUK+7qMMaDaMDg9nDlOQ4Qdivk2ccaWWMpBlMbmTOcQmIvHKqKAi5f2OioQOt96K
 6MzEc5hr0Hxo8IPf6+sVZSw0qiqkjUIhdcrxZWM2/ugwrQApKhoIZA2uC/hFihcP+ihK
 Wwzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=T/oUm0WVxShCr4Uz7hk8J9IALquJO7fiM1qSUhv05Fw=;
 b=P/SZypDk1a1dTp8UAm9XXWuHQvsjBTw56HsUmgh8WqOgi28XaRo+WrHCYs1pnrQgC1
 zKqKKEcU9potxQYN13m5D6WQuOs29xzRzUi5hS9HLve8FvgnD0YZK9ViGl0pK9gzmzEO
 VDMcna3HX/uFqPYhUXD10E5hb+z0HZH6W0PMRVyYA7Mcylh74m435Bt8wzN8cbmp3Ewf
 ZdwfUdyp2gH004mLPlzMaoz4LNVcm9huxP8Q2DtCN0jpw+qg2nSiNyPFKlQVL88MbccM
 6e+UsrtdxualTIIxKMdsM0Ua0396WF3WB9DmuKvFpLtbHEojQcz3PQUKdat2ATNqiWMV
 o9CQ==
X-Gm-Message-State: APjAAAV8w18R0P64XySFTVTmw/Xwhn8c/h/i1MqCC7xzTKYDGAjLBv9k
 LOT6J16H0qH+eIEesBa22z+bhA==
X-Google-Smtp-Source: APXvYqxKBAJr87TccDhptPDgvDzaS8VrHoiGhYT2TmlGfQgTSWUsboVo13NiIL/acFFfMXMWH02NEg==
X-Received: by 2002:adf:e485:: with SMTP id i5mr1971966wrm.175.1568898090150; 
 Thu, 19 Sep 2019 06:01:30 -0700 (PDT)
Received: from localhost (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id a18sm20259922wrh.25.2019.09.19.06.01.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Sep 2019 06:01:29 -0700 (PDT)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>, Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH 3/3] clk: meson: clk-pll: always enable a critical PLL
 when setting the rate
In-Reply-To: <20190919093809.21364-1-narmstrong@baylibre.com>
References: <20190919093627.21245-1-narmstrong@baylibre.com>
 <20190919093809.21364-1-narmstrong@baylibre.com>
Date: Thu, 19 Sep 2019 15:01:28 +0200
Message-ID: <1j1rwce8yf.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_060132_479145_575A5F3F 
X-CRM114-Status: GOOD (  23.60  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu 19 Sep 2019 at 11:38, Neil Armstrong <narmstrong@baylibre.com> wrote:

> Make sure we always enable a PLL on a set_rate() when the PLL is
> flagged as critical.
>
> This fixes the case when the Amlogic G12A SYS_PLL gets disabled by the
> PSCI firmware when resuming from suspend-to-memory, in the case
> where the CPU was not clocked by the SYS_PLL, but by the fixed PLL
> fixed divisors.
> In this particular case, when changing the PLL rate, CCF doesn't handle
> the fact the PLL could have been disabled in the meantime and set_rate()
> only changes the rate and never enables it again.
>
> Fixes: d6e81845b7d9 ("clk: meson: clk-pll: check if the clock is already enabled')
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> ---
>  drivers/clk/meson/clk-pll.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/clk/meson/clk-pll.c b/drivers/clk/meson/clk-pll.c
> index ddb1e5634739..8c5adccb7959 100644
> --- a/drivers/clk/meson/clk-pll.c
> +++ b/drivers/clk/meson/clk-pll.c
> @@ -379,7 +379,7 @@ static int meson_clk_pll_set_rate(struct clk_hw *hw, unsigned long rate,
>  	}
>  
>  	/* If the pll is stopped, bail out now */
> -	if (!enabled)
> +	if (!(hw->init->flags & CLK_IS_CRITICAL) && !enabled)

This is surely a work around to the issue at hand but:

* Enabling the clock, critical or not, should not be done but the
set_rate() callback. This is not the purpose of this callback.

* Enabling the clock in such way does not walk the tree. So, if there is
ever another PSCI Fw which disable we would get into the same issue
again. IOW, This is not specific to the PLL driver so it should not have
to deal with this.

Since this clock can change out of CCF maybe it should be marked with
CLK_GET_RATE_NOCACHE ?

When CCF hits a clock with CLK_GET_RATE_NOCACHE while walking the tree,
in addition to to calling get_rate(), CCF could also call is_enabled()
if the clock has CLK_IS_CRITICAL and possibly .enable() ?

Stephen, what do you think ?

>  		return 0;
>  
>  	if (meson_clk_pll_enable(hw)) {
> -- 
> 2.22.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
