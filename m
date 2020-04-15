Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 553FA1AA1D9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 14:58:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zQO8uwfXN5XsMUf+Qd5euBlorweOi8c950Z+lp4aP6M=; b=A6D5Q3/c2POB1q
	YplaIifxSrx7d7C7oHxrO/8ixKuKqpvZAs5Wq5tpz3/EjfickEbJr18eACJg8b9g8lSk07qcsDgZn
	eZsshca42XzZp9+HHoWKsBSx/xGn3WXN6oVp0RgBILOCVwvIiwwTz1ubyUYVYrcYHYMTdgCDX5aa/
	YWo/euS3Y09O5FllFMp39084iD2pJyruXluGnON9ZKtsODe6lvlW3TnzWEoNn4z385I+jN4O10EVT
	vmD9+jclVhn9cm49uTF3TLhY6keSqqVlKlojj0NsfHG5sq6ejBzPQe3+9908MgDI5uG9rPaj1POXR
	EtG27LCxjHMTzT3CTVwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOhc1-0003sm-S4; Wed, 15 Apr 2020 12:57:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOhbs-0003s9-Or
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 12:57:46 +0000
Received: from mail-io1-f52.google.com (mail-io1-f52.google.com
 [209.85.166.52])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4C0B4208FE
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Apr 2020 12:57:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586955464;
 bh=prirf2k0vEOldQV3Q6B6roXSXcORQ3srsnX0/zX+nmU=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=xIVxp/0HdsSClWD829oZovBMKHB4jC9NIrvCKjhinIZfV4+zl4Ky1yvRDnmveOkQW
 uHxJWo8VZxLo1Fpib47qKhwEmenqWN5cnErr4yxGVIMsoOEetuKr4lhgNzdStXjQqq
 Cn4NYvll+9Er7f+m3kktS9ilyXz9Sp4AJ5ijcnws=
Received: by mail-io1-f52.google.com with SMTP id o127so17025826iof.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Apr 2020 05:57:44 -0700 (PDT)
X-Gm-Message-State: AGi0PuazUy81G6nPnojJ6yh7HEFLKWw0H4b/IJ2/612WAlwk2EwDV5+0
 HOIKz7LJYgjl7AXiA0rB3vCX01BwHnVXwh4RXq8=
X-Google-Smtp-Source: APiQypKy73qFjUlK2hkG7VDPPS2tn6u2GeHdjM9WffZnjcJ3WlNJ5Lbm/19dLEq4AuxLtvPzf6NnZMZ7X/nStea6z5k=
X-Received: by 2002:a92:aa0f:: with SMTP id j15mr5222510ili.211.1586955461321; 
 Wed, 15 Apr 2020 05:57:41 -0700 (PDT)
MIME-Version: 1.0
References: <20200320144348.12865-1-geert+renesas@glider.be>
 <CAKv+Gu8q2bAVMRLSc-Ae=hxhg3sbvpfuaMJ_nx4FZFvegNZ+9w@mail.gmail.com>
 <CAMj1kXFAEOWGgmMT4SMP=QafcT54mzMekLjm3wMTN8M4psNSKw@mail.gmail.com>
 <CAMuHMdUkrF9qBaZre0EJ-cuzPcL7A1j2ANmQNYV7FAngybb1bA@mail.gmail.com>
In-Reply-To: <CAMuHMdUkrF9qBaZre0EJ-cuzPcL7A1j2ANmQNYV7FAngybb1bA@mail.gmail.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Wed, 15 Apr 2020 14:57:30 +0200
X-Gmail-Original-Message-ID: <CAMj1kXEgXuizeQzBrt6aC-QODRGinoU5sjFrx0a1LRMg7zD85w@mail.gmail.com>
Message-ID: <CAMj1kXEgXuizeQzBrt6aC-QODRGinoU5sjFrx0a1LRMg7zD85w@mail.gmail.com>
Subject: Re: [PATCH v4] ARM: boot: Obtain start of physical memory from DTB
To: Geert Uytterhoeven <geert@linux-m68k.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_055744_851661_735F6D54 
X-CRM114-Status: GOOD (  24.57  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Wed, 15 Apr 2020 at 14:45, Geert Uytterhoeven <geert@linux-m68k.org> wrote:
>
> Hi Ard,
>
> On Tue, Apr 14, 2020 at 10:07 AM Ard Biesheuvel <ardb@kernel.org> wrote:
> > On Wed, 25 Mar 2020 at 17:40, Ard Biesheuvel <ardb@kernel.org> wrote:
> > > On Fri, 20 Mar 2020 at 15:43, Geert Uytterhoeven
> > > <geert+renesas@glider.be> wrote:
> > > > Currently, the start address of physical memory is obtained by masking
> > > > the program counter with a fixed mask of 0xf8000000.  This mask value
> > > > was chosen as a balance between the requirements of different platforms.
> > > > However, this does require that the start address of physical memory is
> > > > a multiple of 128 MiB, precluding booting Linux on platforms where this
> > > > requirement is not fulfilled.
> > > >
> > > > Fix this limitation by obtaining the start address from the DTB instead,
> > > > if available (either explicitly passed, or appended to the kernel).
> > > > Fall back to the traditional method when needed.
> > > >
> > > > This allows to boot Linux on r7s9210/rza2mevb using the 64 MiB of SDRAM
> > > > on the RZA2MEVB sub board, which is located at 0x0C000000 (CS3 space),
> > > > i.e. not at a multiple of 128 MiB.
> > > >
> > > > Suggested-by: Nicolas Pitre <nico@fluxnic.net>
> > > > Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> > > > Reviewed-by: Nicolas Pitre <nico@fluxnic.net>
> > > > Tested-by: Marek Szyprowski <m.szyprowski@samsung.com>
> > > > ---
> > > > v4:
> > > >   - Fix stack location after commit 184bf653a7a452c1 ("ARM:
> > > >     decompressor: factor out routine to obtain the inflated image
> > > >     size"),
> > > >
> > >
> > > Apologies for the breakage. I was aware of the existence of this
> > > patch, but I didn't realize it was accessing LC0 early on to find the
> > > stack pointer value.
> > >
> > > Reviewed-by: Ard Biesheuvel <ardb@kernel.org>
> >
> > OK, so one thing I did notice when playing with this code is that the
> > phys/virt patching code requires that 'PHYS_OFFSET - PAGE_OFFSET' is a
> > multiple of 16 MB, and so this needs to be taken into account by this
> > change as well, given that PHYS_OFFSET is based on the placement of
> > the uncompressed kernel in the physical address space.
>
> You mean fdt_get_mem_start() should round up the address to make sure
> it is a multiple of 16 MiB (assumed PAGE_OFFSET is a multiple of 16 MiB,
> too)?

Yes.

> Can PAGE_OFFSET actually be not a multiple of 16 MiB?

ARM's Kconfig has

config PAGE_OFFSET
        hex
        default PHYS_OFFSET if !MMU
        default 0x40000000 if VMSPLIT_1G
        default 0x80000000 if VMSPLIT_2G
        default 0xB0000000 if VMSPLIT_3G_OPT
        default 0xC0000000

which means that PHYS_OFFSET - PAGE_OFFSET is guaranteed to be 16 MB
aligned if PHYS_OFFSET is 16 MB aligned.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
