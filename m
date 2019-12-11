Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41A8811B1DF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 16:33:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6CVsdT5aNeI7CF2ShblunhvMDQ/y9wuovZe8aWgY2Vw=; b=D0B9xJblj2y5mb
	+M+WZW6zeXocQSuoVViFAl2kgPfgjSa5qfsSZq9IFMsyFQdpuXOlg/1ThZZbvalxIVoCQFCHDnhxn
	9h3wGbqzLel+NVn3t8D2ZVjMCqfvLaeMKn895cTnk34Uj4FiiQKPua2dUoqSvhf4uH05/VEwNHtDt
	KIAFTPmFjXOLkvaKiD/QjolJUshAP5FX4qdaw/piHhEgsyOPaOlWRJqstJpW4WrWEimSgCpjrk/6i
	7Pi9OB7+krqKn9Y2XN/EYMig1z4LGCCiQGOEXSH0fMeXPJyxe6jgG6CKy+v9U1hw8fXbq602B+BbB
	OodDAwePZxc19tlBaLig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if3zS-0008Lo-Hg; Wed, 11 Dec 2019 15:33:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if3zJ-0008L4-3W
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 15:33:18 +0000
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com
 [209.85.128.42])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 764172467A
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Dec 2019 15:33:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576078396;
 bh=23YlAnpt744eiuxvp4LvcKrabFlhDLD+8Q8Ilp9BmqY=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=HlGrVixYom2ssG9+XLm7A52FHM9+bgKtLuuQ/18ur59yNWaULj75MFKcI3PpKX+2Z
 7RmrdC8S2f81L+VlreVej0IgovZwco6qqLgr56mFuqRenY+ugnDwhXB2KJYQ7cNYEQ
 7c2A37KwttEs2TgM4ezgBcYg1z9jEEe3EbnQS1dY=
Received: by mail-wm1-f42.google.com with SMTP id q9so7569899wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Dec 2019 07:33:16 -0800 (PST)
X-Gm-Message-State: APjAAAWnhjhnQJj8ybWHBnE5fGyb6otjPRLpQfzNpCfL/EwpIa5t4F09
 iw9g96wNCTXVq6uwK5PsIEO0ovgoqs7Knvv5P2o=
X-Google-Smtp-Source: APXvYqwjSC19g0o0KY/WlIEeOOsXoviY4IAXr7g5yUJbzDXE4omBhvNmA6CAL+nCmUBxUwEofGEO2mzo6hRqBLipPL4=
X-Received: by 2002:a05:600c:2409:: with SMTP id
 9mr356922wmp.109.1576078394867; 
 Wed, 11 Dec 2019 07:33:14 -0800 (PST)
MIME-Version: 1.0
References: <20191211104152.26496-1-wens@kernel.org>
 <28dfaeab-73cd-041b-9894-776064d13245@arm.com>
In-Reply-To: <28dfaeab-73cd-041b-9894-776064d13245@arm.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Wed, 11 Dec 2019 23:33:05 +0800
X-Gmail-Original-Message-ID: <CAGb2v640NEj+WK_zj-LouvwkLTVrwyMgWGq_xdU8qJkOKF0FFQ@mail.gmail.com>
Message-ID: <CAGb2v640NEj+WK_zj-LouvwkLTVrwyMgWGq_xdU8qJkOKF0FFQ@mail.gmail.com>
Subject: Re: [PATCH] ARM: dma-api: fix max_pfn off-by-one error in
 __dma_supported()
