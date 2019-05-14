Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2F921C061
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 03:38:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dWIGs4CwGOWq/7yZqI3Y6HirXboNemquvM1wMqMxzKg=; b=WvMJd5U2AjQHCS
	6C/iaza9zCq6lD+8Tbg7pNTmjoQYfECE6w7UprJHuR6L9lij3aux6TaS0sw1xe4fR3t/rpUg2CR8d
	TGRdr+QawEelO9bBu5NsrA0NthboGhuWdCbWgMaym8mKLtz6+GhfEtc32UKSnD/1NtvTGboUxTiFO
	Iwu/r/SN8rfuK6UdbNgjM9e64C9tE2dcV7DOXItq+yQLauow+5IumwGzqFT7HtU/XzNmSeoy6rIMf
	2bp7kkhUK5K3/QNGVTFzvDCbc3xr9IE0mqB4OSselJhuv8x+eQ1tB3Dqv5BUhmnuXCrSPPs8IMnoN
	iQrhw5LrEtKunp+zoJwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQMOb-00021B-BI; Tue, 14 May 2019 01:38:21 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQMOR-0001zg-MD
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 01:38:13 +0000
Received: by mail-qk1-x741.google.com with SMTP id a132so9233220qkb.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 May 2019 18:38:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zwRPJV1ea5/fubxrHAnDt8q85ACTUpNCnRonfvDrwtQ=;
 b=cV8CDih8rYP1Q2P21ENTjW7+9KHarjnNarh3p+yta6mBnxR3GWMtJ+F9aPtbPrgmmG
 X+DiLrn5IlCaW7mpsL9/U0ujHeFG2aNeIn9QmS2ZUcIoDhQcUHCUg3kwoTnsR0XXvXwE
 FaEg81DlK47GL87NGWbxzH/nAjQTjMixtBP3w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zwRPJV1ea5/fubxrHAnDt8q85ACTUpNCnRonfvDrwtQ=;
 b=M31QN72YjSu0l3J8HKvN6zojs3LKnoRmdWXBEjNAwIUNhfSNP7chhMjtgFiAnnpdR1
 lEThODLCPfu7/laSjcu8FdFWkxpOebHDlAPrkEgihnlcDqNiGpBYSf16AwXL83liK+az
 aGuw5aBM3aALkuTLqoQ1+wEsaMPQ67t3nUT8uNT7TXn6UHUhrnVvLDYoNhLAeXJSs0Qu
 qTBjCk6q5zmLtKkqRwQw/PD/dCORAwgUHPKmzR/46oxYWPHYdpGGFmoAy+aubWui2+Ll
 gSWjTtp29BC0uozoVuHHrrycwa8yIsLdbkhRj6Drj82wiMCe11yxK1upAyehuFxK3ooh
 wjjw==
X-Gm-Message-State: APjAAAVFM9rxBdubzroCu1bMiC63SYIo/12xDvDawPPWDcWNH15+3MJJ
 bADMvNIO24NcUK3f/QJpgzDk2conjoZ2OfVW58+htQ==
X-Google-Smtp-Source: APXvYqzsJpqxHDJ2qevMSmT1HPJa1iHE7NRKTlyDxcyCq4T4aHwPxe7bd9ialVJHGfZ/iY2dzrt8lG7EoBq9Zw90IgI=
X-Received: by 2002:a37:2e05:: with SMTP id u5mr26568027qkh.124.1557797889779; 
 Mon, 13 May 2019 18:38:09 -0700 (PDT)
MIME-Version: 1.0
References: <20190429035515.73611-1-drinkcat@chromium.org>
 <20190429035515.73611-3-drinkcat@chromium.org>
 <155778659317.14659.136626364818483852@swboyd.mtv.corp.google.com>
