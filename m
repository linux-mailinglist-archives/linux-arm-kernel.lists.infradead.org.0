Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47FF51396BA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 17:48:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I+dAxH5n397ZC6jhL2YmyUjHuNQqBgJHpRQmfeAXf/o=; b=oZ9k1PFg0qbKuv
	ZjzCsWSPKrEJzXUK/fRG/a15yNbSV35+wjpZf46V0nknBkn1/kNaEg0B2rJn142A+shY2Ubrx+jum
	Sm0dLb5yjY0yH1BJXz3Dubcb/taTZEgRCDpHQwCBsdOqnbcA0+9mXuGkzVtvpg0xfZncJrWStPBrn
	f/92bA5qFH/fcNcrPwLi84oKx6xMI5vBxOGZlA3uZUK5B0MNxGM4xTcbU0ljb600wV/p9fQUH/pyl
	zKcR7lP4kvEeRZ1twYtYlrvs6iw92bkRczZzg7IsrssEcP7vZty9yCrFw7vzInbRSHPt7TOwmAf3q
	E3AdWoOwxg2hceosFpIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir2tP-0002Ft-Rf; Mon, 13 Jan 2020 16:48:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir2tG-0002FS-M6
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 16:48:35 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C7D8720678;
 Mon, 13 Jan 2020 16:48:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578934114;
 bh=I3pCwFrEYhOyoSeIyVb525rkGpVzdanvyIQ5HUTW1xM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pDmGLcYwmjusySW/+wTtAxLrekFoWM+e9Zb+fN9bdnwubkxlnXOVx0aeta5n1vet5
 4s6N6zNutce+C3GH6JFKtPCcWUl+GF4H7R4IxFvt0Ju0VIx2ZkmSPZ1fn9qiTwD95N
 JfZe3ca0EOLiF8HxM0fvH/zYdkXrTnoi7xOeTCt0=
Date: Mon, 13 Jan 2020 16:48:29 +0000
From: Will Deacon <will@kernel.org>
To: Waiman Long <longman@redhat.com>
Subject: Re: [PATCH v3] locking/osq: Use optimized spinning loop for arm64
Message-ID: <20200113164828.GF4458@willie-the-truck>
References: <20200113150735.21956-1-longman@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200113150735.21956-1-longman@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_084834_743087_135A3AE6 
X-CRM114-Status: GOOD (  16.55  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, yezengruan <yezengruan@huawei.com>,
 Ingo Molnar <mingo@redhat.com>, maz@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jan 13, 2020 at 10:07:35AM -0500, Waiman Long wrote:
> Arm64 has a more optimized spinning loop (atomic_cond_read_acquire)
> using wfe for spinlock that can boost performance of sibling threads
> by putting the current cpu to a wait state that is broken only when
> the monitored variable changes or an external event happens.
> 
> OSQ has a more complicated spinning loop. Besides the lock value, it
> also checks for need_resched() and vcpu_is_preempted(). The check for
> need_resched() is not a problem as it is only set by the tick interrupt
> handler. That will be detected by the spinning cpu right after iret.
> 
> The vcpu_is_preempted() check, however, is a problem as changes to the
> preempt state of of previous node will not affect the wait state. For
> ARM64, vcpu_is_preempted is not currently defined and so is a no-op.
> Will has indicated that he is planning to para-virtualize wfe instead
> of defining vcpu_is_preempted for PV support. So just add a comment in
> arch/arm64/include/asm/spinlock.h to indicate that vcpu_is_preempted()
> should not be defined as suggested.
> 
> On a 2-socket 56-core 224-thread ARM64 system, a kernel mutex locking
> microbenchmark was run for 10s with and without the patch. The
> performance numbers before patch were:
> 
> Running locktest with mutex [runtime = 10s, load = 1]
> Threads = 224, Min/Mean/Max = 316/123,143/2,121,269
> Threads = 224, Total Rate = 2,757 kop/s; Percpu Rate = 12 kop/s
> 
> After patch, the numbers were:
> 
> Running locktest with mutex [runtime = 10s, load = 1]
> Threads = 224, Min/Mean/Max = 334/147,836/1,304,787
> Threads = 224, Total Rate = 3,311 kop/s; Percpu Rate = 15 kop/s
> 
> So there was about 20% performance improvement.
> 
> Signed-off-by: Waiman Long <longman@redhat.com>
> ---
>  arch/arm64/include/asm/spinlock.h |  9 +++++++++
>  kernel/locking/osq_lock.c         | 17 ++++-------------
>  2 files changed, 13 insertions(+), 13 deletions(-)

Acked-by: Will Deacon <will@kernel.org>

Thanks,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
