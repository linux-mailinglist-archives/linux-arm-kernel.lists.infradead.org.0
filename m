Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 921D3D25F9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 11:12:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MMZb21syRUesURvs5FPvaOzH7Bb2eNLGBRK3EmZ8KDE=; b=PGg+dkfTXsKtB8
	uprniR9PsHRHhsjl51Ax0lMAMP6vhKEZQW65bNfHVUHw30E9bgLVCpWdOdzsACFuOynza69bm7Jhl
	b5KcS747ABlahFla5naMvTtccyzt40TPMu2VlMnouNjs6rFw2v3OqB5dj30jErUOI8LpbhW0s/60/
	j7qe20xLh3muTvzTH5SfJVqUHmRjHuB49hp6EUkTaZBNUD8kjorjln4L09G+ABtMG5XlCsbEEQXB0
	fZA7bGcbwdf7/Ec5/RFj2n8kvE/60jtBTRznFZZBh8fdeY/QQwfzx9vo4Iw/RZZf33o5vrbAHDL8t
	p0M8+wDrDr4V+W9UbrWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIUUI-000114-6d; Thu, 10 Oct 2019 09:11:58 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIUU8-0000yO-Ld
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 09:11:50 +0000
Received: by mail-ed1-x542.google.com with SMTP id h33so4744054edh.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 10 Oct 2019 02:11:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VBMkhodqn4U5kuTJg5v2ifZwnktnXDoyfQB0T+lz2I8=;
 b=ZlN666g+jTCNpilG4QHCpeYoynta7EDdUBxYR6G+XNbiu6uKvC9S4XCYHA8gAWceuk
 j5Me0Yw6RKR9InXvCEPvVeR1f10m2TcGnldLpxmuqVniAE1hwd5Zv1aWCv5zdTolBLqH
 PyhbGks7ZbGwZ5UXPcm4nRFRvLyI+KapSIRV0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VBMkhodqn4U5kuTJg5v2ifZwnktnXDoyfQB0T+lz2I8=;
 b=ZWXtQLq2Qy9+SP2l+BsRkBp8CK3y1h5XJKrS6CKlxRpfEKtD7lp7Ggk1AkplZo9hQx
 O6ziwWjlJFF+rHO/vD4UYZCuujAXTD9KRP9FwDr5pEx++Nc0+h9OftwsRoSGFOvMvG8Q
 +dVIbaAXuWNCajZYyzhbhj3ddQGgfn4uAozszbs64KyQbuSsQ4W8OPEfifHceC+DDqZC
 Qsoj5ztnWpivlrd+/3dipMd/564WQHDVNQC9JMgMKgFiTT8bs2a3Pme7DKkCjTK9+n2u
 dtcg3Pr8wIQUi4+ancQh8NohGRjOxoyWyEAq2k4hDsYB3VV1nXTjXkExatLkzWWa0h4s
 m2xA==
X-Gm-Message-State: APjAAAVPnXIkCyynIfKgnXFTogDrSfdk6b5uG1RAmxeWx6ow8OagTelG
 BK6a95KrX/8TySBob7wznFaPmCb3pNRaxw==
X-Google-Smtp-Source: APXvYqzeY4L3JLmWtkUVMpuUcKO8WU/6JLqLBmbVJ2qK+sEbLNOse9k86Vykzf5+UpFZkQuYh30ONA==
X-Received: by 2002:a17:906:1343:: with SMTP id
 x3mr7151250ejb.113.1570698702369; 
 Thu, 10 Oct 2019 02:11:42 -0700 (PDT)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com.
 [209.85.128.47])
 by smtp.gmail.com with ESMTPSA id os27sm592450ejb.18.2019.10.10.02.11.41
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 10 Oct 2019 02:11:41 -0700 (PDT)
Received: by mail-wm1-f47.google.com with SMTP id 3so5919039wmi.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 10 Oct 2019 02:11:41 -0700 (PDT)
X-Received: by 2002:a1c:e404:: with SMTP id b4mr7233084wmh.90.1570698701061;
 Thu, 10 Oct 2019 02:11:41 -0700 (PDT)
