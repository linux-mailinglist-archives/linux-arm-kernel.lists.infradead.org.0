Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C0711F7220
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 04:16:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ayWYBFu6naFUGX2lH8j0jjqvG/jaOVfOkLCJBRyPNoo=; b=KKkBfCv6qVqylt
	9Xg+y7snr03EUR34PEs2JimbBNMEGWyvHv9py3G+/xhTEAlDYMF8UkRHQGByZK6DgbZpXtyVBPtwN
	wiP2x+So1XyNVlT7clGDeAeen5/dYW3L+fSgqtk7g4vXbR+LKTQ908ezL2G8k5w+/2HC6o8YWTVgP
	OjZ1czSNJViTBmfQXMskXjJFLAUXGG9EoAoNVXZeI+poYWHCxH9vC/LzV0HBKJYLAXOtgXyHN1XaT
	ulU0d0JI3EYDJo4aton+qRsFqSKjEdflnznq6zf1r0kD4FhkLBN1HtWg+IxIp12r3MWZdz4BhHe8v
	jU16Oz03xAR0JbQP9s9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjZEa-00043q-JW; Fri, 12 Jun 2020 02:15:56 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjZER-00043E-On
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 02:15:49 +0000
Received: by mail-io1-xd44.google.com with SMTP id t9so8652593ioj.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jun 2020 19:15:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NBuImNZJUOHAcMdNirnqNdfxcsQ2t26UAs7QUyiyLrA=;
 b=CSvZe25C2fwv4G8CtuJ5LGADD7XH1+hw3iXV3UPdybI2Wn5uesXsz6c2ZXa8XqBuNu
 9MUqBYO00T1Dlka13KaqXswvqCfxqtdF14PATYtXoQkymTy4LobTZZujA+y65BQXu6Vt
 IyFvDgL+E97bi2woUM6AIIy6coqRYOvjJnLFKXvWNREnlN0DiowuGK87YtfmPgB5ibRK
 /thKJEo3PcrmOyiF6jn3hMYxeLEiAJLnNc2XKn5suQGDqeR7nKzoLqk3Xntbh3ERpFNN
 7ytP9nTB8B4Q3ZYCpDFA8HEzYAmQ46D6slN1tB+7XqzPPcbzTFrGTDuamjgrj7UG8qCp
 WMrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NBuImNZJUOHAcMdNirnqNdfxcsQ2t26UAs7QUyiyLrA=;
 b=Qm2qttS/dipVR2Y5oCIcxpKDf1dOLRxYEuU1gBPYOrWSoX2szF1j5UhOcVG/CYV6A2
 iqLbA4Y8HOjIb5KXY/ZuJ5lAB0Xi1WHq++2hd2L0KA5PfixoDgjuyvF14An2ZzK08DSV
 lhslegti+VRhVUvGklwjYpz060bYAlqWCaPxJCVF92xaeFk3YI33pHxuuT7TL2oOcrxQ
 0bBAUZt3CdQd2qkn5GSUZP9z8a/p6T8h/yZcaA91eH4JSSeXHZJM3TDun2eWydPfZAUQ
 zxSNfOX4lDalfVyNiU2eb7XwHPPtWEW1Gq4DMy9szA/EpYuRyHQt3jW9eMCZTzGnX4Ne
 nHaQ==
X-Gm-Message-State: AOAM532mFmcL1M6FzvnyPMalMvLGPqsISIjCiukvLEEMQMLe7CrklMou
 F4W3VDpHp/NDP5x3Mzd5dQdtN2e8lA3WwRZLrpU=
X-Google-Smtp-Source: ABdhPJxMBOHc52GKXGY4KZd1zNrgtQTD0ozbXNYiuxbWME1ZaP5hoURzRjxVunisuqPjhbSGemzXmgIgilN6zmmjmP0=
X-Received: by 2002:a05:6602:2ac9:: with SMTP id
 m9mr11505755iov.68.1591928145464; 
 Thu, 11 Jun 2020 19:15:45 -0700 (PDT)
MIME-Version: 1.0
References: <1591605038-8682-1-git-send-email-dillon.minfei@gmail.com>
 <1591605038-8682-3-git-send-email-dillon.minfei@gmail.com>
 <90df5646-e0c4-fcac-d934-4cc922230dd2@arm.com>
 <20200610072444.GA6293@infradead.org>
 <9c3a7b4e-0190-e9bb-91fe-6d5692559888@arm.com>
 <27881ee0-dc40-e8c6-34f6-712f9acc3fbc@arm.com>
In-Reply-To: <27881ee0-dc40-e8c6-34f6-712f9acc3fbc@arm.com>
From: dillon min <dillon.minfei@gmail.com>
Date: Fri, 12 Jun 2020 10:15:08 +0800
Message-ID: <CAL9mu0+ZfW-DoO-DvhvGO-KeGMA+vuHga3FOxN_Ce7uStGPoqg@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm-nommu: Add use_reserved_mem() to check if device
 support reserved memory
