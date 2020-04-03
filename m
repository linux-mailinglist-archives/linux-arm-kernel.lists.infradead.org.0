Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0BE919D0CD
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 09:07:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2hhsJDXA1/b31E327cihUrhKnXg9hIWu7XLpIrXU4Wk=; b=uu0hGEkviffxO/
	T5EOE0b0uBEQuIP3AGQAXsikRaUv6tmJBK7NVwjxm89M4BwWaB0FQYFM8i3Gg/RJPlBiI/fh0OJxd
	OYECjnJkd93KK2eFsMncBRXMKua2vsBnZgiTkd29LJX3hPs1emNLU4ZRgBBjY8LhQVGF7Ef66ERiq
	KzY2NezAtAlO7i2iFG22785qXmFUt45VjfRV5wqZo96a1eVys8bYW04mfYob4p5JUDSOHlwdPK3Ef
	CYoF7pEzXC41BevgPsFhcK0JepSvaRTCAF4n0wCIdqpEaFi+h86A2gn1jzpufB42gBMQi1cOyev8C
	2ybeiIQZJbNBXeNHEbwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKGQS-0000wO-73; Fri, 03 Apr 2020 07:07:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKGQL-0000vt-9A
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 07:07:30 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 58509206A3;
 Fri,  3 Apr 2020 07:07:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585897648;
 bh=48ZncQum678f3DrW2C1lr3dFNQ1A9uAJJlABWTqboDc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=WuEckcFjkFkaXQ6hxhM+4L05U6jKO2uJth28Fv3JAz6qWz7cB/a7sbf/LEU/swgMg
 zb8d+UqP3PRT9mAHpjqEtLDnVi/33yjh3ja1svsYyeEdMfXU2s2XQg1e1pSY4xwviK
 rfp5vu7SiM+nAk7Y/xLrnqKJIH8sLfCoNRIJSwOI=
Date: Fri, 3 Apr 2020 08:07:24 +0100
From: Will Deacon <will@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [RFC PATCH] arm64: remove CONFIG_DEBUG_ALIGN_RODATA feature
Message-ID: <20200403070723.GB16361@willie-the-truck>
References: <20200329141258.31172-1-ardb@kernel.org>
 <20200330135121.GD10633@willie-the-truck>
 <CAMj1kXEZARZ1FYZFt4CZ33b-A64zj1JswR0OAHw-eZdzkxiEOQ@mail.gmail.com>
 <20200330140441.GE10633@willie-the-truck>
 <CAMj1kXHJ5n-EZMgGSYm+ekO-e7XTp7fv-FZ2NJ1EttJ=-kc8fw@mail.gmail.com>
 <20200330142805.GA11312@willie-the-truck>
 <CAMj1kXFcvHcU2kzP=N4bHgSkw_eE7wvbPJ=7w1pNeCWHbcPvTQ@mail.gmail.com>
 <20200402113033.GD21087@mbp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200402113033.GD21087@mbp>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_000729_339437_F7876F7F 
X-CRM114-Status: GOOD (  15.79  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ard Biesheuvel <ardb@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 kernel-hardening@lists.openwall.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 02, 2020 at 12:30:33PM +0100, Catalin Marinas wrote:
> On Mon, Mar 30, 2020 at 04:32:31PM +0200, Ard Biesheuvel wrote:
> > On Mon, 30 Mar 2020 at 16:28, Will Deacon <will@kernel.org> wrote:
> > > > On Mon, 30 Mar 2020 at 16:04, Will Deacon <will@kernel.org> wrote:
> > > > > On Mon, Mar 30, 2020 at 03:53:04PM +0200, Ard Biesheuvel wrote:
> > > > > > On Mon, 30 Mar 2020 at 15:51, Will Deacon <will@kernel.org> wrote:
> > > > > > > But I would really like to go a step further and rip out the block mapping
> > > > > > > support altogether so that we can fix non-coherent DMA aliases:
> > > > > > >
> > > > > > > https://lore.kernel.org/lkml/20200224194446.690816-1-hch@lst.de
> > > > > >
> > > > > > I'm not sure I follow - is this about mapping parts of the static
> > > > > > kernel Image for non-coherent DMA?
> > > > >
> > > > > Sorry, it's not directly related to your patch, just that if we're removing
> > > > > options relating to kernel mappings then I'd be quite keen on effectively
> > > > > forcing page-granularity on the linear map, as is currently done by default
> > > > > thanks to RODATA_FULL_DEFAULT_ENABLED, so that we can nobble cacheable
> > > > > aliases for non-coherent streaming DMA mappings by hooking into Christoph's
> > > > > series above.
> 
> Have we ever hit this issue in practice? At least from the CPU
> perspective, we've assumed that a non-cacheable access would not hit in
> the cache. Reading the ARM ARM rules, it doesn't seem to state this
> explicitly but we can ask for clarification (I dug out an email from
> 2015, left unanswered).
> 
> Assuming that the CPU is behaving as we'd expect, are there other issues
> with peripherals/SMMU?

Any clarification would need to be architectural, I think, and not specific
to the CPU. Worth asking again though.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
