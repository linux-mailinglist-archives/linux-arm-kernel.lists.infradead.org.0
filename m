Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9DD11518C3
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Feb 2020 11:24:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=CSCUmVhdWG0hD4sYW4tk2nsuKqCmnn8sCD36l8BKX5o=; b=MJYt1GVRXINWvSUQOmKjpiVQZW
	GlArNvjT6nKwQNTyQ7yyrZNQUymDhLoLhEJzfz3IR3AqMeBWgfSCMGq1C8z/lW4DsxQEKOprMct2T
	Ygmvy+FHvoCO7BRU2CJ2NbqmQrpMN7aKy6sOFSAOgooQlP4nX8HzP5lgfgO/WPrmr4wj1RpMBsX39
	NN4zCpdtdQVzJ9ltWRKpkPhhPxUEFs+LBsCxPHDBLCQVwA0jhBBMpOdF7aWJ+m1CGDXu2tut1K4yt
	sqU5M0ngMI/kE7rs+62NLPlNHJcRsCTuCZyUUvoRzsgKV3P6t/ueynqx7Yqgb8O8XDDG6zo9gOPc+
	1xERCdLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyvNW-0005Dq-Kh; Tue, 04 Feb 2020 10:24:22 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyvNP-0005D9-Cf
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Feb 2020 10:24:17 +0000
Received: by mail-wm1-x342.google.com with SMTP id g1so2589429wmh.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Feb 2020 02:24:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=8Di6ASz/+t9ylQNviPiHg7bITLqqjwAhj0GpBFWGF/Y=;
 b=zOJkzAerIaHwyYFLOkvre+8Qel5FfFWyLAwjT6oztmUPSWMBUpaRiuuplB0HFoifef
 uiigqpqIXh2LT6Bm513iJXh3B1a0FguRcPs+J9BOrkRzeLiyT3fHcq+WGk6snS0jRxmY
 E/Vc5Vu20XZqZeqhKT3M1DPCX/6fpUpUyRExjkCWgN/axnj305t2H7W21yNVd3nS9tvv
 pqnqRKNSX0WMaOcvpWJczoqPQ8S3EmeOBJsUy2Xer+689hvsS6sikQ8QseRE7yiaz2Dm
 epujVaVZCVK9od8xZpdnlhVYcZ3zaHCkXlRDymuRd7p9wzEQb0NJwVzvwzkVKnNysoT1
 dqbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=8Di6ASz/+t9ylQNviPiHg7bITLqqjwAhj0GpBFWGF/Y=;
 b=mM0FVn9W8hfsZ5PNYQWaaVhtINeSrLiIvXPAdkc5ruvQ0iJM49JaA2nTWek5k4DFFi
 2XqnvF+mHV2FEuFXAvNJRKFl14mcrTgG5zKVUwNThguMZ/9L0xDnWqy/cZl8BkyFy/7K
 l6jPtd8VyPOjDSzvRzHQ5dBUKBjwyN3CU5j9DkIKpCDnLl/Faqvd/mXDZuwsE0qFfleW
 6bQHPtcjWOjLSpAbDNy9HoZtXvZU+CyVS/UjHAoYCKAPyYpCJqaz/w0pH8bvOoTVXoTR
 +adDxv3dS/UqVOWgv0/+xwicCsAgOW34tVGF/L+3M/6YFS3Ul/5tHOx1T/17pjE1SHoy
 zlpQ==
X-Gm-Message-State: APjAAAXXJSncjtaa9zvHgLgwqEu71PK4AB9hrltTXrr7dGybAOUK2Wxn
 CJ1H5GJXP9IKT6V5DM6PWq6UvQ==
X-Google-Smtp-Source: APXvYqwwqM9TCMtr6da/jGSKzvje6iPqSV8lHHCFcFwGr4zlwY6+j32lU1xiv+kbQye4qsnhRqFCTg==
X-Received: by 2002:a05:600c:2383:: with SMTP id
 m3mr5242375wma.32.1580811853170; 
 Tue, 04 Feb 2020 02:24:13 -0800 (PST)
