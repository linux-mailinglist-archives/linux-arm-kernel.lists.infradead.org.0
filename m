Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5A501EF814
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 14:39:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BFU10Fp59SAdk6lQCW86FkYMqMnGoEIFcVoZcK2J3Bk=; b=M8JFQMlFGE1BNl
	9gI04/1krPUebwcNuMXWVYdkCVTKHurvAR4uygNgppm2/A8xusk3JftplYcv08lKJe2MrfsLIy4/+
	zGi/cvkTxR8D9PgoDA0p6ngEd/qi48QAACxzPvNAC456liVa/E8ZG5n/DJXjBGppVaiwtUYp2HGzj
	tMZqR6nbSREyjst0B2pSLoZ/KBE2ebFRMmii1pTWR7QDZHQlySGOzjZGX3UQyzNvpYaRLOAULJvIE
	U0DrQn4ATsApXAa/kZ5RoGFLBfZmKdw2iJgLrVVV2qykN5fFPvwVENsw1ZHNauGDj8kkDXDMBCEGU
	WO6LgxhtDz3gzGg3/xmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhBdL-0006r1-9i; Fri, 05 Jun 2020 12:39:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhBdF-0006qg-81
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 12:39:34 +0000
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com
 [209.85.210.52])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B7E772074B
 for <linux-arm-kernel@lists.infradead.org>;
 Fri,  5 Jun 2020 12:39:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591360772;
 bh=lrmwQwigYJIHtwdWmFVstgehot+bX/c2F/U0hfdY/IM=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=QG6M0yEUgO4zU7IpPttDpOynCE2wjfhTe5m6uXWYYLkgVKV47L7YOTE7Aux/bOfIZ
 bBStMpH2yel06iOylz9WVsgYnWbSjWJEIUgDQSb5+8NTm1kjsrE3DnhbijpzKYmTAb
 SzBA8UmhRYGuOUqY3nraqxj2DSivxZP4pUtVJ4AE=
Received: by mail-ot1-f52.google.com with SMTP id v17so7493234ote.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 05 Jun 2020 05:39:32 -0700 (PDT)
X-Gm-Message-State: AOAM533BFlZnVqCupP5fV7A7nKJCTE51B4TARBnAw83Ux8nue31MuUIk
 pj3vFdcLT7giFvwb8I0x+LlMRPXnvlgFCMVj7jg=
X-Google-Smtp-Source: ABdhPJxL1vpTKa4SiVHNF4jxlFEr/kwtXV7kNMCaO7IcFlH+CQxPRNa0YigyJ10hiIsizeJtJfVdoSbTavgA+E0IP80=
X-Received: by 2002:a9d:476:: with SMTP id 109mr7998548otc.77.1591360771988;
 Fri, 05 Jun 2020 05:39:31 -0700 (PDT)
MIME-Version: 1.0
References: <20200605115200.413921-1-ardb@kernel.org>
 <4498d910-f5cb-8559-afba-34710e9ca730@gmx.de>
