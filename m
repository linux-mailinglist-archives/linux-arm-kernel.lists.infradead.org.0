Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C675D2688
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 11:38:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=755GohgfVwCuOSLDw0wN3WDngxPS70lKV5vdy64Ace0=; b=qv61rPa7cNb+6/
	3TzAGEZxJXLfAu+knZoqBeLAsW6sm9QxOmrQMEcl7c+yoUhMlznSP+CnAyu+0UxkBfHAeGpA+LBHl
	NjTGr38iOutF2TNYh2kTwI0/yBzPl4Jiu2FmPjavAzQlQvhSucKjirNUJNJck+mXM5NOrvMOqz1Mo
	Z/PjgBWPSv6iUvEbdyw0FdcWkmrieSq63zXeP0KfBbnnkrBmxcG6144Bul5/hnoLGFFPr3j6EqXKW
	V8yTpNIbVBD0nZJI+wpbKZAIYDcIGlppmCd7bJKqSab/cZtBSx59EvknHpHmtrJTGkoo5tL6K07TX
	MUXPLI5kp1n6KJZhEPpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIUtQ-0003hS-5i; Thu, 10 Oct 2019 09:37:56 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIUtH-0003fn-16
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 09:37:48 +0000
Received: by mail-qk1-x742.google.com with SMTP id 4so4971815qki.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 10 Oct 2019 02:37:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=iUv/jKfs8Rt7LwQGuq/GRhqieGvZNRkwMu6pNwIodkk=;
 b=bhpLcCfYPyvX52+BUSSL7Yzj8Et2GDMmcum+9PP4vVeDEy1RxLq7mlfVJHrpQs/nmF
 HOudTuYY/jkMU9E1AxwCRYLr+GWnGHiNVIzjxkwJ8cWvxVnAHNGdpcCMyDIO+S93hPRq
 ys4nlW+3Gvhq+0lkrLZpM8YlHGVH0iTLqn/7k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iUv/jKfs8Rt7LwQGuq/GRhqieGvZNRkwMu6pNwIodkk=;
 b=tfTk4YN4bS+14ABSiTDRxAHRYu87hIRD9Z7jwTYhh9EEf72HzGxciKCkHhsJU7vwMm
 h38Ag51uKwaIkuaut1SuemP9ZhNsHW60s7OXy5blM5eg314kWqKnzZtpy6OXCKCYpKv3
 nFzZKrV5uS+9rtqpry4MMOfeTP25Rw4Q3pnbpj8yEu4WovG5EGqNvDDWq5Jlb3NgTQVW
 sU+XqRrjCYM3n6tnKAo1/VuJS90KlzN0RQAW3Ucx7GMgHqPKoAE7YHbIFFbwrUZ30V4C
 Eaeo7dXa//Cf06YxThWDbSzKc2kYgt/GQkJrlcN1436/Jpdp4NtnPy8SW8mWp/QzW235
 iDuw==
X-Gm-Message-State: APjAAAWr2T6F7uxl0x7pFPMpAkvYvtzm8bV8l24QdlB5LPE14zi5u67l
 JmEJpZ621V8A+STTtSqnUS/+8zLV2gQRSJ8AWf+0VA==
X-Google-Smtp-Source: APXvYqz1ByFsQhFtmGcxPoAP+STAxSloJOQ2YgPIk3bIqO0LpHl3D7BNY8rPw6h+2MKJfwf36tyi5ff7jmIJfUURLg0=
X-Received: by 2002:a37:2fc1:: with SMTP id v184mr8788836qkh.18.1570700265436; 
 Thu, 10 Oct 2019 02:37:45 -0700 (PDT)
MIME-Version: 1.0
References: <20191010075004.192818-1-tfiga@chromium.org>
 <CANMq1KAA+nqcOqiE_g=vA8DC=_t=FqSRtR5kk=1XqSsgZGj+_A@mail.gmail.com>
 <CAAFQd5DazVnFGmNENnxT_FHed2Jx30hLT29HyEjxY7xeqLnGCg@mail.gmail.com>
