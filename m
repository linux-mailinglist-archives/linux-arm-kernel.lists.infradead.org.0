Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 467ECFAEE0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 11:50:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LiUCgt2XRNw5qHsifC3Cs/7BtZ2NENyg/lPVkEmpFfg=; b=APFHL843ZgeMEK
	Jo0xu6UMkILoHh6lRI9+4MqI+iyZsltffEa4xrbc8MX749ycwLtzRMZ5CrN77p5RARAACQyhR5bkl
	UW2KvNTjKht6J4As8fOLBZvIa9Ok+nHW5fyOWkZl3tmteTuKwDdd/bvZjx9WwDWc9VLTckg+6K6JJ
	PA0l32pVw99LWEoWzxgmttaYEcJbXqDDAJj0eJEZUnibu7y1EpAe8MRTllo6RWzW2GxlO1yR8EdJ9
	Lkm2nI+RMgZ/Ii92RUd0/0ZiDiBLIw0c+8DB++9mClqLkVyxgEGsf7f8dT9SWJReUTzAaPzJa7zsw
	1Cai9TAY0oetSqY8iqVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUqDp-0007ja-FH; Wed, 13 Nov 2019 10:50:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUqDg-0007iq-18
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 10:49:54 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 67506222BD;
 Wed, 13 Nov 2019 10:49:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573642191;
 bh=lShpq6wKKwja1j0m890wmOSQ8hsSDtUNvq+rYaZInxw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=wPnE1zAHiIFwyXcEZWslE5NZbjOYK8Mtp2UVLPfJUV5A8zLtZN16gymcbXt4T9E0w
 vr9D8BGgaUKkY0L67IWMDDa/606Iz++ZY/5WwHZkuwLhltaTO6FWHD47LU7w1r/Wl1
 3tXFT9hUNqDfATuVVvF75t+8Gq7/7NBQjvglskH0=
Date: Wed, 13 Nov 2019 10:49:45 +0000
From: Will Deacon <will@kernel.org>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH v2] buffer: Fix I/O error due to ARM read-after-read hazard
Message-ID: <20191113104945.GC25900@willie-the-truck>
References: <20191112130244.16630-1-vincent.whitchurch@axis.com>
 <20191112160855.GA22025@arrakis.emea.arm.com>
 <20191112180034.GB19889@willie-the-truck>
 <20191112182249.GB22025@arrakis.emea.arm.com>
 <CAHk-=wg4vi27mnMVgZ-rzcEdDAjTXrY1Jyz3+=5STcY0bw4-jQ@mail.gmail.com>
 <20191113102357.GA25875@willie-the-truck>
 <20191113103150.GL25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191113103150.GL25745@shell.armlinux.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_024952_111766_6F03CDE0 
X-CRM114-Status: GOOD (  20.76  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Jens Axboe <axboe@kernel.dk>, Richard Earnshaw <Richard.Earnshaw@arm.com>,
 Vincent Whitchurch <rabinv@axis.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Vincent Whitchurch <vincent.whitchurch@axis.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Russell,

On Wed, Nov 13, 2019 at 10:31:51AM +0000, Russell King - ARM Linux admin wrote:
> On Wed, Nov 13, 2019 at 10:23:58AM +0000, Will Deacon wrote:
> > On Tue, Nov 12, 2019 at 10:39:01AM -0800, Linus Torvalds wrote:
> > > On Tue, Nov 12, 2019 at 10:22 AM Catalin Marinas
> > > <catalin.marinas@arm.com> wrote:
> > > >
> > > > OK, so this includes changing test_bit() to perform a READ_ONCE.
> > > 
> > > That's not going to happen.
> > 
> > Ok, I'll stick my neck out here, but if test_bit() is being used to read
> > a bitmap that is being concurrently modified (e.g. by set_bit() which boils
> > down to atomic_long_or()), then why isn't READ_ONCE() required? Right now,
> > test_bit takes a 'const volatile unsigned long *addr' argument, so I don't
> > see that you'll get a change in codegen except on alpha and, with this
> > erratum, arm32.
> 
> I'm not entirely clear what you're suggesting, so I'll just pick the
> scenario that I think you're talking about - but I'm not sure it's the
> one you're intending.
> 
> Using test_bit() in one thread and set_bit() on the same bit in another
> thread without locking is going to be racy by definition.  It's entirely
> possible for:
> 
> 	Thread 1			Thread 2
> 	bit = test_bit(...);
> 					set_bit(...);
> 	/* use bit */
> 
> and here, bit == 0 but the bit has been set by thread 2.  Use of the
> result from test_bit() is inherently a non-atomic operation.

I think it's atomic in the same way that atomic_read() is atomic (which is
typically defined using READ_ONCE()).

> This is why we have test_and_set_bit() and friends that atomically test
> that a bit is clear before setting it.  Where this is especially
> important is for some filesystems, as they use test_and_xxx_bit() to
> manage their allocation bitmaps.

Agreed, but what we don't want is something like:

	Thread 1			Thread 2
					set_bit(...); // bit is now 1
	test_bit(...); // returns 1
	test_bit(...); // returns 0

which is what can happen due to this erratum. It's generally good practice
to use READ_ONCE() when reading something which can be updated concurrently
because:

	* It ensures that the value is (re-)loaded from memory

	* It prevents the compiler from performing harmful optimisations,
	  such as merging or tearing (although in this case I suspect
	  these are ok because we're dealing with a single bit)

	* On Alpha, it gives you a barrier so that dependency ordering
	  can be relied upon from the load

	* It keeps KCSAN happy

I think the current definition of test_bit() gives you the first two by
casting to volatile explicitly, but not the second two.

So I'm mainly curious as to the disconnect between my thinking and Linus's
"That's not going to happen" comment, given that it shouldn't have an
impact on architectures that don't need magic here.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
