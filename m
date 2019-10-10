Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A489D26F1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 12:09:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=83p9OkskVv8LTJswqBz51ZJSRGo23TqEMjhb4KYHjLc=; b=BDOCQwB8d8hDNA
	9M/08qFf9Ib5AIOPcc+WZTEcNR2PMk2nMLXFlL/IxWjCPrFGNLklAQXUSwOIJAqaJtL8WU6g5u2Ht
	0ijo4dQJNZPcUIdyxb1lMrV0Eeq5W52xIhsFjUFDMJHTRD9QdHpt/pMm3BE1B7ps0ygZ2vdq2ng9g
	2hXXhuUCh7kDzJMd6+U14JNR/FWjCEHQ84D9838gI8B2VyqAwylyOdCkf0kcKaPMrdmPvKn62JEEg
	SzoqTYeYXJaqcA7iGKnk5smB967p4PvXa8UwB+6itkmJAfFUuvMihmUJMRvH9x6Qo6JSv2zMfRGLt
	zKVzfkPY0hZWsHq1sQLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIVO3-0006yF-8g; Thu, 10 Oct 2019 10:09:35 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIVNs-0006wP-AO
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 10:09:25 +0000
Received: by mail-ed1-x541.google.com with SMTP id r16so4894736edq.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 10 Oct 2019 03:09:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vBN/g7icYkS/AmLkTr95uIthk9ZmG2qQFolljRp0WMk=;
 b=Qzjl5XP3gY1S8P95T06xre3Rfh0XgcTj0Hb5LBLMatyyGelv6QhZqxTNAwYwagYrM0
 PDIgesmF0xt/RYeXsachoBoIxdRO/Vzs0AeoZQen9rM9IJZwjBY5UAG/3FN4W9dFqMxa
 y7RW8ty64z8J96LC/ZWehDgzeKJROAjwMFe1c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vBN/g7icYkS/AmLkTr95uIthk9ZmG2qQFolljRp0WMk=;
 b=FIOo4fUnKpnrmCHJyqQZYrvg9L2l03u5OEQibbVWzRDJb4De4B38REBgvfce0OhrA9
 blIwDktyuX2CI5qV5KHW+jtO+GlplLRW7261r8W8ZV2OTBaIcNFEmfRc+M8b5CTWJPvc
 Ut9+qygCI5GWdqCq3KBTIFupShX3clliCP+TwchkT+M+wYvTkDepyhHKStMWjBrYKqGe
 GXcvYlE0KNuRJH18OsSXEgqJN2sHVdBh4vg/MABI5QEzPGE4a5uxAGSgc4E/wDl5Dw12
 V/keEGbOZlPuw1zuHxM97JvGjmkHGFT7bv2oFFxQW38U1r4l6JY5uMOcGfaLnike10m4
 Ep6w==
X-Gm-Message-State: APjAAAX1REbkgMYg08xobEmj27a/26zSadoTyNxBuWK00W3AAI+A9ABJ
 4OL2fYoqir0hoByUEhctl04QM8fd5TJ3Fw==
X-Google-Smtp-Source: APXvYqxIFEE26i0t+DAuvHc2AFGO1cNxehTYXdXktx0cvUnRC4xb/mrfXYqCy2Y6LBbyQ5Z4SAXE0g==
X-Received: by 2002:a17:906:3385:: with SMTP id
 v5mr7264885eja.154.1570702162299; 
 Thu, 10 Oct 2019 03:09:22 -0700 (PDT)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com.
 [209.85.221.51])
 by smtp.gmail.com with ESMTPSA id nk2sm610140ejb.28.2019.10.10.03.09.19
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 10 Oct 2019 03:09:20 -0700 (PDT)
Received: by mail-wr1-f51.google.com with SMTP id y19so7134134wrd.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 10 Oct 2019 03:09:19 -0700 (PDT)
X-Received: by 2002:adf:fc42:: with SMTP id e2mr8275718wrs.100.1570702158960; 
 Thu, 10 Oct 2019 03:09:18 -0700 (PDT)
MIME-Version: 1.0
References: <20191010075004.192818-1-tfiga@chromium.org>
 <CANMq1KAA+nqcOqiE_g=vA8DC=_t=FqSRtR5kk=1XqSsgZGj+_A@mail.gmail.com>
 <CAAFQd5DazVnFGmNENnxT_FHed2Jx30hLT29HyEjxY7xeqLnGCg@mail.gmail.com>
 <CANMq1KA7pKqJDhFvkuBfEWtr81NUhyRpUE9ZZeTNCCc5Fphoyw@mail.gmail.com>
