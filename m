Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 415051EFBFC
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 16:58:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qFi55z4ZkBAgUzn6cjNeXFpv0No5tXZDaD44JL025+o=; b=Z9Inw+sVhFgEit
	+tAbzXR5cql8jTDvWn3F9KlvTXtHT6mSZZd1vh0D6o20gx7eSsb/ejLi+Mb5TMTW8pBfD417T8Epu
	Cm6T/4+aQ4/uvruV5NpVelxYenTSAcuIxiSN8p6c7+hWs4tVkli6JYRs2WTb7FojZbDtMz1wIJtus
	RLCpRYx+XP5uHDvTFBfbj9zT8blr7sOtqhinCTLk6HxXiF5Adb32mn1ZC1+v35IyY5gfJtFlPZkJj
	is1Uh4ehb1R7mwpk61ep29RYNe+aGFlgGfbySAC9TIC5tSUBd/enZFUOWuvhRLfhYfprCCjbfwLnG
	WMSShCdU4JGR/cKUVdbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhDnO-0005Vd-1B; Fri, 05 Jun 2020 14:58:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhDnH-0005VA-4d
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 14:58:04 +0000
Received: from mail-oi1-f173.google.com (mail-oi1-f173.google.com
 [209.85.167.173])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6D97D2065C
 for <linux-arm-kernel@lists.infradead.org>;
 Fri,  5 Jun 2020 14:58:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591369082;
 bh=BCWTfQV4JdBW4bkG3lr7ph6JOJqRNj6pW2HlPpWDAB0=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=mTF6/fELjSY84u0ZMIabGSfODHAfYyojvMkK8qxl4qOsm26ZrISny4RqKh0ggAILB
 6T/a+xpNO9skqKeOcvSlsGISjCI7XWusmHPKrdJCNrnMiKPpd6zpLgByZzaLfBMal3
 iAQnvYFmX6ypQ6fM9/hIVZRHcTL+OStcHXq2SZfA=
Received: by mail-oi1-f173.google.com with SMTP id d67so8452325oig.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 05 Jun 2020 07:58:02 -0700 (PDT)
X-Gm-Message-State: AOAM530tnxQ7PAyz1wEYhVwwz8hd+jSqQQeDVHpL9/i08pYg/aIqzhAw
 0rO6fdrEhP8fZcp94mwmsBaoms9ILAn5ceLc7Gc=
X-Google-Smtp-Source: ABdhPJzomCtbyOhmah+HSf63UvF0LLzbbDyUOQdb+pwvayrITHupIya4KEybziGapxmUQCAeVoczkWRokqJ4fnc3vTE=
X-Received: by 2002:aca:6144:: with SMTP id v65mr2138797oib.33.1591369081750; 
 Fri, 05 Jun 2020 07:58:01 -0700 (PDT)
MIME-Version: 1.0
References: <20200605115200.413921-1-ardb@kernel.org>
 <4498d910-f5cb-8559-afba-34710e9ca730@gmx.de>
 <CAMj1kXHS8AVczRPzySgzkkztD0yT1MXnCyMwmOt=ihZ9Bvo0vQ@mail.gmail.com>
 <589478fe-14a6-a921-3fdf-ae527e14b945@gmx.de>
In-Reply-To: <589478fe-14a6-a921-3fdf-ae527e14b945@gmx.de>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Fri, 5 Jun 2020 16:57:50 +0200
X-Gmail-Original-Message-ID: <CAMj1kXHwWwGyX1ijk-qjuV10p0Zr6sAYeAntx+iDVHp-tVaNwg@mail.gmail.com>
Message-ID: <CAMj1kXHwWwGyX1ijk-qjuV10p0Zr6sAYeAntx+iDVHp-tVaNwg@mail.gmail.com>
Subject: Re: [PATCH] efi/arm: decompressor: deal with HYP mode boot gracefully
To: Heinrich Schuchardt <xypron.glpk@gmx.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_075803_223480_25F5D7F5 
X-CRM114-Status: GOOD (  26.24  )
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

