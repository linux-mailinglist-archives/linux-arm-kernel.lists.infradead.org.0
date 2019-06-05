Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4202D35B37
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 13:23:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e/04pAq+cWkSlS8bPX5ctEJntrk1b26nMdSgjOLnBoU=; b=tYDSRvoMn4r180
	ESFeA7gHrKO/2erItgVU0XjIzny8iZ8t57ufoWeo43TB7dyEHN8tW7t+hNLmjs0BNvnu69biUhmDn
	3RSG17z0jFl0DL8dxdFtW5iryQstrteaJ6gxevdnP2WfAuiq6NLKc2rXYAPKCMuQiLLdOeMQ2k4/r
	vwM/m4kbpJ9YTri9Gp/f+DmTSowsY1iFAM/00ZgaTCYV+EBE9o8UQzTDmgmfL1Mts9sN/AiuCgrmj
	/UqjEO0bunrFEaIFsJxo6ctbxJNLyB+oTkcniDEPhsqiY73T/mSd0QV4y8CXmf1F/sdBVj2NYdI+Q
	xGecNatygfrxWQRpUVVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYU11-0005Bv-V8; Wed, 05 Jun 2019 11:23:35 +0000
Received: from willy by bombadil.infradead.org with local (Exim 4.90_1 #2 (Red
 Hat Linux)) id 1hYU0u-0005Bg-TM; Wed, 05 Jun 2019 11:23:28 +0000
Date: Wed, 5 Jun 2019 04:23:28 -0700
From: Matthew Wilcox <willy@infradead.org>
To: Michael Ellerman <mpe@ellerman.id.au>
Subject: Re: [RFC V2] mm: Generalize notify_page_fault()
Message-ID: <20190605112328.GB2025@bombadil.infradead.org>
References: <1559630046-12940-1-git-send-email-anshuman.khandual@arm.com>
 <87sgsomg91.fsf@concordia.ellerman.id.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87sgsomg91.fsf@concordia.ellerman.id.au>
User-Agent: Mutt/1.9.2 (2017-12-15)
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, Michal Hocko <mhocko@suse.com>,
 linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, Will Deacon <will.deacon@arm.com>,
 linux-mm@kvack.org, Paul Mackerras <paulus@samba.org>,
 sparclinux@vger.kernel.org, Stephen Rothwell <sfr@canb.auug.org.au>,
 linux-s390@vger.kernel.org, Yoshinori Sato <ysato@users.sourceforge.jp>,
 x86@kernel.org, Russell King <linux@armlinux.org.uk>,
 Ingo Molnar <mingo@redhat.com>, Fenghua Yu <fenghua.yu@intel.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>, Andy Lutomirski <luto@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Christophe Leroy <christophe.leroy@c-s.fr>, Tony Luck <tony.luck@intel.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, linux-kernel@vger.kernel.org,
 Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 05, 2019 at 09:19:22PM +1000, Michael Ellerman wrote:
> Anshuman Khandual <anshuman.khandual@arm.com> writes:
> > Similar notify_page_fault() definitions are being used by architectures
> > duplicating much of the same code. This attempts to unify them into a
> > single implementation, generalize it and then move it to a common place.
> > kprobes_built_in() can detect CONFIG_KPROBES, hence notify_page_fault()
> > need not be wrapped again within CONFIG_KPROBES. Trap number argument can
> > now contain upto an 'unsigned int' accommodating all possible platforms.
> ...
> 
> You've changed several of the architectures from something like above,
> where it disables preemption around the call into the below:
> 
> 
> Which skips everything if we're preemptible. Is that an equivalent
> change? If so can you please explain why in more detail.

See the discussion in v1 of this patch, which you were cc'd on.

I agree the description here completely fails to mention why the change.
It should mention commit a980c0ef9f6d8c.

> Also why not have it return bool?
> 
> cheers
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
