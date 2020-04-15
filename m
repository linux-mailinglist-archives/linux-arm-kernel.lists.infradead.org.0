Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F2111AA142
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 14:46:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N8FSMSsGfU6tmXoKQxG5IzGFYak2s/4FwIHGZrFTHPU=; b=Lp2rdfD9Qy2DDa
	AURQk0EmnApDisqME30NhJ7HjIoZBRjG0GSx7JgkOcRWs1qRJvvucSXD7bWF+EVfE9QX58Ui1DqWH
	X9LHyjGci9uYVsLVh/pf6I5QtVb+gCEZ5s2zcWQtubUxqEJTHI5E98obCk9QZclvyOX6+yceVEhww
	QAu4N3jYHx9QiD23ozkmUiWDITtDOYeS9pPWcrXwsPMhNCfW2Di4p0vWNeInZ3BwBdjTfwmPCaSH6
	td6plHCUCH2VrZ/rgghLiXOjW8RXnHczHfAgUyG+su+vE9ESwZhp6PIf6g36VgP7uLfxnW2zr6niQ
	wnFS8GW5Ck0j2uX7szaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOhQU-0002DG-8n; Wed, 15 Apr 2020 12:45:58 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOhQL-0002Cj-9y
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 12:45:50 +0000
Received: by mail-ot1-f65.google.com with SMTP id j26so3012500ots.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Apr 2020 05:45:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=IR4ZVGXr+wRwlF8AUUe1V7aAxhR/LFzIJ2fK96oWNr8=;
 b=HqMaHDi6fOQVJjv9rn0N2gJ64HuGr+SJm2KaMVc/UHZbyj78swDhT6fx7S/tEBS1GU
 FhT1CNdjzGRJPZZJxv5TSh3xOWTqABeye6SpYYklWoJnQHd3TCLwZBH67Mcq3KzN0atD
 DsMNE454226tl3vnehc3rgC+PEeYwhhxR4JUitjhAdrapXnD/N+YJi4FrvUxF7GVxOOq
 saod8/kwD1LeMCXQHxvd8LBJF91RKPIRYm7oNthqFx/okHAOgOQsWiHtsL1oOyyt8JVH
 Iv2aw8Vn6wJUZEs9ZU12tx402GcXXMEmYus/H4hOOATfKfkNXqZLxTFlVDGPkAAIe/j5
 eHWQ==
X-Gm-Message-State: AGi0PuYObC+mZrjFik8noljphGxj1vEkss0id2P21XAEvFXkaIFqzS/N
 +Yo+V55stL4ou6ybd8LtMPqE+Ivg/EYAR0PUr7w=
X-Google-Smtp-Source: APiQypKOaaToKG1t3eLDM/6X/8HK2J9ka0wjabL5aK3YHS6MKbxLNizZ+ztTbzdVZv6t4BibGtgKgxCnE5CDqrtmkks=
X-Received: by 2002:a9d:7590:: with SMTP id s16mr22295846otk.250.1586954747367; 
 Wed, 15 Apr 2020 05:45:47 -0700 (PDT)
MIME-Version: 1.0
References: <20200320144348.12865-1-geert+renesas@glider.be>
 <CAKv+Gu8q2bAVMRLSc-Ae=hxhg3sbvpfuaMJ_nx4FZFvegNZ+9w@mail.gmail.com>
 <CAMj1kXFAEOWGgmMT4SMP=QafcT54mzMekLjm3wMTN8M4psNSKw@mail.gmail.com>
In-Reply-To: <CAMj1kXFAEOWGgmMT4SMP=QafcT54mzMekLjm3wMTN8M4psNSKw@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 15 Apr 2020 14:45:35 +0200
Message-ID: <CAMuHMdUkrF9qBaZre0EJ-cuzPcL7A1j2ANmQNYV7FAngybb1bA@mail.gmail.com>
Subject: Re: [PATCH v4] ARM: boot: Obtain start of physical memory from DTB
To: Ard Biesheuvel <ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_054549_342320_7917B6A9 
X-CRM114-Status: GOOD (  21.80  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Arnd Bergmann <arnd@arndb.de>, Nicolas Pitre <nico@fluxnic.net>,
 Russell King <linux@armlinux.org.uk>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Chris Brandt <chris.brandt@renesas.com>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Eric Miao <eric.miao@nvidia.com>, Dmitry Osipenko <digetx@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Ard,

On Tue, Apr 14, 2020 at 10:07 AM Ard Biesheuvel <ardb@kernel.org> wrote:
> On Wed, 25 Mar 2020 at 17:40, Ard Biesheuvel <ardb@kernel.org> wrote:
> > On Fri, 20 Mar 2020 at 15:43, Geert Uytterhoeven
> > <geert+renesas@glider.be> wrote:
> > > Currently, the start address of physical memory is obtained by masking
> > > the program counter with a fixed mask of 0xf8000000.  This mask value
> > > was chosen as a balance between the requirements of different platforms.
> > > However, this does require that the start address of physical memory is
> > > a multiple of 128 MiB, precluding booting Linux on platforms where this
> > > requirement is not fulfilled.
> > >
> > > Fix this limitation by obtaining the start address from the DTB instead,
> > > if available (either explicitly passed, or appended to the kernel).
> > > Fall back to the traditional method when needed.
> > >
> > > This allows to boot Linux on r7s9210/rza2mevb using the 64 MiB of SDRAM
> > > on the RZA2MEVB sub board, which is located at 0x0C000000 (CS3 space),
> > > i.e. not at a multiple of 128 MiB.
> > >
> > > Suggested-by: Nicolas Pitre <nico@fluxnic.net>
> > > Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> > > Reviewed-by: Nicolas Pitre <nico@fluxnic.net>
> > > Tested-by: Marek Szyprowski <m.szyprowski@samsung.com>
> > > ---
> > > v4:
> > >   - Fix stack location after commit 184bf653a7a452c1 ("ARM:
> > >     decompressor: factor out routine to obtain the inflated image
> > >     size"),
> > >
> >
> > Apologies for the breakage. I was aware of the existence of this
> > patch, but I didn't realize it was accessing LC0 early on to find the
> > stack pointer value.
> >
> > Reviewed-by: Ard Biesheuvel <ardb@kernel.org>
>
> OK, so one thing I did notice when playing with this code is that the
> phys/virt patching code requires that 'PHYS_OFFSET - PAGE_OFFSET' is a
> multiple of 16 MB, and so this needs to be taken into account by this
> change as well, given that PHYS_OFFSET is based on the placement of
> the uncompressed kernel in the physical address space.

You mean fdt_get_mem_start() should round up the address to make sure
it is a multiple of 16 MiB (assumed PAGE_OFFSET is a multiple of 16 MiB,
too)?
Can PAGE_OFFSET actually be not a multiple of 16 MiB?
Thanks!

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
