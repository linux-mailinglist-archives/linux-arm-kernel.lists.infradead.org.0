Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5DF819C030
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Apr 2020 13:30:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6Xwog9GQlMsLC+RQ9I4QDjpJ3vylF/7FGmoyMjI+3Hw=; b=q0SJ3WgPR824jo
	axnBdxhviWA+HDBMehNJIbPQfaRsHbGOc8939sjDeyGzVPtB/z4H6IWVzyXRSz36DsyRzsWEUkI4o
	+1sd9sSPK59nUauOZDmwDMAPlqDt4MpWxA8Ca0+y7h8HvS/YY8ArwAtMbCtA9aDtVgwHPCMsiLLaA
	PfizQ6MU9fIiQfEgiYgoMX6wSetrgqF+U+d2hnX44qAv0y5vh7h0CBb0d9a23yRq4UeKtVXyoVBSY
	vDaimRTe3cGQiW53ZFHilzSzt9wsz7jxesQr55froONzLBwRzZv3Ti0oBSdZ6IdxI21BMdN/GLw42
	W5l3p2qbnddA+Sq8w0LQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJy3Z-0003S4-D2; Thu, 02 Apr 2020 11:30:45 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJy3S-0003Rk-MK
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Apr 2020 11:30:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 06F8D101E;
 Thu,  2 Apr 2020 04:30:37 -0700 (PDT)
Received: from mbp (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 316503F71E;
 Thu,  2 Apr 2020 04:30:36 -0700 (PDT)
Date: Thu, 2 Apr 2020 12:30:33 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [RFC PATCH] arm64: remove CONFIG_DEBUG_ALIGN_RODATA feature
Message-ID: <20200402113033.GD21087@mbp>
References: <20200329141258.31172-1-ardb@kernel.org>
 <20200330135121.GD10633@willie-the-truck>
 <CAMj1kXEZARZ1FYZFt4CZ33b-A64zj1JswR0OAHw-eZdzkxiEOQ@mail.gmail.com>
 <20200330140441.GE10633@willie-the-truck>
 <CAMj1kXHJ5n-EZMgGSYm+ekO-e7XTp7fv-FZ2NJ1EttJ=-kc8fw@mail.gmail.com>
 <20200330142805.GA11312@willie-the-truck>
 <CAMj1kXFcvHcU2kzP=N4bHgSkw_eE7wvbPJ=7w1pNeCWHbcPvTQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMj1kXFcvHcU2kzP=N4bHgSkw_eE7wvbPJ=7w1pNeCWHbcPvTQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_043038_771796_D6474982 
X-CRM114-Status: GOOD (  17.37  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 kernel-hardening@lists.openwall.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 30, 2020 at 04:32:31PM +0200, Ard Biesheuvel wrote:
> On Mon, 30 Mar 2020 at 16:28, Will Deacon <will@kernel.org> wrote:
> > > On Mon, 30 Mar 2020 at 16:04, Will Deacon <will@kernel.org> wrote:
> > > > On Mon, Mar 30, 2020 at 03:53:04PM +0200, Ard Biesheuvel wrote:
> > > > > On Mon, 30 Mar 2020 at 15:51, Will Deacon <will@kernel.org> wrote:
> > > > > > But I would really like to go a step further and rip out the block mapping
> > > > > > support altogether so that we can fix non-coherent DMA aliases:
> > > > > >
> > > > > > https://lore.kernel.org/lkml/20200224194446.690816-1-hch@lst.de
> > > > >
> > > > > I'm not sure I follow - is this about mapping parts of the static
> > > > > kernel Image for non-coherent DMA?
> > > >
> > > > Sorry, it's not directly related to your patch, just that if we're removing
> > > > options relating to kernel mappings then I'd be quite keen on effectively
> > > > forcing page-granularity on the linear map, as is currently done by default
> > > > thanks to RODATA_FULL_DEFAULT_ENABLED, so that we can nobble cacheable
> > > > aliases for non-coherent streaming DMA mappings by hooking into Christoph's
> > > > series above.

Have we ever hit this issue in practice? At least from the CPU
perspective, we've assumed that a non-cacheable access would not hit in
the cache. Reading the ARM ARM rules, it doesn't seem to state this
explicitly but we can ask for clarification (I dug out an email from
2015, left unanswered).

Assuming that the CPU is behaving as we'd expect, are there other issues
with peripherals/SMMU?

> > Fair enough, but I'd still like to see some numbers. If they're compelling,
> > then we could explore something like CONFIG_OF_DMA_DEFAULT_COHERENT, but
> > that doesn't really help the kconfig maze :(

I'd prefer not to have a config option, we could easily break single
Image at some point.

> Could we make this a runtime thing? E.g., remap the entire linear
> region down to pages under stop_machine() the first time we probe a
> device that uses non-coherent DMA?

That could be pretty expensive at run-time. With the ARMv8.4-TTRem
feature, I wonder whether we could do this lazily when allocating
non-coherent DMA buffers.

(I still hope there isn't a problem at all with this mismatch ;)).

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
