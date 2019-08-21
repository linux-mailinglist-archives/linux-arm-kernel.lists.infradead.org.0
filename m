Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC8CA9765B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 11:44:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4+mg2P3X7/uC8Dvu3+PIB18sQBlz+LQqa1YYZ1TEzZs=; b=YUKJm26w2PvAe+
	8nhFLsiNQtIM8y2WlhEclvDsffDvvLurt/rKl2iZvaPIXIUqlIE3qJsdBTKlo5NJ7KS067xpYQtFg
	/M+UiT9oADpoonFHFdidONNZWVTp5NOsK7GVFyALTG6gUC2UTgmf5aEFjc5A34zGaohivPMLJWTCd
	YfTB06qvtfnb/I2rMQBAb5hk20rAyUkh9x5PaDRGD5b/qUFDSHoTa0F8rD81RPZ5eW0jnuLep+nlw
	Ov7tmvMWxLRHCEaegMp9b0QcePmfWaLF7c1GYT2t/n/gmOPoOHxYSHsFhPD0LU1mcPG36LrmyF04x
	pyuYkiERZvO3EHrBXr7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0N9v-0006He-GE; Wed, 21 Aug 2019 09:44:04 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0N94-0006Gr-2X
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 09:43:13 +0000
Received: by mail-wr1-x442.google.com with SMTP id p17so1356844wrf.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 02:43:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yhh05Lx1Wiyqwc4CFdoUHwTxVsPR0zakJwfwav/HC18=;
 b=PVj+qa4NJnbMWOZAIx9AAkNEG1Iyewb7tu5yt41xycqGFxGRF/KX2EdJ/JIMt2leC0
 1p3aNbchhOtqTj/x+g6Cl2hRsTJUOHVLXriQ4dwCM/RUs/qHip/w6b+E77BnytnFDc0Z
 19J9nubVPao7e85KC72Y+R3kBJOfQq6DVgrlhoNwpjerPNZh1HiRZx4AxRoYN2Kh2vHU
 VQK2F3nYhu5dCJ8vRwOiQ8AnmUzk+qwJZBdjJsWrIepI8jzIUOhULXD8wiSQOKERyK8D
 IJKJSQoIOvU/a/iP5cLohN82Uc+pfTj05bz5ma/MyknX60t3Lkp8+8LuG1uw24UbfDTl
 cSnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yhh05Lx1Wiyqwc4CFdoUHwTxVsPR0zakJwfwav/HC18=;
 b=dMiohiInFkv2lUy21JXQl7eevpQtNcs2YNOf1O0+PCIhyeMLExnAPDqRn/Tfznadhc
 jZX+eFazDP6dwYSbXV9zwV9j3TucmFnUOG8RS3LoKWgTidU0Q21J4AciA1bSe5+K+QwH
 BpceHNIRW7ALZlNyX+s5czp2OopjIxygBzdfVXLKqyNZhdQaBYybPfMC+zrE/Xh5utM+
 o2Xnv1GUq5HOomstPn/vwXThI2lBkIibeYOFUvcMl9BjKe2y30/mYzHpOkDtG4hCqzk5
 Yo+QpXHmc2S8uRwuYNFelSJJGXlGAHkn53clJrpiSu2PbZTJqwzSKrp45mNeMXF1TV4Q
 ywBQ==
X-Gm-Message-State: APjAAAVM3/hs8xoHJRj+fZ63XApHd5h4PkbqGE7OtPnhBFJb9dokBJcW
 Io3iz0VN66/iFWnl1Bu+5H7gtmmX9F80gQkm/Dpbjw==
X-Google-Smtp-Source: APXvYqzgLiqDBoUMfrN5PU/uJb8XTsDfE3cVqCi/aYLhYzZuK+GnS16Vxrx3MfmlOp214llXnxta9V24a17Yg3La7Gw=
X-Received: by 2002:adf:9e09:: with SMTP id u9mr7516435wre.169.1566380588039; 
 Wed, 21 Aug 2019 02:43:08 -0700 (PDT)
