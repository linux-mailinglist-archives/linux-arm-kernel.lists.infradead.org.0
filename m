Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B18C01A7497
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 09:22:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DDx+BGAj2TkVlHnNy+Msfos/hOs83PbC+27ZqmEa3fo=; b=eIrmog+fuWvuXs
	BKBHaFcZfXwHxo8P5lq5QyxeZMy3a/b5IN9p3cirfvDWhJ3UFxJvc8+unbw2SDn6vsbCetSfrbFjr
	KNTZcmgqMhMoLDKf97hRAX+WoESHLWYCo1NqDJu7mkf8bkmC/PCULI5lGnHjEzP6w71YXdz+FC249
	ZLwItMVVgZXSureHgqJHoh8v6hykl9YKQYrY1ywCTpHLBXZ9Eh3e0Tuw87FrlKuqitNDq6ahmKT0/
	7ni5M+XFcfI+dvcgtA5DLdEO56mHddU+qIUk7lkQ8gup6748F/KkezQBj1VfYrnVFvYBjlWHLKr6P
	YZkJWY+lGeOsNifiaWtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOFuA-0001z1-I6; Tue, 14 Apr 2020 07:22:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOFu3-0001yh-1S
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 07:22:40 +0000
Received: from mail-io1-f41.google.com (mail-io1-f41.google.com
 [209.85.166.41])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 91ADD2078A
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 07:22:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586848958;
 bh=bWAiGhMnB+uz+Ggq1mfnljLnfrbDVBJTH8WUqa3lvg0=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=d/7nqShLX2L2unflS35pt6gLz2uzFR2R3bhLG84dpdEKh6uGDtM0IBN0l8+ef1GyT
 EVX/kPofCo5vv7WqVPKzci6o/HM4Mx9PJ+yK76Uc1HM7x/j1ZCs91Jwc0wTFEM0zUb
 IjEZ5EalPb8ryJB9krUz7InV5VCk9PvTbSBF1NyY=
Received: by mail-io1-f41.google.com with SMTP id i3so12136068ioo.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 00:22:38 -0700 (PDT)
X-Gm-Message-State: AGi0PuZ76hz6khVo0YXbDL3WiuA0sYjre/jbeskWbqcAoGVLRh6vlaHe
 mcVaNTQt+c0oONGVvpUrVNtaZFOvewCA6BkPtFY=
X-Google-Smtp-Source: APiQypIlD71s/PvYUu50eFlUWcgtTgdiIzd+GcnusuWySkJjSnM9gznRgTmuJA3WpIrhurnp4iDv4paPmj06HDgryI0=
X-Received: by 2002:a6b:7f48:: with SMTP id m8mr20408750ioq.142.1586848957898; 
 Tue, 14 Apr 2020 00:22:37 -0700 (PDT)
MIME-Version: 1.0
References: <20200413155521.24698-1-ardb@kernel.org>
 <CAOnJCULxNtk99sudMD5Rn5ao0orwcarOAwg7NPXMK6ZdXmwNOA@mail.gmail.com>
In-Reply-To: <CAOnJCULxNtk99sudMD5Rn5ao0orwcarOAwg7NPXMK6ZdXmwNOA@mail.gmail.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Tue, 14 Apr 2020 09:22:27 +0200
X-Gmail-Original-Message-ID: <CAMj1kXHyP1qHJVBLQ3LaiQWx2swofA+msRJQjp0aX_AcPgB-UQ@mail.gmail.com>
Message-ID: <CAMj1kXHyP1qHJVBLQ3LaiQWx2swofA+msRJQjp0aX_AcPgB-UQ@mail.gmail.com>
Subject: Re: [PATCH v2 0/8] efi/libstub: simplify arm64 kernel image loading
To: Atish Patra <atishp@atishpatra.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_002239_121593_A09C8DF7 
X-CRM114-Status: GOOD (  27.32  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-efi <linux-efi@vger.kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Arvind Sankar <nivedita@alum.mit.edu>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 13 Apr 2020 at 23:54, Atish Patra <atishp@atishpatra.org> wrote:
>
> On Mon, Apr 13, 2020 at 8:55 AM Ard Biesheuvel <ardb@kernel.org> wrote:
> >
> > On arm64, the kernel image used to be virtually mapped via the linear
> > region, making the two mappings correlated in a way that required the
> > kernel to be located at the start of the linear region, or the memory
> > below would not be accessible. For this reason, the EFI stub loader
> > code for arm64 has the notion of a 'preferred offset' for the physical
> > placement of the kernel image, and tries to put the kernel there, or
> > at least as low as possible in physical memory (unless KASLR is active,
> > in which case the placement is randomized)
> >
> > When KASLR was introduced, the virtual mapping of the kernel was moved
> > into the vmalloc region, and now, regardless of whether KASLR support
> > is built in or active, the kernel can be placed anywhere in physical
> > memory without any detrimental side effects on the linear region.
> >
> > This means that we can drop the notion of 'preferred offset' entirely,
> > and invoke the kernel in place if the PE/COFF loader loaded it at the
> > right offset. If not, we can invoke the ordinary UEFI top down page
> > allocator to reallocate it elsewhere in memory. By updating the PE/COFF
> > metadata, we can inform the PE/COFF loader about the desired alignment,
> > making it less likely that we need to move the kernel image in the first
> > place.
> >
> > Ard Biesheuvel (8):
> >   efi/libstub/random: align allocate size to EFI_ALLOC_ALIGN
> >   efi/libstub/random: increase random alloc granularity
> >   efi/libstub/arm64: replace 'preferred' offset with alignment check
> >   efi/libstub/arm64: simplify randomized loading of kernel image
> >   efi/libstub/arm64: align PE/COFF sections to segment alignment
> >   efi/libstub: add API function to allocate aligned memory
> >   efi/libstub/arm64: switch to ordinary page allocator for kernel image
> >   efi/libstub: move efi_relocate_kernel() into separate source file
> >
> >  arch/arm64/kernel/efi-header.S             |   2 +-
> >  arch/arm64/kernel/vmlinux.lds.S            |   3 +-
> >  drivers/firmware/efi/libstub/Makefile      |   3 +-
> >  drivers/firmware/efi/libstub/alignedmem.c  |  57 ++++++
> >  drivers/firmware/efi/libstub/arm64-stub.c  |  92 +++-------
> >  drivers/firmware/efi/libstub/efistub.h     |  18 +-
> >  drivers/firmware/efi/libstub/mem.c         | 191 +-------------------
> >  drivers/firmware/efi/libstub/randomalloc.c |   6 +-
> >  drivers/firmware/efi/libstub/relocate.c    | 174 ++++++++++++++++++
> >  9 files changed, 280 insertions(+), 266 deletions(-)
> >  create mode 100644 drivers/firmware/efi/libstub/alignedmem.c
> >  create mode 100644 drivers/firmware/efi/libstub/relocate.c
> >
> > --
> > 2.17.1
> >
>
> Oops. I just noticed this series after I sent out a v2.
> I see that efi_low_alloc is removed now and the handle_kernel_image is
> simplified for arm64.
> I will update the risc-v uefi series accordingly. Sorry for the noise.
>

No worries. And apologies for making this a moving target :-)

I realised you will probably need to bring back efi_low_alloc() as a
global symbol, as I don't think you will be able to switch to
efi_relocate_kernel().

In any case, this series is just set of patches on the list, so feel
free to propose changes if they are making your life too difficult.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