In-Reply-To: <4498d910-f5cb-8559-afba-34710e9ca730@gmx.de>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Fri, 5 Jun 2020 14:39:20 +0200
X-Gmail-Original-Message-ID: <CAMj1kXHS8AVczRPzySgzkkztD0yT1MXnCyMwmOt=ihZ9Bvo0vQ@mail.gmail.com>
Message-ID: <CAMj1kXHS8AVczRPzySgzkkztD0yT1MXnCyMwmOt=ihZ9Bvo0vQ@mail.gmail.com>
Subject: Re: [PATCH] efi/arm: decompressor: deal with HYP mode boot gracefully
To: Heinrich Schuchardt <xypron.glpk@gmx.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_053933_331838_28B03767 
X-CRM114-Status: GOOD (  34.83  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Marc Zyngier <maz@kernel.org>, linux-efi <linux-efi@vger.kernel.org>,
 Russell King <linux@armlinux.org.uk>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 5 Jun 2020 at 14:20, Heinrich Schuchardt <xypron.glpk@gmx.de> wrote:
>
> On 05.06.20 13:52, Ard Biesheuvel wrote:
> > EFI on ARM only supports short descriptors, and given that it mandates
> > that the MMU and caches are on, it is implied that booting in HYP mode
> > is not supported.
> >
> > However, implementations of EFI exist (i.e., U-Boot) that ignore this
> > requirement, which is not entirely unreasonable, given that it does
> > not make a lot of sense to begin with.
>
> Hello Ard,
>
> thanks for investigating the differences between EDK2 and U-Boot.
>
> What I still do not understand is if there is a bug in U-Boot where
> U-Boot does not conform to the UEFI specification? In this case I would
> expect a fix in U-Boot.
>

U-Boot violates the EFI spec, yes. The spec is very clear on how the
MMU is configured, and this rules out booting with the caches off, or
booting in HYP mode.

However, given that this is the situation today, we still need to deal
with it on the Linux side.
In parallel, fixing it in U-boot may be appropriate. However, I think
the EFI spec is too detailed here - instead of 'booting at the highest
non-secure privilege mode', it tells you which exact bits to set in
SCTLR, which seems overzealous to me. In other words, even though it
violates the letter of the spec, I don't mind dealing with this
exception in the Linux side, since the requirement is somewhat
unreasonable to begin with.

> Or is it simply a deficiency of Linux that it does not properly support
> HYP/EL2 mode on 32-bit ARM?
>

No, this is definitely not the fault of Linux.

> Up to now I never experience a problem booting a 32bit board via U-Boot
> -> GRUB-EFI -> Linux. Where did you have a problem when booting via
> U-Boot's UEFI implementation and the current Linux kernel?
>

I haven't managed to make it fail, but my only 32-bit HYP capable
platform is QEMU. I am not 100% convinced that the EFI+HYP+U-Boot case
is rock solid, and I may have gotten lucky with QEMU (which uses
emulation not virtualization when running at HYP)

Do you have any A7/A15 based boards that don't print 'WARNING: Caches
not enabled' at boot?

> Does this patch relate to the retirement of KVM on 32 ARM in Linux 5.7
> 541ad0150ca4 ("arm: Remove 32bit KVM host support")? Without that patch
> I would have expected Linux to work fine in HYP mode.
>

Not really. The code still has to deal with booting at HYP mode,
regardless of whether it is used in a useful way.

I suppose simply dropping to SVC in the decompressor might make sense
as well, given that booting the kernel at HYP doesn't buy you anything
anymore in the first place. Marc may have some thoughts on that, but
it is really a separate discussion.


>
> >
> > So let's make sure that we can deal with this condition gracefully.
> > We already tolerate booting the EFI stub with the caches off (even
> > though this violates the EFI spec as well), and so we should deal
> > with HYP mode boot with MMU and caches either on or off.
> >
> > - When the MMU and caches are on, we can ignore the HYP stub altogether,
> >   since we can just use the existing mappings, and just branch into
> >   the decompressed kernel as usual after disabling MMU and caches.
> >
> > - When the MMU and caches are off, we have to drop to SVC mode so that
> >   we can set up the page tables using short descriptors. In this case,
> >   we need to install the HYP stub so that we can return to HYP mode
> >   when handing over to the kernel proper.
> >
> > Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
> > ---
> >  arch/arm/boot/compressed/head.S | 29 +++++++++++++++++++++++++++++
> >  1 file changed, 29 insertions(+)
> >
> > diff --git a/arch/arm/boot/compressed/head.S b/arch/arm/boot/compressed/head.S
> > index c79db44ba128..986db86ba334 100644
> > --- a/arch/arm/boot/compressed/head.S
> > +++ b/arch/arm/boot/compressed/head.S
> > @@ -1436,6 +1436,35 @@ ENTRY(efi_enter_kernel)
> >               mrc     p15, 0, r0, c1, c0, 0   @ read SCTLR
> >               tst     r0, #0x1                @ MMU enabled?
> >               orreq   r4, r4, #1              @ set LSB if not
> > +#ifdef CONFIG_ARM_VIRT_EXT
> > +             @
> > +             @ The EFI spec does not support booting on ARM in HYP mode,
> > +             @ since it mandates that the MMU and caches are on, with all
> > +             @ 32-bit addressable DRAM mapped 1:1 using short descriptors.
> > +             @ While the EDK2 reference implementation adheres to this,
> > +             @ U-Boot might decide to enter the EFI stub in HYP mode anyway,
> > +             @ with the MMU and caches either on or off.
> > +             @ In the former case, we're better off just carrying on using
> > +             @ the cached 1:1 mapping that the firmware provided, and pretend
> > +             @ that we are in SVC mode as far as the decompressor is
> > +             @ concerned. However, if the caches are off, we need to drop
> > +             @ into SVC mode now, and let the decompressor set up its cached
> > +             @ 1:1 mapping as usual.
> > +             @
> > +             mov     r0, #SVC_MODE
> > +             msr     spsr_cxsf, r0           @ record that we are in SVC mode
> > +             bne     1f                      @ skip HYP stub install if MMU is on
> > +
> > +             mov     r9, r4                  @ preserve image base
> > +             bl      __hyp_stub_install      @ returns boot mode in r4
> > +             cmp     r4, #HYP_MODE           @ did we boot in HYP?
> > +             bne     1f                      @ skip drop to SVC if we did not
> > +
> > +             safe_svcmode_maskall    r0
> > +             msr     spsr_cxsf, r4           @ record boot mode
> > +             mov     r4, r9                  @ restore image base
> > +1:
> > +#endif
> >
> >               mov     r0, r8                  @ DT start
> >               add     r1, r8, r2              @ DT end
> >
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
