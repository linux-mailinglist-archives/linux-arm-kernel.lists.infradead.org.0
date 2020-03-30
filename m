Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AC1F197E6E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 16:33:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PaSIzNv2t+5bdMgcw7C9Ua7eStCy9rqvXiMbYn/MZ9I=; b=JBCPGHWqGdNAMJ
	P6dj8odQO5H/4ZNyNXfQgs8LLnw3ZJFGySqVh2uCctG475UIFDb+2yyT/NZgUnQ6DXRLuV5Y8oD33
	aNFv5xNAUbpd3W/r8DctAR8rEW3vWRZ4mDDTK4DZyxkkHSOTXO7lV3W2zf/AMyvLowHWygBsxIa24
	aJOBi71LY7Foan1+i0F95N4Cvi/T+3Vj0hwzSSgUfAnnzASWa9bKNN2ES3wc+8jvX8MN/CqHuVK1u
	Eus1la5ukWS+rjBy2eE6bMpVfSOZbY5jXdajgadji4xDZNLoCORXO5qQHEKaGRmwGOP7BuKnoHIrn
	H8ioVaJh0cvmKsrqy2jA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIvT9-0005n8-RA; Mon, 30 Mar 2020 14:32:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIvT1-0005mZ-Mu
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Mar 2020 14:32:45 +0000
Received: from mail-il1-f179.google.com (mail-il1-f179.google.com
 [209.85.166.179])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3E83D20781
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Mar 2020 14:32:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585578763;
 bh=B8jJcqViIsc/trUPGRxV3+Ui1u0gnPMnjlFNygJkFVM=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=lBvPDliBUdHWlSyozWigVopdhOwEDhj96MQoqxMEnYGYL8P9qAO05gH0mUMvH3DX4
 vmTen87x2kD3kxtJbAAo9cbTJXXopsr2eGrFkWsdzpthDdJZeke3NkoQ90hcU6nQfe
 hGeOj76lb5vDviSHNO0kvHxGVK2p8nWzY0BOQbck=
Received: by mail-il1-f179.google.com with SMTP id g15so15958328ilj.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Mar 2020 07:32:43 -0700 (PDT)
X-Gm-Message-State: ANhLgQ2GAPeKlIi9yLMS7wdZQbr7a7pkB2sQM3xGTrmVkjVwBcXU32dq
 m8GsoNPo2W+iDLU8Pa0FJaK27vvvizCqITk5rEw=
X-Google-Smtp-Source: ADFU+vsqeGGvvYW5+i/KvbFu4pnjDV6EmfDq3jxugMuXMn64EbsdrhK/FSYFTj5oGLUx3MDTn/vyXuex/G2q1sjooyA=
X-Received: by 2002:a05:6e02:551:: with SMTP id
 i17mr10510373ils.218.1585578762598; 
 Mon, 30 Mar 2020 07:32:42 -0700 (PDT)
MIME-Version: 1.0
References: <20200329141258.31172-1-ardb@kernel.org>
 <20200330135121.GD10633@willie-the-truck>
 <CAMj1kXEZARZ1FYZFt4CZ33b-A64zj1JswR0OAHw-eZdzkxiEOQ@mail.gmail.com>
 <20200330140441.GE10633@willie-the-truck>
 <CAMj1kXHJ5n-EZMgGSYm+ekO-e7XTp7fv-FZ2NJ1EttJ=-kc8fw@mail.gmail.com>
 <20200330142805.GA11312@willie-the-truck>
