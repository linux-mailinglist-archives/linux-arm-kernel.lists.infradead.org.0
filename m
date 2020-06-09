Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A3DD1F3F29
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 17:23:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ogbQb1s/nmdEsPk/vNnByZQdooLworNW4h7YQ/QJ9b8=; b=ZLNcXoOwhgaP12
	wtPzr/dnZQSCVutiIcQ9yyJxXpx/tmk5QPWcCqYskuk1D7pc0luu9U3u7rrAxTPyvrcfqyNnRR9RN
	tNBVCqLh+a5ncFfdl8tvxKxZHUqkwaxWDiIXvKNIld9N99C7p5Pb+BF4iPqbJa2C+xU1U0LNchwGj
	PZ1XcavPUi0oXAylByxp+XZyTQWxUXer8RMkLYT1lBsEUAf7jE/BUaO33rCoDyzM2pr5S12sTI0aE
	Q3Uwxfkq1r8V71MOH+JDl7Eiqk0wBrVgFpad4f/17nTIa21p/f4fgU9iFQ28X+jv2ajuOADdmHu9g
	OVQ5217RjtylJkp+xzYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jig5r-00071P-K6; Tue, 09 Jun 2020 15:23:15 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jig5f-000714-8l
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 15:23:04 +0000
Received: by mail-io1-xd43.google.com with SMTP id r77so10203758ior.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jun 2020 08:23:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Tm2L6wHDp3vnilQA0CPW6PPlVERzEGHmJnGxVxjkT7E=;
 b=T+Zzc+a927fTmCQYyxa3HRIQOfzwB1rlff67AJQPfhedtRBsi15M7hvfbqDBXLIz2Q
 4KRSTB9cKCGWi5zszA165U7802EQ1b74v54j3AsREkXTLXlxzSrced4LqVHdtgrT1BQ9
 icKt9YViOgQcAKVNZjPcxK88gttpktYPeUNKqPo0gT68ATxzhYHzokNHc6pQNtrlY3IB
 KLlyZtOGJ7375RmWBKPKHCsRXSeqb8bmjuZkdeSsCP5k1BIfCRczdUBF+5569MGYmO+T
 9qN0v9U3DtCz4Hj+aIgzbWRsAMWfOM1PmMsRZr4OhT+ygqb8U0vc40a1PdHjSqLm2//i
 88sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Tm2L6wHDp3vnilQA0CPW6PPlVERzEGHmJnGxVxjkT7E=;
 b=P8y9DBGXLgTu/09QEGbidhN+hcZEIJNShQ0+Tj/GI1PXMEXXQ+LFmNIcI3L0WlTf6q
 vACpYYEvBAGc8uJm9HD9TLklXlo0GzgMioaCj8Fk0DFv9gWlWiMUavpa4QsDlxM36vnz
 GYnMIPZCVUdJrtsCnLevHMHXiw0uSxxfm9C03mmRFT+FF6cxgZEolTbyWbrv+GwLI3DV
 0WVfQwXHP0c1ZqcYU4V7vyRx6LwI3GAleMRQIm3k9bkg/TEd8v30LWw6Pw5ugVupw+Ob
 E0NAOsRe5OgVJMpZH49qrYF3iyZSnapAjSv3ckNVHI5NoW7H0gwI0Qx/kI9qt1xDjGoZ
 VesA==
X-Gm-Message-State: AOAM5316suZB22NRkrBXltkGaIcX03fvC40L5yAV1j7tnfHvKW0rW6m+
 NmqBzV0Z4fURcuMfVHt0nkuiHBB2k4jBV1cL7uU=
X-Google-Smtp-Source: ABdhPJzVZNaa7SnqUFgCpq6WJTUKH4jHLaYl37zbFlWb1E6BwdaMRDZEkUg9vCMO67A149eiG/aXayH1ph7RpIU/MNM=
X-Received: by 2002:a05:6638:d05:: with SMTP id
 q5mr26413027jaj.2.1591716182166; 
 Tue, 09 Jun 2020 08:23:02 -0700 (PDT)
MIME-Version: 1.0
References: <1591605038-8682-1-git-send-email-dillon.minfei@gmail.com>
 <1591605038-8682-3-git-send-email-dillon.minfei@gmail.com>
 <90df5646-e0c4-fcac-d934-4cc922230dd2@arm.com>
In-Reply-To: <90df5646-e0c4-fcac-d934-4cc922230dd2@arm.com>
From: dillon min <dillon.minfei@gmail.com>
Date: Tue, 9 Jun 2020 23:22:24 +0800
Message-ID: <CAL9mu0+__0Z3R3TcSrj9-kPxsyQHKS9WqK1u58P0dEZ+Jd-wbQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm-nommu: Add use_reserved_mem() to check if device
 support reserved memory
