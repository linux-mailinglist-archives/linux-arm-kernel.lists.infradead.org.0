Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5808F1B2C89
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 18:22:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IxZBJf1PZlMN0UNN8RgSwDMXpCjtL3jp3akU1tjZAzU=; b=mp+a7DWSmuoOmb
	ONtN9zhX9n1vj30t1qSXWSbHbqClc67Jx8tLof0WHZcaJyVTyWVVgKL2Y/Hw4pI+KlgT7JSqePOw4
	ZfhgcFBzEsp41Z09yt1FtrBqEA5pvTfqFDztLebbmLVt1i1G+IMZDBlmHPYy94fLXpvMHZkLAmqRA
	4QnD8VScDBqxn86AcS/7k6GR5lZMu+BzANhcNgP74Nrg+qZCI8YpQJ+XWtwlg9ZJKk4eQtbt/cKKO
	X08ydaXQWoCfWQ4OVw64k+ILPDal81FPS/bRN8ClMoHew1qEYzYCeupS51Cvq42sG5bmhxWy9Pnl2
	SIE8R/V8fEeVvKi2aHjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQvfH-0000um-W7; Tue, 21 Apr 2020 16:22:27 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQvcf-0004ts-Jv
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 16:19:48 +0000
Received: by mail-ot1-f65.google.com with SMTP id 72so5191716otu.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Apr 2020 09:19:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rMu3klCIHTko91xLqiY17Crj+p7Y4rNwVMkOgmrRdjc=;
 b=qFC8dvRsk1rzUZqtY6cjvqzkFzgbs4WGvMRpji05wiFa49NSXduIvXR5GB64MwamIj
 +mFxFlVLO3RH2so5WSdg0lkuQQfbxzLb7+zECOIg8KVnL+hTFHX8Qv0KkuC4ZK1uob4k
 Hv2WnHVt754vokF3x/f+dvDyNFokYUQ04PnxWX5YrVC8s6qmByxVKFPeQa79vM4m0/ia
 KKUfaRaYBC2JZznQCbbsqcN2HHAoofEM/uKbQnp0M+drDdVp4EjFCllcKuI3J6BW6kPY
 kmPhF67z0r0mxrVXHcYYymphNib24NJjeGrWGKwluxK6/DCu7XXtzBrkRAgQjZCrvdSh
 fqIg==
X-Gm-Message-State: AGi0PuZu7rWLzJ1fk6EHxQvGWwTf9oBeTT9l4XqrFn+33bptHCMWPjY+
 rIIEipUx2uVuxd+BYFtoCePJnAJP+8lKhZ+6tBM=
X-Google-Smtp-Source: APiQypJsqzlVBwBP0EqDIPyCl00zSKE/zjVy6OIFCkatDQTt1ohKrYd6rQIJlptwqNv4riX8sdI+OYsGaKBUVHcWaYo=
X-Received: by 2002:a9d:76c7:: with SMTP id p7mr13880170otl.145.1587485983529; 
 Tue, 21 Apr 2020 09:19:43 -0700 (PDT)
MIME-Version: 1.0
References: <20200415153409.30112-1-geert+renesas@glider.be>
 <CAMj1kXHm=xA4gafwAaBn8=YcAsQCYDNmZ=4REsfvEUgZShm3Ww@mail.gmail.com>
 <20200421160137.GE25745@shell.armlinux.org.uk>
In-Reply-To: <20200421160137.GE25745@shell.armlinux.org.uk>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 21 Apr 2020 18:19:31 +0200
Message-ID: <CAMuHMdWt_XkDk+t8tZJcx43kFEGj-POAqwYEu6uGLmg3iUFRxw@mail.gmail.com>
Subject: Re: [PATCH v5] ARM: boot: Obtain start of physical memory from DTB
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_091946_059523_ABC0CFCC 
X-CRM114-Status: GOOD (  28.43  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Chris Brandt <chris.brandt@renesas.com>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Eric Miao <eric.miao@nvidia.com>, Dmitry Osipenko <digetx@gmail.com>,
 Ard Biesheuvel <ardb@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Russell,

On Tue, Apr 21, 2020 at 6:01 PM Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
> On Tue, Apr 21, 2020 at 05:19:40PM +0200, Ard Biesheuvel wrote:
> > On Wed, 15 Apr 2020 at 17:34, Geert Uytterhoeven
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
> > > Reviewed-by: Ard Biesheuvel <ardb@kernel.org>
> > > Tested-by: Marek Szyprowski <m.szyprowski@samsung.com>
> > > Tested-by: Dmitry Osipenko <digetx@gmail.com>
> >
> > This is ready to go into the patch system, no?
> >
> > The sooner Russell picks it up, the sooner I can respin my patches
> > that go on top.
>
> This seems to be a particularly risky change (it's already been subject
> to various failures for people) so I do not intend to rush to pick it
> up.

Yeah, I'm fully aware head.S is fragile ;-)

> In any case, Masahiro Yamada has resubmitted a patch to sort out the
> libfdt builds that he's been trying to get merged for some time now,
> so I'm going to be giving that priority. Your change conflicts with
> this libfdt build change.

OK, will resubmit after his changes have landed (in your tree?).

> So, I think all in all, it needs to spend a bit longer being provenly
> tested before I merged it (and eventually fixed up for the libfdt
> change), and I don't think merging it so it appears in linux-next
> will help with that.

Please note that I also have a DTS patch that depends on this.
Hence if this patch doesn't make it into v5.8, the board support DTS
patch that depends on this will have to be postponed one more cycle,
too...

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
