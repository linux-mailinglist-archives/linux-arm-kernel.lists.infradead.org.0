Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0331F9816
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 19:01:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ag/2ko1FbzqE3E7Idzh22hn536CJdTTInhCPPQnWcyM=; b=s7/kXgOM8o2bkw
	kMqe3toyoTJ9FrnHOcvPlGaLtBufASj649RSFoW0U6arUBVdCvYXzAk4zu0NQKI7qMm6m/hzXQSTf
	0iZviBLS9+mju0yJoxy01Jv9CufuJaLQScn/xf0ueMsufYdEenAIERtjUJa35q3SfjXFIuYQFyuPV
	LNmnl0eron5c4ynHKO4Ms0S6Sx8OoJ3kDLWpqgLj5FyhgfUq/rxnySvICJyhiiyJJiV4rJjQU5gfo
	hMzcQLq4SyoLc/w6sdcuAOo51w5YvDDcCd5QRASF7PxzIQjeaFyuSHlDnR955/78On2BShPJddwcQ
	hDbJ6jLVstoZ1At0WUxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUaTG-0003qq-GY; Tue, 12 Nov 2019 18:00:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUaT4-0003pi-6k
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 18:00:43 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C0BD921925;
 Tue, 12 Nov 2019 18:00:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573581640;
 bh=e9/F3/UN1c96zIp1MBv7wevLhUbEOyNc7RWCS22mtPo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TyaJxT8EsksNIcJUeuG02hv5kg8mgIJYYse0Ik99HuSqsRv1YuuTPbF1c5VJ0bK//
 nhIzIgrTk+bvIQS8OxCLjuaHq3Xdk7mm4ugKGfUcHF5kFpYHoQAo/S/UYWYC/UiWXt
 xWEiAvRUOAZuUSY/hpD1kFJfwotpUj96CJthUd0w=
Date: Tue, 12 Nov 2019 18:00:35 +0000
From: Will Deacon <will@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH v2] buffer: Fix I/O error due to ARM read-after-read hazard
Message-ID: <20191112180034.GB19889@willie-the-truck>
References: <20191112130244.16630-1-vincent.whitchurch@axis.com>
 <20191112160855.GA22025@arrakis.emea.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191112160855.GA22025@arrakis.emea.arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_100042_288413_4F1AB75D 
X-CRM114-Status: GOOD (  23.02  )
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
Cc: axboe@kernel.dk, Richard Earnshaw <Richard.Earnshaw@arm.com>,
 Vincent Whitchurch <rabinv@axis.com>,
 Vincent Whitchurch <vincent.whitchurch@axis.com>, linux@armlinux.org.uk,
 linux-kernel@vger.kernel.org, torvalds@linux-foundation.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 12, 2019 at 04:08:57PM +0000, Catalin Marinas wrote:
> On Tue, Nov 12, 2019 at 02:02:44PM +0100, Vincent Whitchurch wrote:
> > On my dual-core ARM Cortex-A9, reading from squashfs (over
> > dm-verity/ubi/mtd) in a loop for hundreds of hours invariably results in
> > a read failure in squashfs_read_data().  The errors occur because the
> > buffer_uptodate() check fails after wait_on_buffer().  Further debugging
> > shows that the bh was in fact uptodate and that there is no actual I/O
> > error in the lower layers.
> > 
> > The problem is caused by the read-after-read hazards in the ARM
> > Cortex-A9 MPCore (erratum #761319, see [1]).  The code generated by the
> > compiler for the combination of the wait_on_buffer() and
> > buffer_uptodate() calls reads the flags value twice from memory (see the
> > excerpt of the assembly below).  The new value of the BH_Lock flag is
> > seen but the new value of BH_Uptodate is not even though both the bits
> > are read from the same memory location.
> > 
> >  27c:	9d08      	ldr	r5, [sp, #32]
> >  27e:	2400      	movs	r4, #0
> >  280:	e006      	b.n	290 <squashfs_read_data+0x290>
> >  282:	6803      	ldr	r3, [r0, #0]
> >  284:	07da      	lsls	r2, r3, #31
> >  286:	f140 810d 	bpl.w	4a4 <squashfs_read_data+0x4a4>
> >  28a:	3401      	adds	r4, #1
> >  28c:	42bc      	cmp	r4, r7
> >  28e:	da08      	bge.n	2a2 <squashfs_read_data+0x2a2>
> >  290:	f855 0f04 	ldr.w	r0, [r5, #4]!
> >  294:	6803      	ldr	r3, [r0, #0]
> >  296:	0759      	lsls	r1, r3, #29
> >  298:	d5f3      	bpl.n	282 <squashfs_read_data+0x282>
> >  29a:	f7ff fffe 	bl	0 <__wait_on_buffer>
> > 
> > Work around this problem by adding a DMB between the two reads of
> > bh->flags, as recommended in the ARM document.  With this barrier, no
> > failures have been seen in more than 5000 hours of the same test.
> > 
> > [1] http://infocenter.arm.com/help/topic/com.arm.doc.uan0004a/UAN0004A_a9_read_read.pdf
> 
> I thought we were going to fix the compiler. I found an old thread here:
> 
> https://gcc.gnu.org/ml/gcc-patches/2014-06/msg00714.html
> 
> Also cc'ing Richard Earnshaw as he may been involved in the gcc
> discussion at the time.
> 
> While you can add some barrier here, there may be other cases where this
> can go wrong.

Hmm, and afaict, even if the compiler was modified to emit LDREX instructions
for volatile loads, it wouldn't help in this case because test_bit() isn't
using READ_ONCE().

It's also slightly odd that the proposed patch makes the code look like:

	for (i = 0; i < b; i++) {
		if (buffer_locked(bh)) {
			__wait_on_buffer(bh);
			smp_rmb();
		}
		if (!buffer_uptodate(bh[i]))
			goto block_release;
	}

whereas there are other potential RAR orderings between buffer_locked()
and __wait_on_buffer() and also probably between successive iterations
of the loop.

So, really, the only way I see to solve this is for us to use READ_ONCE
consistently for all relaxed atomic loads (KCSAN is starting to tread on
this), and then to patch READ_ONCE to emit a DMB at runtime for arch/arm/
(maybe a static key would work if you can avoid the recursion).

I've already got patches at [1] to allow architectures to override
READ_ONCE, because Alpha needs to do something similar.

Will

[1] https://git.kernel.org/pub/scm/linux/kernel/git/will/linux.git/log/?h=lto

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
