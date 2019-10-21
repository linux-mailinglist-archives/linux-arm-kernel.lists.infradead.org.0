Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86549DEAF6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 13:31:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=jDG+Ahf6W8N6Xmf5f4Usgny4FsBpUPVizoLIqzxj8wc=; b=Eg4/4fZXdX792toAEIE0tFxcC6
	/eeCQNWwKohqUBYeCXPqEXuvO5zOBFu8oydj1V1zQxBXn8hU1XYWtjB5ax6X6IpYWs+Jiz7g/sfIy
	8+rmdzn4EYOF+SqHkyGSJHoMCQLYUTm5xWQVpROIu5Xb02WQHuNE69k65iwpYZ+FKiXI2WCwszMIS
	mku/kfgoKkYOWN6GjQUJcgO5t/yE9l/63Z9eySmjTqbQZ5uObMm2rjqTWpUUP/c0pOMIHry0iO+ph
	zyDjX9H9M+9g/Cw30wZeT//HhcBIN7mu9PA2Z0eeRF9M/LjXAxWAsHIskLOedIGhLo5Wa7XrU89da
	nTA5bm0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMVuc-0001Sy-Uw; Mon, 21 Oct 2019 11:31:47 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMVuR-0001SC-R2
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 11:31:37 +0000
Received: by mail-wm1-x342.google.com with SMTP id c22so3289730wmd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 04:31:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=HROsPL2ByDXym6i/NHIHjJkM5kNiw9jG1m8a8LCeIIQ=;
 b=PvVi5E3b/QEtjs/7GPTJkHEgTng108xrwCrEq3OeVnQI/O2sSx9Y5Hr8Q8GGsQ0k2c
 OwivZCXGkcoAyDW3o+/DoYU75IjkTvv2Qpi4X94sUOe+LMSI0rFp0pwmRduwBWfM6qDj
 KK+spBf+D/bMw2wS+NIGSJTt+0iIVP+gqX5uEuC7cI1X+n1WypYrGryTFXxeI6FTVmEb
 qlwTGE5oFYvkYi4YEZXNFQ3kq8Aehp1No+gJ9JrI2dYSj+R+rWT7o2z/M8UQSU7wRn2F
 TsO2LqfKosoQW6t9QnXaMW9J3LCu4QPbJisQNIA/eQ79jMD+g8nih6SrmAFJsQV5H20r
 aY6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=HROsPL2ByDXym6i/NHIHjJkM5kNiw9jG1m8a8LCeIIQ=;
 b=FundE2/ijTnUdyAcMhF80ePG0f+cdQx63lptFWifxwKiGfa34Rjw39uKDWFwEos/c1
 7JhRfo+ySkVQ8xe30ye5jyRSatoKmgH5r+osoUFd2x0cop+EElkuWa8BFH/8GjYkDFiZ
 KRV9f5HyKZPJ6LGEuhvlR/9XQzvl2uAf3M7y4Kajn7Eh7GamnBkxlvU8JxoWxYBE8jiA
 U/JWmOGtcqCS7b9pCvdWmf64aiKMjghVg0f1Wk0XJix9gI2K/HRw/qg9hegr8Ud0vIaB
 BAZCeWWA23/NfuRX3BLNK6jlOOc84c2fgrnVuY4A225NhrdwwD5gi/Nwd/ipfRSSGgPu
 NO5Q==
X-Gm-Message-State: APjAAAUN7PKnDPrmpD3mUKHKojYjoazxQlYQFDwkDMEAsHizZJKFnUId
 Q0RLTKLJpe9b5xfG/rK9VXHKew==
X-Google-Smtp-Source: APXvYqz1au/AUOhj6ismuX2RR7PZXMJCNaAO/iedIYnZZsH6iJy5FEzKuwxsm7YEMvrMJQEsfA7hCQ==
X-Received: by 2002:a05:600c:1107:: with SMTP id
 b7mr20230104wma.151.1571657494379; 
 Mon, 21 Oct 2019 04:31:34 -0700 (PDT)
