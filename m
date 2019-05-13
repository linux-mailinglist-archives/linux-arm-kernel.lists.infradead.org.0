Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D0D81BF79
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 00:30:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-ID:To:Subject:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6JXdemdLGVbTA15YqYndNgNwxqQ9lVnfOvt1JPvSTU8=; b=AQH1ElZ1yaixK+
	sqZPD7YI9Bk1GPLbjQMj1BBPsQevJWz8xMPOGyaCTjSVrBlptgtW+DJVd1osTzC57eFx+IR1b7oB2
	3pwTTNkKiudpH6/3gE6Or53LHmX+p/eTLcXiQnaM/npLneBNi8G6jx1Y6Y3vPv6Oe86mVevKg4+kZ
	H2eWLigPrHRL/t6yT/DDro6v1ty8wfs/sJBJTzQJ0mbZFxW0MFLMA3naVkXlFjKgNuxEY7YZdzeXW
	XVthe3Q8eJAWryTuPTfWwf9ybWBDFe5P9jth1AHI7c3doUEXhhQvT9IqqqsmLcKriNIfitxcalN1M
	xkZeD6wKsyo4+wpYMvPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQJSS-00029v-Re; Mon, 13 May 2019 22:30:08 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQJSH-00028y-AZ
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 22:29:58 +0000
Received: by mail-pl1-x643.google.com with SMTP id b3so7171806plr.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 May 2019 15:29:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:content-transfer-encoding:in-reply-to:references:from
 :subject:cc:to:message-id:user-agent:date;
 bh=ETQhQAaaEpynYwTuUBGU6E1kF1yOq255ZbmhFrac2JY=;
 b=lCF4YE1X1gC3tjBCZVAp3rx/olsWV+J0XAb6jJx7FkuG9YOdGM/BbF8eJHo/allGDv
 Xza4Bszn9mZYOtgpPYXpRbmXa0YiZXqUmAIf+TdTK41cPnxeyXgD1nTVhOEyntS6On/y
 dZSHK3jML6Vc39MREPTHKjqPL4lmey9RcItFE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:content-transfer-encoding
 :in-reply-to:references:from:subject:cc:to:message-id:user-agent
 :date;
 bh=ETQhQAaaEpynYwTuUBGU6E1kF1yOq255ZbmhFrac2JY=;
 b=n4e8QCAYUK1J7H3e0QWLtvv6TUTiafXAWGkKZUqrckDR0JiDI+LzM5LohoXW3hMQrC
 lvyKhYUBEhxYHKKzCLCmDTL5WO+OrTcS4zbWpw2EZPq49UI3KTEUXcjbFErPcneZqLey
 cNJ27b3V/BTBJOcfteCZfq59l7GC1KQ/sL+Pb7sA3xqHg0fGIoNfbS4SqUu4paFNHXUd
 eYUHCTUBmXmdAnbVTrQMJH+5HdeDwCIaHa3gYaK61UzjkS01HvwEiB/f6siy57FPN2zs
 B0VFw5jlNnIam3eyylFPO9Ap9+zu46fEChYo/cmB4n5xSWXuvdLx1kZeSpwBybqooTG0
 fezA==
X-Gm-Message-State: APjAAAVWlFV1o/Mt0vJ/eGDI0q8Um+plj/D/rcI99eofsKobdriKkNaB
 gBG8tGir3FkQx78M/rje8h+2fA==
X-Google-Smtp-Source: APXvYqySS1GyiV5EFWAvvxpDWM4HKOFcG2K2g8mylOnrI7fyLakxzGwBsPFhohtLtxgeH0oftSnzmQ==
X-Received: by 2002:a17:902:f096:: with SMTP id
 go22mr35230296plb.49.1557786594965; 
 Mon, 13 May 2019 15:29:54 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id f87sm21668997pff.56.2019.05.13.15.29.53
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 13 May 2019 15:29:54 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20190429035515.73611-3-drinkcat@chromium.org>
References: <20190429035515.73611-1-drinkcat@chromium.org>
 <20190429035515.73611-3-drinkcat@chromium.org>
From: Stephen Boyd <swboyd@chromium.org>
Subject: Re: [PATCH 2/2] pinctrl: mediatek: Update cur_mask in mask/mask ops
To: Nicolas Boichat <drinkcat@chromium.org>, linux-mediatek@lists.infradead.org
Message-ID: <155778659317.14659.136626364818483852@swboyd.mtv.corp.google.com>
User-Agent: alot/0.8
Date: Mon, 13 May 2019 15:29:53 -0700
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_152957_386632_B2754218 
X-CRM114-Status: GOOD (  14.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Linus Walleij <linus.walleij@linaro.org>, Sean Wang <sean.wang@kernel.org>,
 linux-kernel@vger.kernel.org, evgreen@chromium.org, linux-gpio@vger.kernel.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Nicolas Boichat (2019-04-28 20:55:15)
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
> Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>

It looks an awful lot like you should just use IRQCHIP_MASK_ON_SUSPEND
here. Isn't that what's happening? All non-wake irqs should be masked at
the hardware level so they can't cause a wakeup during suspend and on
resume they can be unmasked?

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
> @@ -384,7 +375,6 @@ static void mtk_eint_irq_handler(struct irq_desc *desc)
>  
>  int mtk_eint_do_suspend(struct mtk_eint *eint)
>  {
> -       mtk_eint_chip_read_mask(eint, eint->base, eint->cur_mask);
>         mtk_eint_chip_write_mask(eint, eint->base, eint->wake_mask);
>  


This alone looks like, write out the mask to only allow wake interrupts.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
