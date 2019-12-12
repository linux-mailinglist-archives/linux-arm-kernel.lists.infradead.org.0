Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44B5E11CA5C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 11:16:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=MlYLgCoLLr6M6ZOmF9sVVegC0Drmi5qEXCH0PmKW+2g=; b=A1x74DYoMmU8jv9C9L0u4gcKFZ
	NAddfgY0qyCnmBasce1A7Cse5GN98Kr8ENFSgSQjKWH5bshd4/fRrq15W0gZt1zuJkMdPIk/ytgi/
	fCXOOhOXC3Nz+LTThsICgIu5qcVCHnrcxPLZdbvOZ3V3gKZzwXd/ovY4A1ujdh+SLDQrgmFnvplg+
	BBhygnfLZzAiAhlXwzO7dbxuYg0ZMRNozqTnZ0GlG59aeD0ue7VUqR5iaSFhBKTNJl9y9YEXuWTbr
	HCmXGg9qhXvEvE650jSCXTxfcoeh0R5mNs2fWfkL14clWvqlH8O2xlB8X/s0NozF4dV8vcA9oH/Cm
	ijAfexpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifLWM-0000Ob-3K; Thu, 12 Dec 2019 10:16:34 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifLW2-0000Mh-DB
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 10:16:16 +0000
Received: by mail-wm1-x343.google.com with SMTP id f4so3248540wmj.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Dec 2019 02:16:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=qTx2vi9sq1DjlIujztZ1QG4YIeemlAnEZ4TJMf6wqjQ=;
 b=fZ8ym5wiyLI8tAQ3CrB2XdCDetkueTTgeNnA+AaN85MRT09dekPDn485MKyKMA/n3l
 Ei72d3mF2vDeKdVokKPTnv7wFWIoc0q27jynW1t/FsI6o858s7jF2XEx8H6JniLGX3jK
 7YWbEjESl8QA9Xvia0TBrauiCvlckNBWvgV5MeU4rrgDz9j82ZHSjdMXOUZvxVFGrPof
 jHpsEnnypSevZjaHGHOphZ33lBQ+qTg11x8OZxv/sdOtkaSAu8pJVuBTOiPG7QaeNgxT
 EYQ/9s8c+w55DskN97YHhsfttrlyNdq5A8Ba/F9Rg81AzYw1NPOc3tCxYzCyqT93itCx
 MUtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=qTx2vi9sq1DjlIujztZ1QG4YIeemlAnEZ4TJMf6wqjQ=;
 b=Xe/rEojP2+AX3hNP7dE7vfcFuruog/PS0p7n008aMT62fHoDNQTtAxl1oXt/t54bzA
 09sDXTwZQPJvgqHYo6H/ZER/CcxoJmbUAvjnKfLwZHWn6XQ5kumdx/q9xV+xkemv1k1M
 fqwujZqrvVv1BW35wVMOz52UGS083vor9gFoA+XnggWArdMWEibIIhlFNl+uHiOhO1vI
 7HcM8TrWtD1Qi/8Uk914a6L1hlFGebMI1sYNTkJY5F2EFlGrv0ylkasnB7iJmEEAPunF
 9tteJ8fhXqyDTod/O9+BAkSZvkVVz6Maiq/DTd0S4AyNCfTXT0WnzxstgDiHJIVbt86s
 75Ag==
X-Gm-Message-State: APjAAAVSBUX0VZvBw30iSO/BDIJhjmOmSxPYv0BtCadNfDPSbvscNZvZ
 frClTtot4Y8cTzpqBKQv61F2mg==
X-Google-Smtp-Source: APXvYqy0R5kxieJspDN7DzFwaZMTS8PH2ROLNLU1OkAXMoWb9HYF7YwVXjoZYbV7FUe0sc4Ynpi8vg==
X-Received: by 2002:a1c:407:: with SMTP id 7mr5451329wme.29.1576145773042;
 Thu, 12 Dec 2019 02:16:13 -0800 (PST)
