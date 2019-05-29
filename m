Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A50632DAEC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 12:37:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ULqd5FUUAVrOWp6SQFAS6LRsOZXCH6qL16tNvfNWC4A=; b=o0lwBWeCWk0++p
	n0xhS8CwQi0TQhpmAU1lqJRlORdTNz/9AYc3GJxxpdccBzJK8of5YY/uXO3rIk4qHJLpIbMcS06og
	AlnYgRqR2iA3zu571gMZBzE3K7St9J1FtzmzwrEcPerkfKwY43AIFNZ86mgdU0TAwt0BR4NBUsXxX
	ATvDXVIMbB1nHMDbN4UXsY2pTkTRu4EjjzILlvTM0jzupAONcEJ7z+PME6Jgn8EQDSWijET5dCRS4
	KpgnABa8z6JfF40rGCwte1lAFKRxcjvr4V3UiRvHQiGETosNfvFsaA7LZCTD+UkDP1/6jkryN5tdD
	WDDG9uncnTA7PSCaPWzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVvxg-0005tb-PM; Wed, 29 May 2019 10:37:36 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVvxZ-0005tH-Qs
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 10:37:31 +0000
Received: by mail-vs1-xe44.google.com with SMTP id m1so1407359vsr.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 May 2019 03:37:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tjnCyAMKOLgkdZookUva/jit8+LoVCiTGzc0TNGq/oA=;
 b=wOZ28q0Dbsa83UgZEqBAyC7OuWb0kt0Le7tZXn7K4Cvh6Qd+xStSW7Yy8L8potaaWt
 vCbmGvPV8IcOQ/DvUiQ+adosG5dqCgOU0cxAlWaHwgdAWEQOwpa7mZd3r2dQfTTa/2Xp
 xfPvIdlyNqkUFyFUY7m71UUGC1xzQFWh/BD7nQZZSeEY2xfK/LMN48ajDbNJGFbWO1VN
 bLgEW84wPlSshhv5X9kGiTUuNdGdVICyMUMKraO5xgLstqh0aOGGWLQgBSCCB89yzogY
 Q9AQwpTs7/7RAYNEQnseubioA2ZJ7re36Nw2eitt4gpv7aqrecWSSXkKxIZOQg4hewD7
 y3bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tjnCyAMKOLgkdZookUva/jit8+LoVCiTGzc0TNGq/oA=;
 b=A86N1kPTyo5f4p/fnrk2+LbTtSb0q51tNhPNuPBOYjz99l2tPhHv1DWeCiDhlI73Ng
 yViQIymy1GYVLtzoL6b2PoCF7qFbh9U54tzrfy85QX5V/LPjwvzhQktOY4LovkXKhoAP
 WFfvZLNcY/TPpqxRMMR1Y1IppLHOwTGinoT8tJQuwfahQF68MMKSTDQsByKtv0b/gqg3
 m7VjUY07H8TumhbZ2TkxaeCJ29pXMEY9U4j4YDdiXyFP/6yATGOrioDPtIPVa7vjMLvJ
 lt04SJxVKSx119zpDgk6uHiPWs/T7ezrP5FjsFz82rqSzv9hRoFygBAT9EqdpodsbAYN
 wrfQ==
X-Gm-Message-State: APjAAAUnXT67wbUrrIbl/Djc4fzs2wXGwDNGMPlftY1v4IFhQNQ4lcCm
 JfNgO0Th4s+8M27oG64SvBt8XyR65uhmcvT/ZLL6Xw==
X-Google-Smtp-Source: APXvYqx8zt/2mUaOcclrGUfqtNcoqVnj8CT/3HypSvAAWyzH7F3cDGM/H+pIvoe/h4PMDjOkbfsFLwZh6e2SC0ttcNo=
X-Received: by 2002:a67:fa51:: with SMTP id j17mr38251200vsq.89.1559126247816; 
 Wed, 29 May 2019 03:37:27 -0700 (PDT)