In-Reply-To: <CANMq1KA7pKqJDhFvkuBfEWtr81NUhyRpUE9ZZeTNCCc5Fphoyw@mail.gmail.com>
From: Tomasz Figa <tfiga@chromium.org>
Date: Thu, 10 Oct 2019 19:09:06 +0900
X-Gmail-Original-Message-ID: <CAAFQd5AZjiMuwaMTjy_1ftop+=E6_G7OGAs0+tD5SdJeW0AOLA@mail.gmail.com>
Message-ID: <CAAFQd5AZjiMuwaMTjy_1ftop+=E6_G7OGAs0+tD5SdJeW0AOLA@mail.gmail.com>
Subject: Re: [PATCH] usb: mtk-xhci: Set the XHCI_NO_64BIT_SUPPORT quirk
To: Nicolas Boichat <drinkcat@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_030924_354366_80CA2B4C 
X-CRM114-Status: GOOD (  25.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
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

On Thu, Oct 10, 2019 at 6:37 PM Nicolas Boichat <drinkcat@chromium.org> wrote:
>
> On Thu, Oct 10, 2019 at 5:11 PM Tomasz Figa <tfiga@chromium.org> wrote:
> >
> > On Thu, Oct 10, 2019 at 6:08 PM Nicolas Boichat <drinkcat@chromium.org> wrote:
> > >
> > > On Thu, Oct 10, 2019 at 3:50 PM Tomasz Figa <tfiga@chromium.org> wrote:
> > > >
> > > > MediaTek XHCI host controller does not support 64-bit addressing despite
> > > > the AC64 bit of HCCPARAMS1 register being set. The platform-specific
> > > > glue sets the DMA mask to 32 bits on its own, but it has no effect,
> > > > because xhci_gen_setup() overrides it according to hardware
> > > > capabilities.
> > > >
> > > > Use the XHCI_NO_64BIT_SUPPORT quirk to tell the XHCI core to force
> > > > 32-bit DMA mask instead.
> > > >
> > > > Signed-off-by: Tomasz Figa <tfiga@chromium.org>
> > >
> > > Can we add a Fixes: tag for stable backports?
> > > (after addressing the other comments of course)
> > >
> >
> > The problem with Fixes: is that this patch depends on the quirk being
> > there, but the offending code was merged earlier. Do you know how to
> > handle such cases?
>
> Oh, interesting. I think this is documented here:
> https://github.com/torvalds/linux/blob/master/Documentation/process/stable-kernel-rules.rst
>
> Something like this:
> Cc: <stable@vger.kernel.org> # 3.3.x: a1f84a3: sched: Check for idle
> Cc: <stable@vger.kernel.org> # 3.3.x
>
> (Where 3.3.x is the first release that contains the commit indicated
> in the Fixes tag)
>
> Try that, worst case you'll get automated emails from stable
> maintainers asking you how to fix the issue.
>

Oh, great, thanks a lot!

Best regards,
Tomasz

> >
> > >
> > > > ---
> > > >  drivers/usb/host/xhci-mtk.c | 10 +++++-----
> > > >  1 file changed, 5 insertions(+), 5 deletions(-)
> > > >
> > > > diff --git a/drivers/usb/host/xhci-mtk.c b/drivers/usb/host/xhci-mtk.c
> > > > index b18a6baef204a..4d101d52cc11b 100644
> > > > --- a/drivers/usb/host/xhci-mtk.c
> > > > +++ b/drivers/usb/host/xhci-mtk.c
> > > > @@ -395,6 +395,11 @@ static void xhci_mtk_quirks(struct device *dev, struct xhci_hcd *xhci)
> > > >         xhci->quirks |= XHCI_SPURIOUS_SUCCESS;
> > > >         if (mtk->lpm_support)
> > > >                 xhci->quirks |= XHCI_LPM_SUPPORT;
> > > > +       /*
> > > > +        * MTK host controller does not support 64-bit addressing, despite
> > > > +        * having the AC64 bit of the HCCPARAMS1 register set.
> > > > +        */
> > > > +       xhci->quirks |= XHCI_NO_64BIT_SUPPORT;
> > > >  }
> > > >
> > > >  /* called during probe() after chip reset completes */
> > > > @@ -488,11 +493,6 @@ static int xhci_mtk_probe(struct platform_device *pdev)
> > > >                 goto disable_clk;
> > > >         }
> > > >
> > > > -       /* Initialize dma_mask and coherent_dma_mask to 32-bits */
> > > > -       ret = dma_set_mask_and_coherent(dev, DMA_BIT_MASK(32));
> > > > -       if (ret)
> > > > -               goto disable_clk;
> > > > -
> > > >         hcd = usb_create_hcd(driver, dev, dev_name(dev));
> > > >         if (!hcd) {
> > > >                 ret = -ENOMEM;
> > > > --
> > > > 2.23.0.581.g78d2f28ef7-goog
> > > >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
