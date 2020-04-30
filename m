Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF9261BF9A5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 15:35:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BV6XYzmZ7P8VEisW1MFuQxyu/aG7KYpOK+9+nq/TL/k=; b=oWEzHEGqJd4pNc
	pUn4qOdNkaEI3pnhK3dz3G6DXFo7/boZFvpvtAqWPbNlNdGMokAmBtcj/Mk31flNWiNkRiTf661+l
	oMb+MckF2kMf6UvVYPYVsWAUlD0BBvJudDITftcSRmXOpMAiD93W2vMd9tw3arkR9/CW2rIIBAUOp
	BSNh4vAJ0e5D8xZ/7ZzAkSmeZNUpGq5KjgbBdlBUYIl6m0/osEDsYyGfq/3lBoYWM1m/CUBBFgJBb
	WJWNCo/AkquXomt2QdbV2smsIb6SfC6yUDL4lqzEzDstUdWkl31ISGcqcImq/AXxHR0tIgcI8Dadb
	vP1lI6DWnt8qS7H1eAYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU9LC-0002fU-DO; Thu, 30 Apr 2020 13:35:02 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU9L1-0002e2-GB
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 13:34:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2772E1063;
 Thu, 30 Apr 2020 06:34:48 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CA6963F73D;
 Thu, 30 Apr 2020 06:34:46 -0700 (PDT)
Date: Thu, 30 Apr 2020 14:34:44 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v3] arm64: Expose original FAR_EL1 value in sigcontext
Message-ID: <20200430133444.GH2717@gaia>
References: <20200325174001.234803-1-pcc@google.com>
 <20200327191915.257116-1-pcc@google.com>
 <20200429210826.GA8604@willie-the-truck>
 <20200430095001.GD2717@gaia>
 <20200430095919.GB19932@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200430095919.GB19932@willie-the-truck>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_063451_628833_8F2347D9 
X-CRM114-Status: GOOD (  25.15  )
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
Cc: Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Kostya Serebryany <kcc@google.com>,
 Evgenii Stepanov <eugenis@google.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Peter Collingbourne <pcc@google.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Richard Henderson <rth@twiddle.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 30, 2020 at 10:59:19AM +0100, Will Deacon wrote:
> On Thu, Apr 30, 2020 at 10:50:01AM +0100, Catalin Marinas wrote:
> > On Wed, Apr 29, 2020 at 10:08:26PM +0100, Will Deacon wrote:
> > > On Fri, Mar 27, 2020 at 12:19:15PM -0700, Peter Collingbourne wrote:
> > > > The kernel currently clears the tag bits (i.e. bits 56-63) in the fault
> > > > address exposed via siginfo.si_addr and sigcontext.fault_address. However,
> > > > the tag bits may be needed by tools in order to accurately diagnose
> > > > memory errors, such as HWASan [1] or future tools based on the Memory
> > > > Tagging Extension (MTE).
> > > > 
> > > > We should not stop clearing these bits in the existing fault address
> > > > fields, because there may be existing userspace applications that are
> > > > expecting the tag bits to be cleared. Instead, create a far_context in
> > > > sigcontext (similar to the existing esr_context), and store the original
> > > > value of FAR_EL1 (including the tag bits) there.
> > > > 
> > > > [1] http://clang.llvm.org/docs/HardwareAssistedAddressSanitizerDesign.html
> > > > 
> > > > Signed-off-by: Peter Collingbourne <pcc@google.com>
> > > > ---
> > > > v3:
> > > > - add documentation to tagged-pointers.rst
> > > > - update comments in sigcontext.h
> > > 
> > > Hmm, although the code looks fine, why don't we just expose the tag in the
> > > new field, rather than duplicate the address information? I'm nervous about
> > > exposing privileged registers directly to userspace.
> > 
> > That's for consistency with ESR_EL1 which we expose in a similar way,
> > though with bits of it not relevant to user masked out. For FAR_EL1, all
> > the bits are relevant, even if some of them are duplicated in the
> > si_addr field.
> 
> It may be consistent, but I would argue that exposing ESR_EL1 was a mistake,
> as illustrated by cc19846079a7 ("arm64: fault: Don't leak data in ESR
> context for user fault on kernel VA"). We have to live with that, but we
> should try to do better for new fields in the sigcontext.

The alternative would be to only expose the tag of the faulting address
if you are worried of leaking some kernel address from FAR_EL1 (and I
agree, there is a risk).

> > > Also, Catalin, could you elaborate on the MTE use-case please? The
> > > architecture says that FAR_EL1[63:60] are UNKNOWN on a synchronous tag
> > > check fault, so we'd have to *avoid* exposing them in that case!
> > 
> > With MTE, FAR_EL1[63:60] will be cleared on sync tag check faults (not
> > currently done as I don't have this patch in my MTE series).
> 
> Ok, but in [1] you said "I'm fine with this change for consistency and
> may help with the fault information printed by the kernel with khwasan
> or (later) MTE."
> 
> But I don't think consistency is necessarily a good thing here and I don't
> see how it helps with MTE if we zap the bits to 0! We'd be better off not
> exposing the information at all in this situation.

The plan for MTE is to only zap bits 63:60 which are unknown on tag
check fault. The actual MTE tag in 59:56 would be preserved. There is an
inconsistency with the TBI feature but that only happens for tag check
faults which is a new thing. The behaviour on any other fault will be
consistent with the non-MTE case (page faults etc.).

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
