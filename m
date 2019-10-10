Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0157BD24BB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 11:00:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L9thfzggsQytzTvD7CLE0z9tvLElN5MKBPW2sYPYi+E=; b=LXBn9Z4caTjv1t
	qMVAx6JmO+fgBVBHf+9Eo8APMNyBfD0Qu4p0HH+E5YCH8lazWRDa0INPdLDwJWVXnEncCY13iHKO3
	ArNAnDfwsfdOyqshYkQ3k7ZTb5XJk3UY8xmPWOzAFoT2EH8HNJsCSNUGHJfW/1OuqiM/tGCv2VmFp
	KwV5BP28fc4lIj07H8q/AoZU2GyYJ/7vrV893yum5Z236uYetUaoe4G95dJoyA6Bvjz4lHsNIR5yX
	IcfwalB/8b7FWWsBl9SUmwP3g+AST39JRAmP0v4a+ljXQvyXfziCHcJtMe7s0hI0wXZZ6KzRGUHJI
	ugez8VZObupsptcncLcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIUJH-0005E4-6Q; Thu, 10 Oct 2019 09:00:35 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIUJ9-0005DM-KY
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 09:00:29 +0000
Received: by mail-ed1-x544.google.com with SMTP id l21so4751273edr.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 10 Oct 2019 02:00:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=M/M543PbwhblZM8pHPCeGHKu1Y2HTPBlq7aWQrvh6aI=;
 b=R0EjnTiI2Cah1wjjJ4cd/+TWE9eya83185lC66F9wz7ceGrmKKis6duKyG0Hrul8kJ
 9jAYQQNAIoxSwQWHHNeir20gkJwMzmf91DIEJZnS08eRM4k/ZQe2qKWcBw4Pi9Ei7YGB
 0bNl3QHzl6Zj9qtiJ+ItLqSFATwYx+uI0a88A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=M/M543PbwhblZM8pHPCeGHKu1Y2HTPBlq7aWQrvh6aI=;
 b=axWtVPs95zwbV74BY9AEXupV49jT8YbTFaM0vtjtyQeKrC+j9UcPTZom5bitZ5s3Pu
 PbdWjn9veDhFuvWBYSFafPQBiabTNuXP9tJ4ATqi8Xkct3TI5mY9RgKfoYv6KdOzUwFO
 krHVBcP84Fy4ptqFlVY5XS6HJf8HxCswGTesUy4bbfiUJbFUbNI//LDSIMTQ736GUDnx
 N051i6ycxZyVMyjfsLonbAxdwYeicfivTrvC+Vz6WD/rAxkhsbesnT+01K1WMp7xeShD
 19Alny6m3X82g1os2zjHoLeMoybJgPQH187FB1nrKK1h62H7KvMyAxn7HUH3a+esmVH3
 yBfA==
X-Gm-Message-State: APjAAAU7j/JR9kgkr6WCzY4WE2v32pBLQ7TuYJ156EjQi0SQ0deiQxB6
 +l9o58X2QNgiBJlrZI3EjbSHnl83q4yDeQ==
X-Google-Smtp-Source: APXvYqykdQUNfj0Y2h9rBpjnVWgODVgnLo/maUkgFWhMXpKPPrvsAMmrS34HHA3c3VKwB9hFTffxTQ==
X-Received: by 2002:a17:906:218a:: with SMTP id
 10mr7126502eju.38.1570698025836; 
 Thu, 10 Oct 2019 02:00:25 -0700 (PDT)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com.
 [209.85.221.48])
 by smtp.gmail.com with ESMTPSA id u30sm809538edd.18.2019.10.10.02.00.23
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 10 Oct 2019 02:00:23 -0700 (PDT)
Received: by mail-wr1-f48.google.com with SMTP id r3so6842808wrj.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 10 Oct 2019 02:00:23 -0700 (PDT)
X-Received: by 2002:a5d:540e:: with SMTP id g14mr7746971wrv.177.1570698023302; 
 Thu, 10 Oct 2019 02:00:23 -0700 (PDT)