To: Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_073317_184206_E5532D6C 
X-CRM114-Status: GOOD (  30.93  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-kernel <linux-kernel@vger.kernel.org>,
 stable <stable@vger.kernel.org>, Russell King <linux@armlinux.org.uk>,
 Chen-Yu Tsai <wens@kernel.org>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 11, 2019 at 9:41 PM Robin Murphy <robin.murphy@arm.com> wrote:
>
> On 11/12/2019 10:41 am, Chen-Yu Tsai wrote:
> > From: Chen-Yu Tsai <wens@csie.org>
> >
> > max_pfn, as set in arch/arm/mm/init.c:
> >
> >      static void __init find_limits(unsigned long *min,
> >                                  unsigned long *max_low,
> >                                  unsigned long *max_high)
> >      {
> >           *max_low = PFN_DOWN(memblock_get_current_limit());
> >           *min = PFN_UP(memblock_start_of_DRAM());
> >           *max_high = PFN_DOWN(memblock_end_of_DRAM());
> >      }
> >
> > with memblock_end_of_DRAM() pointing to the next byte after DRAM. As
> > such, max_pfn points to the PFN after the end of DRAM.
> >
> > Thus when using max_pfn to check DMA masks, we should subtract one
> > when checking DMA ranges against it.
> >
> > Commit 8bf1268f48ad ("ARM: dma-api: fix off-by-one error in
> > __dma_supported()") fixed the same issue, but missed this spot.
> >
> > This issue was found while working on the sun4i-csi v4l2 driver on the
> > Allwinner R40 SoC. On Allwinner SoCs, DRAM is offset at 0x40000000,
> > and we are starting to use of_dma_configure() with the "dma-ranges"
> > property in the device tree to have the DMA API handle the offset.
> >
> > In this particular instance, dma-ranges was set to the same range as
> > the actual available (2 GiB) DRAM. The following error appeared when
> > the driver attempted to allocate a buffer:
> >
> >      sun4i-csi 1c09000.csi: Coherent DMA mask 0x7fffffff (pfn 0x40000-0xc0000)
> >      covers a smaller range of system memory than the DMA zone pfn 0x0-0xc0001
> >      sun4i-csi 1c09000.csi: dma_alloc_coherent of size 307200 failed
> >
> > Fixing the off-by-one error makes things work.
> >
> > Fixes: 11a5aa32562e ("ARM: dma-mapping: check DMA mask against available memory")
> > Fixes: 9f28cde0bc64 ("ARM: another fix for the DMA mapping checks")
> > Fixes: ab746573c405 ("ARM: dma-mapping: allow larger DMA mask than supported")
> > Cc: <stable@vger.kernel.org>
> > Signed-off-by: Chen-Yu Tsai <wens@csie.org>
> > ---
> >   arch/arm/mm/dma-mapping.c | 4 ++--
> >   1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/arch/arm/mm/dma-mapping.c b/arch/arm/mm/dma-mapping.c
> > index e822af0d9219..f4daafdbac56 100644
> > --- a/arch/arm/mm/dma-mapping.c
> > +++ b/arch/arm/mm/dma-mapping.c
> > @@ -227,12 +227,12 @@ static int __dma_supported(struct device *dev, u64 mask, bool warn)
> >        * Translate the device's DMA mask to a PFN limit.  This
> >        * PFN number includes the page which we can DMA to.
> >        */
> > -     if (dma_to_pfn(dev, mask) < max_dma_pfn) {
> > +     if (dma_to_pfn(dev, mask) < max_dma_pfn - 1) {
>
> I think this correction actually wants to happen a couple of lines up in
> the definition:
>
>         unsigned long max_dma_pfn = min(max_pfn, arm_dma_pfn_limit);
>
> max_pfn is indeed an exclusive limit, but AFAICS arm_dma_pfn_limit is
> inclusive, so none of these "+1"s and "-1"s can be entirely right for
> both cases.

You're absolutely right. I'll fix it and send a v2 out.

Thanks

ChenYu

> Robin.
>
> >               if (warn)
> >                       dev_warn(dev, "Coherent DMA mask %#llx (pfn %#lx-%#lx) covers a smaller range of system memory than the DMA zone pfn 0x0-%#lx\n",
> >                                mask,
> >                                dma_to_pfn(dev, 0), dma_to_pfn(dev, mask) + 1,
> > -                              max_dma_pfn + 1);
> > +                              max_dma_pfn);
> >               return 0;
> >       }
> >
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
