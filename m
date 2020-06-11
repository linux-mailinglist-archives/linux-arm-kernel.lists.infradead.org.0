Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 794F11F6739
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 13:53:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5CdCLLXGX5loP4CAJOlsHseq+TcLHg6Rv57dfkefpVk=; b=md3eu79skIjiYP
	5aE9+qx9xpv0iIAUnj71HUtrrtYAtgg0uqh4iymZ+MawENIqbeEP7NxYKcyQt9so2dvNRgEzJk9WX
	5OX2QCR4OXo0U5jqlo0XOaSybU97y8w6yiNjTKshEKSjJW+66X261bEx7UiXFibBIUTcRIaN8feaX
	bsQUm65HJj9s8Mh7Is9iNyt4RO3l6X6wglxZyuwcqhPVAvxS5oMZu/RzJ+WViZaWQ9PzTLTbeJlV7
	EA00iiU65EdKqmTbisDxsOWzIIeShxC/Z8QMxm4q/vR8IwdP1qFxf8uaJZVWIpxQtBy9gmieWTucM
	jjUH95eHW9psr32sSIkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjLmA-0003xO-7F; Thu, 11 Jun 2020 11:53:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjLly-0003wh-IN
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 11:53:32 +0000
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com
 [209.85.210.46])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EC280207C3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jun 2020 11:53:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591876410;
 bh=pL4Yxu9epH9G3YLZ0eZpzGM4s3Ce0v+MkD/w65Lcnoo=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=F8TuGB/yiU5BO4I/2Uxv9jUI77D+RDTBD4osi+1FftcjCfAhtI6DN0if0zBPgZUk8
 csRBzg1sb14YqBQBW9+oKSWGhCHrwaPB0e38NBzYLK1dl41i/f9nLM17ScBcthqWz5
 Kc9vkKu/c+UTJnVMZjkSOfa0Q2wFPE0ipzoGq2vc=
Received: by mail-ot1-f46.google.com with SMTP id b18so4324491oti.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jun 2020 04:53:29 -0700 (PDT)
X-Gm-Message-State: AOAM531Pn+Eyv3JloDeo0UmeTjLMJ5JxfhingBVwNsyVQ6w7lGEH39FL
 HyFbDgpkdCb+/ZRjvJvYIYbRdU1e1U64RjiX/ns=
X-Google-Smtp-Source: ABdhPJxBRtrRyB+PvMZA1SPOdWQc2pG1Tdo3w1n3XUyZAu46TSbOf6p/c2BMdA22MXY9fue3z4ltFPH/xcW/BFhSaoU=
X-Received: by 2002:a9d:476:: with SMTP id 109mr6747118otc.77.1591876409268;
 Thu, 11 Jun 2020 04:53:29 -0700 (PDT)
MIME-Version: 1.0
References: <20200610174601.159853-1-ardb@kernel.org>
 <20200611115144.GA5057@willie-the-truck>