On Fri, 5 Jun 2020 at 16:54, Heinrich Schuchardt <xypron.glpk@gmx.de> wrote:
>
> On 05.06.20 14:39, Ard Biesheuvel wrote:
> > On Fri, 5 Jun 2020 at 14:20, Heinrich Schuchardt <xypron.glpk@gmx.de> wrote:
> >>
> >> On 05.06.20 13:52, Ard Biesheuvel wrote:
> >>> EFI on ARM only supports short descriptors, and given that it mandates
> >>> that the MMU and caches are on, it is implied that booting in HYP mode
> >>> is not supported.
> >>>
> >>> However, implementations of EFI exist (i.e., U-Boot) that ignore this
> >>> requirement, which is not entirely unreasonable, given that it does
> >>> not make a lot of sense to begin with.
> >>
> >> Hello Ard,
> >>
> >> thanks for investigating the differences between EDK2 and U-Boot.
> >>
> >> What I still do not understand is if there is a bug in U-Boot where
> >> U-Boot does not conform to the UEFI specification? In this case I would
> >> expect a fix in U-Boot.
> >>
> >
> > U-Boot violates the EFI spec, yes. The spec is very clear on how the
> > MMU is configured, and this rules out booting with the caches off, or
> > booting in HYP mode.
> >
> > However, given that this is the situation today, we still need to deal
> > with it on the Linux side.
> > In parallel, fixing it in U-boot may be appropriate. However, I think
> > the EFI spec is too detailed here - instead of 'booting at the highest
> > non-secure privilege mode', it tells you which exact bits to set in
> > SCTLR, which seems overzealous to me. In other words, even though it
> > violates the letter of the spec, I don't mind dealing with this
> > exception in the Linux side, since the requirement is somewhat
> > unreasonable to begin with.
> >
> >> Or is it simply a deficiency of Linux that it does not properly support
> >> HYP/EL2 mode on 32-bit ARM?
> >>
> >
> > No, this is definitely not the fault of Linux.
> >
> >> Up to now I never experience a problem booting a 32bit board via U-Boot
> >> -> GRUB-EFI -> Linux. Where did you have a problem when booting via
> >> U-Boot's UEFI implementation and the current Linux kernel?
> >>
> >
> > I haven't managed to make it fail, but my only 32-bit HYP capable
> > platform is QEMU. I am not 100% convinced that the EFI+HYP+U-Boot case
> > is rock solid, and I may have gotten lucky with QEMU (which uses
> > emulation not virtualization when running at HYP)
> >
> > Do you have any A7/A15 based boards that don't print 'WARNING: Caches
> > not enabled' at boot?
>
> Hello Ard,
>
> I have no board that prints this. Where did you actually see this output?
>

In U-boot

arch/arm/lib/cache.c: * Default implementation of enable_caches()
arch/arm/lib/cache.c- * Real implementation should be in platform code
arch/arm/lib/cache.c- */
arch/arm/lib/cache.c:__weak void enable_caches(void)
arch/arm/lib/cache.c-{
arch/arm/lib/cache.c-   puts("WARNING: Caches not enabled\n");
arch/arm/lib/cache.c-}
arch/arm/lib/cache.c-

The QEMU port does not override that routine. This may be the reason
it doesn't work for me under KVM, but only under emulation.

> The string "Caches not enabled" does not exist in Linux next-20200505
> according to "git grep -n 'ache not enabled'".
>
> Here is some sample output for an Orange Pi PC with a quad core
> Allwinner H3 Soc. "ARMv7 Processor rev 5 (v7l)" according to
> /proc/cpuinfo, compatible to "arm,cortex-a7" according to the device tree.
>
> $ uname -m
> Linux orangepi-pc 5.6.0-2-armmp-lpae #1 SMP Debian 5.6.14-1 (2020-05-23)
> armv7l GNU/Linux
>

Could you check whether it boots in HYP mode?

[    0.381460] CPU: All CPU(s) started in SVC mode.

vs

[    0.135626] CPU: All CPU(s) started in HYP mode.


?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