In-Reply-To: <155778659317.14659.136626364818483852@swboyd.mtv.corp.google.com>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Tue, 14 May 2019 09:37:58 +0800
Message-ID: <CANMq1KBMd7eR3dP=V9gJ6G4OgE6DsXad_gzvuNJ25_pee4+6eg@mail.gmail.com>
Subject: Re: [PATCH 2/2] pinctrl: mediatek: Update cur_mask in mask/mask ops
To: Stephen Boyd <swboyd@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_183811_781288_A6C116C5 
X-CRM114-Status: GOOD (  20.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
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
 lkml <linux-kernel@vger.kernel.org>, Evan Green <evgreen@chromium.org>,
 linux-gpio@vger.kernel.org,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 14, 2019 at 6:29 AM Stephen Boyd <swboyd@chromium.org> wrote:
>
> Quoting Nicolas Boichat (2019-04-28 20:55:15)
> > During suspend/resume, mtk_eint_mask may be called while
> > wake_mask is active. For example, this happens if a wake-source
> > with an active interrupt handler wakes the system:
> > irq/pm.c:irq_pm_check_wakeup would disable the interrupt, so
> > that it can be handled later on in the resume flow.
> >
> > However, this may happen before mtk_eint_do_resume is called:
> > in this case, wake_mask is loaded, and cur_mask is restored
> > from an older copy, re-enabling the interrupt, and causing
> > an interrupt storm (especially for level interrupts).
> >
> > Instead, we just record mask/unmask changes in cur_mask. This
> > also avoids the need to read the current mask in eint_do_suspend,
> > and we can remove mtk_eint_chip_read_mask function.
> >
> > Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>
>
> It looks an awful lot like you should just use IRQCHIP_MASK_ON_SUSPEND
> here. Isn't that what's happening? All non-wake irqs should be masked at
> the hardware level so they can't cause a wakeup during suspend and on
> resume they can be unmasked?

No, this is for an line that has both wake and interrupt enabled. To
reword the commit message above:
 1. cur_mask[irq] = 1; wake_mask[irq] = 1; EINT_EN[irq] = 1 (interrupt
enabled at hardware level)
 2. System suspends, resumes due to that line (at this stage EINT_HW
== wake_mask)
 3. irq_pm_check_wakeup is called, and disables the interrupt =>
EINT_EN[irq] = 0, but we still have cur_mask[irq] = 1
 4. mtk_eint_do_resume is called, and restores EINT_EN = cur_mask, so
it reenables EINT_EN[irq] = 1 => interrupt storm.

This patch fixes the issue in step 3. So that the interrupt can be
re-enabled properly later on, sometimes after mtk_eint_do_resume, when
the driver is ready to handle it.

Also, IRQCHIP_MASK_ON_SUSPEND does not handle lines that are enabled
as a wake source, but without interrupt enabled (e.g. cros_ec driver
does that), which we do want to support.

> > diff --git a/drivers/pinctrl/mediatek/mtk-eint.c b/drivers/pinctrl/mediatek/mtk-eint.c
> > index 737385e86beb807..7e526bcf5e0b55c 100644
> > --- a/drivers/pinctrl/mediatek/mtk-eint.c
> > +++ b/drivers/pinctrl/mediatek/mtk-eint.c
> > @@ -113,6 +113,8 @@ static void mtk_eint_mask(struct irq_data *d)
> >         void __iomem *reg = mtk_eint_get_offset(eint, d->hwirq,
> >                                                 eint->regs->mask_set);
> >
> > +       eint->cur_mask[d->hwirq >> 5] &= ~mask;
> > +
> >         writel(mask, reg);
> >  }
> >
> > @@ -123,6 +125,8 @@ static void mtk_eint_unmask(struct irq_data *d)
> >         void __iomem *reg = mtk_eint_get_offset(eint, d->hwirq,
> >                                                 eint->regs->mask_clr);
> >
> > +       eint->cur_mask[d->hwirq >> 5] |= mask;
> > +
> >         writel(mask, reg);
> >
> >         if (eint->dual_edge[d->hwirq])
> > @@ -384,7 +375,6 @@ static void mtk_eint_irq_handler(struct irq_desc *desc)
> >
> >  int mtk_eint_do_suspend(struct mtk_eint *eint)
> >  {
> > -       mtk_eint_chip_read_mask(eint, eint->base, eint->cur_mask);
> >         mtk_eint_chip_write_mask(eint, eint->base, eint->wake_mask);
> >
>
>
> This alone looks like, write out the mask to only allow wake interrupts.

Yes, and enable wake interrupts that may not be in cur_mask.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