To: Vladimir Murzin <vladimir.murzin@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_191547_806566_1EF3E95D 
X-CRM114-Status: GOOD (  19.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dillon.minfei[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Christoph Hellwig <hch@infradead.org>, Rob Herring <robh+dt@kernel.org>,
 allison@lohutok.net, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 tglx@linutronix.de, info@metux.net, linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 11, 2020 at 11:45 PM Vladimir Murzin
<vladimir.murzin@arm.com> wrote:
>
> On 6/10/20 9:19 AM, Vladimir Murzin wrote:
> > On 6/10/20 8:24 AM, Christoph Hellwig wrote:
> >> Ok, I finally found the original patch from Vladimir.  Comments below:
> >>
> >>> +++ b/kernel/dma/direct.c
> >>> @@ -456,14 +456,14 @@ int dma_direct_mmap(struct device *dev, struct vm_area_struct *vma,
> >>>  #else /* CONFIG_MMU */
> >>>  bool dma_direct_can_mmap(struct device *dev)
> >>>  {
> >>> -   return false;
> >>> +   return true;
> >>>  }
> >>>
> >>>  int dma_direct_mmap(struct device *dev, struct vm_area_struct *vma,
> >>>             void *cpu_addr, dma_addr_t dma_addr, size_t size,
> >>>             unsigned long attrs)
> >>>  {
> >>> -   return -ENXIO;
> >>> +   return vm_iomap_memory(vma, vma->vm_start, (vma->vm_end - vma->vm_start));;
> >>
> >> I think we should try to reuse the mmu dma_direct_mmap implementation,
> >> which does about the same.  This version has been compile tested on
> >> arm-nommu only, let me know what you think: (btw, a nommu_defconfig of
> >> some kind for arm would be nice..)
> >
> > Catch-all nommu_defconfig is not easy for ARM, AFAIK folk carry few hacks
> > for randconfig...
> >
> > Meanwhile, known working NOMMU configs
> >
> > $ git grep "# CONFIG_MMU is not set" arch/arm/configs/
> > arch/arm/configs/efm32_defconfig:# CONFIG_MMU is not set
> > arch/arm/configs/lpc18xx_defconfig:# CONFIG_MMU is not set
> > arch/arm/configs/mps2_defconfig:# CONFIG_MMU is not set
> > arch/arm/configs/stm32_defconfig:# CONFIG_MMU is not set
> > arch/arm/configs/vf610m4_defconfig:# CONFIG_MMU is not set
> >
> >>
> >> diff --git a/kernel/dma/Kconfig b/kernel/dma/Kconfig
> >> index d006668c0027d2..e0dae570a51530 100644
> >> --- a/kernel/dma/Kconfig
> >> +++ b/kernel/dma/Kconfig
> >> @@ -71,6 +71,7 @@ config SWIOTLB
> >>  # in the pagetables
> >>  #
> >>  config DMA_NONCOHERENT_MMAP
> >> +    default y if !MMU
> >>      bool
> >
> > Nit: def_bool !MMU
> >
> >>
> >>  config DMA_REMAP
> >> diff --git a/kernel/dma/direct.c b/kernel/dma/direct.c
> >> index 0a4881e59aa7d6..9ec6a5c3fc578c 100644
> >> --- a/kernel/dma/direct.c
> >> +++ b/kernel/dma/direct.c
> >> @@ -459,7 +459,6 @@ int dma_direct_get_sgtable(struct device *dev, struct sg_table *sgt,
> >>      return ret;
> >>  }
> >>
> >> -#ifdef CONFIG_MMU
> >>  bool dma_direct_can_mmap(struct device *dev)
> >>  {
> >>      return dev_is_dma_coherent(dev) ||
> >> @@ -485,19 +484,6 @@ int dma_direct_mmap(struct device *dev, struct vm_area_struct *vma,
> >>      return remap_pfn_range(vma, vma->vm_start, pfn + vma->vm_pgoff,
> >>                      user_count << PAGE_SHIFT, vma->vm_page_prot);
> >>  }
> >> -#else /* CONFIG_MMU */
> >> -bool dma_direct_can_mmap(struct device *dev)
> >> -{
> >> -    return false;
> >> -}
> >> -
> >> -int dma_direct_mmap(struct device *dev, struct vm_area_struct *vma,
> >> -            void *cpu_addr, dma_addr_t dma_addr, size_t size,
> >> -            unsigned long attrs)
> >> -{
> >> -    return -ENXIO;
> >> -}
> >> -#endif /* CONFIG_MMU */
> >>
> >>  int dma_direct_supported(struct device *dev, u64 mask)
> >>  {
> >>
> >
> > LGTM. FWIW:
> >
> > Reviewed-by: Vladimir Murzin <vladimir.murzin@arm.com>
> >
> >
>
> @dillon, can you give it a try?
>
> I think Christoph would appreciate your Tested-by and that might speed up
> getting fix mainline.
>
sorry for the late response. Yes, it's working

Thanks Christoph

index 8f4bbdaf965e..3e0ecf0b5fb3 100644
--- a/kernel/dma/direct.c
+++ b/kernel/dma/direct.c
@@ -427,7 +427,6 @@ int dma_direct_get_sgtable(struct device *dev,
struct sg_table *sgt,
        return ret;
 }

-#ifdef CONFIG_MMU
 bool dma_direct_can_mmap(struct device *dev)
 {
        return dev_is_dma_coherent(dev) ||
@@ -453,19 +452,6 @@ int dma_direct_mmap(struct device *dev, struct
vm_area_struct *vma,
        return remap_pfn_range(vma, vma->vm_start, pfn + vma->vm_pgoff,
                        user_count << PAGE_SHIFT, vma->vm_page_prot);
 }
-#else /* CONFIG_MMU */
-bool dma_direct_can_mmap(struct device *dev)
-{
-       return false;
-}
-
-int dma_direct_mmap(struct device *dev, struct vm_area_struct *vma,
-               void *cpu_addr, dma_addr_t dma_addr, size_t size,
-               unsigned long attrs)
-{
-       return -ENXIO;
-}
-#endif /* CONFIG_MMU */

Tested-by:  dillon min <dillon.minfei@gmail.com>

>
> Cheers
> Vladimir
>
> > _______________________________________________
> > linux-arm-kernel mailing list
> > linux-arm-kernel@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> >
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
