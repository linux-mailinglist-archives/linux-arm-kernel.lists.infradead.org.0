Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31D9E193DBE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 12:16:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y/QmfSASf2mngkOihtsMz3JvVAcFn8f95iHaMPhWwsY=; b=e4SUG0fO6Yb7mw
	EcjhLK+ixcOr9htNjqz0CXUGok9kjbU20RghTSPAVjU8BUdMgc29Q/TmLGXfB0MmA3xs48bQtIKVi
	DVw+yygWFHTx2KjcJrAdh1rChSmH/FpsM+Ku5tX9WvVVx/TT0CZpIa2rREauTodqkBKMzxHPx6Rql
	uPSuUuB4cErcctJ5UhFaBz1cjO47J9FDOgm8+mCNegkj/qPZPPTyy8vJo+YCn45yz4+cxSVo176Rw
	sZ8ttieWAYCrFBjf/0U9NgbCXHv7XbI1Qndr35mKC+8ztKWtMWvdV1Cz58YyNn+SKVBZxSFTs1uVi
	vNX/b0MsuWxSjgJrNxlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHQUJ-0003rm-Uj; Thu, 26 Mar 2020 11:15:51 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHQU9-0003qq-SU
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 11:15:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CD1087FA;
 Thu, 26 Mar 2020 04:15:39 -0700 (PDT)
Received: from C02TD0UTHF1T.local (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 531823F71F;
 Thu, 26 Mar 2020 04:15:36 -0700 (PDT)
Date: Thu, 26 Mar 2020 11:15:21 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH v2 5/5] arm64: entry: Enable random_kstack_offset support
Message-ID: <20200326111521.GA72909@C02TD0UTHF1T.local>
References: <20200324203231.64324-1-keescook@chromium.org>
 <20200324203231.64324-6-keescook@chromium.org>
 <20200325132127.GB12236@lakrids.cambridge.arm.com>
 <202003251319.AECA788D63@keescook>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202003251319.AECA788D63@keescook>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_041541_968826_F3E10A4A 
X-CRM114-Status: GOOD (  17.31  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Jann Horn <jannh@google.com>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, x86@kernel.org,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 Alexander Potapenko <glider@google.com>, linux-arm-kernel@lists.infradead.org,
 Andy Lutomirski <luto@kernel.org>, kernel-hardening@lists.openwall.com, "Perla,
 Enrico" <enrico.perla@intel.com>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, Elena Reshetova <elena.reshetova@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 25, 2020 at 01:22:07PM -0700, Kees Cook wrote:
> On Wed, Mar 25, 2020 at 01:21:27PM +0000, Mark Rutland wrote:
> > On Tue, Mar 24, 2020 at 01:32:31PM -0700, Kees Cook wrote:
> > > Allow for a randomized stack offset on a per-syscall basis, with roughly
> > > 5 bits of entropy.
> > > 
> > > Signed-off-by: Kees Cook <keescook@chromium.org>
> > 
> > Just to check, do you have an idea of the impact on arm64? Patch 3 had
> > figures for x86 where it reads the TSC, and it's unclear to me how
> > get_random_int() compares to that.
> 
> I didn't do a measurement on arm64 since I don't have a good bare-metal
> test environment. I know Andy Lutomirki has plans for making
> get_random_get() as fast as possible, so that's why I used it here.

Ok. I suspect I also won't get the chance to test that in the next few
days, but if I do I'll try to share the results.

My concern here was that, get_random_int() has to grab a spinlock and
mess with IRQ masking, so has the potential to block for much longer,
but that might not be an issue in practice, and I don't think that
should block these patches.

> I couldn't figure out if there was a comparable instruction like rdtsc
> in aarch64 (it seems there's a cycle counter, but I found nothing in
> the kernel that seemed to actually use it)?

AArch64 doesn't have a direct equivalent. The generic counter
(CNTxCT_EL0) is the closest thing, but its nominal frequency is
typically much lower than the nominal CPU clock frequency (unlike TSC
where they're the same). The cycle counter (PMCCNTR_EL0) is part of the
PMU, and can't be relied on in the same way (e.g. as perf reprograms it
to generate overflow events, and it can stop for things like WFI/WFE).

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
