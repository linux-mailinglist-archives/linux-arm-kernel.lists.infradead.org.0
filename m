Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D7DE2DE12
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 15:25:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9XR15189APoBPwF2spEBb/coX0qNErjJtw1B2vSdoqo=; b=dHP2j73wFOjIHK
	o8CA2f68mfdZaoNKPylkrQ1XqL8PWym+YNLBAPsRpBJQGu0a7T8Kz1d3x2ZezYl5kj4nFeM/gFGNn
	FldFvSordtDI/poHIR2S/uZpPhNwB2l6hm0JXfhBa8AxsSn2X9cRzfHrZHtufjzEwFBbBM5tJtLBU
	BoMS3zEwvkFvkjoRfaAB0mMUnD32cNKu38OmIfAUiHZMrXpVO+q94XR4qXlA9RnWWuQt91dMEewP7
	VnzUmTa+jfXVzskclupXQh1l/sQVctAYjRPYkZLKU/JMfcl0eE7quDkWQHKr9mgds1junptx/rsdu
	fMpPAYdVHXxeq8z5d+ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVyaD-0003vD-1X; Wed, 29 May 2019 13:25:33 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVya6-0003uz-3F
 for linux-arm-kernel@bombadil.infradead.org; Wed, 29 May 2019 13:25:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EYaFlFyeLMBFesChUym9zINCxmcRtLgVS6HK3VLLE6A=; b=bSUHaqtVdnZ9cKLtAH/Ig9+FN
 cbE9Ob57J9YdrTMD3420Y/qRX/l2f+0M32TbgQY2MAiNYsKNIFeF/GdlYUNcPopd/xYQQXdFLTnHI
 wbjbEi8YRWhtSbagCoOrgXjxD7+yTFaOCcZBve5Xy6uxMysUA7fCjntvoCszuy/LzG4o5DKRHLzIH
 v9I8s7M7Cr9ru/rzSk+7dlOfIl/DTXhzSei1yJBfOnLxTbHWcmSCg+HrW6YHsIm+JnpOAJXy/wAKU
 DYLfvPNXMkjgsB7OnAL2jA1n6N2gqP+ZckeXTxwE813SCNQKH3lci1Dv9cKQr06n6G4BQTb/6cXQX
 zVp6P5+WA==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=hirez.programming.kicks-ass.net)
 by merlin.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVyZy-0005FE-65; Wed, 29 May 2019 13:25:19 +0000
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 28F8C201E233E; Wed, 29 May 2019 15:25:15 +0200 (CEST)
Date: Wed, 29 May 2019 15:25:15 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Will Deacon <will.deacon@arm.com>
Subject: Re: [PATCH] perf: Fix oops when kthread execs user process
Message-ID: <20190529132515.GW2623@hirez.programming.kicks-ass.net>
References: <1559046689-24091-1-git-send-email-92siuyang@gmail.com>
 <20190528140103.GT2623@hirez.programming.kicks-ass.net>
 <20190528153224.GE20758@fuggles.cambridge.arm.com>
 <20190528173228.GW2623@hirez.programming.kicks-ass.net>
 <20190529091733.GA4485@fuggles.cambridge.arm.com>
 <20190529101042.GN2623@hirez.programming.kicks-ass.net>
 <20190529102022.GC4485@fuggles.cambridge.arm.com>
 <20190529125557.GU2623@hirez.programming.kicks-ass.net>
 <20190529130521.GA11023@fuggles.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190529130521.GA11023@fuggles.cambridge.arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: mark.rutland@arm.com, Young Xiao <92siuyang@gmail.com>, mpe@ellerman.id.au,
 jolsa@redhat.com, x86@kernel.org, linux@armlinux.org.uk, eranian@google.com,
 linux-kernel@vger.kernel.org, acme@redhat.com, mingo@redhat.com, bp@alien8.de,
 hpa@zytor.com, ravi.bangoria@linux.vnet.ibm.com, fweisbec@gmail.com,
 linux-arm-kernel@lists.infradead.org, kan.liang@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 29, 2019 at 02:05:21PM +0100, Will Deacon wrote:
> On Wed, May 29, 2019 at 02:55:57PM +0200, Peter Zijlstra wrote:

> >  	if (user_mode(regs)) {
> 
> Hmm, so it just occurred to me that Mark's observation is that the regs
> can be junk in some cases. In which case, should we be checking for
> kthreads first?

task_pt_regs() can return garbage, but @regs is the exception (or
perf_arch_fetch_caller_regs()) regs, and for those user_mode() had
better be correct.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
