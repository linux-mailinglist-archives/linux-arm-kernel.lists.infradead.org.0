Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75B644DF90
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 06:20:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=grN4Rmg3nRZNUUtGxFBCA0i+6LbuXcMxMVwW7KPp9o8=; b=QrGYa8liyn4ZpS
	+G0iN88wtj3occJfDI9M85CqDYnU7qD204XmOTIJMuesRx6oq0KM3EgnSTMVC5XcSm8XDOoXSLuHf
	Fbu2Axi3kIhWQBBDbbHJVvy5w0zgshcshb0dr4yp/qb93A/hIjL+DJ6xthsUlraNY1Q++7JwmbzuS
	rUG1za322u7Vp9Wq+Wh6bIRgAvUihRLXKZi7cp/E4XCTZMeiwabe++Nyq+gPzT4Pv2zwbvQ+xs3pO
	zuctoTKRlDENinplKCfNpyXHB4aluDb8ypkd2cHQQkjfs4+jhdqmtjKxSm9vKnPQHalYQFC6+T3Pu
	oMsh//GFsEY4a6NK9ufQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heB2g-0003Vj-Ti; Fri, 21 Jun 2019 04:20:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heB2S-0003VM-Ay; Fri, 21 Jun 2019 04:20:37 +0000
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
 [209.85.221.54])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7507920B1F;
 Fri, 21 Jun 2019 04:20:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561090835;
 bh=prwIjTMabwEr3qse8OU5sFHLYf7QIq1SDJ61Unl5cu4=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=PUjtvdYnjRZ85n2+boZZ9k0pcAQpl5gbLH4chdr3VOnzC2ymZ6RTrHnXvI+Gfwi82
 R3Wq3QS2QMN3ZaDeflueVH8b6m9BqBc9+mtgKpMq5r+KQilk3j5UqxZysFK9h2NWpM
 C7IjdiJujJReLSrX1ny21nxoQJCsa4+GoIF4tzuc=
Received: by mail-wr1-f54.google.com with SMTP id x4so5097129wrt.6;
 Thu, 20 Jun 2019 21:20:35 -0700 (PDT)
X-Gm-Message-State: APjAAAWDT7A1MryxcV78ELke4g+ClZ080ipMa2iXdrWWQRJBYyPfYzi3
 uNv38/xhuFS8/rOeZ3u0nVTiLCeSNN7MvoMQqkw=
X-Google-Smtp-Source: APXvYqyem6YyhVDjXx8VqeVnlAnT6mMzfo+2vIgBSpxxGHHIA0jqkRTx1R2WW6U4OzYACci7P3HmkWXjKBhpGjfJgS8=
X-Received: by 2002:adf:afd5:: with SMTP id y21mr92511949wrd.12.1561090834068; 
 Thu, 20 Jun 2019 21:20:34 -0700 (PDT)
MIME-Version: 1.0
References: <20190429035515.73611-1-drinkcat@chromium.org>
 <20190429035515.73611-3-drinkcat@chromium.org>
