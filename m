Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F208A1A7572
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 10:07:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BQCWnof0IJ/H/c+xpZO6OmANQ/CMAmfCLz+uMGTp/WA=; b=hwh/GsBNuLGA2R
	DeGO4NIXFcj7kQBepvODZCesVQp4f1YCtu1DPn/23aK/D2hd2wfz7IPKb69J7LIsWoNuAwVkEtoYI
	Y2XNTb0/lfCoFzSdcy7kgGn5R0NjmEoQA6CAPTUxLnFDaKDMlCntT/Xf2r5LK+SN4eAvBld6cltsM
	p/uz8FJdUz8iQNu5jgaLwLDVjbrMpuahTTOh9aCAY/0Xy+wzFft6C0p0FmwEB0M4aSZPmYHZ3/M55
	p0EmWHjckWgi2Kz0ANZiEJmjPV0+qi49Pz5V+S2/xSOnoDI5f+TN0WFx5lKAXP6LQyn2lvps9oGNk
	gSf/Vy6pWkvmJ7AhK0QQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOGbX-00015U-GA; Tue, 14 Apr 2020 08:07:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOGb6-000114-QM
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 08:07:10 +0000
Received: from mail-il1-f180.google.com (mail-il1-f180.google.com
 [209.85.166.180])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8DBA82082E
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 08:07:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586851627;
 bh=NjcoS6FoeHprQ2wvOMz4dIaRGIgrGeu2l5Dn/BzuqOo=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=n3UlIZoNal5q6Yiqbjnc9//1HRnmDZdKsIK9xJHqFFgYuzfShmNzSpssNxkI8X2jW
 uoGCvyJzoxoRpD+k0h+W+OCP1wAd9I02d/JL2yfg2FEgziUpKo0JHR4TS0Lq+lGN/G
 pFr9qjfmp6HZiS4dkU/vwkWl2HFUPN1u/lG7fmt8=
Received: by mail-il1-f180.google.com with SMTP id o11so11127545ilq.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 01:07:07 -0700 (PDT)
X-Gm-Message-State: AGi0PuYvrsPmZGhhoDXh9SkH9FDsvyzdTy+XRTABjlCkHrajF9s33UHJ
 C9mcRby0ahaJrBiJ1z3XcjNrHiHNpfcb7fGP8Nc=
X-Google-Smtp-Source: APiQypLQLP/ZI4tMLr6ebPQ0bR4YsIrccGVqw6J/dihbCsVIqgQD8U5+8RZJOaX3ZbBuK9zufCedF7pYyc8yYBMBmwg=
X-Received: by 2002:a92:aa0f:: with SMTP id j15mr8713415ili.211.1586851626855; 
 Tue, 14 Apr 2020 01:07:06 -0700 (PDT)
MIME-Version: 1.0
References: <20200320144348.12865-1-geert+renesas@glider.be>
 <CAKv+Gu8q2bAVMRLSc-Ae=hxhg3sbvpfuaMJ_nx4FZFvegNZ+9w@mail.gmail.com>
In-Reply-To: <CAKv+Gu8q2bAVMRLSc-Ae=hxhg3sbvpfuaMJ_nx4FZFvegNZ+9w@mail.gmail.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Tue, 14 Apr 2020 10:06:56 +0200
X-Gmail-Original-Message-ID: <CAMj1kXFAEOWGgmMT4SMP=QafcT54mzMekLjm3wMTN8M4psNSKw@mail.gmail.com>
Message-ID: <CAMj1kXFAEOWGgmMT4SMP=QafcT54mzMekLjm3wMTN8M4psNSKw@mail.gmail.com>
Subject: Re: [PATCH v4] ARM: boot: Obtain start of physical memory from DTB
To: Geert Uytterhoeven <geert+renesas@glider.be>,
 Nicolas Pitre <nico@fluxnic.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_010709_027050_4CB95674 
X-CRM114-Status: GOOD (  19.45  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Arnd Bergmann <arnd@arndb.de>, Russell King <linux@armlinux.org.uk>,
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

On Wed, 25 Mar 2020 at 17:40, Ard Biesheuvel <ardb@kernel.org> wrote:
>
> On Fri, 20 Mar 2020 at 15:43, Geert Uytterhoeven
> <geert+renesas@glider.be> wrote:
> >
> > Currently, the start address of physical memory is obtained by masking
> > the program counter with a fixed mask of 0xf8000000.  This mask value
> > was chosen as a balance between the requirements of different platforms.
> > However, this does require that the start address of physical memory is
> > a multiple of 128 MiB, precluding booting Linux on platforms where this
> > requirement is not fulfilled.
> >
> > Fix this limitation by obtaining the start address from the DTB instead,
> > if available (either explicitly passed, or appended to the kernel).
> > Fall back to the traditional method when needed.
> >
> > This allows to boot Linux on r7s9210/rza2mevb using the 64 MiB of SDRAM
> > on the RZA2MEVB sub board, which is located at 0x0C000000 (CS3 space),
> > i.e. not at a multiple of 128 MiB.
> >
> > Suggested-by: Nicolas Pitre <nico@fluxnic.net>
> > Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> > Reviewed-by: Nicolas Pitre <nico@fluxnic.net>
> > Tested-by: Marek Szyprowski <m.szyprowski@samsung.com>
> > ---
> > v4:
> >   - Fix stack location after commit 184bf653a7a452c1 ("ARM:
> >     decompressor: factor out routine to obtain the inflated image
> >     size"),
> >
>
> Apologies for the breakage. I was aware of the existence of this
> patch, but I didn't realize it was accessing LC0 early on to find the
> stack pointer value.
>
> Reviewed-by: Ard Biesheuvel <ardb@kernel.org>
>

OK, so one thing I did notice when playing with this code is that the
phys/virt patching code requires that 'PHYS_OFFSET - PAGE_OFFSET' is a
multiple of 16 MB, and so this needs to be taken into account by this
change as well, given that PHYS_OFFSET is based on the placement of
the uncompressed kernel in the physical address space.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