Received: from localhost (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id o4sm5341601wrx.25.2019.12.12.02.16.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Dec 2019 02:16:12 -0800 (PST)
References: <20191206074052.15557-1-jian.hu@amlogic.com>
 <20191206074052.15557-3-jian.hu@amlogic.com>
User-agent: mu4e 1.3.3; emacs 26.2
From: Jerome Brunet <jbrunet@baylibre.com>
To: Jian Hu <jian.hu@amlogic.com>, Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH v4 2/6] clk: meson: add support for A1 PLL clock ops
In-reply-to: <20191206074052.15557-3-jian.hu@amlogic.com>
Date: Thu, 12 Dec 2019 11:16:11 +0100
Message-ID: <1j8snhluhg.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_021614_451332_0E59241B 
X-CRM114-Status: GOOD (  20.16  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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


On Fri 06 Dec 2019 at 08:40, Jian Hu <jian.hu@amlogic.com> wrote:

> The A1 PLL design is different with previous SoCs. The PLL
> internal analog modules Power-on sequence is different
> with previous, and thus requires a strict register sequence to
> enable the PLL.
>
> Signed-off-by: Jian Hu <jian.hu@amlogic.com>
> ---
>  drivers/clk/meson/clk-pll.c | 21 +++++++++++++++++++++
>  drivers/clk/meson/clk-pll.h |  1 +
>  drivers/clk/meson/parm.h    |  1 +
>  3 files changed, 23 insertions(+)
>
> diff --git a/drivers/clk/meson/clk-pll.c b/drivers/clk/meson/clk-pll.c
> index ddb1e5634739..4aff31a51589 100644
> --- a/drivers/clk/meson/clk-pll.c
> +++ b/drivers/clk/meson/clk-pll.c
> @@ -318,6 +318,23 @@ static int meson_clk_pll_enable(struct clk_hw *hw)
>  	struct clk_regmap *clk = to_clk_regmap(hw);
>  	struct meson_clk_pll_data *pll = meson_clk_pll_data(clk);
>  
> +	/*
> +	 * The A1 design is different with previous SoCs.The PLL
> +	 * internal analog modules Power-on sequence is different with
> +	 * previous, and thus requires a strict register sequence to
> +	 * enable the PLL.

The code does something more, not completly different. This comment is
not aligned with what the code does

> +	 */
> +	if (MESON_PARM_APPLICABLE(&pll->current_en)) {
> +		/* Enable the pll */
> +		meson_parm_write(clk->map, &pll->en, 1);
> +		udelay(10);
> +		/* Enable the pll self-adaption module current */
> +		meson_parm_write(clk->map, &pll->current_en, 1);
> +		udelay(40);
> +		meson_parm_write(clk->map, &pll->rst, 1);
> +		meson_parm_write(clk->map, &pll->rst, 0);

Here you enable the PLL and self adaptation module then reset the PLL.
However:
#1 when you enter this function, the PLL should already by in reset
and disabled
#2 the code after that will reset the PLL again

So if what you submited works, inserting the following should accomplish
the same thing:

---8<---
diff --git a/drivers/clk/meson/clk-pll.c b/drivers/clk/meson/clk-pll.c
index 489092dde3a6..9b38df0a7682 100644
--- a/drivers/clk/meson/clk-pll.c
+++ b/drivers/clk/meson/clk-pll.c
@@ -330,6 +330,13 @@ static int meson_clk_pll_enable(struct clk_hw *hw)
        /* Enable the pll */
        meson_parm_write(clk->map, &pll->en, 1);

+       if (MESON_PARM_APPLICABLE(&pll->current_en)) {
+               udelay(10);
+               /* Enable the pll self-adaption module current */
+               meson_parm_write(clk->map, &pll->current_en, 1);
+               udelay(40);
+       }
+
        /* Take the pll out reset */
        meson_parm_write(clk->map, &pll->rst, 0);
--->8---




> +	}
> +
>  	/* do nothing if the PLL is already enabled */
>  	if (clk_hw_is_enabled(hw))
>  		return 0;

In any case, nothing should be done on the clock before this check
otherwise you might just break the clock

> @@ -347,6 +364,10 @@ static void meson_clk_pll_disable(struct clk_hw *hw)
>  
>  	/* Disable the pll */
>  	meson_parm_write(clk->map, &pll->en, 0);
> +
> +	/* Disable PLL internal self-adaption module current */
> +	if (MESON_PARM_APPLICABLE(&pll->current_en))
> +		meson_parm_write(clk->map, &pll->current_en, 0);
>  }
>  
>  static int meson_clk_pll_set_rate(struct clk_hw *hw, unsigned long rate,
> diff --git a/drivers/clk/meson/clk-pll.h b/drivers/clk/meson/clk-pll.h
> index 367efd0f6410..30f039242a65 100644
> --- a/drivers/clk/meson/clk-pll.h
> +++ b/drivers/clk/meson/clk-pll.h
> @@ -36,6 +36,7 @@ struct meson_clk_pll_data {
>  	struct parm frac;
>  	struct parm l;
>  	struct parm rst;
> +	struct parm current_en;
>  	const struct reg_sequence *init_regs;
>  	unsigned int init_count;
>  	const struct pll_params_table *table;
> diff --git a/drivers/clk/meson/parm.h b/drivers/clk/meson/parm.h
> index 3c9ef1b505ce..c53fb26577e3 100644
> --- a/drivers/clk/meson/parm.h
> +++ b/drivers/clk/meson/parm.h
> @@ -20,6 +20,7 @@
>  	(((reg) & CLRPMASK(width, shift)) | ((val) << (shift)))
>  
>  #define MESON_PARM_APPLICABLE(p)		(!!((p)->width))
> +#define MESON_PARM_CURRENT(p)			(!!((p)->width))

Why do we need that ?

>  
>  struct parm {
>  	u16	reg_off;


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
