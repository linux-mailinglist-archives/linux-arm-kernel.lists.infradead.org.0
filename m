Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6146C1735FA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 12:21:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oiS4DKhLYf3a1EZZUWD9f2EAyotCCMkCiZyMbpw1Rzc=; b=jd0wfGmZL0WeiH
	Or3QTuq5ZN0qHKcGz0F/Lu8gpHgkMd0W8Q7izfUffBR7EIPrZ9UV+99slelKi0n6ap+iXNof4SR7H
	/QCQXp82A8YR/V/axaITQkBSUMj4AzM4CnVoERCwtnpUiTEYnlyTudHYv/5bdcf3b0u/gdXccany9
	8PKaEew3Nofrx55KJTRGPQ7EMEfwMHAQHJSK56sOs+ciJyUb+dbivaCXDcNh94w1KdPKrYrwsGCwF
	DFPc/vtkDxsoJrpZfOckxZiq5PcryOSvYNoz4VB1+3eJutpL0ccWVf5u/tA7huDTI9I7yyr2A+Hqc
	h4YICJesWh+gWVxB2SWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7di2-0000Iy-NG; Fri, 28 Feb 2020 11:21:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7dhq-0000If-Ub
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 11:21:24 +0000
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com
 [209.85.128.44])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 593B0246A8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Feb 2020 11:21:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582888882;
 bh=UdTJgjEkFrekTJdyfPSyNniuUqPsPdCXDJhlN9tKGGc=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=WFc4IAN3eqyspBo1JbUiltnYpiERrQZiICQJfvx3GWzn2o0zlR/J8ZncZlNvVoRUC
 +wGLtzj2xAHJHFF8CwJ9aI4cN31YfuloFbJqB/JRpwTYvOntUQLoDZtnM4CT5Jba08
 k/J7M0MbhH4ahLgtRj4JD0yG1J1+Fjn1QaDsuExs=
Received: by mail-wm1-f44.google.com with SMTP id n64so1461160wme.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Feb 2020 03:21:22 -0800 (PST)
X-Gm-Message-State: APjAAAXQVoLYjragL4BVNH3ZaEuLRfrB9o3c+w0Y6sA9Ia90MklRNNxo
 lpepwRPMwM/rQqz7aG97gFRbSETgWnOEwsF1+D1kbQ==
X-Google-Smtp-Source: APXvYqzjJz/p5hix51s8RaxNfNki0V8UbdgQMaKdXwIkKS8BO4ij4pFPm0BOcMmmP/GK73WeYb1NdaVZF0VJMg5GF6E=
X-Received: by 2002:a1c:bc46:: with SMTP id m67mr4297197wmf.40.1582888880767; 
 Fri, 28 Feb 2020 03:21:20 -0800 (PST)
MIME-Version: 1.0
References: <20200228100244.10979-1-ardb@kernel.org>
 <20200228100244.10979-3-ardb@kernel.org>
 <20200228111450.GA36089@lakrids.cambridge.arm.com>
 <20200228111920.GB36089@lakrids.cambridge.arm.com>
In-Reply-To: <20200228111920.GB36089@lakrids.cambridge.arm.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Fri, 28 Feb 2020 12:21:09 +0100
X-Gmail-Original-Message-ID: <CAKv+Gu-f5Bxv7C8yG1-bbQ5f0_e5W99nEiQYiXSOdr2+WJOHDg@mail.gmail.com>
Message-ID: <CAKv+Gu-f5Bxv7C8yG1-bbQ5f0_e5W99nEiQYiXSOdr2+WJOHDg@mail.gmail.com>
Subject: Re: [PATCH efi-next 2/3] efi/arm64: clean EFI stub exit code from
 cache instead of avoiding it
To: Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_032123_032454_7015A4B2 
X-CRM114-Status: GOOD (  24.32  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-efi <linux-efi@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 28 Feb 2020 at 12:19, Mark Rutland <mark.rutland@arm.com> wrote:
>
> On Fri, Feb 28, 2020 at 11:14:50AM +0000, Mark Rutland wrote:
> > On Fri, Feb 28, 2020 at 11:02:43AM +0100, Ard Biesheuvel wrote:
> > > Commit 9f9223778 ("efi/libstub/arm: Make efi_entry() an ordinary PE/COFF
> > > entrypoint") modified the handover code written in assembler, and for
> > > maintainability, aligned the logic with the logic used in the 32-bit ARM
> > > version, which is to avoid cache maintenance on the remaining instructions
> > > in the subroutine that will be executed with the MMU and caches off, and
> > > instead, branch into the relocated copy of the kernel image.
> > >
> > > However, this assumes that this copy is executable, and this means we
> > > expect EFI_LOADER_DATA regions to be executable as well, which is not
> > > a reasonable assumption to make, even if this is true for most UEFI
> > > implementations today.
> > >
> > > So change this back, and add a __flush_dcache_area() call to cover the
> > > remaining code in the subroutine.
> > >
> > > Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
> > > ---
> > >  arch/arm64/kernel/efi-entry.S  | 18 +++++++++---------
> > >  arch/arm64/kernel/image-vars.h |  2 +-
> > >  2 files changed, 10 insertions(+), 10 deletions(-)
> > >
> > > diff --git a/arch/arm64/kernel/efi-entry.S b/arch/arm64/kernel/efi-entry.S
> > > index 4cfd03c35c49..d5dee064975f 100644
> > > --- a/arch/arm64/kernel/efi-entry.S
> > > +++ b/arch/arm64/kernel/efi-entry.S
> > > @@ -19,7 +19,8 @@ ENTRY(efi_enter_kernel)
> > >      * point stored in x0. Save those values in registers which are
> > >      * callee preserved.
> > >      */
> > > -   mov     x19, x0                 // relocated Image address
> > > +   ldr     w2, =stext_offset
> > > +   add     x19, x0, x2             // relocated Image entrypoint
> > >     mov     x20, x1                 // DTB address
> > >
> > >     /*
> > > @@ -29,15 +30,14 @@ ENTRY(efi_enter_kernel)
> > >     ldr     w1, =kernel_size
> > >     bl      __flush_dcache_area
> > >     ic      ialluis
> > > -   dsb     sy
> > >
> > >     /*
> > > -    * Jump across, into the copy of the image that we just cleaned
> > > -    * to the PoC, so that we can safely disable the MMU and caches.
> > > +    * Flush the remainder of this routine to the PoC
> >
> > Minor nit, but could we please say 'Clean' rather than 'Flush' here?
> >
> > Even better, we now have __clean_dcache_area_poc(), and can use that
> > too.
>
> ... or if that's better as a subsequent cleanup for consistency, that'd
> also be fine, and needn't block this patch.
>

Thanks Mark. That sounds like a worthwhile improvement to fold in.
I'll need to add the __efistub_ alias for it, but I'm touching
image-vars.h in this patch anyway.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