MIME-Version: 1.0
References: <20191010075004.192818-1-tfiga@chromium.org>
 <1570697118.32135.20.camel@mhfsdcap03>
In-Reply-To: <1570697118.32135.20.camel@mhfsdcap03>
From: Tomasz Figa <tfiga@chromium.org>
Date: Thu, 10 Oct 2019 18:00:09 +0900
X-Gmail-Original-Message-ID: <CAAFQd5AU53=BRUrK_i-0dRYueVoSd3Bg3AtvZUMHgFv3hLuNug@mail.gmail.com>
Message-ID: <CAAFQd5AU53=BRUrK_i-0dRYueVoSd3Bg3AtvZUMHgFv3hLuNug@mail.gmail.com>
Subject: Re: [PATCH] usb: mtk-xhci: Set the XHCI_NO_64BIT_SUPPORT quirk
To: Chunfeng Yun <chunfeng.yun@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_020027_699264_F82F8963 
X-CRM114-Status: GOOD (  22.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
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
Cc: Nicolas Boichat <drinkcat@chromium.org>,
 Changqi Hu <Changqi.Hu@mediatek.com>, Mathias Nyman <mathias.nyman@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 open list <linux-kernel@vger.kernel.org>, Shik Chen <shik@chromium.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Chunfeng,

On Thu, Oct 10, 2019 at 5:45 PM Chunfeng Yun <chunfeng.yun@mediatek.com> wrote:
>
> Hi, Tomasz,
>
> On Thu, 2019-10-10 at 16:50 +0900, Tomasz Figa wrote:
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
> > ---
> >  drivers/usb/host/xhci-mtk.c | 10 +++++-----
> >  1 file changed, 5 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/usb/host/xhci-mtk.c b/drivers/usb/host/xhci-mtk.c
> > index b18a6baef204a..4d101d52cc11b 100644
> > --- a/drivers/usb/host/xhci-mtk.c
> > +++ b/drivers/usb/host/xhci-mtk.c
> > @@ -395,6 +395,11 @@ static void xhci_mtk_quirks(struct device *dev, struct xhci_hcd *xhci)
> >       xhci->quirks |= XHCI_SPURIOUS_SUCCESS;
> >       if (mtk->lpm_support)
> >               xhci->quirks |= XHCI_LPM_SUPPORT;
> > +     /*
> > +      * MTK host controller does not support 64-bit addressing, despite
> > +      * having the AC64 bit of the HCCPARAMS1 register set.
> > +      */
> > +     xhci->quirks |= XHCI_NO_64BIT_SUPPORT;
> Somes SoCs support 64bits in fact, so can't support this quirk, do you
> encounter any issues without this quirk?
>

Thanks for taking a look at this patch.

Yes, on MT8183 the DMA mask ended up being set to 64 bits, but
according to the information I received from MediaTek, the controller
on that SoC only supports 32 bits.

If some SoCs support only 32 bits and some support 64 bits, we may
either need to use different DT compatible string for them or add a DT
property and set the quirk based on that. Right now in upstream we
have:

1) "mediatek,mt8173-xhci", used by:
MT8173

2)"mediatek,mtk-xhci", used by:
MT2712
MT7622
MT8183 (not yet upstream, but I suppose it's on the mailing lists)

Would you be able to check which of the SoCs above report 64 bits but
support only 32? (and so would need this quirk)

Best regards,
Tomasz

> >  }
>
> >
> >  /* called during probe() after chip reset completes */
> > @@ -488,11 +493,6 @@ static int xhci_mtk_probe(struct platform_device *pdev)
> >               goto disable_clk;
> >       }
> >
> > -     /* Initialize dma_mask and coherent_dma_mask to 32-bits */
> > -     ret = dma_set_mask_and_coherent(dev, DMA_BIT_MASK(32));
> > -     if (ret)
> > -             goto disable_clk;
> > -
> >       hcd = usb_create_hcd(driver, dev, dev_name(dev));
> >       if (!hcd) {
> >               ret = -ENOMEM;
>
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
