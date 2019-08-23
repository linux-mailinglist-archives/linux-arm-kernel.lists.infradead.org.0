Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 360B19B461
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 18:19:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ngvUKalim2en2ss3Uef7NKVkX0eREXCbEz+6Yw4uwAA=; b=B4fRQcScq51Re4
	gzTlfklA+NvCmNFOZzyJ2yUeeRTwVDWx8e/MgjAP8KYpEkq+RzZesLoLoN3x5DhIvdKpWMIt7ZAIV
	v7klBZqoOmr+zddxaYcGi3A3K38IWZzJiiXvjHfHjaov1+bVEwXwr7VQWkmO0MIaKdSiKMTmMjv+4
	GsTTZxOfIscE1QLkpD9+TdfGYL47uExHBpwapykl+8TEEFBK5nXdyBhcrJPvi2e6cl76Wfi7185ht
	mMcTU+YOm9toUlSVs9HSgktAo1GhfaiFq0UMNrimgfOpb+hmzDrCG2F8NWHH0hMInc5YtO0ODZuWe
	wWJrYMFVV8oCebfbTgDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1CHf-00044d-Od; Fri, 23 Aug 2019 16:19:27 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i1CHZ-00043s-7M
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 16:19:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EFEE228;
 Fri, 23 Aug 2019 09:19:16 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 4B4F33F246; Fri, 23 Aug 2019 09:19:15 -0700 (PDT)
Date: Fri, 23 Aug 2019 17:19:13 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Dave Martin <Dave.Martin@arm.com>
Subject: Re: [PATCH v9 3/3] arm64: Relax
 Documentation/arm64/tagged-pointers.rst
Message-ID: <20190823161912.GJ29387@arrakis.emea.arm.com>
References: <20190821164730.47450-1-catalin.marinas@arm.com>
 <20190821164730.47450-4-catalin.marinas@arm.com>
 <20190821173352.yqfgaozi7nfhcofg@willie-the-truck>
 <20190821184649.GD27757@arm.com>
 <20190822155531.GB55798@arrakis.emea.arm.com>
 <20190822163723.GF27757@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190822163723.GF27757@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_091921_357588_A5C804E9 
X-CRM114-Status: GOOD (  25.27  )
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
Cc: linux-arch@vger.kernel.org, linux-doc@vger.kernel.org,
 Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Will Deacon <will.deacon@arm.com>,
 linux-mm@kvack.org, Andrew Morton <akpm@linux-foundation.org>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 Dave Hansen <dave.hansen@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 22, 2019 at 05:37:23PM +0100, Dave P Martin wrote:
> On Thu, Aug 22, 2019 at 04:55:32PM +0100, Catalin Marinas wrote:
> > On Wed, Aug 21, 2019 at 07:46:51PM +0100, Dave P Martin wrote:
> > > On Wed, Aug 21, 2019 at 06:33:53PM +0100, Will Deacon wrote:
> > > > On Wed, Aug 21, 2019 at 05:47:30PM +0100, Catalin Marinas wrote:
> > > > > @@ -59,6 +63,11 @@ be preserved.
> > > > >  The architecture prevents the use of a tagged PC, so the upper byte will
> > > > >  be set to a sign-extension of bit 55 on exception return.
> > > > >  
> > > > > +This behaviour is maintained when the AArch64 Tagged Address ABI is
> > > > > +enabled. In addition, with the exceptions above, the kernel will
> > > > > +preserve any non-zero tags passed by the user via syscalls and stored in
> > > > > +kernel data structures (e.g. ``set_robust_list()``, ``sigaltstack()``).
> > > 
> > > sigaltstack() is interesting, since we don't support tagged stacks.
> > 
> > We should support tagged SP with the new ABI as they'll be required for
> > MTE. sigaltstack() and clone() are the two syscalls that come to mind
> > here.
> > 
> > > Do we keep the ss_sp tag in the kernel, but squash it when delivering
> > > a signal to the alternate stack?
> > 
> > We don't seem to be doing any untagging, so we just just use whatever
> > the caller asked for. We may need a small test to confirm.
> 
> If we want to support tagged SP, then I guess we shouldn't be squashing
> the tag anywhere.  A test for that would be sensible to have.

I hacked the sas.c kselftest to use a tagged stack and works fine, the
SP register has a tagged address on the signal handler.

> > > > Hmm. I can see the need to provide this guarantee for things like
> > > > set_robust_list(), but the problem is that the statement above is too broad
> > > > and isn't strictly true: for example, mmap() doesn't propagate the tag of
> > > > its address parameter into the VMA.
> > > > 
> > > > So I think we need to nail this down a bit more, but I'm having a really
> > > > hard time coming up with some wording :(
> > > 
> > > Time for some creative vagueness?
> > > 
> > > We can write a statement of our overall intent, along with examples of
> > > a few cases where the tag should and should not be expected to emerge
> > > intact.
> > > 
> > > There is no foolproof rule, unless we can rewrite history...
> > 
> > I would expect the norm to be the preservation of tags with a few
> > exceptions. The only ones I think where we won't preserve the tags are
> > mmap, mremap, brk (apart from the signal stuff already mentioned in the
> > current tagged-pointers.rst doc).
> > 
> > So I can remove this paragraph altogether and add a note in part 3 of
> > the tagged-address-abi.rst document that mmap/mremap/brk do not preserve
> > the tag information.
> 
> Deleting text is always a good idea ;)

I'm going this route ;).

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
