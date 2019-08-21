Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CB1D98381
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 20:47:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5dRs3lzAQOVqSPF2C0GSTC5C+Tx9BLYWimNkp3/L13E=; b=RgOk4CVsw31Gqc
	zLD+VA1lFinWtKovhboTIz9ySwsihd9iGrEQo+50FUJwVIf4jzau0TxWN4WnzlisiICB953CVVQtO
	cvKQOy8+eopEYT4CHw5PxmV2o3T7JIr137ciLAEMSpkRmbz0NNR9S4akqFBTgM1Oq+wPKY4YJuPZV
	CSip+n67U3eHgbCn1l2KM7stH9Ty1kPVPCEHIKh4JiBQ5Gf09pA28lRLeU/tSxz28u1Z0Toc5t6xW
	IpUVk0MSTY6WbMKd3JjO1PZxZZ7kfYSZv0zf8bQ9J2XdMljdlM/leWn9sUjWmjyVVLxljbdeJs+K4
	bkOlLNFjkAgBYkXZav0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0VdS-0007u6-FF; Wed, 21 Aug 2019 18:47:06 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i0VdK-0007su-GO
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 18:47:00 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B8135344;
 Wed, 21 Aug 2019 11:46:55 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 12BF53F706;
 Wed, 21 Aug 2019 11:46:53 -0700 (PDT)
Date: Wed, 21 Aug 2019 19:46:51 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v9 3/3] arm64: Relax
 Documentation/arm64/tagged-pointers.rst
Message-ID: <20190821184649.GD27757@arm.com>
References: <20190821164730.47450-1-catalin.marinas@arm.com>
 <20190821164730.47450-4-catalin.marinas@arm.com>
 <20190821173352.yqfgaozi7nfhcofg@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190821173352.yqfgaozi7nfhcofg@willie-the-truck>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_114658_637951_841F6803 
X-CRM114-Status: GOOD (  27.16  )
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
 Catalin Marinas <catalin.marinas@arm.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Will Deacon <will.deacon@arm.com>,
 linux-mm@kvack.org, Dave Hansen <dave.hansen@intel.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 21, 2019 at 06:33:53PM +0100, Will Deacon wrote:
> On Wed, Aug 21, 2019 at 05:47:30PM +0100, Catalin Marinas wrote:
> > From: Vincenzo Frascino <vincenzo.frascino@arm.com>
> > 
> > On AArch64 the TCR_EL1.TBI0 bit is set by default, allowing userspace
> > (EL0) to perform memory accesses through 64-bit pointers with a non-zero
> > top byte. However, such pointers were not allowed at the user-kernel
> > syscall ABI boundary.
> > 
> > With the Tagged Address ABI patchset, it is now possible to pass tagged
> > pointers to the syscalls. Relax the requirements described in
> > tagged-pointers.rst to be compliant with the behaviours guaranteed by
> > the AArch64 Tagged Address ABI.
> > 
> > Cc: Will Deacon <will.deacon@arm.com>
> > Cc: Szabolcs Nagy <szabolcs.nagy@arm.com>
> > Cc: Kevin Brodsky <kevin.brodsky@arm.com>
> > Acked-by: Andrey Konovalov <andreyknvl@google.com>
> > Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
> > Co-developed-by: Catalin Marinas <catalin.marinas@arm.com>
> > Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
> > ---
> >  Documentation/arm64/tagged-pointers.rst | 23 ++++++++++++++++-------
> >  1 file changed, 16 insertions(+), 7 deletions(-)
> > 
> > diff --git a/Documentation/arm64/tagged-pointers.rst b/Documentation/arm64/tagged-pointers.rst
> > index 2acdec3ebbeb..04f2ba9b779e 100644
> > --- a/Documentation/arm64/tagged-pointers.rst
> > +++ b/Documentation/arm64/tagged-pointers.rst
> > @@ -20,7 +20,9 @@ Passing tagged addresses to the kernel
> >  --------------------------------------
> >  
> >  All interpretation of userspace memory addresses by the kernel assumes
> > -an address tag of 0x00.
> > +an address tag of 0x00, unless the application enables the AArch64
> > +Tagged Address ABI explicitly
> > +(Documentation/arm64/tagged-address-abi.rst).
> >  
> >  This includes, but is not limited to, addresses found in:
> >  
> > @@ -33,13 +35,15 @@ This includes, but is not limited to, addresses found in:
> >   - the frame pointer (x29) and frame records, e.g. when interpreting
> >     them to generate a backtrace or call graph.
> >  
> > -Using non-zero address tags in any of these locations may result in an
> > -error code being returned, a (fatal) signal being raised, or other modes
> > -of failure.
> > +Using non-zero address tags in any of these locations when the
> > +userspace application did not enable the AArch64 Tagged Address ABI may
> > +result in an error code being returned, a (fatal) signal being raised,
> > +or other modes of failure.
> >  
> > -For these reasons, passing non-zero address tags to the kernel via
> > -system calls is forbidden, and using a non-zero address tag for sp is
> > -strongly discouraged.
> > +For these reasons, when the AArch64 Tagged Address ABI is disabled,
> > +passing non-zero address tags to the kernel via system calls is
> > +forbidden, and using a non-zero address tag for sp is strongly
> > +discouraged.
> >  
> >  Programs maintaining a frame pointer and frame records that use non-zero
> >  address tags may suffer impaired or inaccurate debug and profiling
> > @@ -59,6 +63,11 @@ be preserved.
> >  The architecture prevents the use of a tagged PC, so the upper byte will
> >  be set to a sign-extension of bit 55 on exception return.
> >  
> > +This behaviour is maintained when the AArch64 Tagged Address ABI is
> > +enabled. In addition, with the exceptions above, the kernel will
> > +preserve any non-zero tags passed by the user via syscalls and stored in
> > +kernel data structures (e.g. ``set_robust_list()``, ``sigaltstack()``).

sigaltstack() is interesting, since we don't support tagged stacks.

Do we keep the ss_sp tag in the kernel, but squash it when delivering
a signal to the alternate stack?

(I can't remember whether this would be compatible with the
architectural tag checking semantics...)

> Hmm. I can see the need to provide this guarantee for things like
> set_robust_list(), but the problem is that the statement above is too broad
> and isn't strictly true: for example, mmap() doesn't propagate the tag of
> its address parameter into the VMA.
> 
> So I think we need to nail this down a bit more, but I'm having a really
> hard time coming up with some wording :(

Time for some creative vagueness?

We can write a statement of our overall intent, along with examples of
a few cases where the tag should and should not be expected to emerge
intact.

There is no foolproof rule, unless we can rewrite history...

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