In-Reply-To: <CAAFQd5DazVnFGmNENnxT_FHed2Jx30hLT29HyEjxY7xeqLnGCg@mail.gmail.com>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Thu, 10 Oct 2019 17:37:34 +0800
Message-ID: <CANMq1KA7pKqJDhFvkuBfEWtr81NUhyRpUE9ZZeTNCCc5Fphoyw@mail.gmail.com>
Subject: Re: [PATCH] usb: mtk-xhci: Set the XHCI_NO_64BIT_SUPPORT quirk
To: Tomasz Figa <tfiga@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_023747_068709_C7152889 
X-CRM114-Status: GOOD (  23.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
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
Cc: Changqi Hu <Changqi.Hu@mediatek.com>,
 Mathias Nyman <mathias.nyman@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 open list <linux-kernel@vger.kernel.org>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, Shik Chen <shik@chromium.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 10, 2019 at 5:11 PM Tomasz Figa <tfiga@chromium.org> wrote:
>
> On Thu, Oct 10, 2019 at 6:08 PM Nicolas Boichat <drinkcat@chromium.org> wrote:
> >
> > On Thu, Oct 10, 2019 at 3:50 PM Tomasz Figa <tfiga@chromium.org> wrote:
> > >
> > > MediaTek XHCI host controller does not support 64-bit addressing despite
> > > the AC64 bit of HCCPARAMS1 register being set. The platform-specific
> > > glue sets the DMA mask to 32 bits on its own, but it has no effect,
> > > because xhci_gen_setup() overrides it according to hardware
> > > capabilities.
> > >
> > > Use the XHCI_NO_64BIT_SUPPORT quirk to tell the XHCI core to force
> > > 32-bit DMA mask instead.
> > >
> > > Signed-off-by: Tomasz Figa <tfiga@chromium.org>
> >
> > Can we add a Fixes: tag for stable backports?
> > (after addressing the other comments of course)
> >
>
> The problem with Fixes: is that this patch depends on the quirk being
> there, but the offending code was merged earlier. Do you know how to
> handle such cases?

Oh, interesting. I think this is documented here:
https://github.com/torvalds/linux/blob/master/Documentation/process/stable-kernel-rules.rst

Something like this:
Cc: <stable@vger.kernel.org> # 3.3.x: a1f84a3: sched: Check for idle
Cc: <stable@vger.kernel.org> # 3.3.x

(Where 3.3.x is the first release that contains the commit indicated
in the Fixes tag)

Try that, worst case you'll get automated emails from stable
maintainers asking you how to fix the issue.

>
> >
> > > ---
> > >  drivers/usb/host/xhci-mtk.c | 10 +++++-----
> > >  1 file changed, 5 insertions(+), 5 deletions(-)
> > >
> > > diff --git a/drivers/usb/host/xhci-mtk.c b/drivers/usb/host/xhci-mtk.c
> > > index b18a6baef204a..4d101d52cc11b 100644
> > > --- a/drivers/usb/host/xhci-mtk.c
> > > +++ b/drivers/usb/host/xhci-mtk.c
> > > @@ -395,6 +395,11 @@ static void xhci_mtk_quirks(struct device *dev, struct xhci_hcd *xhci)
> > >         xhci->quirks |= XHCI_SPURIOUS_SUCCESS;
> > >         if (mtk->lpm_support)
> > >                 xhci->quirks |= XHCI_LPM_SUPPORT;
> > > +       /*
> > > +        * MTK host controller does not support 64-bit addressing, despite
> > > +        * having the AC64 bit of the HCCPARAMS1 register set.
> > > +        */
> > > +       xhci->quirks |= XHCI_NO_64BIT_SUPPORT;
> > >  }
> > >
> > >  /* called during probe() after chip reset completes */
> > > @@ -488,11 +493,6 @@ static int xhci_mtk_probe(struct platform_device *pdev)
> > >                 goto disable_clk;
> > >         }
> > >
> > > -       /* Initialize dma_mask and coherent_dma_mask to 32-bits */
> > > -       ret = dma_set_mask_and_coherent(dev, DMA_BIT_MASK(32));
> > > -       if (ret)
> > > -               goto disable_clk;
> > > -
> > >         hcd = usb_create_hcd(driver, dev, dev_name(dev));
> > >         if (!hcd) {
> > >                 ret = -ENOMEM;
> > > --
> > > 2.23.0.581.g78d2f28ef7-goog
> > >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
