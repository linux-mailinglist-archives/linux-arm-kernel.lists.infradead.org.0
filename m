Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D93D44B8D7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 14:40:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kmd0NrBl3YIx8D9Iypu0Y5h1CgtBHGMI/fm9u9XL89Y=; b=dDkpEgqiOIEVNn
	+td8Y9k10WLgoPAMnH+aPxZdpfXAHb6pw97pcT8uFiMnTFlClZ7N8UYgmAYBR75fHMvO5fzHH7eB/
	IPVIEJ+mE2nPrNLJMNPOIV6vtupDpxsvot2Kk1AjXzY5ALyP7wkv47e7CBBQ3KZhvFUJHvgbE7cEG
	5Snqfbc3DZACZ9K7+qhJJBHqvZBg3aVKYOl3ZSpsbKo5XsH6bJO8a7pnVunIaN0/R4NRh+kKS+UrN
	hQqq6BQ/gwksBXdjTmPYbcJIb+l3C3wupOF8gz7rqy2EgFYzWTkYA/BSZLm+YvuXnOLwV7CQkq/hz
	KXFUo94XZJ5hgSbFIfQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdZse-00088f-07; Wed, 19 Jun 2019 12:40:00 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hdZsP-000882-7J; Wed, 19 Jun 2019 12:39:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 945BC360;
 Wed, 19 Jun 2019 05:39:44 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 092A33F738;
 Wed, 19 Jun 2019 05:39:41 -0700 (PDT)
Date: Wed, 19 Jun 2019 13:39:39 +0100
From: Will Deacon <will.deacon@arm.com>
To: Guo Ren <guoren@kernel.org>
Subject: Re: [PATCH RFC 11/14] arm64: Move the ASID allocator code in a
 separate file
Message-ID: <20190619123939.GF7767@fuggles.cambridge.arm.com>
References: <20190321163623.20219-1-julien.grall@arm.com>
 <20190321163623.20219-12-julien.grall@arm.com>
 <0dfe120b-066a-2ac8-13bc-3f5a29e2caa3@arm.com>
 <CAJF2gTTXHHgDboaexdHA284y6kNZVSjLis5-Q2rDnXCxr4RSmA@mail.gmail.com>
 <c871a5ae-914f-a8bb-9474-1dcfec5d45bf@arm.com>
 <20190619091219.GB7767@fuggles.cambridge.arm.com>
 <CAJF2gTTmFq3yYa9UrdZRAFwJgC=KmKTe2_NFy_UZBUQovqQJPg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJF2gTTmFq3yYa9UrdZRAFwJgC=KmKTe2_NFy_UZBUQovqQJPg@mail.gmail.com>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_053945_349674_D62B8691 
X-CRM114-Status: GOOD (  16.54  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: julien.thierry@arm.com, aou@eecs.berkeley.edu, james.morse@arm.com,
 Arnd Bergmann <arnd@arndb.de>, suzuki.poulose@arm.com,
 Marc Zyngier <marc.zyngier@arm.com>, catalin.marinas@arm.com,
 Anup Patel <anup.Patel@wdc.com>, linux-kernel@vger.kernel.org,
 rppt@linux.ibm.com, hch@infradead.org, Atish.Patra@wdc.com,
 Julien Grall <julien.grall@arm.com>, Palmer Dabbelt <palmer@sifive.com>,
 gary@garyguo.net, paul.walmsley@sifive.com, christoffer.dall@arm.com,
 linux-riscv@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 19, 2019 at 08:18:04PM +0800, Guo Ren wrote:
> On Wed, Jun 19, 2019 at 5:12 PM Will Deacon <will.deacon@arm.com> wrote:
> > This is one place where I'd actually prefer not to go down the route of
> > making the code generic. Context-switching and low-level TLB management
> > is deeply architecture-specific and I worry that by trying to make this
> > code common, we run the real risk of introducing subtle bugs on some
> > architecture every time it is changed.
> "Add generic asid code" and "move arm's into generic" are two things.
> We could do
> first and let architecture's maintainer to choose.

If I understand the proposal being discussed, it involves basing that
generic ASID allocation code around the arm64 implementation which I don't
necessarily think is a good starting point.

> > Furthermore, the algorithm we use
> > on arm64 is designed to scale to large systems using DVM and may well be
> > too complex and/or sub-optimal for architectures with different system
> > topologies or TLB invalidation mechanisms.
> It's just a asid algorithm not very complex and there is a callback
> for architecture to define their
> own local hart tlb flush. Seems it has nothing with DVM or tlb
> broadcast mechanism.

I'm pleased that you think the algorithm is not very complex, but I'm also
worried that you might not have fully understood some of its finer details.

The reason I mention DVM and TLB broadcasting is because, depending on
the mechanisms in your architecture relating to those, it may be strictly
required that all concurrently running threads of a process have the same
ASID at any given point in time, or it may be that you really don't care.

If you don't care, then the arm64 allocator is over-engineered and likely
inefficient for your system. If you do care, then it's worth considering
whether a lock is sufficient around the allocator if you don't expect high
core counts. Another possibility is that you end up using only one ASID and
invalidating the local TLB on every context switch. Yet another design
would be to manage per-cpu ASID pools.

So rather than blindly copying the arm64 code, I suggest sitting down and
designing something that fits to your architecture instead. You may end up
with something that is both simpler and more efficient.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
