Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18257162B2C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 17:57:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jvCaKiY3KdB08YyQevhRSABkYD+ZRnntLx10spYDJ+Y=; b=NCFuHVXAlOjKNK
	mwKrwjDmG5ytEdAk5AjwrMGZ8FbbPslbSQU+L2LQMRn3ftUOIU77DECzibx5diHxZvSo5q7d72y7x
	/oQObFeX7zDYMVONJCidGkyCSB1dW+WZ9PBniLrnenk+3Vo7Zb9ZSIbivTmGh3qFVyDW5b8mlkJ0y
	sxPa9++0qo8UnLG3eRFnaj3Ur0D7SOP17VpbzeL5K7O6Z/T849v3g1EVJdni0tGDCZ9ltOD5w+XUd
	bVwSYWFJ7E5QgPDrkHNetb6cRa/1rLAm94rS9wC9/ZUIN0QE7VIjIAVXEPSU3+J6VxOiGDAQjaAZh
	ESDNZcEEwWBRPSL3FQ8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j46BP-0003NR-SH; Tue, 18 Feb 2020 16:57:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j46BF-0003Mt-CY
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 16:57:07 +0000
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com
 [209.85.221.46])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B2538208C4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 16:57:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582045025;
 bh=EanJAAvEgSiOHCaZxZbqDaGusElgxY/8RtPFrcnuP9c=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=UEJZy2BwPtNBWEqEtSGNPWI2+rWEcxYJKg6jpNKszoXMO1bQ+ynlDXrhtzIROFVpQ
 X3DmUMBRBrXcKDYeLSBGRWYoQd7A6CynE4wdiX8qtlZ5kVbMD37NEAanFEXRULJFjm
 UzDq+VkucS5cPCjipGreIESkaObMaHXmdxbsHviQ=
Received: by mail-wr1-f46.google.com with SMTP id r11so24787242wrq.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 08:57:04 -0800 (PST)
X-Gm-Message-State: APjAAAXKBrugiIS91dRtNz7Ohlfv61IG2dVJCNPixaiUvFiSCp+wmtoV
 Fjc87np0+nD0qohHF3VAZFy2HK/4WSFbdm1XKH0FSA==
X-Google-Smtp-Source: APXvYqwDyOZAFZTz+otYgJPGv989NxmoXRxXRTBrfdZ613hi2pStNCnZ1OKHqfXjImiPtyTv3/WWMWQkUYm8E7LWHdQ=
X-Received: by 2002:a5d:65cf:: with SMTP id e15mr29549257wrw.126.1582045023057; 
 Tue, 18 Feb 2020 08:57:03 -0800 (PST)
MIME-Version: 1.0
References: <20200218164430.32671-1-ardb@kernel.org>
 <20200218164430.32671-2-ardb@kernel.org>
 <20200218165149.GK25745@shell.armlinux.org.uk>