In-Reply-To: <20200330142805.GA11312@willie-the-truck>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Mon, 30 Mar 2020 16:32:31 +0200
X-Gmail-Original-Message-ID: <CAMj1kXFcvHcU2kzP=N4bHgSkw_eE7wvbPJ=7w1pNeCWHbcPvTQ@mail.gmail.com>
Message-ID: <CAMj1kXFcvHcU2kzP=N4bHgSkw_eE7wvbPJ=7w1pNeCWHbcPvTQ@mail.gmail.com>
Subject: Re: [RFC PATCH] arm64: remove CONFIG_DEBUG_ALIGN_RODATA feature
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_073243_791836_A016123B 
X-CRM114-Status: GOOD (  25.44  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 kernel-hardening@lists.openwall.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 30 Mar 2020 at 16:28, Will Deacon <will@kernel.org> wrote:
>
> On Mon, Mar 30, 2020 at 04:22:24PM +0200, Ard Biesheuvel wrote:
> > On Mon, 30 Mar 2020 at 16:04, Will Deacon <will@kernel.org> wrote:
> > >
> > > On Mon, Mar 30, 2020 at 03:53:04PM +0200, Ard Biesheuvel wrote:
> > > > On Mon, 30 Mar 2020 at 15:51, Will Deacon <will@kernel.org> wrote:
> > > > >
> > > > > On Sun, Mar 29, 2020 at 04:12:58PM +0200, Ard Biesheuvel wrote:
> > > > > > When CONFIG_DEBUG_ALIGN_RODATA is enabled, kernel segments mapped with
> > > > > > different permissions (r-x for .text, r-- for .rodata, rw- for .data,
> > > > > > etc) are rounded up to 2 MiB so they can be mapped more efficiently.
> > > > > > In particular, it permits the segments to be mapped using level 2
> > > > > > block entries when using 4k pages, which is expected to result in less
> > > > > > TLB pressure.
> > > > > >
> > > > > > However, the mappings for the bulk of the kernel will use level 2
> > > > > > entries anyway, and the misaligned fringes are organized such that they
> > > > > > can take advantage of the contiguous bit, and use far fewer level 3
> > > > > > entries than would be needed otherwise.
> > > > > >
> > > > > > This makes the value of this feature dubious at best, and since it is not
> > > > > > enabled in defconfig or in the distro configs, it does not appear to be
> > > > > > in wide use either. So let's just remove it.
> > > > > >
> > > > > > Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
> > > > > > ---
> > > > > >  arch/arm64/Kconfig.debug                  | 13 -------------
> > > > > >  arch/arm64/include/asm/memory.h           | 12 +-----------
> > > > > >  drivers/firmware/efi/libstub/arm64-stub.c |  8 +++-----
> > > > > >  3 files changed, 4 insertions(+), 29 deletions(-)
> > > > >
> > > > > Acked-by: Will Deacon <will@kernel.org>
> > > > >
> > > > > But I would really like to go a step further and rip out the block mapping
> > > > > support altogether so that we can fix non-coherent DMA aliases:
> > > > >
> > > > > https://lore.kernel.org/lkml/20200224194446.690816-1-hch@lst.de
> > > > >
> > > >
> > > > I'm not sure I follow - is this about mapping parts of the static
> > > > kernel Image for non-coherent DMA?
> > >
> > > Sorry, it's not directly related to your patch, just that if we're removing
> > > options relating to kernel mappings then I'd be quite keen on effectively
> > > forcing page-granularity on the linear map, as is currently done by default
> > > thanks to RODATA_FULL_DEFAULT_ENABLED, so that we can nobble cacheable
> > > aliases for non-coherent streaming DMA mappings by hooking into Christoph's
> > > series above.
> > >
> >
> > Right. I don't remember seeing any complaints about
> > RODATA_FULL_DEFAULT_ENABLED, but maybe it's too early for that.
> >
> > > This series just reminded me of it because it's another
> > > "off-by-default-behaviour-for-block-mappings-probably-because-of-performance-
> > > but-never-actually-measured" type of thing which really just gets in the
> > > way.
> > >
> >
> > Well, even though I agree that the lack of actual numbers is a bit
> > disturbing here, I'd hate to penalize all systems even more than they
> > already are (due to ARCH_KMALLOC_MINALIGN == ARCH_DMA_MINALIGN) by
> > adding another workaround that is only needed on devices that have
> > non-coherent masters.
>
> Fair enough, but I'd still like to see some numbers. If they're compelling,
> then we could explore something like CONFIG_OF_DMA_DEFAULT_COHERENT, but
> that doesn't really help the kconfig maze :(
>

Could we make this a runtime thing? E.g., remap the entire linear
region down to pages under stop_machine() the first time we probe a
device that uses non-coherent DMA?

(/me ducks)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
