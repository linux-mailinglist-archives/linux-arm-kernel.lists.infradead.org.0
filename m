Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32F0B162B95
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 18:09:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L3IJzHJOnQlJ8FWNB7Zk6WBhoPXmDr3C8aX1YwFZc1U=; b=W+BbNxUI9tV7r0
	C+39tSurTupt3CUH6K/rxcdCC0fSqXCKxHZDFMwCHiIs5MRZf3riDr2J7ugsXFBLBLRRrzpA1Pwhi
	meMvXU35WreP+AtNUqVvQRcXhuDyDimNTbsIre9aP6rXDyeB1APoq0mZQnI8U4X8Hg9Lahciw2fDN
	SSvE0E1gQ645PXMGBx85qspClDGRH+3HRIkgM1xOE+E6HyRS8NF8Ju5LUjaBbj50Wlj3TSVfvGy32
	v0Xr9FWjjajn/en2UirSJV78DaynLl5v1yRtIrN3wbifpXS/7a5AD0mo5tsBEWIzwTsUxqaegMPDD
	TjQwbeFmHMF3FNthsu5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j46N2-0008Nx-F7; Tue, 18 Feb 2020 17:09:16 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j46Mv-0008NG-8f
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 17:09:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IGz8HiBKV8GPc9x5Tjh3QfaDxcV2W+0HKrO2mldOop0=; b=XypT6y9JFaV9u8bzZaCG++ylB
 Cu86duu9a8l7bc5uSKJn2j/330y6qRRGEG50hMKoGmD+I1SiHQppg476kmXiwULsV9qaEd6rvtMY0
 Hmazy4pFgL+gtXdZGaumCi2+IScu5Fdw5/mu/fs9WdnY5XzrM5WARYf3DJ6Ks1y4F2hQdhH0YfSbr
 82zUq9NmnqWUNQuGev11Y+fWHAln3skcjDMDw43Ngyr1ANoUCDBKu6ngt5bsb1/TAvCZnSot8GunN
 EQHwjoOoR/DivUC3BFnJQT2W8LYZc46/AR7LMzKLr44OwQJuK4NOpOQpXBbTF75fJ1yeSGzFCqCPd
 bfc4YRfzg==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:49580)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1j46Mj-0008TE-M3; Tue, 18 Feb 2020 17:08:57 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1j46Mi-0000b9-LF; Tue, 18 Feb 2020 17:08:56 +0000
Date: Tue, 18 Feb 2020 17:08:56 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [PATCH 1/2] ARM: decompressor: prepare cache_clean_flush for
 doing by-VA maintenance
Message-ID: <20200218170856.GL25745@shell.armlinux.org.uk>
References: <20200218164430.32671-1-ardb@kernel.org>
 <20200218164430.32671-2-ardb@kernel.org>
 <20200218165149.GK25745@shell.armlinux.org.uk>
 <CAKv+Gu_90hPPupcPCkURqBe2xFO0Zv96egytOPcqLF5XLf-rbQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKv+Gu_90hPPupcPCkURqBe2xFO0Zv96egytOPcqLF5XLf-rbQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_090909_304356_135FF1F9 
X-CRM114-Status: GOOD (  16.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Marc Zyngier <maz@kernel.org>, linux-efi <linux-efi@vger.kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Nicolas Pitre <nico@fluxnic.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 18, 2020 at 05:56:52PM +0100, Ard Biesheuvel wrote:
> On Tue, 18 Feb 2020 at 17:52, Russell King - ARM Linux admin
> <linux@armlinux.org.uk> wrote:
> >
> > On Tue, Feb 18, 2020 at 05:44:29PM +0100, Ard Biesheuvel wrote:
> > > In preparation of turning the decompressor's cache clean/flush
> > > operations into proper by-VA maintenance for v7 cores, pass the
> > > start and end addresses of the regions that need cache maintenance
> > > into cache_clean_flush in registers r0 and r1.
> >
> > Where's the documentation of the new calling convention?  This is
> > assembly code, it needs such things documented as there's no
> > function prototypes to give that information.
> >
> 
> Would something like
> 
> diff --git a/arch/arm/boot/compressed/head.S b/arch/arm/boot/compressed/head.S
> index df93c9f0a19a..e4c779a89db1 100644
> --- a/arch/arm/boot/compressed/head.S
> +++ b/arch/arm/boot/compressed/head.S
> @@ -1207,6 +1207,9 @@ __armv7_mmu_cache_off:
>  /*
>   * Clean and flush the cache to maintain consistency.
>   *
> + * On entry,
> + *  r0 = start address
> + *  r1 = end address (exclusive)
>   * On exit,
>   *  r1, r2, r3, r9, r10, r11, r12 corrupted
>   * This routine must preserve:
> 
> work for you?

Definitely what is required, thanks.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
