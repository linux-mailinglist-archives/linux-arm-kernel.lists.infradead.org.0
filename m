Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA5FFB1099
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 16:03:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mWP9RGXKc7iTd3aS8blYeshuCWRmyupiLuwLLElLYU8=; b=f3PA/jvn9qqmcw
	XUVlZG6gEYQ/LI9F+GxkWRm8eZRkgj/C6ikCfPkBQIBej4IfB0qZnd9TBrpYHgXwD5LO2rZOmAy4t
	R4K+f0CD9zTFNF7Cp0aVjNPstjS6JCqi8XYg5hNlkieqKAsiuUgTLP/w8zAejomYpfFyaY1yB4DBm
	M4RrEIC0m4es3FuvJhc4Z1MYJNBxuowCb1IZqzWo5+GkR89afzqtHCAIu6IerBitQjuEG2gTkMDa2
	7GHkYWramx8VdCjZ/YE5QZ1N59qj9MIhUycicdp8CGhFf29mcPM10wj+7fFi+4SxV1J9na3L3tg0C
	U2vo+6bZStv47Pw/I/UQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8PhA-0000Hz-2V; Thu, 12 Sep 2019 14:03:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8Pge-0000CS-8m; Thu, 12 Sep 2019 14:03:06 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BBFBA20856;
 Thu, 12 Sep 2019 14:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568296983;
 bh=W/mFNJBuhBpmbDbmK2QLeeqrvyKptqabZ5ypFqgATbU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=zZWoHe9qke0fWfFJOlp7u5U6VNJ/lxOM6p5vMkZZFDleEdE1MM1auzRRZd1JCYzZN
 nCbzbEtEpYAkC86lEARz1IW1i5vUYhqPWk9cRUWCg/5A3JAdcXl5MG4tPAjfsJj/+m
 puXi1FKE2G+rPXBGADanJd04R0aDp5LpwZKXyxes=
Date: Thu, 12 Sep 2019 15:02:56 +0100
From: Will Deacon <will@kernel.org>
To: Guo Ren <guoren@kernel.org>
Subject: Re: [PATCH RFC 11/14] arm64: Move the ASID allocator code in a
 separate file
Message-ID: <20190912140256.fwbutgmadpjbjnab@willie-the-truck>
References: <20190321163623.20219-12-julien.grall@arm.com>
 <0dfe120b-066a-2ac8-13bc-3f5a29e2caa3@arm.com>
 <CAJF2gTTXHHgDboaexdHA284y6kNZVSjLis5-Q2rDnXCxr4RSmA@mail.gmail.com>
 <c871a5ae-914f-a8bb-9474-1dcfec5d45bf@arm.com>
 <20190619091219.GB7767@fuggles.cambridge.arm.com>
 <CAJF2gTTmFq3yYa9UrdZRAFwJgC=KmKTe2_NFy_UZBUQovqQJPg@mail.gmail.com>
 <20190619123939.GF7767@fuggles.cambridge.arm.com>
 <CAJF2gTSiiiewTLwVAXvPLO7rTSUw1rg8VtFLzANdP2S2EEbTjg@mail.gmail.com>
 <20190624104006.lvm32nahemaqklxc@willie-the-truck>
 <CAJF2gTSC1sGgmiTCgzKUTdPyUZ3LG4H7N8YbMyWr-E+eifGuYg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJF2gTSC1sGgmiTCgzKUTdPyUZ3LG4H7N8YbMyWr-E+eifGuYg@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_070304_458895_FB8DA04B 
X-CRM114-Status: GOOD (  13.97  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: julien.thierry@arm.com, Catalin Marinas <catalin.marinas@arm.com>,
 Palmer Dabbelt <palmer@sifive.com>, Will Deacon <will.deacon@arm.com>,
 christoffer.dall@arm.com, Atish Patra <Atish.Patra@wdc.com>,
 Julien Grall <julien.grall@arm.com>, gary@garyguo.net,
 linux-riscv@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 Mike Rapoport <rppt@linux.ibm.com>, Christoph Hellwig <hch@infradead.org>,
 aou@eecs.berkeley.edu, Arnd Bergmann <arnd@arndb.de>, suzuki.poulose@arm.com,
 Marc Zyngier <marc.zyngier@arm.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-arm-kernel@lists.infradead.org, Anup Patel <anup.Patel@wdc.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 iommu@lists.linux-foundation.org, james.morse@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Sep 08, 2019 at 07:52:55AM +0800, Guo Ren wrote:
> On Mon, Jun 24, 2019 at 6:40 PM Will Deacon <will@kernel.org> wrote:
> > > I'll keep my system use the same ASID for SMP + IOMMU :P
> >
> > You will want a separate allocator for that:
> >
> > https://lkml.kernel.org/r/20190610184714.6786-2-jean-philippe.brucker@arm.com
> 
> Yes, it is hard to maintain ASID between IOMMU and CPUMMU or different
> system, because it's difficult to synchronize the IO_ASID when the CPU
> ASID is rollover.
> But we could still use hardware broadcast TLB invalidation instruction
> to uniformly manage the ASID and IO_ASID, or OTHER_ASID in our IOMMU.

That's probably a bad idea, because you'll likely stall execution on the
CPU until the IOTLB has completed invalidation. In the case of ATS, I think
an endpoint ATC is permitted to take over a minute to respond. In reality, I
suspect the worst you'll ever see would be in the msec range, but that's
still an unacceptable period of time to hold a CPU.

> Welcome to join our disscusion:
> "Introduce an implementation of IOMMU in linux-riscv"
> 9 Sep 2019, 10:45 Jade-room-I&II (Corinthia Hotel Lisbon) RISC-V MC

I attended this session, but it unfortunately raised many more questions
than it answered.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