In-Reply-To: <20200218165149.GK25745@shell.armlinux.org.uk>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Tue, 18 Feb 2020 17:56:52 +0100
X-Gmail-Original-Message-ID: <CAKv+Gu_90hPPupcPCkURqBe2xFO0Zv96egytOPcqLF5XLf-rbQ@mail.gmail.com>
Message-ID: <CAKv+Gu_90hPPupcPCkURqBe2xFO0Zv96egytOPcqLF5XLf-rbQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] ARM: decompressor: prepare cache_clean_flush for
 doing by-VA maintenance
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_085705_467238_5E43E2D7 
X-CRM114-Status: GOOD (  24.53  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Marc Zyngier <maz@kernel.org>, linux-efi <linux-efi@vger.kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Nicolas Pitre <nico@fluxnic.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 18 Feb 2020 at 17:52, Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
>
> On Tue, Feb 18, 2020 at 05:44:29PM +0100, Ard Biesheuvel wrote:
> > In preparation of turning the decompressor's cache clean/flush
> > operations into proper by-VA maintenance for v7 cores, pass the
> > start and end addresses of the regions that need cache maintenance
> > into cache_clean_flush in registers r0 and r1.
>
> Where's the documentation of the new calling convention?  This is
> assembly code, it needs such things documented as there's no
> function prototypes to give that information.
>

Would something like

diff --git a/arch/arm/boot/compressed/head.S b/arch/arm/boot/compressed/head.S
index df93c9f0a19a..e4c779a89db1 100644
--- a/arch/arm/boot/compressed/head.S
+++ b/arch/arm/boot/compressed/head.S
@@ -1207,6 +1207,9 @@ __armv7_mmu_cache_off:
 /*
  * Clean and flush the cache to maintain consistency.
  *
+ * On entry,
+ *  r0 = start address
+ *  r1 = end address (exclusive)
  * On exit,
  *  r1, r2, r3, r9, r10, r11, r12 corrupted
  * This routine must preserve:

work for you?

> >
> > Currently, all implementations of cache_clean_flush ignore these
> > values, so no functional change is expected as a result of this
> > patch.
> >
> > Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
> > ---
> >  arch/arm/boot/compressed/head.S | 28 +++++++++++++++++---
> >  1 file changed, 25 insertions(+), 3 deletions(-)
> >
> > diff --git a/arch/arm/boot/compressed/head.S b/arch/arm/boot/compressed/head.S
> > index 7b86a2e1acce..935799b92198 100644
> > --- a/arch/arm/boot/compressed/head.S
> > +++ b/arch/arm/boot/compressed/head.S
> > @@ -525,12 +525,15 @@ dtb_check_done:
> >               /* cache_clean_flush may use the stack, so relocate it */
> >               add     sp, sp, r6
> >  #endif
> > -
> > +             mov     r0, r9
> > +             ldr     r1, 0f
> > +             add     r1, r1, r0
> >               bl      cache_clean_flush
> >
> >               badr    r0, restart
> >               add     r0, r0, r6
> >               mov     pc, r0
> > +0:           .long   _edata - restart
> >
> >  wont_overwrite:
> >  /*
> > @@ -622,6 +625,21 @@ not_relocated:   mov     r0, #0
> >               add     r2, sp, #0x10000        @ 64k max
> >               mov     r3, r7
> >               bl      decompress_kernel
> > +
> > +             mov     r0, r4                  @ base of inflated image
> > +             adr     r1, LC0                 @ actual LC0
> > +             ldr     r2, [r1]                @ linktime LC0
> > +             sub     r2, r1, r2              @ LC0 delta
> > +             ldr     r1, [r1, #16]           @ link time inflated size offset
> > +             ldr     r1, [r1, r2]            @ actual inflated size (LE)
> > +#ifdef __ARMEB__
> > +             /* convert to big endian */
> > +             eor     r2, r1, r1, ror #16
> > +             bic     r2, r2, #0x00ff0000
> > +             mov     r1, r1, ror #8
> > +             eor     r1, r1, r2, lsr #8
> > +#endif
> > +             add     r1, r1, r0              @ end of inflated image
> >               bl      cache_clean_flush
> >               bl      cache_off
> >
> > @@ -1439,6 +1457,7 @@ reloc_code_end:
> >  #ifdef CONFIG_EFI_STUB
> >               .align  2
> >  _start:              .long   start - .
> > +__edata:     .long   _edata - .
> >
> >  ENTRY(efi_stub_entry)
> >               @ allocate space on stack for passing current zImage address
> > @@ -1470,8 +1489,11 @@ ENTRY(efi_stub_entry)
> >               .align  2
> >  0:           .long   start - (. + 4)
> >
> > -             @ Preserve return value of efi_entry() in r4
> > -             mov     r4, r0
> > +             mov     r4, r0                          @ preserve DTB pointer
> > +             mov     r0, r1                          @ start of image
> > +             adr     r2, __edata
> > +             ldr     r1, [r2]
> > +             add     r1, r1, r2                      @ end of image
> >               bl      cache_clean_flush
> >               bl      cache_off
> >
> > --
> > 2.17.1
> >
> >
>
> --
> RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
> FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
> According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
