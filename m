Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FF421E5B95
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 11:15:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9QX6Rp2uTw8ZHaYDyMhyrNOqLNl0hxcWOTbNZiSVwoA=; b=DcfyiGVOX4kc4m
	FmSnuz2vGNr7ip9TQTDqo+tRyWyyNppeArt9IPI3rhsI0t8zbgEeuI8J2i40iWQJX8i20ZjKEKANr
	Alb2PIEujaE8IJr/UFP/thg+xPLge80i/53Qhbf7+J/ZiK7gte4L8t97zBZP8y15HWJs0/dQcyICU
	/LQ+RaDhdKKh2ODxjmI1JJunnkVH3goAhb9eVZ4m+Q16GlvWBcAdMJNMBg4pA+TRQPPUfCAbcVyly
	FHCpJgrUuVHEaCPQulpewDo5++4cyxAY9KKbz7197lj5wQ/KX+hFFATWb6BYAbP1onUiWtKlW9uHC
	iVogFCkWb+tzworgOO5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeEd9-00033o-8a; Thu, 28 May 2020 09:15:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeEcl-000339-BU
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 09:14:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 710DF31B;
 Thu, 28 May 2020 02:14:49 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E25D23F6C4;
 Thu, 28 May 2020 02:14:47 -0700 (PDT)
Date: Thu, 28 May 2020 10:14:45 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Peter Collingbourne <pcc@google.com>
Subject: Re: [PATCH v4 11/26] arm64: mte: Add PROT_MTE support to mmap() and
 mprotect()
Message-ID: <20200528091445.GA2961@gaia>
References: <20200515171612.1020-1-catalin.marinas@arm.com>
 <20200515171612.1020-12-catalin.marinas@arm.com>
 <CAMn1gO5ApcHOgQ_oLjiGDdCx9znz7N50w-BbzGPYpAzPQC3OQQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMn1gO5ApcHOgQ_oLjiGDdCx9znz7N50w-BbzGPYpAzPQC3OQQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_021451_435372_C71DBFB6 
X-CRM114-Status: GOOD (  17.12  )
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
Cc: linux-arch@vger.kernel.org, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, linux-mm@kvack.org,
 Evgenii Stepanov <eugenis@google.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 Dave P Martin <Dave.Martin@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 27, 2020 at 11:57:39AM -0700, Peter Collingbourne wrote:
> On Fri, May 15, 2020 at 10:16 AM Catalin Marinas
> <catalin.marinas@arm.com> wrote:
> > To enable tagging on a memory range, the user must explicitly opt in via
> > a new PROT_MTE flag passed to mmap() or mprotect(). Since this is a new
> > memory type in the AttrIndx field of a pte, simplify the or'ing of these
> > bits over the protection_map[] attributes by making MT_NORMAL index 0.
> 
> Should the userspace stack always be mapped as if with PROT_MTE if the
> hardware supports it? Such a change would be invisible to non-MTE
> aware userspace since it would already need to opt in to tag checking
> via prctl. This would let userspace avoid a complex stack
> initialization sequence when running with stack tagging enabled on the
> main thread.

I don't think the stack initialisation is that difficult. On program
startup (can be the dynamic loader). Something like (untested):

	register unsigned long stack asm ("sp");
	unsigned long page_sz = sysconf(_SC_PAGESIZE);

	mprotect((void *)(stack & ~(page_sz - 1)), page_sz,
		 PROT_READ | PROT_WRITE | PROT_MTE | PROT_GROWSDOWN);

(the essential part it PROT_GROWSDOWN so that you don't have to specify
a stack lower limit)

I don't like enabling this by default since it will have a small cost
even if the application doesn't enable tag checking. The kernel would
still have to zero the tags when mapping the stack and preserve them
when swapping out.

Another case where this could go wrong is if we want enable some
quiet monitoring of user programs: the libc enables PROT_MTE on heap
allocations but keeps tag checking disabled as it doesn't want any
SIGSEGV; the kernel could enable async TCF and log any faults
(rate-limited). Default PROT_MTE stack would get in the way. Anyway,
this use-case is something for the future, so far these patches rely on
the user solely driving the tag checking mode.

I'm fine, however, with enabling PROT_MTE on the main stack based on
some ELF note.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
