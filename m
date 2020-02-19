Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CFDD16424B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 11:39:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+xNp7dCRPWZfin7mwaQMT/A8y4DvhLVuiw3Ylp7FYOo=; b=TT4loE/nbvK7bm
	OFDtANcafngKSgNe4wNoX59tZ7w3BaHC/LbPOqTOAFPfL+Foa5KhHnpi0wC4GtkTPWBsVoNmK9KY8
	fD2+4TB3czPunIO5Q9aq7N8ILl6+ys8PEzCAEZPzlyIQ6HAyihnEhSc1xsYajbKLg7Q1HWlfhwBC0
	UWoJYSPMHeP9K4X/+SMZbYb3nw1a7gu/yYNPATTHaEIdYxLa/izMZoawOQ7jxE5jyDyqn3+rp4fEq
	8KRtXsBKuouLCaKLj1JiaIUyVa4BTnKdHg84lESGMGCJeFnbIdjzlXDi+07z5km9yNKjaSXeFmvKJ
	mwEJQl/Gr8ZliFTXeFJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Mlf-0004hr-6n; Wed, 19 Feb 2020 10:39:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4MlR-0004gx-Gl
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 10:39:35 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 92F0E2465D;
 Wed, 19 Feb 2020 10:39:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582108773;
 bh=t6EucisUj3k9GKUi9HzDCHyuy6JHeDY4sFIA89ws9Zs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=vKhrxTz7kLkP5Q3WCfvximPTS9d76j8T5d1IVUcaVRRdanVzi23IvRxv/oiDR3fsD
 FbgQUhB42zAKZNiz4BljbYQwUf9BRfFw762rCPVGjsXuHPLWGLF+nAPuWJAo54EiPl
 aNal4xwK6v1FkaX9bNp72NWnxU/3ocf4YTd8bSxE=
Date: Wed, 19 Feb 2020 10:39:28 +0000
From: Will Deacon <will@kernel.org>
To: Evgenii Stepanov <eugenis@google.com>
Subject: Re: [PATCH] mm: Avoid creating virtual address aliases in
 brk()/mmap()/mremap()
Message-ID: <20200219103927.GB16824@willie-the-truck>
References: <20200218122310.72710-1-catalin.marinas@arm.com>
 <20200218123426.GA19776@willie-the-truck>
 <CAAeHK+zKGLHVFVAmUB8Ccc2vuGiZ1uSt1kzxk=7SdDtbwVkvhQ@mail.gmail.com>
 <CAFKCwrhysxATNaPWQR9Nn-P1+ngBMXauPUuEdpaYRgKZH0XV7Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFKCwrhysxATNaPWQR9Nn-P1+ngBMXauPUuEdpaYRgKZH0XV7Q@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_023933_582373_4329F458 
X-CRM114-Status: GOOD (  19.22  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Florian Weimer <fweimer@redhat.com>, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>, Victor Stinner <vstinner@redhat.com>,
 Linux Memory Management List <linux-mm@kvack.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 18, 2020 at 01:05:14PM -0800, Evgenii Stepanov wrote:
> On Tue, Feb 18, 2020 at 5:07 AM Andrey Konovalov <andreyknvl@google.com> wrote:
> >
> > On Tue, Feb 18, 2020 at 1:34 PM Will Deacon <will@kernel.org> wrote:
> > >
> > > On Tue, Feb 18, 2020 at 12:23:10PM +0000, Catalin Marinas wrote:
> > > > Currently the arm64 kernel ignores the top address byte passed to brk(),
> > > > mmap() and mremap(). When the user is not aware of the 56-bit address
> > > > limit or relies on the kernel to return an error, untagging such
> > > > pointers has the potential to create address aliases in user-space.
> > > > Passing a tagged address to munmap(), madvise() is permitted since the
> > > > tagged pointer is expected to be inside an existing mapping.
> > >
> > > Might be worth mentioning that this is causing real issues for existing
> > > userspace:
> > >
> > > https://bugzilla.redhat.com/show_bug.cgi?id=1797052
> > >
> > > and so should be merged as a fix.
> > >
> > > > Remove untagging in the above functions by partially reverting commit
> > > > ce18d171cb73 ("mm: untag user pointers in mmap/munmap/mremap/brk"). In
> > > > addition, update the arm64 tagged-address-abi.rst document accordingly.
> >
> > Evgenii, do you know if this will cause any issues for HWASAN?
> 
> Is it possible to preserve the untagging behavior when a process has
> opted in TBI?

It's /possible/, but without a concrete need I'm not keen to special case
mmap() like this. "Avoid aliasing user addresses" is an enforceable rule
across all system calls and is easily documented as such, so I'd prefer
to start from that position and only add exceptions where they are really
needed. That clearly doesn't preclude adding them later on with an extension
to the current prctl() controls.

> I have not seen an actual issue with a tagged pointer in mmap yet
> (I've seen two with mprotect, but not mmap or sbrk), so we should be
> fine either way.

Right, and we're leaving mprotect() and madvise() as they were.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
