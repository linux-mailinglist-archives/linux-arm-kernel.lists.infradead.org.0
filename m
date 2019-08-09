Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4994C87427
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 10:33:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pNj92Z8xziHEZoxxE0HS1jg0GBcCZivj7ZQ2gekSTuU=; b=gj3/1tbNSvS1RL
	08K6dvPhZsBE1F+nBKhMRmIhovIPCkj3jw1VTj1JYxeSCZzbbgJsmnV7p8F8eOyxYSod/XOvKBv4+
	a4BIM1zAZzXSirjfLe4eL5kzfZ1DZHhCCN1VormWR9jnWg69fJ2CowZdpxvg2nuSVJIGs4EfX5g2N
	wlrlq+eKlTiurFP3VK0ebcXTxG/Aw9Ew2vZaPUmn+Tx3UrOmEI8iOiQbt8H83bmZ4/Oe/QyQTHnQF
	9dqbp0RkNtOOtGx0KlcyXW/TPEg28jvrDRU3bbLWJA5ynY6mjMGuGPGXbuel1MLMR05avgzv1tEZ7
	xIzW9O+q0YlNv2cgmPug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw0Ko-0006dd-BO; Fri, 09 Aug 2019 08:33:14 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hw0Ka-0006cb-DA
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 08:33:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 18895344;
 Fri,  9 Aug 2019 01:32:58 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 149613F706;
 Fri,  9 Aug 2019 01:32:56 -0700 (PDT)
Date: Fri, 9 Aug 2019 09:32:51 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Nathan Chancellor <natechancellor@gmail.com>
Subject: Explicitly marking initializer overrides (was "Re: [PATCH]
 arm64/cache: silence -Woverride-init warnings")
Message-ID: <20190809083251.GA48423@lakrids.cambridge.arm.com>
References: <20190808032916.879-1-cai@lca.pw>
 <20190808103808.GC46901@lakrids.cambridge.arm.com>
 <20190808170916.GA32668@archlinux-threadripper>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190808170916.GA32668@archlinux-threadripper>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_013300_527146_2C904262 
X-CRM114-Status: GOOD (  21.12  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, Qian Cai <cai@lca.pw>, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 08, 2019 at 10:09:16AM -0700, Nathan Chancellor wrote:
> On Thu, Aug 08, 2019 at 11:38:08AM +0100, Mark Rutland wrote:
> > On Wed, Aug 07, 2019 at 11:29:16PM -0400, Qian Cai wrote:
> > > The commit 155433cb365e ("arm64: cache: Remove support for ASID-tagged
> > > VIVT I-caches") introduced some compiation warnings from GCC (and
> > > Clang) with -Winitializer-overrides),
> > > 
> > > arch/arm64/kernel/cpuinfo.c:38:26: warning: initialized field
> > > overwritten [-Woverride-init]
> > > [ICACHE_POLICY_VIPT]  = "VIPT",
> > >                         ^~~~~~
> > > arch/arm64/kernel/cpuinfo.c:38:26: note: (near initialization for
> > > 'icache_policy_str[2]')
> > > arch/arm64/kernel/cpuinfo.c:39:26: warning: initialized field
> > > overwritten [-Woverride-init]
> > > [ICACHE_POLICY_PIPT]  = "PIPT",
> > >                         ^~~~~~
> > > arch/arm64/kernel/cpuinfo.c:39:26: note: (near initialization for
> > > 'icache_policy_str[3]')
> > > arch/arm64/kernel/cpuinfo.c:40:27: warning: initialized field
> > > overwritten [-Woverride-init]
> > > [ICACHE_POLICY_VPIPT]  = "VPIPT",
> > >                          ^~~~~~~
> > > arch/arm64/kernel/cpuinfo.c:40:27: note: (near initialization for
> > > 'icache_policy_str[0]')
> > > 
> > > because it initializes icache_policy_str[0 ... 3] twice. Since
> > > arm64 developers are keen to keep the style of initializing a static
> > > array with a non-zero pattern first, just disable those warnings for
> > > both GCC and Clang of this file.
> > > 
> > > Fixes: 155433cb365e ("arm64: cache: Remove support for ASID-tagged VIVT I-caches")
> > > Signed-off-by: Qian Cai <cai@lca.pw>
> > 
> > This is _not_ a fix, and should not require backporting to stable trees.
> > 
> > What about all the other instances that we have in mainline?
> > 
> > I really don't think that we need to go down this road; we're just going
> > to end up adding this to every file that happens to include a header
> > using this scheme...
> > 
> > Please just turn this off by default for clang.
> > 
> > If we want to enable this, we need a mechanism to permit overridable
> > assignments as we use range initializers for.
> > 
> > Thanks,
> > Mark.
> > 
> 
> For what it's worth, this is disabled by default for clang in the
> kernel:
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/scripts/Makefile.extrawarn?h=v5.3-rc3#n69
> 
> It only becomes visible with clang at W=1 because that section doesn't
> get applied. It becomes visible with GCC at W=1 because of -Wextra.

Thanks for clarifying that!

Do you know if there's any existing mechanism that we can use to silence
the warning on a per-assignment basis? Either to say that an assignment
can be overridden, or that the assignment is expected to override an
existing assignment?

If not, who would be able to look at adding a mechanism to clang for
this?

If we could have some attribute or intrinsic that we could wrap like:

struct foo f = {
	.bar __defaultval = <default>,
	.bar = <newval>,		// no warning
	.bar = <anotherval>,		// warning
};

... or:

struct foo f = {
	.bar = <default>,
	.bar __override = <newval>,	// no warning
	.bar = <anotherval>,		// warning
};

... or:
	
	.bar = OVERRIDE(<newval>),	// no warning

... or:
	OVERRIDE(.bar) = <newval>,	// no warning

... then I think it would be possible to make use of the warning
effectively, as we could distinguish intentional overrides from
unintentional ones, and annotating assignments in this way doesn't seem
onerous to me.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
