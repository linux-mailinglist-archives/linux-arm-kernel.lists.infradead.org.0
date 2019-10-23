Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 577AEE1505
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 11:01:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=h/QwLTpO8CWWn0F0Nx3/9wYpwCpzWkz1Heha5C4nfUI=; b=E2NBzXbVY0+hDOF/Hx5Kaq1Th/
	wSqCWikPHTiBjC2xbUlDbiYegTFJJYrGqpvvNV4rf+yaqsn8mO58livRu0IP0uf6vD9914keUQ1Fb
	+XiJHWjtXi0T+IrhvSLiXzDMsxGo0goaFiSvm3B2pbR+SozkUvkA5iY3d217Ugr8MYXomV8deRhIc
	IT6Ye4a5XmWSm4C+OF2Wx5LnBErdp4YOATzVdkobfR41m3cfS702EG/dFxOpEQNspD93SPrZ31J5N
	5Z387lhKuwv8I1cRcI7dVvinqyCVDatYP2CNpRAccb9lWXO2eGPo4zEdfLgfuek+UpnM5Khoe6inb
	N2rrM5mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNCWW-0005Ee-DQ; Wed, 23 Oct 2019 09:01:44 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNCWK-0005Dn-7i
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 09:01:34 +0000
Received: by mail-wm1-x341.google.com with SMTP id r19so20317191wmh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 02:01:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=aR0VSMnP4KkB+mkerf85b81/hB0bJCp5/Vkdc4wc6hA=;
 b=uSGIcfd72Gshs/oBfZ73FZmP5Z3y0RcKof9RadYgq/hhgMK47xtr7i8SxIZBsLfb/n
 mp4YdG1UypVdLUHfEmn41sQN3W9BkxDBLPGfII2edwAjhTCFG/HEfUkwMERiXayvpQ4o
 zwbahWSgVszS4hzwda+y5F0MlcuRfUcQrRHRsIOnsFe41ZR9Pc6ptIjfQG8Yt1hp0hOf
 bJJgAJ5BqiYXNQbbPCQ4MYz2o76PN91r6UgUBywdmBv0UFQNRJL7zT76lkh5uq2jpOUi
 j2spGC3yrUV8zaYWmmDQoalQtOoto70fVYiPSzN//fsavpigJ2TXhrW1P76hPwvVgcxY
 f1tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=aR0VSMnP4KkB+mkerf85b81/hB0bJCp5/Vkdc4wc6hA=;
 b=gKAIaLQ6Wd2LfrNH12SnbXi4oYjIal0J7jja0ux4ZhcepYIULPIXePW6XQmU66iHTr
 RjiCQOugTeAEXlpdPH1rDaH6MibCfWVhVsEmDA/kW9jmWTtW3ZO7tN/E2ZiW389DCrFY
 88E7xT6kaXcfIFVkSVIemMX53V4MjJon+S/mAT5DLjmI+OD5HLekgVEU8Wp04QKtA34I
 IN4fvPZYYGRl/d7axO3O7rhvIi9DVedGNjTThJ3NcXhcqK6CZqCIWWKeLMqQldWm1y/p
 nwV68/q2UeHCjWolM9pjfCUQYpInZGhQgrV696Ee9OXgntYDAl6gpDlmo49boG9iJlUr
 ka+w==
X-Gm-Message-State: APjAAAXnUKtcATFVM/OJMWBqhw2DWv3vNym+BqZvPbAEeOqXUuHleKdW
 ZmtUED9SgSK9aTUbizPHPPVsXA==
X-Google-Smtp-Source: APXvYqyvQ8r2oQMybF8/Pj+naPcy6tRL9yoDeCNtwtwGQx9KxbqXPr4d7jlhu11P/1qFpoeyvtA1VQ==
X-Received: by 2002:a1c:7911:: with SMTP id l17mr6675287wme.21.1571821290130; 
 Wed, 23 Oct 2019 02:01:30 -0700 (PDT)
