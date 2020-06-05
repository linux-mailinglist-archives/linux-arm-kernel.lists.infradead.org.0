Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0AFD1EFC61
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 17:19:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G6saKviPy5RSYT6xg5FQQifNrh+GgO6L6RIC9J/B7K0=; b=a810s7DG9ACc8Z
	4WX/gDJpODJyJqQTGA+hF49/uycY6stjEiPqcv8ICU8GNam70pmZVHHwAr0GNZMjesFdiuS7Y6wfn
	gNz1RPBYicVXz6wAe2tqZ31mG2CubiCVAyNlwUY6zKhamQNcxa+LoAemV71iWAO2mANQGh4DdTVgq
	0QuZTAz2BhJb30jo9Q7zDPsV6lgP57fNGPScF0AJTItE2/d/4dhHn6vU6u8znXaS7tAgWiRShX85d
	4nH3WuIGScrPh/n68v6ZPdsOk786bG9ixjcPJcRhC0AVMRFYhLXBggG2v8eT4o4a6X1OYd49eF9K/
	Eh8ZTBB6+fFEqfVGuY8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhE7r-0002ub-1V; Fri, 05 Jun 2020 15:19:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhE7k-0002uA-FY
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 15:19:13 +0000
Received: from mail-oo1-f41.google.com (mail-oo1-f41.google.com
 [209.85.161.41])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 085A42070B
 for <linux-arm-kernel@lists.infradead.org>;
 Fri,  5 Jun 2020 15:19:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591370352;
 bh=9WmSeuRHgQwAJNNulbHNb7RyPD/3uPrszoLjgoO41mY=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=jwo3eGOi2AOK8/sULWtW2ycHp5nmTj8lsKA7/klzogf/NlnvZEOnq6BPNZpSG7xTq
 J+bYKRo00ree0oSyPRu643UvIOtYDorSdjXpsL/5TGxvqZlDhO6RIxgTOVoZf2YrDp
 Zqr6w+SnJEssiICZnS54Jj3yqEBsRddp9VarW7eo=
Received: by mail-oo1-f41.google.com with SMTP id z145so2041717ooa.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 05 Jun 2020 08:19:12 -0700 (PDT)
X-Gm-Message-State: AOAM532NZZz0KsB7Ixd4Xh+138nUx8H+LlO4IKEqqT2K5S0nKh9Innx+
 WFvAJwKHmrS/gQoiT0jaPWPTAUT2EWWU/f5GHJo=
X-Google-Smtp-Source: ABdhPJzIF6F0yNuqc2zeYzx9vPVUMd3Z12kppxt5a/u1eOlquy0OrNBzbPZGqVJBES/41v4nC951faePQTZzwf9L11w=
X-Received: by 2002:a4a:6812:: with SMTP id p18mr8061722ooc.45.1591370351306; 
 Fri, 05 Jun 2020 08:19:11 -0700 (PDT)
MIME-Version: 1.0
References: <20200605115200.413921-1-ardb@kernel.org>
 <4498d910-f5cb-8559-afba-34710e9ca730@gmx.de>
 <CAMj1kXHS8AVczRPzySgzkkztD0yT1MXnCyMwmOt=ihZ9Bvo0vQ@mail.gmail.com>
 <589478fe-14a6-a921-3fdf-ae527e14b945@gmx.de>
 <CAMj1kXHwWwGyX1ijk-qjuV10p0Zr6sAYeAntx+iDVHp-tVaNwg@mail.gmail.com>
 <99692142-0ee1-37a7-582e-56c38b2ef3d8@gmx.de>
In-Reply-To: <99692142-0ee1-37a7-582e-56c38b2ef3d8@gmx.de>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Fri, 5 Jun 2020 17:18:59 +0200
X-Gmail-Original-Message-ID: <CAMj1kXG7XKNr5ascgk1GdhucVHb=euJ5xyBX2E65o2ejrOqnGg@mail.gmail.com>
Message-ID: <CAMj1kXG7XKNr5ascgk1GdhucVHb=euJ5xyBX2E65o2ejrOqnGg@mail.gmail.com>
Subject: Re: [PATCH] efi/arm: decompressor: deal with HYP mode boot gracefully
To: Heinrich Schuchardt <xypron.glpk@gmx.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_081912_556816_DE587F36 
X-CRM114-Status: GOOD (  27.04  )
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