To: Vladimir Murzin <vladimir.murzin@arm.com>, hch@lst.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_082303_378617_793EDF9F 
X-CRM114-Status: GOOD (  24.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dillon.minfei[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Alexandre Torgue <alexandre.torgue@st.com>,
 linux@armlinux.org.uk,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, tglx@linutronix.de,
 info@metux.net, linux-stm32@st-md-mailman.stormreply.com, allison@lohutok.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Vladimir,

Thanks for reviewing.

Hi Christoph Hellwig,

I just want to know if kernel dma mapping/direct is focused on
platforms with MMU.
leave arch code to handle dma coherent memory management themself for
no-MMU platform.

so, you just return error code in kernel/dma/mapping.c,direct.c
without CONFIG_MMU defined ?
which means dma-direct mapping doesn't support !CONFIG_MMU is not a
bug, but design as it's.
or, just return error code currently, will add dma direct mapping
support for !CONFIG_MMU in the
future?

As Vladimir Murzin's suggestion has changes in kernel code, I need
your input to get
the design goal about dma-direct mapping, thanks.

On Tue, Jun 9, 2020 at 10:07 PM Vladimir Murzin <vladimir.murzin@arm.com> wrote:
>
> On 6/8/20 9:30 AM, dillon.minfei@gmail.com wrote:
> > From: dillon min <dillon.minfei@gmail.com>
> >
> > Currently, we use dma direct to request coherent memory for driver on armv7m
> > platform if 'cacheid' is zero, but dma_direct_can_mmap() is return false,
> > dma_direct_mmap() return -ENXIO for CONFIG_MMU undefined platform.
> >
> > so we have to back to use 'arm_nommu_dma_ops', add use_reserved_mem() to check
> > if device support global or device corherent memory. if yes, then call
> > set_dma_ops()
> >
> > Signed-off-by: dillon min <dillon.minfei@gmail.com>
> > ---
> >  arch/arm/mm/dma-mapping-nommu.c | 28 +++++++++++++++++++++++++++-
> >  1 file changed, 27 insertions(+), 1 deletion(-)
> >
> > diff --git a/arch/arm/mm/dma-mapping-nommu.c b/arch/arm/mm/dma-mapping-nommu.c
> > index 287ef898a55e..e1c213fec152 100644
> > --- a/arch/arm/mm/dma-mapping-nommu.c
> > +++ b/arch/arm/mm/dma-mapping-nommu.c
> > @@ -14,6 +14,7 @@
> >  #include <asm/cacheflush.h>
> >  #include <asm/outercache.h>
> >  #include <asm/cp15.h>
> > +#include <linux/of.h>
> >
> >  #include "dma.h"
> >
> > @@ -188,6 +189,31 @@ const struct dma_map_ops arm_nommu_dma_ops = {
> >  };
> >  EXPORT_SYMBOL(arm_nommu_dma_ops);
> >
> > +static bool use_reserved_mem(struct device *dev)
> > +{
> > +     struct device_node *np;
> > +
> > +     np = of_find_node_by_path("/reserved-memory/linux,dma");
> > +
> > +     if (np &&
> > +             of_device_is_compatible(np, "shared-dma-pool") &&
> > +             of_property_read_bool(np, "no-map") &&
> > +             of_property_read_bool(np, "linux,dma-default")) {
> > +             /* has global corherent mem support */
> > +             of_node_put(np);
> > +             return true;
> > +     }
> > +
> > +     np = of_parse_phandle(dev->of_node, "memory-region", 0);
> > +     if (np) {
> > +             /* has dev corherent mem support */
> > +             of_node_put(np);
> > +             return true;
> > +     }
> > +
> > +     return false;
> > +}
> > +
> >  void arch_setup_dma_ops(struct device *dev, u64 dma_base, u64 size,
> >                       const struct iommu_ops *iommu, bool coherent)
> >  {
> > @@ -206,6 +232,6 @@ void arch_setup_dma_ops(struct device *dev, u64 dma_base, u64 size,
> >               dev->archdata.dma_coherent = (get_cr() & CR_M) ? coherent : true;
> >       }
> >
> > -     if (!dev->archdata.dma_coherent)
> > +     if (!dev->archdata.dma_coherent || use_reserved_mem(dev))
> >               set_dma_ops(dev, &arm_nommu_dma_ops);
> >  }
> >
>
> Sorry I have to NAK this hack :(
>
> Digging git history reveled 79964a1c2972 ("ARM: 8633/1: nommu: allow mmap when !CONFIG_MMU")
> which make me wonder if diff below does the trick for you
>
> diff --git a/kernel/dma/direct.c b/kernel/dma/direct.c
> index 8f4bbda..8623b9e 100644
> --- a/kernel/dma/direct.c
> +++ b/kernel/dma/direct.c
> @@ -456,14 +456,14 @@ int dma_direct_mmap(struct device *dev, struct vm_area_struct *vma,
>  #else /* CONFIG_MMU */
>  bool dma_direct_can_mmap(struct device *dev)
>  {
> -       return false;
> +       return true;
>  }
>
>  int dma_direct_mmap(struct device *dev, struct vm_area_struct *vma,
>                 void *cpu_addr, dma_addr_t dma_addr, size_t size,
>                 unsigned long attrs)
>  {
> -       return -ENXIO;
> +       return vm_iomap_memory(vma, vma->vm_start, (vma->vm_end - vma->vm_start));;
>  }
>  #endif /* CONFIG_MMU */
Yes, this is a quite nice way to support !CONFIG_MMU without cache on
platforms. I will try your suggestion.
thanks

>
> Cheers
> Vladimir

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
