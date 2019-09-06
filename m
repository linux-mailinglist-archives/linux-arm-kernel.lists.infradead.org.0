Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6151BAC0CB
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 21:46:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I/jGmKuFIAdZYExkud+VTUNGBRW5wr71rDjbCq74Zko=; b=RHnktrp7/siRNQ
	bFaBiPGwC/ZZFiIvXEHJG73B3lYC9DtbW8eatYXFr6i/aADjWsjI2V318D8kzgA0sgSyl6Iw3U64z
	nKQp9u0hF4UTrHIDPmsTKBJPDONuGPgb9tYBjngQsJJHL2Nt5QIr9NDRqpi66ntQC4i7vj/LzPmeL
	T9uSUpy6SEwtpXs8S2TKsio1w1ckZVP+SayNrSkpaEEA9P3/tw6CWkyZLBb6hDE8kZb2QQKbNN/qb
	0+GjsQx4Jo9DiIZ492roeuhd5VPs6TB0btqPtc1hRQdfP03cQJgu0mwahyg4mKufVgZkwyCuOoGKr
	jMBOB1PXro1fDPYihjTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6KBs-0003Ie-Uq; Fri, 06 Sep 2019 19:46:41 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6KBj-0003I9-Na
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 19:46:33 +0000
Received: by mail-qk1-x743.google.com with SMTP id d26so6899421qkk.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Sep 2019 12:46:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=HsrQyq0fSQ6NSNordv4m3ugR52nxCtwTVlUHfUbQ0EI=;
 b=YUqGDAHkNC1LA/qFGmWHHXUhy7OgS3YOmBlvZmolATepPJ+zNPP5giD8aLLP0r1HSy
 dCIT7OwBod1u/izNfI3LKZz3oFN9Ng7NLUdiHIM6EygUgG1HoOPGQIsbpzL/NBCIsXWe
 0SyN6XKhfQ0GFs1PqfP+fXP/erND0Ab26Wvm8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HsrQyq0fSQ6NSNordv4m3ugR52nxCtwTVlUHfUbQ0EI=;
 b=liOIdi6V6aCHxmZ6cFpbwysJuvdHmEJCmemVctobUh1fZaEa6+AGMLAIhQO2+Qf/lc
 sbsxa+2+u61NVFusvePNH7PfqUph9L2BOBt2WavawNcMRvsEO7No8osE35rZ0m3qRSki
 h+IDzvCejmOokXNMpcY5G5xmAx3XvbPzWXzfdTHxmkQeH+WtTgDB3r0rkGKmCnnhIJX6
 oLaIYDURhtGe9jAwHQro+DGbm/W+bJU7Q+QtkXNj7bkSkecOUI8e01tRGq8NOXm1MX0U
 ctGM7DbwQIdh8Ds6MZdM1Djm6usZknExGRFoO73YSQOqcT/C/2ivDQEjVvW4jt+DM8SM
 2p9w==
X-Gm-Message-State: APjAAAX+Z/M02U4I2fcFki2B0lBorrG5JHaleptoaKKlXn90UqaFntxo
 yVsrQu71smXPoqQTyoXxopx1HVYTsTPaprG9zLI=
X-Google-Smtp-Source: APXvYqwNq2ZlKzt+IPAsPeskkSnOA2qCbZo3zhZPKfOkyDsHGhfdMhr7xtW8vDKerDug2KA8rdNL44wm9pzUVYV04yc=
X-Received: by 2002:a37:f61e:: with SMTP id y30mr10837593qkj.208.1567799189999; 
 Fri, 06 Sep 2019 12:46:29 -0700 (PDT)
MIME-Version: 1.0
References: <20190906062623.13354-1-rashmica.g@gmail.com>
In-Reply-To: <20190906062623.13354-1-rashmica.g@gmail.com>
From: Joel Stanley <joel@jms.id.au>
Date: Fri, 6 Sep 2019 19:46:18 +0000
Message-ID: <CACPK8XeAohB1qZsWHaxa0zEJM5jVhvV6PSj0fKajobC5HYbMtg@mail.gmail.com>
Subject: Re: [PATCH v3 2/5] gpio/aspeed: Fix incorrect number of banks
To: Rashmica Gupta <rashmica.g@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_124631_992195_0DCDF28E 
X-CRM114-Status: GOOD (  14.95  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: "moderated list:ARM/ASPEED MACHINE SUPPORT"
 <linux-aspeed@lists.ozlabs.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Andrew Jeffery <andrew@aj.id.au>, Linus Walleij <linus.walleij@linaro.org>,
 open list <linux-kernel@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 "moderated list:ARM/ASPEED MACHINE SUPPORT"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 6 Sep 2019 at 06:26, Rashmica Gupta <rashmica.g@gmail.com> wrote:
>
> The current calculation for the number of GPIO banks is only correct if
> the number of GPIOs is a multiple of 32 (if there were 31 GPIOs we would
> currently say there are 0 banks, which is incorrect).
>
> Fixes: 361b79119a4b7 ('gpio: Add Aspeed driver')
>
> Signed-off-by: Rashmica Gupta <rashmica.g@gmail.com>
> Reviewed-by: Andrew Jeffery <andrew@aj.id.au>

Reviewed-by: Joel Stanley <joel@jms.d.au>

> ---
>  drivers/gpio/gpio-aspeed.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpio/gpio-aspeed.c b/drivers/gpio/gpio-aspeed.c
> index 9defe25d4721..b83e23aecd18 100644
> --- a/drivers/gpio/gpio-aspeed.c
> +++ b/drivers/gpio/gpio-aspeed.c
> @@ -1165,7 +1165,7 @@ static int __init aspeed_gpio_probe(struct platform_device *pdev)
>         gpio->chip.base = -1;
>
>         /* Allocate a cache of the output registers */
> -       banks = gpio->config->nr_gpios >> 5;
> +       banks = DIV_ROUND_UP(gpio->config->nr_gpios, 32);
>         gpio->dcache = devm_kcalloc(&pdev->dev,
>                                     banks, sizeof(u32), GFP_KERNEL);
>         if (!gpio->dcache)
> --
> 2.20.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