MIME-Version: 1.0
References: <20191010075004.192818-1-tfiga@chromium.org>
 <CANMq1KAA+nqcOqiE_g=vA8DC=_t=FqSRtR5kk=1XqSsgZGj+_A@mail.gmail.com>
In-Reply-To: <CANMq1KAA+nqcOqiE_g=vA8DC=_t=FqSRtR5kk=1XqSsgZGj+_A@mail.gmail.com>
From: Tomasz Figa <tfiga@chromium.org>
Date: Thu, 10 Oct 2019 18:11:27 +0900
X-Gmail-Original-Message-ID: <CAAFQd5DazVnFGmNENnxT_FHed2Jx30hLT29HyEjxY7xeqLnGCg@mail.gmail.com>
Message-ID: <CAAFQd5DazVnFGmNENnxT_FHed2Jx30hLT29HyEjxY7xeqLnGCg@mail.gmail.com>
Subject: Re: [PATCH] usb: mtk-xhci: Set the XHCI_NO_64BIT_SUPPORT quirk
To: Nicolas Boichat <drinkcat@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_021148_715788_E1F112F9 
X-CRM114-Status: GOOD (  21.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
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

On Thu, Oct 10, 2019 at 6:08 PM Nicolas Boichat <drinkcat@chromium.org> wrote:
>
> On Thu, Oct 10, 2019 at 3:50 PM Tomasz Figa <tfiga@chromium.org> wrote:
> >
> > MediaTek XHCI host controller does not support 64-bit addressing despite
> > the AC64 bit of HCCPARAMS1 register being set. The platform-specific
> > glue sets the DMA mask to 32 bits on its own, but it has no effect,
> > because xhci_gen_setup() overrides it according to hardware
> > capabilities.
> >
> > Use the XHCI_NO_64BIT_SUPPORT quirk to tell the XHCI core to force
> > 32-bit DMA mask instead.
> >
> > Signed-off-by: Tomasz Figa <tfiga@chromium.org>
>
> Can we add a Fixes: tag for stable backports?
> (after addressing the other comments of course)
>

The problem with Fixes: is that this patch depends on the quirk being
there, but the offending code was merged earlier. Do you know how to
handle such cases?

>
> > ---
> >  drivers/usb/host/xhci-mtk.c | 10 +++++-----
> >  1 file changed, 5 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/usb/host/xhci-mtk.c b/drivers/usb/host/xhci-mtk.c
> > index b18a6baef204a..4d101d52cc11b 100644
> > --- a/drivers/usb/host/xhci-mtk.c
> > +++ b/drivers/usb/host/xhci-mtk.c
> > @@ -395,6 +395,11 @@ static void xhci_mtk_quirks(struct device *dev, struct xhci_hcd *xhci)
> >         xhci->quirks |= XHCI_SPURIOUS_SUCCESS;
> >         if (mtk->lpm_support)
> >                 xhci->quirks |= XHCI_LPM_SUPPORT;
> > +       /*
> > +        * MTK host controller does not support 64-bit addressing, despite
> > +        * having the AC64 bit of the HCCPARAMS1 register set.
> > +        */
> > +       xhci->quirks |= XHCI_NO_64BIT_SUPPORT;
> >  }
> >
> >  /* called during probe() after chip reset completes */
> > @@ -488,11 +493,6 @@ static int xhci_mtk_probe(struct platform_device *pdev)
> >                 goto disable_clk;
> >         }
> >
> > -       /* Initialize dma_mask and coherent_dma_mask to 32-bits */
> > -       ret = dma_set_mask_and_coherent(dev, DMA_BIT_MASK(32));
> > -       if (ret)
> > -               goto disable_clk;
> > -
> >         hcd = usb_create_hcd(driver, dev, dev_name(dev));
> >         if (!hcd) {
> >                 ret = -ENOMEM;
> > --
> > 2.23.0.581.g78d2f28ef7-goog
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
