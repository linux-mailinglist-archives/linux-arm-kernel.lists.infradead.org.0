Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54BD6182CB6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 10:50:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G+fGWiWXfH0EOePeAxjKxCXxPnv/vOlw7j2ZfOlpp5k=; b=OybZg/QM1lrK9h
	JFx0lQoPemv3hc3yA16KM7Yd4PxuPIvhUGI3/Fhku/nfmeLHCP7c+wfYabKc5lawnY1o5Tc2p0xSA
	hXZzAe+FffxWDx2Wp4MlCGDxeQtaoOp3olu4nDdIKtW9n/7jXXu8dVqzoRU9WJwyP1T2KTvwZFkHU
	PoiLL1OvL5u1Ev+wdGyITE/WTF8SefuNI7rmG+okPOJyuSfOX+CZ3uiwkqBzYOS/17HHbV3d3IT1u
	DQmQj8IOt5lbIvmSPTrOKaBc80v9MgkEZWu/ZIJZuTy+sAf0IBHnk7jBaKzg7TRWu/IyX3iYwO+xL
	HYdHMhcgdWlHgsZt0gvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCKUC-0001AS-3k; Thu, 12 Mar 2020 09:50:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCKTz-00013E-PU
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 09:50:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 675A31FB;
 Thu, 12 Mar 2020 02:50:26 -0700 (PDT)
Received: from mbp (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D92E83F67D;
 Thu, 12 Mar 2020 02:50:24 -0700 (PDT)
Date: Thu, 12 Mar 2020 09:50:22 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Richard Henderson <richard.henderson@linaro.org>
Subject: Re: [PATCH v2 19/19] arm64: mte: Add Memory Tagging Extension
 documentation
Message-ID: <20200312095022.GA5801@mbp>
References: <20200226180526.3272848-1-catalin.marinas@arm.com>
 <20200226180526.3272848-20-catalin.marinas@arm.com>
 <0857cca0-9f75-398d-e755-f645d2d8a594@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0857cca0-9f75-398d-e755-f645d2d8a594@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_025027_904869_77501CC3 
X-CRM114-Status: GOOD (  14.44  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: linux-arch@vger.kernel.org, Richard Earnshaw <Richard.Earnshaw@arm.com>,
 Will Deacon <will@kernel.org>, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, linux-mm@kvack.org,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Peter Collingbourne <pcc@google.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 11, 2020 at 03:17:54PM -0700, Richard Henderson wrote:
> On 2/26/20 10:05 AM, Catalin Marinas wrote:
> > +    /*
> > +     * From include/uapi/linux/prctl.h
> > +     */
> > +    #define PR_SET_TAGGED_ADDR_CTRL 55
> > +    #define PR_GET_TAGGED_ADDR_CTRL 56
> > +    # define PR_TAGGED_ADDR_ENABLE  (1UL << 0)
> > +    # define PR_MTE_TCF_SHIFT       1
> > +    # define PR_MTE_TCF_NONE        (0UL << PR_MTE_TCF_SHIFT)
> > +    # define PR_MTE_TCF_SYNC        (1UL << PR_MTE_TCF_SHIFT)
> > +    # define PR_MTE_TCF_ASYNC       (2UL << PR_MTE_TCF_SHIFT)
> > +    # define PR_MTE_TCF_MASK        (3UL << PR_MTE_TCF_SHIFT)
> > +    # define PR_MTE_TAG_SHIFT       3
> > +    # define PR_MTE_TAG_MASK        (0xffffUL << PR_MTE_TAG_SHIFT)
> 
> Is there a reason not to include TCMA into the set of bits that userland can
> control with this prcrl?
> 
> I know that ordinarily TCR_ELx requires expensive syncing, but for this
> particular field there is a note about "software may change this control bit on
> a context switch".  Which I take to mean that the usual TLB-related syncing may
> be omitted.

TCMA (unlike TCF) is allowed to be cached in the TLB. If we are to allow
the user to configure this field, there are two approaches, each with
its own problems:

1. per-thread TCMA (as we do with TCF). Since the field is cached in the
   TLB (ASID-tagged), we'd have to invalidate the TLB for that ASID
   every time we switch between threads of the same process on a CPU.

2. per-process TCMA. This solves the problem of TLB invalidation,
   however you'd have to synchronise all the threads that may run on
   other CPUs. A simple IPI (as in sys_membarrier() for example) is not
   sufficient since with CnP (CPU threads sharing the TLB) we'd need a
   synchronous update. This leaves us with a stop_machine() call and I'm
   not keen on exposing this to user via a syscall.

If you have a strong need for TCMA in user space, please raise it and we
can discuss about always allowing match-all tags for user tasks. Note
that the kernel will have match-all enabled for kernel addresses.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