Received: from localhost (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id e3sm13450131wme.39.2019.10.21.04.31.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Oct 2019 04:31:33 -0700 (PDT)
References: <1571382865-41978-1-git-send-email-jian.hu@amlogic.com>
 <1571382865-41978-3-git-send-email-jian.hu@amlogic.com>
User-agent: mu4e 1.3.3; emacs 26.2
From: Jerome Brunet <jbrunet@baylibre.com>
To: Jian Hu <jian.hu@amlogic.com>, Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH v2 2/3] clk: meson: add support for A1 PLL clock ops
In-reply-to: <1571382865-41978-3-git-send-email-jian.hu@amlogic.com>
Date: Mon, 21 Oct 2019 13:31:32 +0200
Message-ID: <1jtv82bai3.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_043135_879490_B691B07F 
X-CRM114-Status: GOOD (  25.25  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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


On Fri 18 Oct 2019 at 09:14, Jian Hu <jian.hu@amlogic.com> wrote:

> The A1 PLL design is different with previous SoCs. The PLL
> internal analog modules Power-on sequence is different
> with previous, and thus requires a strict register sequence to
> enable the PLL. Unlike the previous series, the maximum frequency
> is 6G in G12A, for A1 the maximum is 1536M.
>
> Signed-off-by: Jian Hu <jian.hu@amlogic.com>
> ---
>  drivers/clk/meson/clk-pll.c | 66 ++++++++++++++++++++++++++++++++++++++++-----
>  drivers/clk/meson/clk-pll.h |  1 +
>  2 files changed, 61 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/clk/meson/clk-pll.c b/drivers/clk/meson/clk-pll.c
> index ddb1e56..b440e62 100644
> --- a/drivers/clk/meson/clk-pll.c
> +++ b/drivers/clk/meson/clk-pll.c
> @@ -349,6 +349,56 @@ static void meson_clk_pll_disable(struct clk_hw *hw)
>  	meson_parm_write(clk->map, &pll->en, 0);
>  }
>  
> +/*
> + * The A1 design is different with previous SoCs.The PLL
> + * internal analog modules Power-on sequence is different with
> + * previous, different PLL has the different sequence, and
> + * thus requires a strict register sequence to enable the PLL.
> + * When set a new target frequency, the sequence should keep
> + * the same with the initial sequence. Unlike the previous series,
> + * the maximum frequency is 6G in G12A, for A1 the maximum
> + * is 1536M.

The comment about the max frequency belongs in your a1 driver, not in
the PLL driver

> + */
> +static void meson_params_update_with_init_seq(struct clk_regmap *clk,
> +				       struct meson_clk_pll_data *pll,
> +				       unsigned int m, unsigned int n,
> +				       unsigned int frac)
> +{
> +	struct parm *pm = &pll->m;
> +	struct parm *pn = &pll->n;
> +	struct parm *pfrac = &pll->frac;
> +	const struct reg_sequence *init_regs = pll->init_regs;
> +	unsigned int i, val;
> +
> +	for (i = 0; i < pll->init_count; i++) {
> +		if (pn->reg_off == init_regs[i].reg) {
> +			/* Clear M N bits and Update M N value */
> +			val = init_regs[i].def;
> +			val &= CLRPMASK(pn->width, pn->shift);
> +			val &= CLRPMASK(pm->width, pm->shift);
> +			val |= n << pn->shift;
> +			val |= m << pm->shift;
> +			regmap_write(clk->map, pn->reg_off, val);
> +		} else if (MESON_PARM_APPLICABLE(&pll->frac) &&
> +			   (pfrac->reg_off == init_regs[i].reg)) {
> +			/* Clear Frac bits and Update Frac value */
> +			val = init_regs[i].def;
> +			val &= CLRPMASK(pfrac->width, pfrac->shift);
> +			val |= frac << pfrac->shift;
> +			regmap_write(clk->map, pfrac->reg_off, val);
> +		} else {
> +			/*
> +			 * According to the PLL hardware constraint,
> +			 * the left registers should be setted again.
> +			 */
> +			val = init_regs[i].def;
> +			regmap_write(clk->map, init_regs[i].reg, val);
> +		}
> +		if (init_regs[i].delay_us)
> +			udelay(init_regs[i].delay_us);
> +	}

So:

1) All the code above this there make the PLL lock, IOW enable the
PLL. It does not belong in the set_rate() callback but in enable() or
prepare() maybe.

2) All the above is works but it is a bit over complicated for what it
does. From the a1_hifi_init_regs I see, all you really need to do is
  * toggle BIT(6) in CTRL2
  * toggle BIT(28) in CTRL0 (enable PARM)
  * toggle BIT(26) in CTRL0

You could use PARM 'rst' for one them and introduce another parm for the
other one. You would not need to repoke the whole sequence this way.

> +}
> +
>  static int meson_clk_pll_set_rate(struct clk_hw *hw, unsigned long rate,
>  				  unsigned long parent_rate)
>  {
> @@ -366,16 +416,20 @@ static int meson_clk_pll_set_rate(struct clk_hw *hw, unsigned long rate,
>  	if (ret)
>  		return ret;
>  
> +	if (MESON_PARM_APPLICABLE(&pll->frac))
> +		frac = __pll_params_with_frac(rate, parent_rate, m, n, pll);
> +
>  	enabled = meson_parm_read(clk->map, &pll->en);
>  	if (enabled)
>  		meson_clk_pll_disable(hw);
>  
> -	meson_parm_write(clk->map, &pll->n, n);
> -	meson_parm_write(clk->map, &pll->m, m);
> -
> -	if (MESON_PARM_APPLICABLE(&pll->frac)) {
> -		frac = __pll_params_with_frac(rate, parent_rate, m, n, pll);
> -		meson_parm_write(clk->map, &pll->frac, frac);
> +	if (pll->strict_sequence)
> +		meson_params_update_with_init_seq(clk, pll, m, n, frac);
> +	else {
> +		meson_parm_write(clk->map, &pll->n, n);
> +		meson_parm_write(clk->map, &pll->m, m);
> +		if (MESON_PARM_APPLICABLE(&pll->frac))
> +			meson_parm_write(clk->map, &pll->frac, frac);
>  	}
>  
>  	/* If the pll is stopped, bail out now */
> diff --git a/drivers/clk/meson/clk-pll.h b/drivers/clk/meson/clk-pll.h
> index 367efd0..d5789cef 100644
> --- a/drivers/clk/meson/clk-pll.h
> +++ b/drivers/clk/meson/clk-pll.h
> @@ -41,6 +41,7 @@ struct meson_clk_pll_data {
>  	const struct pll_params_table *table;
>  	const struct pll_mult_range *range;
>  	u8 flags;
> +	bool strict_sequence;

Don't introduce parameter for this We have ops to tune the behavior of
the clock driver. Properly refactor the code if some of it is common.

>  };
>  
>  extern const struct clk_ops meson_clk_pll_ro_ops;


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
