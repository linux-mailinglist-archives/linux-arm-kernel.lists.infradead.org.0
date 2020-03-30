Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1E1C197DD0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 16:05:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V1pC+uQI3d5B6LIU0U+nKcc6cJaKaSkBFZBZiNf0myQ=; b=fDy9GLNZbjzN6U
	ErLG4jfgti2ClA/ZSvX6yeQZQVvIiUUnmF2D3fwOhR4aPqK1OSh0gyBZrEe9zw+pEdCQmXdXEy9MF
	Ly0fuN3gcny9H+3YVArfc8ZGBv9gNmNdNRsyN0I600RmYw2SJ94ve2hT+h/uzgFERnGgQvpq7MOTR
	ET/WOiTJJwlu5GGZgRLyGMQoKQDgD60Q0XgmZ8SjimoNMT7C32+N/DkmAAbgbXZrDU7IhwxQYsWCu
	WnU8Kr1Dt5bXpUVfI2iVusYHB4L2jlfbgC+peeyqM54kz5IUk393fCCBU79wK1F4DA2MxkPezmQlU
	//7vwmAEEsQJ2Ns7MDpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIv28-000115-N6; Mon, 30 Mar 2020 14:04:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIv1y-00010R-Ui
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Mar 2020 14:04:48 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8F6DD2082D;
 Mon, 30 Mar 2020 14:04:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585577086;
 bh=ZBU9no1Ggmqz4YW86NljyWCx4OIRHRPn4AkqkcfH7go=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=SWh1RtobgLh4KvnlmrGP5NqIVPX2604R2XfmRS85UwpQt75JSvlASScc+I4u8XnMm
 ipWln6hdfaY7ERXdLEKleD4Zl5wP5GnV37rP0W4NO9Job6fyNfzf7GntXUxDqWLoE1
 Isq+L0P6YhGQoivoIWWGMVVwO1EnVsUg95gtHxqQ=
Date: Mon, 30 Mar 2020 15:04:42 +0100
From: Will Deacon <will@kernel.org>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [RFC PATCH] arm64: remove CONFIG_DEBUG_ALIGN_RODATA feature
Message-ID: <20200330140441.GE10633@willie-the-truck>
References: <20200329141258.31172-1-ardb@kernel.org>
 <20200330135121.GD10633@willie-the-truck>
 <CAMj1kXEZARZ1FYZFt4CZ33b-A64zj1JswR0OAHw-eZdzkxiEOQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMj1kXEZARZ1FYZFt4CZ33b-A64zj1JswR0OAHw-eZdzkxiEOQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_070447_011240_D13B4D91 
X-CRM114-Status: GOOD (  21.11  )
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

On Mon, Mar 30, 2020 at 03:53:04PM +0200, Ard Biesheuvel wrote:
> On Mon, 30 Mar 2020 at 15:51, Will Deacon <will@kernel.org> wrote:
> >
> > On Sun, Mar 29, 2020 at 04:12:58PM +0200, Ard Biesheuvel wrote:
> > > When CONFIG_DEBUG_ALIGN_RODATA is enabled, kernel segments mapped with
> > > different permissions (r-x for .text, r-- for .rodata, rw- for .data,
> > > etc) are rounded up to 2 MiB so they can be mapped more efficiently.
> > > In particular, it permits the segments to be mapped using level 2
> > > block entries when using 4k pages, which is expected to result in less
> > > TLB pressure.
> > >
> > > However, the mappings for the bulk of the kernel will use level 2
> > > entries anyway, and the misaligned fringes are organized such that they
> > > can take advantage of the contiguous bit, and use far fewer level 3
> > > entries than would be needed otherwise.
> > >
> > > This makes the value of this feature dubious at best, and since it is not
> > > enabled in defconfig or in the distro configs, it does not appear to be
> > > in wide use either. So let's just remove it.
> > >
> > > Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
> > > ---
> > >  arch/arm64/Kconfig.debug                  | 13 -------------
> > >  arch/arm64/include/asm/memory.h           | 12 +-----------
> > >  drivers/firmware/efi/libstub/arm64-stub.c |  8 +++-----
> > >  3 files changed, 4 insertions(+), 29 deletions(-)
> >
> > Acked-by: Will Deacon <will@kernel.org>
> >
> > But I would really like to go a step further and rip out the block mapping
> > support altogether so that we can fix non-coherent DMA aliases:
> >
> > https://lore.kernel.org/lkml/20200224194446.690816-1-hch@lst.de
> >
> 
> I'm not sure I follow - is this about mapping parts of the static
> kernel Image for non-coherent DMA?

Sorry, it's not directly related to your patch, just that if we're removing
options relating to kernel mappings then I'd be quite keen on effectively
forcing page-granularity on the linear map, as is currently done by default
thanks to RODATA_FULL_DEFAULT_ENABLED, so that we can nobble cacheable
aliases for non-coherent streaming DMA mappings by hooking into Christoph's
series above.

This series just reminded me of it because it's another
"off-by-default-behaviour-for-block-mappings-probably-because-of-performance-
but-never-actually-measured" type of thing which really just gets in the
way.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
