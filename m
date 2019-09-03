Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F1E8A6CB3
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 17:16:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qlySL+LQynrB1Da1sdXOHs2RlSUBaQIULTxB+7CxKeE=; b=VUsK82LZlNp3r0
	RHJX8ZtVTaRLT+oRXeOvJoVRkB5Ii2ve5092YlXTMMn+QJUhVYsQX1u03wIvOC15yIJ6mO1fLyYH/
	GeJEV8vwhXOyKxFlEhvCRkPlTbU9QFuD0f1O7wEqFa3A1a4OpJ6nDkjWKO19ncltIA+VRifHfMaxb
	mnZ4xPBVD6/c1eXuGE0JUfPlOuf5TXgW+bn+QjUhDN9HvlIMJGeZEFvqO6PdQ+Tv0TLrs/I3YsXOM
	mSCTcRDrudB2ZfxUcQ9N1+uiQA4IhbKZl0cxAJrJz+JsTM4HFWfsoaJa8oi+vNca8D+jEB1UR4fKG
	e0cbBu6bupT9EHxiNp6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5AXG-0002SY-Nn; Tue, 03 Sep 2019 15:15:58 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i5AX5-0002S9-Bw
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 15:15:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B632B344;
 Tue,  3 Sep 2019 08:15:46 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 38A403F246;
 Tue,  3 Sep 2019 08:15:46 -0700 (PDT)
Date: Tue, 3 Sep 2019 16:15:44 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v5 03/10] arm64: atomics: avoid out-of-line ll/sc atomics
Message-ID: <20190903151544.GS9720@e119886-lin.cambridge.arm.com>
References: <20190829154834.26547-1-will@kernel.org>
 <20190829154834.26547-4-will@kernel.org>
 <20190903060011.GA60737@archlinux-threadripper>
 <20190903143117.GR9720@e119886-lin.cambridge.arm.com>
 <20190903144534.h2rp3cyd3ryohhgj@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190903144534.h2rp3cyd3ryohhgj@willie-the-truck>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_081547_445625_860551C7 
X-CRM114-Status: GOOD (  22.25  )
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
Cc: mark.rutland@arm.com, peterz@infradead.org, catalin.marinas@arm.com,
 ndesaulniers@google.com, Ard.Biesheuvel@arm.com,
 Nathan Chancellor <natechancellor@gmail.com>, robin.murphy@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 03, 2019 at 03:45:34PM +0100, Will Deacon wrote:
> On Tue, Sep 03, 2019 at 03:31:19PM +0100, Andrew Murray wrote:
> > On Mon, Sep 02, 2019 at 11:00:11PM -0700, Nathan Chancellor wrote:
> > > On Thu, Aug 29, 2019 at 04:48:27PM +0100, Will Deacon wrote:
> > > > From: Andrew Murray <andrew.murray@arm.com>
> > > > 
> > > > When building for LSE atomics (CONFIG_ARM64_LSE_ATOMICS), if the hardware
> > > > or toolchain doesn't support it the existing code will fallback to ll/sc
> > > > atomics. It achieves this by branching from inline assembly to a function
> > > > that is built with special compile flags. Further this results in the
> > > > clobbering of registers even when the fallback isn't used increasing
> > > > register pressure.
> > > > 
> > > > Improve this by providing inline implementations of both LSE and
> > > > ll/sc and use a static key to select between them, which allows for the
> > > > compiler to generate better atomics code. Put the LL/SC fallback atomics
> > > > in their own subsection to improve icache performance.
> > > > 
> > > > Signed-off-by: Andrew Murray <andrew.murray@arm.com>
> > > > Signed-off-by: Will Deacon <will@kernel.org>
> > > 
> > > For some reason, this causes a clang built kernel to fail to boot in
> > > QEMU. There are no logs, it just never starts. I am off for the next two
> > > days so I am going to try to look into this but you might have some
> > > immediate ideas.
> > > 
> > > https://github.com/ClangBuiltLinux/linux/issues/649
> > 
> > I've been able to reproduce this - with clang 9.0.6 and qemu (without KVM)
> > and only when ARM64_LSE_ATOMICS is enabled.
> > 
> > This is slightly concerning...
> > 
> > (gdb) b __lse__cmpxchg_case_acq_32
> > Breakpoint 1 at 0xffff80001012b3cc: __lse__cmpxchg_case_acq_32. (19 locations)
> > (gdb) continue
> > Continuing.
> 
> [...]
> 
> > Any ideas?
> 
> Does it work if the only thing you change is the toolchain, and use GCC
> instead? 

Yup.


> Could be some teething issues in the 'asm goto' support for clang?

Thanks,

Andrew Murray

> 
> Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