MIME-Version: 1.0
References: <1556264798-18540-1-git-send-email-ludovic.Barre@st.com>
 <1556264798-18540-4-git-send-email-ludovic.Barre@st.com>
 <CAPDyKFrxp3Y3AudNvkkSRaph2Fe-A-F6Cs0jfy9RUja76GYeiA@mail.gmail.com>
 <a6a74431-50a6-6298-b77d-9d27a77fd6cc@st.com>
In-Reply-To: <a6a74431-50a6-6298-b77d-9d27a77fd6cc@st.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 29 May 2019 12:36:50 +0200
Message-ID: <CAPDyKFqzNy3hDzovSxb6pd37u7SxWqYoJeu9+tf_qDF7gs0euA@mail.gmail.com>
Subject: Re: [PATCH V2 3/5] mmc: mmci: fix clear of busy detect status
To: Ludovic BARRE <ludovic.barre@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_033729_871332_7BFABBAE 
X-CRM114-Status: GOOD (  25.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: DTML <devicetree@vger.kernel.org>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 29 May 2019 at 11:20, Ludovic BARRE <ludovic.barre@st.com> wrote:
>
> hi Ulf
>
> On 5/27/19 8:17 PM, Ulf Hansson wrote:
> > On Fri, 26 Apr 2019 at 09:46, Ludovic Barre <ludovic.Barre@st.com> wrote:
> >>
> >> From: Ludovic Barre <ludovic.barre@st.com>
> >>
> >> The "busy_detect_flag" is used to read/clear busy value of
> >> mmci status. The "busy_detect_mask" is used to manage busy irq of
> >> mmci mask.
> >> For sdmmc variant, the 2 properties have not the same offset.
> >> To clear the busyd0 status bit, we must add busy detect flag,
> >> the mmci mask is not enough.
> >>
> >> Signed-off-by: Ludovic Barre <ludovic.barre@st.com>
> >
> > Ludovic, again, apologies for the delay.
> >
> >> ---
> >>   drivers/mmc/host/mmci.c | 3 ++-
> >>   1 file changed, 2 insertions(+), 1 deletion(-)
> >>
> >> diff --git a/drivers/mmc/host/mmci.c b/drivers/mmc/host/mmci.c
> >> index a040f54..3cd52e8 100644
> >> --- a/drivers/mmc/host/mmci.c
> >> +++ b/drivers/mmc/host/mmci.c
> >> @@ -1517,7 +1517,8 @@ static irqreturn_t mmci_irq(int irq, void *dev_id)
> >>                   * to make sure that both start and end interrupts are always
> >>                   * cleared one after the other.
> >>                   */
> >> -               status &= readl(host->base + MMCIMASK0);
> >> +               status &= readl(host->base + MMCIMASK0) |
> >> +                       host->variant->busy_detect_flag;
> >
> > I think this is not entirely correct, because it would mean we check
> > for busy even if we haven't unmasked the busy IRQ via the
> > variant->busy_detect_mask.
>
> if the variant is busy_detect false:
>   => no problem because the busy_detect_flag or busy_detect_mask is not
>      defined.

Right.

>
> if variant is busy_detect true:
> the busy handle is split in 3 steps (see mmci_cmd_irq):
> step 1: detection of busy line => unmasked the busy irq end
> step 2: in busy wait => ignore cmd irq while current busy flag is
> enabled.
> step 3: end of busy => clear and mask busy irq
>
> To detect the first step (see mmci_cmd_irq: which unmasks the busy irq)
> we need to know the current busy state. Actually, the status register is
> re-read in mmci_cmd_irq, why not used the status read in mmci_irq and in
> parameter ?

Right, I see your point.

On the other hand, that re-read of the status registers should really
not be needed. Maybe it's a leftover from my initial version of the
code, but in any case we should remove that.

>
> Regards,
> Ludo
>
> >
> > I suggest to store a new bool in the host (call it
> > "busy_detect_unmasked" or whatever makes sense to you), to track
> > whether we have unmasked the busy IRQ or not. Then take this flag into
> > account, before ORing the value of host->variant->busy_detect_flag,
> > according to above.
> >
> >>                  if (host->variant->busy_detect)
> >>                          writel(status & ~host->variant->busy_detect_mask,
> >>                                 host->base + MMCICLEAR);
> >> --
> >> 2.7.4

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