Received: from localhost (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id q25sm5833925wra.3.2019.10.23.02.01.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Oct 2019 02:01:29 -0700 (PDT)
References: <1571050492-6598-1-git-send-email-qianggui.song@amlogic.com>
 <1571050492-6598-3-git-send-email-qianggui.song@amlogic.com>
User-agent: mu4e 1.3.3; emacs 26.2
From: Jerome Brunet <jbrunet@baylibre.com>
To: Qianggui Song <qianggui.song@amlogic.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-gpio@vger.kernel.org
Subject: Re: [PATCH v3 2/4] pinctrl: meson: add a new dt parse callback for
 Meson-A series SoCs
In-reply-to: <1571050492-6598-3-git-send-email-qianggui.song@amlogic.com>
Date: Wed, 23 Oct 2019 11:01:28 +0200
Message-ID: <1j4kzzvnrr.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_020132_276379_4C42A053 
X-CRM114-Status: GOOD (  20.42  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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
Cc: Mark
 Rutland <mark.rutland@arm.com>, Hanjie Lin <hanjie.lin@amlogic.com>, Jianxin
 Pan <jianxin.pan@amlogic.com>, Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>, linux-kernel@vger.kernel.org, Rob
 Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Carlo Caione <carlo@caione.org>, linux-amlogic@lists.infradead.org,
 Xingyu Chen <xingyu.chen@amlogic.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On Mon 14 Oct 2019 at 12:54, Qianggui Song <qianggui.song@amlogic.com> wrote:

> Meson A1 Soc share the same register layout of pinmux with previous
> Meson-G12A, however there is difference for gpio and pin config register
> in A1. The main difference is that registers before A1 are grouped by
> function while those of A1 are by bank. The new register layout is as
> below:
>
> /* first bank */	      /* addr */
> - P_PADCTRL_GPIOP_I         base + 0x00 << 2
> - P_PADCTRL_GPIOP_O         base + 0x01 << 2
> - P_PADCTRL_GPIOP_OEN       base + 0x02 << 2
> - P_PADCTRL_GPIOP_PULL_EN   base + 0x03 << 2
> - P_PADCTRL_GPIOP_PULL_UP   base + 0x04 << 2
> - P_PADCTRL_GPIOP_DS        base + 0x05 << 2
>
> /* second bank */
> - P_PADCTRL_GPIOB_I         base + 0x10 << 2
> - P_PADCTRL_GPIOB_O         base + 0x11 << 2
> - P_PADCTRL_GPIOB_OEN       base + 0x12 << 2
> - P_PADCTRL_GPIOB_PULL_EN   base + 0x13 << 2
> - P_PADCTRL_GPIOB_PULL_UP   base + 0x14 << 2
> - P_PADCTRL_GPIOB_DS        base + 0x15 << 2
>
> Each bank contains at least 6 registers to be configured, if one bank
> has more than 16 gpios, an extra P_PADCTRL_GPIO[X]_DS_EXT is included.
> Between two adjacent P_PADCTRL_GPIO[X]_I, there is an offset 0x10, that
> is to say, for third bank, the offsets will be 0x20,0x21,0x22,0x23,0x24
> ,0x25 according to above register layout. For previous chips, registers
> are grouped according to their functions while registers of A1 are
> according to bank.
>
> Current Meson pinctrl driver can cover such change by using base address
> of GPIO as that of drive-strength.While simply giving reg_ds = reg_pullen
> make wrong value to reg_ds for Socs that do not support drive-strength
> like AXG.To make things simple, add an extra dt parser function for
> a1 or later chip and remain the old dt parser function for old Socs.
>
> Signed-off-by: Qianggui Song <qianggui.song@amlogic.com>
> ---
>  drivers/pinctrl/meson/pinctrl-meson.c | 16 +++++++++++++++-
>  drivers/pinctrl/meson/pinctrl-meson.h |  7 +++++++
>  2 files changed, 22 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/pinctrl/meson/pinctrl-meson.c b/drivers/pinctrl/meson/pinctrl-meson.c
> index 8bba9d053d9f..e8f6298fc96a 100644
> --- a/drivers/pinctrl/meson/pinctrl-meson.c
> +++ b/drivers/pinctrl/meson/pinctrl-meson.c
> @@ -695,6 +695,17 @@ static int meson_pinctrl_parse_dt(struct meson_pinctrl *pc,
>  	return 0;
>  }
>  
> +int meson_pinctrl_parse_dt_extra(struct meson_pinctrl *pc,
> +				 struct device_node *node)

This function is the fixup for the a1 family, AFAICT.
It should be named as such and it belong in pinctrl-meson-a1.c

Every controller performing fixups should have their function as well:
 (1) AO of gxbb, gxl and axg 
 (2) AO of g12 and sm

> +{
> +	int ret;
> +
> +	ret = meson_pinctrl_parse_dt(pc, node);

As said in previous review,  meson_pinctrl_parse_dt() should be called
for every SoC to parse the *available* regions.

The fixup, if necessary, will be done by providing a callback

IOW, please:
 * rework meson_pinctrl_parse_dt() to only parse the avaialble region
 * don't call meson_pinctrl_parse_dt() from the extra function
 * provided the extra function for the AO controllers of the other SoCs

> +	pc->reg_ds = pc->reg_pullen;
> +
> +	return ret;
> +}
> +
>  int meson_pinctrl_probe(struct platform_device *pdev)
>  {
>  	struct device *dev = &pdev->dev;
> @@ -708,7 +719,10 @@ int meson_pinctrl_probe(struct platform_device *pdev)
>  	pc->dev = dev;
>  	pc->data = (struct meson_pinctrl_data *) of_device_get_match_data(dev);
>  
> -	ret = meson_pinctrl_parse_dt(pc, dev->of_node);
> +	if (pc->data->parse_dt)
> +		ret = pc->data->parse_dt(pc, dev->of_node);
> +	else
> +		ret = meson_pinctrl_parse_dt(pc, dev->of_node);
>  	if (ret)



>  		return ret;
>  
> diff --git a/drivers/pinctrl/meson/pinctrl-meson.h b/drivers/pinctrl/meson/pinctrl-meson.h
> index c696f3241a36..0cd6a869cae3 100644
> --- a/drivers/pinctrl/meson/pinctrl-meson.h
> +++ b/drivers/pinctrl/meson/pinctrl-meson.h
> @@ -11,6 +11,8 @@
>  #include <linux/regmap.h>
>  #include <linux/types.h>
>  
> +struct meson_pinctrl;
> +
>  /**
>   * struct meson_pmx_group - a pinmux group
>   *
> @@ -114,6 +116,7 @@ struct meson_pinctrl_data {
>  	unsigned int num_banks;
>  	const struct pinmux_ops *pmx_ops;
>  	void *pmx_data;
> +	int (*parse_dt)(struct meson_pinctrl *pc, struct device_node *node);
>  };
>  
>  struct meson_pinctrl {
> @@ -171,3 +174,7 @@ int meson_pmx_get_groups(struct pinctrl_dev *pcdev,
>  
>  /* Common probe function */
>  int meson_pinctrl_probe(struct platform_device *pdev);
> +
> +/* Extra dt parse function for register layout grouped by bank */
> +int meson_pinctrl_parse_dt_extra(struct meson_pinctrl *pc,
> +				 struct device_node *node);


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