In-Reply-To: <20190429035515.73611-3-drinkcat@chromium.org>
From: Sean Wang <sean.wang@kernel.org>
Date: Thu, 20 Jun 2019 21:20:22 -0700
X-Gmail-Original-Message-ID: <CAGp9LzqyRQ0knQ8+NanTAC0VVqBudAFPuCQJiyymmabaT1Hyfw@mail.gmail.com>
Message-ID: <CAGp9LzqyRQ0knQ8+NanTAC0VVqBudAFPuCQJiyymmabaT1Hyfw@mail.gmail.com>
Subject: Re: [PATCH 2/2] pinctrl: mediatek: Update cur_mask in mask/mask ops
To: Nicolas Boichat <drinkcat@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_212036_410328_B72AB9D3 
X-CRM114-Status: GOOD (  20.49  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Chuanjia Liu <Chuanjia.Liu@mediatek.com>,
 Linus Walleij <linus.walleij@linaro.org>, lkml <linux-kernel@vger.kernel.org>,
 Evan Green <evgreen@chromium.org>, Stephen Boyd <swboyd@chromium.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Nicolas

On Sun, Apr 28, 2019 at 8:55 PM Nicolas Boichat <drinkcat@chromium.org> wrote:
>
> During suspend/resume, mtk_eint_mask may be called while
> wake_mask is active. For example, this happens if a wake-source
> with an active interrupt handler wakes the system:
> irq/pm.c:irq_pm_check_wakeup would disable the interrupt, so
> that it can be handled later on in the resume flow.
>
> However, this may happen before mtk_eint_do_resume is called:
> in this case, wake_mask is loaded, and cur_mask is restored
> from an older copy, re-enabling the interrupt, and causing
> an interrupt storm (especially for level interrupts).
>
> Instead, we just record mask/unmask changes in cur_mask. This
> also avoids the need to read the current mask in eint_do_suspend,
> and we can remove mtk_eint_chip_read_mask function.
>

The change is worth rewording the commit message you added above as an instance
and adding Fixes tag as a fixup to mean you're fixing the existing
problem in the driver.

And then Acked-by: Sean Wang <sean.wang@kernel.org>

> Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>
> ---
>  drivers/pinctrl/mediatek/mtk-eint.c | 18 ++++--------------
>  1 file changed, 4 insertions(+), 14 deletions(-)
>
> diff --git a/drivers/pinctrl/mediatek/mtk-eint.c b/drivers/pinctrl/mediatek/mtk-eint.c
> index 737385e86beb807..7e526bcf5e0b55c 100644
> --- a/drivers/pinctrl/mediatek/mtk-eint.c
> +++ b/drivers/pinctrl/mediatek/mtk-eint.c
> @@ -113,6 +113,8 @@ static void mtk_eint_mask(struct irq_data *d)
>         void __iomem *reg = mtk_eint_get_offset(eint, d->hwirq,
>                                                 eint->regs->mask_set);
>
> +       eint->cur_mask[d->hwirq >> 5] &= ~mask;
> +
>         writel(mask, reg);
>  }
>
> @@ -123,6 +125,8 @@ static void mtk_eint_unmask(struct irq_data *d)
>         void __iomem *reg = mtk_eint_get_offset(eint, d->hwirq,
>                                                 eint->regs->mask_clr);
>
> +       eint->cur_mask[d->hwirq >> 5] |= mask;
> +
>         writel(mask, reg);
>
>         if (eint->dual_edge[d->hwirq])
> @@ -217,19 +221,6 @@ static void mtk_eint_chip_write_mask(const struct mtk_eint *eint,
>         }
>  }
>
> -static void mtk_eint_chip_read_mask(const struct mtk_eint *eint,
> -                                   void __iomem *base, u32 *buf)
> -{
> -       int port;
> -       void __iomem *reg;
> -
> -       for (port = 0; port < eint->hw->ports; port++) {
> -               reg = base + eint->regs->mask + (port << 2);
> -               buf[port] = ~readl_relaxed(reg);
> -               /* Mask is 0 when irq is enabled, and 1 when disabled. */
> -       }
> -}
> -
>  static int mtk_eint_irq_request_resources(struct irq_data *d)
>  {
>         struct mtk_eint *eint = irq_data_get_irq_chip_data(d);
> @@ -384,7 +375,6 @@ static void mtk_eint_irq_handler(struct irq_desc *desc)
>
>  int mtk_eint_do_suspend(struct mtk_eint *eint)
>  {
> -       mtk_eint_chip_read_mask(eint, eint->base, eint->cur_mask);
>         mtk_eint_chip_write_mask(eint, eint->base, eint->wake_mask);
>
>         return 0;
> --
> 2.21.0.593.g511ec345e18-goog
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