MIME-Version: 1.0
References: <20190802053744.5519-1-clin@suse.com>
 <20190820115645.GP13294@shell.armlinux.org.uk>
 <CAKv+Gu_0wFw5Mjpdw7BEY7ewgetNgU=Ff1uvAsn0iHmJouyKqw@mail.gmail.com>
 <20190821061027.GA2828@linux-8mug>
 <CAKv+Gu8Yny8cVPck3rPwCPvJBvcZKMHti_9bkCTM4H4cZ_43fg@mail.gmail.com>
 <20190821071100.GA26713@rapoport-lnx>
 <CAKv+Gu99z3V1B68CU8qhNwwffqDxNBOM6t3Q8-V7qpbDkf-Cwg@mail.gmail.com>
 <20190821082927.GC26713@rapoport-lnx>
In-Reply-To: <20190821082927.GC26713@rapoport-lnx>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Wed, 21 Aug 2019 12:42:56 +0300
Message-ID: <CAKv+Gu91d3NrcEGsz6yapVnf3NV=F-cGeftdPo=H-cNTXCC2EA@mail.gmail.com>
Subject: Re: [PATCH] efi/arm: fix allocation failure when reserving the kernel
 base
To: Mike Rapoport <rppt@linux.ibm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_024310_155658_DB0809DF 
X-CRM114-Status: GOOD (  19.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Juergen Gross <JGross@suse.com>, Joey Lee <JLee@suse.com>,
 "linux-efi@vger.kernel.org" <linux-efi@vger.kernel.org>,
 "guillaume.gardet@arm.com" <guillaume.gardet@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Chester Lin <clin@suse.com>, "geert@linux-m68k.org" <geert@linux-m68k.org>,
 "ren_guo@c-sky.com" <ren_guo@c-sky.com>, Gary Lin <GLin@suse.com>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>,
 "mingo@kernel.org" <mingo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 21 Aug 2019 at 11:29, Mike Rapoport <rppt@linux.ibm.com> wrote:
>
> On Wed, Aug 21, 2019 at 10:29:37AM +0300, Ard Biesheuvel wrote:
> > On Wed, 21 Aug 2019 at 10:11, Mike Rapoport <rppt@linux.ibm.com> wrote:
> > >
...
> > > I think the only missing part here is to ensure that non-reserved memory in
> > > bank 0 starts from a PMD-aligned address. I believe this could be done if
> > > EFI stub, but I'm not really familiar with it so this just a semi-educated
> > > guess :)
> > >
> >
> > Given that it is the ARM arch code that imposes this requirement, how
> > about adding something like this to adjust_lowmem_bounds():
> >
> > if (memblock_start_of_DRAM() % PMD_SIZE)
> >     memblock_mark_nomap(memblock_start_of_DRAM(),
> >         PMD_SIZE - (memblock_start_of_DRAM() % PMD_SIZE));
>
> memblock_start_of_DRAM() won't work here, as it returns the actual start of
> the DRAM including NOMAP regions. Moreover, as we cannot mark a region
> NOMAP inside for_each_memblock() this should be done beforehand.
>
> I think something like this could work:
>
> diff --git a/arch/arm/mm/mmu.c b/arch/arm/mm/mmu.c
> index 2f0f07e..f2b635b 100644
> --- a/arch/arm/mm/mmu.c
> +++ b/arch/arm/mm/mmu.c
> @@ -1178,6 +1178,19 @@ void __init adjust_lowmem_bounds(void)
>          */
>         vmalloc_limit = (u64)(uintptr_t)vmalloc_min - PAGE_OFFSET + PHYS_OFFSET;
>
> +       /*
> +        * The first usable region must be PMD aligned. Mark its start
> +        * as MEMBLOCK_NOMAP if it isn't
> +        */
> +       for_each_memblock(memory, reg) {
> +               if (!memblock_is_nomap(reg) && (reg->base % PMD_SIZE)) {
> +                       phys_addr_t size = PMD_SIZE - (reg->base % PMD_SIZE);
> +
> +                       memblock_mark_nomap(reg->base, size);
> +                       break;

We should break on the first !NOMAP memblock, even if it is already
PMD aligned, but beyond that, this looks ok to me.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
