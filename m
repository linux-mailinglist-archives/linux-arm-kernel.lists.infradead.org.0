Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5995AD8335
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 00:04:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3iP4Mla3ch/P2qHWxwwb33RPgXZu7/Qg6HgbK3bZVUo=; b=uBHs2T5kGzR3vv
	rAdUcYMkImz0vrq14jiXFQ8N0KGhM24dnfhyRqJHGWaNaNPo2USBOdlIUqXUh7ofMcYH4qAx3tE6B
	jvLWsNlGVBSGPbeY5lLdmim97Rq10OA2w8f3t5gSfr9gOwRkWrjpa/9dE3JdIb/JS8gFaSm6+fOkg
	T/CrLcU9pVLEeNKBbt+cHULZpXp5w604gENay6+DiOe9yWBlFrOqqmcCTJ+4MegVycOdQVsehg4e1
	25c+QiCJU2XkSLY2vDhp3JSEjCc/RAo8SHih8qNeGLbwJicxVtCvOOOfsijvbIYHLizmuTm6YG88q
	QEeg+4lkOTBatA/UvDSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKUvo-0002XG-R6; Tue, 15 Oct 2019 22:04:40 +0000
Received: from chamillionaire.breakpoint.cc ([2a0a:51c0:0:12e:520::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKUvg-0002W3-IM
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 22:04:33 +0000
Received: from bigeasy by Chamillionaire.breakpoint.cc with local (Exim 4.92)
 (envelope-from <sebastian@breakpoint.cc>)
 id 1iKUvV-00077j-6y; Wed, 16 Oct 2019 00:04:21 +0200
Date: Wed, 16 Oct 2019 00:04:21 +0200
From: Sebastian Andrzej Siewior <sebastian@breakpoint.cc>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 6/6] ARM: Inline locking functions for !PREEMPTION
Message-ID: <20191015220420.lisfkqd4lfpiyd7h@flow>
References: <20191013221310.30748-1-sebastian@breakpoint.cc>
 <20191013221310.30748-7-sebastian@breakpoint.cc>
 <CAK8P3a2hYteGizk=--_Z1kE200_ORL52QEK5RBTMtXt5_UzmhA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a2hYteGizk=--_Z1kE200_ORL52QEK5RBTMtXt5_UzmhA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_150432_604957_66582F53 
X-CRM114-Status: GOOD (  13.59  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a0a:51c0:0:12e:520:0:0:1 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Peter Zijlstra <peterz@infradead.org>, Russell King <linux@armlinux.org.uk>,
 Ingo Molnar <mingo@redhat.com>, Waiman Long <longman@redhat.com>,
 Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-10-14 09:43:53 [+0200], Arnd Bergmann wrote:
> On Mon, Oct 14, 2019 at 12:14 AM Sebastian Andrzej Siewior
> <sebastian@breakpoint.cc> wrote:
> >
> > On non-preemptive kernels, the locking instruction is less than 64 bytes
> > and it makes sense to inline it. With PREEMPTION the kernel becomes very
> > big if the locks are inlined.
> >
> > Signed-off-by: Sebastian Andrzej Siewior <sebastian@breakpoint.cc>
> > ---
> 
> At the moment, we have two architectures selecting all 28 symbols
> and you are adding a third, all other architecture select none of them.
> 
> This tells me that the configurability has gone a little overboard. How about
> adding a shortcut ARCH_INLINE_ALL_SPINLOCKS that selects the 28
> symbols and using that for arm/arm64/s390?

Sounds reasonable. 

> Also, the output of 'size vmlinux' before and after the patch for
> multi_v7_defconfig would be useful to have in the changelog, as there
> are a couple of platforms that are particularly sensitive to object code
> size changes.

okay.

>       Arnd

Sebastian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
