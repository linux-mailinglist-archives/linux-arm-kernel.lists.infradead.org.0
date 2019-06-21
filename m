Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 865D24DFD3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 06:47:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PUvUy9z1UtVjEsvMzzCEbWzGySMGHdv0da0wrs9T2OU=; b=ZwTpeAn3Szvydn
	12ego2ZYuqI/ETfPqUlRCNcdNysIuSS9Gc6tarBMxqMkwLvY9tk1B+Go5Qv/tpBGTZo/IE19bbvwE
	9Ad+oy1cQudNMTdxo6ZK0SpWCBElmq2x+8a9IyIzpcNFHlitksoxHFszcSlzYonY8EyZbpnaiymCt
	9f/p0qYAJtmVSMzPQPVcmtMpdK/hFCmApWQ7kLYMkDo+umNCCNSl2IpnlVete8pII0rY5QtKO8yDS
	QRTrZTL62SmS7tdffWsqITwP5eg5Q8VbGhFMkhwpguDFHTLEDySQULRU/peFu5U73oDPXsMPccfHD
	OQFHA2as0r3AUnTaqtaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heBSe-000410-2i; Fri, 21 Jun 2019 04:47:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heBSU-00040Q-17; Fri, 21 Jun 2019 04:47:31 +0000
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com
 [209.85.128.42])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 319DE208CA;
 Fri, 21 Jun 2019 04:47:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561092449;
 bh=2e8ga/L8SEdmf7Lt7noZ+sWu8LCAOrQ1GgcWN6Trw2Q=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=qYxeNh9SgFH2otygFAopDpn5bSOOXzOOQZC4JsuMuf4GuzcJyQV0reiVbvvkiY5HI
 F4dd+WuPxJse1K8QLSqfnYlWqbMZlKcri2Ld9bg465c79KSydP0mhl2Mmd8k7REWC1
 Sr9oaTAuAAolnFN+SfpW3LxDZRzCpBFyt4tMe68o=
Received: by mail-wm1-f42.google.com with SMTP id x15so5013373wmj.3;
 Thu, 20 Jun 2019 21:47:29 -0700 (PDT)
X-Gm-Message-State: APjAAAVxXBTs3OmKHVeIEJYUpikjNXrY9seH2k/K08QgMIPJMFFDFDro
 6eXd375C7U1Gu00AY9ijBVD1Tcl3wzjHsyTk/Aw=
X-Google-Smtp-Source: APXvYqzfssEVgigV9IyaopMmsOAvPClq7Yi3q82LMxYgtG/hvzSp2webHvdicOT4RPzD/wIoTvtKET482lzGX4xkvaI=
X-Received: by 2002:a1c:1bc9:: with SMTP id b192mr2131534wmb.152.1561092447753; 
 Thu, 20 Jun 2019 21:47:27 -0700 (PDT)
MIME-Version: 1.0
References: <20190429035515.73611-1-drinkcat@chromium.org>
 <20190429035515.73611-2-drinkcat@chromium.org>
In-Reply-To: <20190429035515.73611-2-drinkcat@chromium.org>
From: Sean Wang <sean.wang@kernel.org>
Date: Thu, 20 Jun 2019 21:47:16 -0700
X-Gmail-Original-Message-ID: <CAGp9LzouA3vKf6Hb=Jdy2FLG_Hkzartaksav-JpbRiVkxAACiQ@mail.gmail.com>
Message-ID: <CAGp9LzouA3vKf6Hb=Jdy2FLG_Hkzartaksav-JpbRiVkxAACiQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] pinctrl: mediatek: Ignore interrupts that are wake
 only during resume
To: Nicolas Boichat <drinkcat@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_214730_107640_635FE405 
X-CRM114-Status: GOOD (  23.30  )
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

Hi Nicolas,

On Sun, Apr 28, 2019 at 8:55 PM Nicolas Boichat <drinkcat@chromium.org> wrote:
>
> Before suspending, mtk-eint would set the interrupt mask to the
> one in wake_mask. However, some of these interrupts may not have a
> corresponding interrupt handler, or the interrupt may be disabled.
>
> On resume, the eint irq handler would trigger nevertheless,
> and irq/pm.c:irq_pm_check_wakeup would be called, which would
> try to call irq_disable. However, if the interrupt is not enabled
> (irqd_irq_disabled(&desc->irq_data) is true), the call does nothing,
> and the interrupt is left enabled in the eint driver.
>
> Especially for level-sensitive interrupts, this will lead to an
> interrupt storm on resume.
>
> If we detect that an interrupt is only in wake_mask, but not in
> cur_mask, we can just mask it out immediately (as mtk_eint_resume
> would do anyway at a later stage in the resume sequence, when
> restoring cur_mask).
>
> Fixes: bf22ff45bed ("genirq: Avoid unnecessary low level irq function calls")
> Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>

Acked-by: Sean Wang <sean.wang@kernel.org>

> ---
>  drivers/pinctrl/mediatek/mtk-eint.c | 16 +++++++++++++++-
>  1 file changed, 15 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/pinctrl/mediatek/mtk-eint.c b/drivers/pinctrl/mediatek/mtk-eint.c
> index f464f8cd274b75c..737385e86beb807 100644
> --- a/drivers/pinctrl/mediatek/mtk-eint.c
> +++ b/drivers/pinctrl/mediatek/mtk-eint.c
> @@ -318,7 +318,7 @@ static void mtk_eint_irq_handler(struct irq_desc *desc)
>         struct irq_chip *chip = irq_desc_get_chip(desc);
>         struct mtk_eint *eint = irq_desc_get_handler_data(desc);
>         unsigned int status, eint_num;
> -       int offset, index, virq;
> +       int offset, mask_offset, index, virq;
>         void __iomem *reg =  mtk_eint_get_offset(eint, 0, eint->regs->stat);
>         int dual_edge, start_level, curr_level;
>
> @@ -328,10 +328,24 @@ static void mtk_eint_irq_handler(struct irq_desc *desc)
>                 status = readl(reg);
>                 while (status) {
>                         offset = __ffs(status);
> +                       mask_offset = eint_num >> 5;
>                         index = eint_num + offset;
>                         virq = irq_find_mapping(eint->domain, index);
>                         status &= ~BIT(offset);
>
> +                       /*
> +                        * If we get an interrupt on pin that was only required
> +                        * for wake (but no real interrupt requested), mask the
> +                        * interrupt (as would mtk_eint_resume do anyway later
> +                        * in the resume sequence).
> +                        */
> +                       if (eint->wake_mask[mask_offset] & BIT(offset) &&
> +                           !(eint->cur_mask[mask_offset] & BIT(offset))) {
> +                               writel_relaxed(BIT(offset), reg -
> +                                       eint->regs->stat +
> +                                       eint->regs->mask_set);
> +                       }
> +
>                         dual_edge = eint->dual_edge[index];
>                         if (dual_edge) {
>                                 /*
> --
> 2.21.0.593.g511ec345e18-goog
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