In-Reply-To: <20200611115144.GA5057@willie-the-truck>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Thu, 11 Jun 2020 13:53:18 +0200
X-Gmail-Original-Message-ID: <CAMj1kXE22ug7uxGah0zs3fzNG6=nkWLVfO-sxAnKzpeYk+LGEg@mail.gmail.com>
Message-ID: <CAMj1kXE22ug7uxGah0zs3fzNG6=nkWLVfO-sxAnKzpeYk+LGEg@mail.gmail.com>
Subject: Re: [PATCH] arm64: warn on incorrect placement of the kernel by the
 bootloader
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_045330_653674_29C1BB21 
X-CRM114-Status: GOOD (  24.23  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <maz@kernel.org>,
 Jonathan Marek <jonathan@marek.ca>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 11 Jun 2020 at 13:51, Will Deacon <will@kernel.org> wrote:
>
> On Wed, Jun 10, 2020 at 07:46:01PM +0200, Ard Biesheuvel wrote:
> > Commit cfa7ede20f133c ("arm64: set TEXT_OFFSET to 0x0 in preparation for
> > removing it entirely") results in boot failures when booting kernels that
> > are built without KASLR support on broken bootloaders that ignore the
> > TEXT_OFFSET value passed via the header, and use the default of 0x80000
> > instead.
> >
> > To work around this, turn CONFIG_RELOCATABLE on by default, even if KASLR
> > itself (CONFIG_RANDOMIZE_BASE) is turned off, and require CONFIG_EXPERT
> > to be enabled to deviate from this. Then, emit a warning into the kernel
> > log if we are not booting via the EFI stub (which is permitted to deviate
> > from the placement restrictions) and the kernel base address is not placed
> > according to the rules as laid out in Documentation/arm64/booting.rst.
> >
> > Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
> > ---
> >  arch/arm64/Kconfig        | 3 ++-
> >  arch/arm64/kernel/setup.c | 3 +++
> >  2 files changed, 5 insertions(+), 1 deletion(-)
> >
> > diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> > index 7f9d38444d6d..16c3f158c80e 100644
> > --- a/arch/arm64/Kconfig
> > +++ b/arch/arm64/Kconfig
> > @@ -1740,8 +1740,9 @@ config ARM64_DEBUG_PRIORITY_MASKING
> >  endif
> >
> >  config RELOCATABLE
> > -     bool
> > +     bool "Build a relocatable kernel image" if EXPERT
> >       select ARCH_HAS_RELR
> > +     default y
> >       help
> >         This builds the kernel as a Position Independent Executable (PIE),
> >         which retains all relocation metadata required to relocate the
> > diff --git a/arch/arm64/kernel/setup.c b/arch/arm64/kernel/setup.c
> > index 3fd2c11c09fc..bfeeeea833dd 100644
> > --- a/arch/arm64/kernel/setup.c
> > +++ b/arch/arm64/kernel/setup.c
> > @@ -319,6 +319,9 @@ void __init setup_arch(char **cmdline_p)
> >
> >       xen_early_init();
> >       efi_init();
> > +     WARN(!efi_enabled(EFI_BOOT) && ((u64)_text % MIN_KIMG_ALIGN) != 0,
> > +          FW_BUG "Kernel image misaligned at boot, please fix your bootloader");
>
> I think pr_warn is probably sufficient here, as the backtrace isn't really
> helping anybody:
>

It makes it a bit more obnoxious, and so people are more likely to
notice and care. But I agree that the backtrace serves no purpose.

I'll update that.

> [    0.000000] ------------[ cut here ]------------
> [    0.000000] [Firmware Bug]: Kernel image misaligned at boot, please fix your bootloader
> [    0.000000] WARNING: CPU: 0 PID: 0 at arch/arm64/kernel/setup.c:323 setup_arch+0x208/0x214
> [    0.000000] Modules linked in:
> [    0.000000] CPU: 0 PID: 0 Comm: swapper Not tainted 5.7.0-rc3-00162-g16d1072f6b69 #1
> [    0.000000] Hardware name: linux,dummy-virt (DT)
> [    0.000000] pstate: 60000085 (nZCv daIf -PAN -UAO BTYPE=--)
> [    0.000000] pc : setup_arch+0x208/0x214
> [    0.000000] lr : setup_arch+0x208/0x214
> [    0.000000] sp : ffff800011b03f90
> [    0.000000] x29: ffff800011b03f90 x28: 0000000081580018
> [    0.000000] x27: 0000000000000000 x26: 0000000000000000
> [    0.000000] x25: 0000000000000000 x24: 0000000000000000
> [    0.000000] x23: 0000000000080000 x22: 0000000000000000
> [    0.000000] x21: 000000008fe00000 x20: ffff800011b09000
> [    0.000000] x19: ffff800010080000 x18: 000000000001fdd8
> [    0.000000] x17: 000000000000004a x16: ffff800011b03bf1
> [    0.000000] x15: 0000000000000000 x14: 6564616f6c746f6f
> [    0.000000] x13: 0000000000000000 x12: 0000000000000000
> [    0.000000] x11: 0000000000000000 x10: 00000000ffffffff
> [    0.000000] x9 : 0000000000000000 x8 : 0000000000000000
> [    0.000000] x7 : 000000000000004b x6 : ffff800011d41093
> [    0.000000] x5 : 000000000000004b x4 : 000000000000000c
> [    0.000000] x3 : 0000000000000072 x2 : 000000000000003f
> [    0.000000] x1 : ffff800011d3e75f x0 : 000000000000004b
> [    0.000000] Call trace:
> [    0.000000]  setup_arch+0x208/0x214
> [    0.000000]  start_kernel+0x70/0x3ec
> [    0.000000] random: get_random_bytes called from __warn+0xe4/0x178 with crng_init=0
> [    0.000000] ---[ end trace 0000000000000000 ]---
>
> Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