Received: from localhost (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id l17sm28626715wro.77.2020.02.04.02.24.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 Feb 2020 02:24:12 -0800 (PST)
References: <20200120034937.128600-1-jian.hu@amlogic.com>
 <20200120034937.128600-3-jian.hu@amlogic.com>
User-agent: mu4e 1.3.3; emacs 26.3
From: Jerome Brunet <jbrunet@baylibre.com>
To: Jian Hu <jian.hu@amlogic.com>, Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH v7 2/5] clk: meson: add support for A1 PLL clock ops
In-reply-to: <20200120034937.128600-3-jian.hu@amlogic.com>
Date: Tue, 04 Feb 2020 11:24:11 +0100
Message-ID: <1jftfq7ir8.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_022415_433502_A2A8F858 
X-CRM114-Status: GOOD (  21.83  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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
Cc: Rob Herring <robh@kernel.org>, Victor Wan <victor.wan@amlogic.com>,
 Jianxin Pan <jianxin.pan@amlogic.com>, devicetree@vger.kernel.org,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Qiufang Dai <qiufang.dai@amlogic.com>,
 Chandle Zou <chandle.zou@amlogic.com>, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On Mon 20 Jan 2020 at 04:49, Jian Hu <jian.hu@amlogic.com> wrote:

> Compared with the previous SoCs, self-adaption current module
> is newly added for A1, and there is no reset parm except the
> fixed pll. In A1 PLL, the PLL enable sequence is different, using
> the new power-on sequence to enable the PLL.

Things are getting clearer thanks to Martin's suggestions and I can
understand what your driver is doing now

However, I still have a problem with the fact that 2 different pll types
are getting intertwined in this driver. Parameters mandatory to one is
made optional to the other. Nothing clearly shows which needs what and
the combinatorial are quickly growing.

Apparently the only real difference is in enable/disable, So I would
prefer if the a1 had dedicated function for these ops.

I suppose you'll have to submit clk_hw_enable() and clk_hw_disable()
to the framework to call the appropriate ops dependind on the SoC.

>
> Signed-off-by: Jian Hu <jian.hu@amlogic.com>
> Acked-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> ---
>  drivers/clk/meson/clk-pll.c | 47 +++++++++++++++++++++++++++++++------
>  drivers/clk/meson/clk-pll.h |  2 ++
>  2 files changed, 42 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/clk/meson/clk-pll.c b/drivers/clk/meson/clk-pll.c
> index ddb1e5634739..10926291440f 100644
> --- a/drivers/clk/meson/clk-pll.c
> +++ b/drivers/clk/meson/clk-pll.c
> @@ -283,10 +283,14 @@ static void meson_clk_pll_init(struct clk_hw *hw)
>  	struct meson_clk_pll_data *pll = meson_clk_pll_data(clk);
>  
>  	if (pll->init_count) {
> -		meson_parm_write(clk->map, &pll->rst, 1);
> +		if (MESON_PARM_APPLICABLE(&pll->rst))
> +			meson_parm_write(clk->map, &pll->rst, 1);
> +

replace by
        enabled = clk_hw_is_enabled(hw)
        if (enabled)
           clk_hw_disable(hw)

>  		regmap_multi_reg_write(clk->map, pll->init_regs,
>  				       pll->init_count);
> -		meson_parm_write(clk->map, &pll->rst, 0);
> +
> +		if (MESON_PARM_APPLICABLE(&pll->rst))
> +			meson_parm_write(clk->map, &pll->rst, 0);

       /* restore if necessary */
       if (enabled)
          clk_hw_enable(hw)

>  	}
>  }
>  
> @@ -295,8 +299,11 @@ static int meson_clk_pll_is_enabled(struct clk_hw *hw)
>  	struct clk_regmap *clk = to_clk_regmap(hw);
>  	struct meson_clk_pll_data *pll = meson_clk_pll_data(clk);
>  
> -	if (meson_parm_read(clk->map, &pll->rst) ||
> -	    !meson_parm_read(clk->map, &pll->en) ||
> +	if (MESON_PARM_APPLICABLE(&pll->rst) &&
> +	    meson_parm_read(clk->map, &pll->rst))
> +		return 0;
> +
> +	if (!meson_parm_read(clk->map, &pll->en) ||
>  	    !meson_parm_read(clk->map, &pll->l))
>  		return 0;

I suppose the pll can't be locked if it was in reset, so we could drop
the check on `rst` entirely to simplify the function

>  
> @@ -323,13 +330,34 @@ static int meson_clk_pll_enable(struct clk_hw *hw)
>  		return 0;
>  
>  	/* Make sure the pll is in reset */
> -	meson_parm_write(clk->map, &pll->rst, 1);
> +	if (MESON_PARM_APPLICABLE(&pll->rst))
> +		meson_parm_write(clk->map, &pll->rst, 1);
>  
>  	/* Enable the pll */
>  	meson_parm_write(clk->map, &pll->en, 1);
>  
>  	/* Take the pll out reset */
> -	meson_parm_write(clk->map, &pll->rst, 0);
> +	if (MESON_PARM_APPLICABLE(&pll->rst))
> +		meson_parm_write(clk->map, &pll->rst, 0);
> +
> +	/*
> +	 * Compared with the previous SoCs, self-adaption current module
> +	 * is newly added for A1, keep the new power-on sequence to enable the
> +	 * PLL. The sequence is:
> +	 * 1. enable the pll, delay for 10us
> +	 * 2. enable the pll self-adaption current module, delay for 40us
> +	 * 3. enable the lock detect module
> +	 */
> +	if (MESON_PARM_APPLICABLE(&pll->current_en)) {
> +		udelay(10);
> +		meson_parm_write(clk->map, &pll->current_en, 1);
> +		udelay(40);
> +	};
> +
> +	if (MESON_PARM_APPLICABLE(&pll->l_detect)) {
> +		meson_parm_write(clk->map, &pll->l_detect, 1);
> +		meson_parm_write(clk->map, &pll->l_detect, 0);
> +	}
>  
>  	if (meson_clk_pll_wait_lock(hw))
>  		return -EIO;
> @@ -343,10 +371,15 @@ static void meson_clk_pll_disable(struct clk_hw *hw)
>  	struct meson_clk_pll_data *pll = meson_clk_pll_data(clk);
>  
>  	/* Put the pll is in reset */
> -	meson_parm_write(clk->map, &pll->rst, 1);
> +	if (MESON_PARM_APPLICABLE(&pll->rst))
> +		meson_parm_write(clk->map, &pll->rst, 1);
>  
>  	/* Disable the pll */
>  	meson_parm_write(clk->map, &pll->en, 0);
> +
> +	/* Disable PLL internal self-adaption current module */
> +	if (MESON_PARM_APPLICABLE(&pll->current_en))
> +		meson_parm_write(clk->map, &pll->current_en, 0);
>  }

With the above clarified, it should be easy to properly split the
functions between the legacy type and the a1 type.

You'll need to update meson_clk_pll_set_rate() to call
 - clk_hw_is_enabled()
 - clk_hw_enable() and clk_hw_disable() (again, you'll need to add
 those in the framework first)

>  
>  static int meson_clk_pll_set_rate(struct clk_hw *hw, unsigned long rate,
> diff --git a/drivers/clk/meson/clk-pll.h b/drivers/clk/meson/clk-pll.h
> index 367efd0f6410..a2228c0fdce5 100644
> --- a/drivers/clk/meson/clk-pll.h
> +++ b/drivers/clk/meson/clk-pll.h
> @@ -36,6 +36,8 @@ struct meson_clk_pll_data {
>  	struct parm frac;
>  	struct parm l;
>  	struct parm rst;
> +	struct parm current_en;
> +	struct parm l_detect;
>  	const struct reg_sequence *init_regs;
>  	unsigned int init_count;
>  	const struct pll_params_table *table;


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
