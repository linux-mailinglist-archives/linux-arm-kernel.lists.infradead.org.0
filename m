Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B49C8D713
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 17:18:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2CN/l+0AojH3fictlA6Xe2Dc4DI979ARln5q7fYTNeI=; b=CWa/SthsTfo+eH
	yUWEJr/oPcGGBXRVWt4uB0z2zS7yfRjewVapnBWtKSUCIonODAeC0yq2BhCkF8FOgIlBM5HZwgKrY
	nS3ArK629IM7qh3zFac4bjQ/NEFRVWHVAwAhFM5b7JqV20lWUzWq2c1AOhjNa9TrTzlk551V/JXLH
	0A8IYJUBzdxiBKRFrXVCG2hhEqLLVH9RgEznctPPHXXmSiK1lKTBAjTiA6GV9GqnGdDKRF1A8xRZu
	4f5r8K9l4usMzeJJnSbipYpeFf5yNLD6WfnMbj849FGFG4FBC6ad1QW6Js0De4EMkCtP2PCsNXGYw
	8c0F2GVssrVFH3MhptNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxv2E-0002Iw-RM; Wed, 14 Aug 2019 15:17:59 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxv22-0002IJ-Iy
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 15:17:48 +0000
Received: by mail-wm1-x341.google.com with SMTP id v19so4808775wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 14 Aug 2019 08:17:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=r9q3s9VwvLyAntilbnUXJMH4tTubIleBBy+fMQksP+s=;
 b=eZxehvMcm/5qAzM0pp1kWdxRuHNMaJIaUKaFSL9Wsk1i+MX1fjNEw4/uOaW6VapArS
 S07rwnX/vF6XaVnaBj0Uk0qvncvgVxK7/rkEuHQINnXlizUATE99+IBcMbvj6pKRYdX9
 udcJLeWtb+JaJbgG7z7spbUBH43x2FHejm8+ib9oMjn8/1f4igkDKY089HkC2Ar5C1Uk
 3Acn2/3nIHSxRQqVhh+VrjUjMHrkQ2ZPggxNOa2xjV+uJNYePXEsZiN72HkxbnDDN/Rt
 bh85OYlLl0z3jU2SctCbkSljBOU09NQqUUe+pTxOSW7K4kkQbZbswkXQ/eIzbrep6x4W
 8KWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=r9q3s9VwvLyAntilbnUXJMH4tTubIleBBy+fMQksP+s=;
 b=bJnmjCrm6NmELDTOIT/1WVfU0y2RP92GdFova00bqB9XHOMoriaUF5s8um4r2s4s2D
 UPSxM4fOmwAL+apVaeQig9n2YWXrsdoot5GpportwdjoTbmOWx2t0NA69pYj1/Rj/oUJ
 yWhcQH1VroUILBcc62NQpJu3zFBDKS75k7MjfjhJlf9ARtx3D/VwSmYBPMs+eYjdCUx2
 nZbIuOi0aS0PW0Je2M0Jxnbrdacvrcyo+Vl5iuaV5WoDGr17TTdCCaop+OBFGb6WGXUF
 FQU0KGwo/8Bi0Pd5Nf3R90TZTATsOUQ5FAbNRTnFMF7JIAr1wNTT26kQLdveK229MwMT
 jE+g==
X-Gm-Message-State: APjAAAVa3a9z4bLm5cSA7Gn3pYQHF/+mexje44wsCgGiBlWZDVR8STKP
 crIabXg6V+1rc0h7o7TzS5sELKv7lAJSVc5fMIH+hA==
X-Google-Smtp-Source: APXvYqyykrAr7JGW2a9LXybP330lJLrU7U1zgClHC/UlBuPJHJEZxDBPa2KCCqPE27D+QJlbuMXqQa6OqljhTAxLg6A=
X-Received: by 2002:a05:600c:231a:: with SMTP id
 26mr8541053wmo.136.1565795864694; 
 Wed, 14 Aug 2019 08:17:44 -0700 (PDT)
MIME-Version: 1.0
References: <20190813170149.26037-1-will@kernel.org>
 <20190813170149.26037-2-will@kernel.org>
 <CAKv+Gu8Gws2MVE5ck1-rjm06X2nOUzRRQL_rCuoXd2Fyp-cOyw@mail.gmail.com>
 <20190813191124.GA21406@capper-ampere.manchester.arm.com>
 <CAKv+Gu-VBwXH+n7A0vr9xXm43HmFqsHOazQA-BuJKSqNhngR2A@mail.gmail.com>
 <20190813203412.GA22563@capper-ampere.manchester.arm.com>
In-Reply-To: <20190813203412.GA22563@capper-ampere.manchester.arm.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Wed, 14 Aug 2019 18:17:33 +0300
Message-ID: <CAKv+Gu-zRageFrtRVkrLDBcSQXLLD05864fenDrDwj6eoX9j-A@mail.gmail.com>
Subject: Re: [PATCH 1/8] arm64: memory: Fix virt_addr_valid() using
 __is_lm_address()
