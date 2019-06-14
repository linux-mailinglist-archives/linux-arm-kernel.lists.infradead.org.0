Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00766467E4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 20:54:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9XThUsosGqKg3kVIwS37uiBT8SB9Wj7Pch2sDtxxYAw=; b=LPS7H+Y+upl71X
	MwKFPw9XeRtgJz5jiKbQr1IjnJiyDm85tU/iPYkC6GOl3Ba7FxAsGT/73lKPlXWNndKQWXrL6mbN0
	nySYj5nj2NC8QFMN9gTPx7syHBDjwk8o+y//vX5+NyAi3L2EkbjBLvbm7qTo23E/GOQ/I/lekm+3j
	gSJbqkaHM4+LHvFh5wJWNDe3hSifL5u2uiBQeWwH86qUTD7q7Cbr+oIoPAeT605a07/Gn7xoY4QcW
	XVFUWqvFN6dEq1mjxtH+0qQ1Jpecqys89mO3VklgLdZmvK8k85ZIelRP/jzdWxX6Zz7HZLdx3Yrkk
	oxxTMYqawA6+EuzTpB4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbrLF-0001GV-Mm; Fri, 14 Jun 2019 18:54:25 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbrL8-0001GC-AY
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 18:54:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8upm4+29tOlpQvd0AoUl0tlNlWmR9q34xlzKP6CkZm4=; b=WJ33Ov75EUUu6/DmEUFB19pkd
 AApE091e//VzGGWXOnqjguRJk0CA4BAhULBk8rApp7qZJ0tEF7vsi0te7DwN703C0+ZS8k9W7ofW5
 WrA+5w78xp8yBxCmp7GtPP8+L66lQgyWE8JojrcIjhbKld1qI7oe/EAYtw4ZMwE5O0/cfk9jHgEHo
 B+uYGeapZZUHgoh5mFCngwnBYfM2FtU+UrVOWJOkiySHui2BQaWdDitlmyes7nG91jkEl6qDnWMoA
 NOAMjjtHXTIN0WipAs6YI6qqSMhqfLEGfxR9XlBgkFJ2jkv7CkTsuKTZXyCBkPMQdV5snRmuwzdaA
 yr4JHKlrw==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:56404)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hbrL0-0003Cj-3x; Fri, 14 Jun 2019 19:54:10 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.89)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hbrKy-0002R4-91; Fri, 14 Jun 2019 19:54:08 +0100
Date: Fri, 14 Jun 2019 19:54:08 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Denis 'GNUtoo' Carikli <GNUtoo@cyberdimension.org>
Subject: Re: [PATCH] security: do not enable CONFIG_GCC_PLUGINS by default
Message-ID: <20190614185408.dg6iblbsjwkk3kt6@shell.armlinux.org.uk>
References: <20190614145755.10926-1-GNUtoo@cyberdimension.org>
 <CAG48ez30+VOj78rCiWMKtm0tHdVR67CcrHVCV-FFCfK-nRQTOw@mail.gmail.com>
 <20190614162811.o33yeq65ythjumrh@shell.armlinux.org.uk>
 <20190614201434.3fa4bb6d@primarylaptop.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190614201434.3fa4bb6d@primarylaptop.localdomain>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_115418_363402_7773B18C 
X-CRM114-Status: GOOD (  23.59  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Kees Cook <keescook@chromium.org>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Jann Horn <jannh@google.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Emese Revfy <re.emese@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 14, 2019 at 08:14:34PM +0200, Denis 'GNUtoo' Carikli wrote:
> On Fri, 14 Jun 2019 17:28:11 +0100
> Russell King - ARM Linux admin <linux@armlinux.org.uk> wrote:
> > I'm wondering whether this is sloppy wording or whether the author is
> > really implying that they call the kernel decompressor with the MMU
> > enabled, against the express instructions in
> > Documentation/arm/Booting.
> According to [1]
> > If they are going against the express instructions, all bets are off.
> 
> More background on the decompressor patch:
> - The "ANDROID: arm: decompressor: Flush tlb before swiching domain 0 to
>   client mode" patch is needed anyway since 3.4 in any case, and
>   according to the thread about it [1], the MMU is on at boot.
> - There is a downstream u-boot port for the Galaxy SIII and other very
>   similar devices, which doesn't setup the MMU at boot, but I'm not
>   confident enough to test in on the devices I have. To test with
>   u-boot I'd need to find a new device.
> - If I don't manage to find a new device to test on, since there is
>   already some setup code like arch/arm/boot/compressed/head-sa1100.S
>   that deal with MMU that are enabled with the bootloader, are patches
>   to add a new file like that still accepted? The big downside is that
>   using something like that is probably incompatible with
>   ARCH_MULTIPLATFORM.

SA11x0 pre-dates the booting document, which came about because of the
desire to make the kernel less dependent on the host CPU type.  So
"sa11x0 does it so we can do it" is really not an argument I ever want
to see to justify this kind of stuff.

The booting requirements have been known since at least 2002, some
SEVENTEEN years ago, and the problem was identified as buggy back in
2012.  As far as I can see, nothing has changed.

Entering the kernel with the MMU on and optionally caches on is an
inherently unsafe thing to do.  The kernel would have been placed into
RAM via the data cache, and then we're trying to execute code - unless
the caches have been properly cleaned and invalidated, there is no
guarantee that we'd even reach any instructions to do our own cache
cleaning and invalidation.  So, caches on is utter madness.

MMU on presents a problem: the kernel moves itself around during
decompression - if it happens to move itself on top of the in-use
page tables, then that would be really bad.  There's another issue as
well - if the page tables are already setup, and we create a different
mapping for the virtual address range, the _only_ way to safely switch
to that mapping is via a break-make arrangement, which means we need
code to disable the MMU, flush it.  It is not as simple as "a few extra
instructions to flush TLBs" although that may work in the majority of
cases.  Architecturally, it is wrong.

Things can get even worse - what if the page tables are located where
the kernel writes its own page tables - modifying the live tables and
changing the type of the entries.  Architecturally unpredictable
behaviour may result.

What is written in Documentation/arm/Booting is not for our fun, it is
there to spell out what the kernel requires to be able to boot reliably
on hardware.  If it isn't followed, then booting a kernel will be
unreliable.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