On Fri, 5 Jun 2020 at 17:14, Heinrich Schuchardt <xypron.glpk@gmx.de> wrote:
>
> On 05.06.20 16:57, Ard Biesheuvel wrote:
> > On Fri, 5 Jun 2020 at 16:54, Heinrich Schuchardt <xypron.glpk@gmx.de> wrote:
> >>
> >> On 05.06.20 14:39, Ard Biesheuvel wrote:
> >>> On Fri, 5 Jun 2020 at 14:20, Heinrich Schuchardt <xypron.glpk@gmx.de> wrote:
> >>>>
> >>>> On 05.06.20 13:52, Ard Biesheuvel wrote:
> >>>>> EFI on ARM only supports short descriptors, and given that it mandates
> >>>>> that the MMU and caches are on, it is implied that booting in HYP mode
> >>>>> is not supported.
> >>>>>
> >>>>> However, implementations of EFI exist (i.e., U-Boot) that ignore this
> >>>>> requirement, which is not entirely unreasonable, given that it does
> >>>>> not make a lot of sense to begin with.
> >>>>
> >>>> Hello Ard,
> >>>>
> >>>> thanks for investigating the differences between EDK2 and U-Boot.
> >>>>
> >>>> What I still do not understand is if there is a bug in U-Boot where
> >>>> U-Boot does not conform to the UEFI specification? In this case I would
> >>>> expect a fix in U-Boot.
> >>>>
> >>>
> >>> U-Boot violates the EFI spec, yes. The spec is very clear on how the
> >>> MMU is configured, and this rules out booting with the caches off, or
> >>> booting in HYP mode.
> >>>
> >>> However, given that this is the situation today, we still need to deal
> >>> with it on the Linux side.
> >>> In parallel, fixing it in U-boot may be appropriate. However, I think
> >>> the EFI spec is too detailed here - instead of 'booting at the highest
> >>> non-secure privilege mode', it tells you which exact bits to set in
> >>> SCTLR, which seems overzealous to me. In other words, even though it
> >>> violates the letter of the spec, I don't mind dealing with this
> >>> exception in the Linux side, since the requirement is somewhat
> >>> unreasonable to begin with.
> >>>
> >>>> Or is it simply a deficiency of Linux that it does not properly support
> >>>> HYP/EL2 mode on 32-bit ARM?
> >>>>
> >>>
> >>> No, this is definitely not the fault of Linux.
> >>>
> >>>> Up to now I never experience a problem booting a 32bit board via U-Boot
> >>>> -> GRUB-EFI -> Linux. Where did you have a problem when booting via
> >>>> U-Boot's UEFI implementation and the current Linux kernel?
> >>>>
> >>>
> >>> I haven't managed to make it fail, but my only 32-bit HYP capable
> >>> platform is QEMU. I am not 100% convinced that the EFI+HYP+U-Boot case
> >>> is rock solid, and I may have gotten lucky with QEMU (which uses
> >>> emulation not virtualization when running at HYP)
> >>>
> >>> Do you have any A7/A15 based boards that don't print 'WARNING: Caches
> >>> not enabled' at boot?
> >>
> >> Hello Ard,
> >>
> >> I have no board that prints this. Where did you actually see this output?
> >>
> >
> > In U-boot
> >
> > arch/arm/lib/cache.c: * Default implementation of enable_caches()
> > arch/arm/lib/cache.c- * Real implementation should be in platform code
> > arch/arm/lib/cache.c- */
> > arch/arm/lib/cache.c:__weak void enable_caches(void)
> > arch/arm/lib/cache.c-{
> > arch/arm/lib/cache.c-   puts("WARNING: Caches not enabled\n");
> > arch/arm/lib/cache.c-}
> > arch/arm/lib/cache.c-
> >
> > The QEMU port does not override that routine. This may be the reason
> > it doesn't work for me under KVM, but only under emulation.
> >
> >> The string "Caches not enabled" does not exist in Linux next-20200505
> >> according to "git grep -n 'ache not enabled'".
> >>
> >> Here is some sample output for an Orange Pi PC with a quad core
> >> Allwinner H3 Soc. "ARMv7 Processor rev 5 (v7l)" according to
> >> /proc/cpuinfo, compatible to "arm,cortex-a7" according to the device tree.
> >>
> >> $ uname -m
> >> Linux orangepi-pc 5.6.0-2-armmp-lpae #1 SMP Debian 5.6.14-1 (2020-05-23)
> >> armv7l GNU/Linux
> >>
> >
> > Could you check whether it boots in HYP mode?
> >
> > [    0.381460] CPU: All CPU(s) started in SVC mode.
> >
> > vs
> >
> > [    0.135626] CPU: All CPU(s) started in HYP mode.
> >
> >
> > ?
> >
>
> Booted via GRUB-EFI:
>
> sudo dmesg -H | grep 'started in'
> [  +0.000017] CPU: All CPU(s) started in HYP mode.
>
> Booted via Linux stub:
>
> $ sudo dmesg -H | grep 'started in'
> [  +0.000016] CPU: All CPU(s) started in HYP mode.
>

Thanks

Which uboot config is that? Which version of enable_caches() does it use?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