To: Steve Capper <Steve.Capper@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_081746_637812_34346229 
X-CRM114-Status: GOOD (  32.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <Mark.Rutland@arm.com>,
 Catalin Marinas <Catalin.Marinas@arm.com>, Qian Cai <cai@lca.pw>,
 Andrey Konovalov <andreyknvl@google.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>, nd <nd@arm.com>,
 Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 13 Aug 2019 at 23:34, Steve Capper <Steve.Capper@arm.com> wrote:
>
> On Tue, Aug 13, 2019 at 10:25:14PM +0300, Ard Biesheuvel wrote:
> > On Tue, 13 Aug 2019 at 22:11, Steve Capper <Steve.Capper@arm.com> wrote:
> > >
> > > Hi Ard,
> > >
> > > On Tue, Aug 13, 2019 at 09:09:16PM +0300, Ard Biesheuvel wrote:
> > > > On Tue, 13 Aug 2019 at 20:02, Will Deacon <will@kernel.org> wrote:
> > > > >
> > > > > virt_addr_valid() is intended to test whether or not the passed address
> > > > > is a valid linear map address. Unfortunately, it relies on
> > > > > _virt_addr_is_linear() which is broken because it assumes the linear
> > > > > map is at the top of the address space, which it no longer is.
> > > > >
> > > > > Reimplement virt_addr_valid() using __is_lm_address() and remove
> > > > > _virt_addr_is_linear() entirely. At the same time, ensure we evaluate
> > > > > the macro parameter only once and move it within the __ASSEMBLY__ block.
> > > > >
> > > > > Reported-by: Qian Cai <cai@lca.pw>
> > > > > Reported-by: Geert Uytterhoeven <geert@linux-m68k.org>
> > > > > Fixes: 14c127c957c1 ("arm64: mm: Flip kernel VA space")
> > > > > Signed-off-by: Will Deacon <will@kernel.org>
> > > > > ---
> > > > >  arch/arm64/include/asm/memory.h | 14 +++++++-------
> > > > >  1 file changed, 7 insertions(+), 7 deletions(-)
> > > > >
> > > > > diff --git a/arch/arm64/include/asm/memory.h b/arch/arm64/include/asm/memory.h
> > > > > index afaf512c0e1b..442ab861cab8 100644
> > > > > --- a/arch/arm64/include/asm/memory.h
> > > > > +++ b/arch/arm64/include/asm/memory.h
> > > > > @@ -244,9 +244,9 @@ static inline const void *__tag_set(const void *addr, u8 tag)
> > > > >  /*
> > > > >   * The linear kernel range starts in the middle of the virtual adddress
> > > > >   * space.
> > > >
> > > > This is no longer true either.
> > > >
> > >
> > > Whoops agreed.
> > >
> > > > > Testing the top bit for the start of the region is a
> > > > > - * sufficient check.
> > > > > + * sufficient check and avoids having to worry about the tag.
> > > > >   */
> > > > > -#define __is_lm_address(addr)  (!((addr) & BIT(vabits_actual - 1)))
> > > > > +#define __is_lm_address(addr)  (!(((u64)addr) & BIT(vabits_actual - 1)))
> > > > >
> > > >
> > > > ... and this assumes that the VA space is split evenly between linear
> > > > and vmalloc/vmemmap/etc, which is no longer true when running with
> > > > 52-bit VAs
> > > >
> > >
> > > For 52-bit VAs we have two possibilities:
> > >   Start                 End                     Size            Use
> > >   -----------------------------------------------------------------------
> > >   0000000000000000      000fffffffffffff           4PB          user
> > >   fff0000000000000      fff7ffffffffffff           2PB          kernel logical memory map
> > >   fff8000000000000      fffd9fffffffffff        1440TB          [gap]
> >
> > Right. I missed the part where we throw away 1/3 of the VA space:
> > IIRC, the idea was that keeping the size of the upper half of the
> > 48-bit VA space fixed for 52-bit not only allowed compile time
> > constant addresses to be used for many of the things that populate it,
> > it also makes a lot more VA space available to the linear region,
> > which is where we need it the most.
> >
> > >   fffda00000000000      ffff9fffffffffff         512TB          kasan shadow region
> > >
> > > and
> > >   Start                        End                     Size            Use
> > >   -----------------------------------------------------------------------
> > >   0000000000000000     0000ffffffffffff         256TB          user
> > >   ffff000000000000     ffff7fffffffffff         128TB          kernel logical memory map
> > >   ffff800000000000     ffff9fffffffffff          32TB          kasan shadow region
> > >   ffffa00000000000     ffffa00007ffffff         128MB          bpf jit region
> > >
> > > IIUC the definition for __is_lm_address is correct for these cases?
> > > (it's based off vabits_actual).
> > >
> >
> > With the gap taken into account, it is correct. But throwing away 1440
> > TB of address space seems suboptimal to me.
>
> When getting the 52-bit kernel VA support ready, I was trying to achieve
> functional and performant support in as few steps as possible to avoid risk of
> breaking things (unfortunately I missed a couple of things between
> rebases with the SW KASAN). The big gain from that series is support for
> a much larger linear mapping.
>

Sure.

> The best way I can think of to get rid of the gap is to use it for
> vmalloc space which means changes to VMALLOC_START and VMALLOC_END. I
> think it would be better to make this change incrementally and I'm more
> than happy to get hacking on a patch. Or maybe there's a better use for
> the gap in other areas...
>

Given that it is only the MMU hardware that is preventing us from
running a 52-bit VA kernel on 48-bit VA hardware, I still don't follow
100% why we have all these moving parts. If we start the address space
at 0xfff0_... and start the vmalloc/vmemmap/etc space at 0xffff_8....
(and make sure the vmemmap space is sized so it can cover the entire
span), all we should need to do is make sure we don't map any memory
below 0xffff_0... if the hardware does not support that. I don't think
there is any need to make the start of physical memory coincide with
the lowest kernel VA supported by the hardware, or have other variable
quantities that assume different values based on the actual h/w
config.

[Apologies for not bringing this up earlier. I am not actually working atm :-)]

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
