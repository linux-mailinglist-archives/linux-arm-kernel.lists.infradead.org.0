Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C18D139266
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 14:44:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HL9jlDTFezdx8+HsCsMOgmBOChSbFtcv4YzfrmTDqYg=; b=HGqQiw6Uexyj61
	B4/tjg8QYRxXmfFiAsBpkM0TzOUs1IjWzf70Cda9Vv/nnGk0hhuxXOSq7QrFBJc+1hLrI7d6IEnLp
	STTF1XnJaLwRpKYtrAYSbOaUTo6TAOa01W2vXH198HtDQojlUrVB5jubfWnOLTl2zDzGPPws+VMEQ
	cbD99Onti0Js0Dh81Cnxxn3BDPmp5zh5hRBm77VKeoAODmu2zgxdFhm5zMbjbtQJPCsU5+qurUp5H
	OnvLN9FEj7hB9Lg+9ivOP+YUGGplvK+bcmYxuHWUolbqcErzDn3TFd00ptE0EbpL2pKViPDy2nwGa
	hNGi+zocMhQaMp6COGGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir00u-0004vi-9U; Mon, 13 Jan 2020 13:44:16 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir00k-0004ug-Rq
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 13:44:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578923045;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=AqBRApPWTS4UYgbRglBP86D95EvSqTw+5TZoVneRKdM=;
 b=FIqGK+EP8Q1qAUP00AsWGNB5sn5iIhWZyp+cgRNM1eqtLHfVaEXwU4S0GMW36mcwDUYMqW
 ilwwGZf2kmRkPIqA7+IY1zFwQDk+cODKlMsXgL09FkSKwniKD5cs0gIxpoJNOLa46Z2hfP
 gB0qygL0vB/tmMO1Dc569gpmzCWr2Ek=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-287-4hpGEeUuMIueudT7ttaOyg-1; Mon, 13 Jan 2020 08:44:02 -0500
X-MC-Unique: 4hpGEeUuMIueudT7ttaOyg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 766961007310;
 Mon, 13 Jan 2020 13:44:00 +0000 (UTC)
Received: from llong.remote.csb (dhcp-17-59.bos.redhat.com [10.18.17.59])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 48EF960BF4;
 Mon, 13 Jan 2020 13:43:59 +0000 (UTC)
Subject: Re: [PATCH v2] locking/osq: Use optimized spinning loop for arm64
To: Will Deacon <will@kernel.org>
References: <20200112235854.32089-1-longman@redhat.com>
 <20200113115715.GA3260@willie-the-truck>
From: Waiman Long <longman@redhat.com>
Organization: Red Hat
Message-ID: <a4233fec-89e7-08e2-01a6-35a2ffb289b1@redhat.com>
Date: Mon, 13 Jan 2020 08:43:58 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20200113115715.GA3260@willie-the-truck>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_054406_983386_E6C3F13A 
X-CRM114-Status: GOOD (  22.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
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
 linux-kernel@vger.kernel.org, Ingo Molnar <mingo@redhat.com>, maz@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 1/13/20 6:57 AM, Will Deacon wrote:
> [+Marc]
>
> On Sun, Jan 12, 2020 at 06:58:54PM -0500, Waiman Long wrote:
>> Arm64 has a more optimized spinning loop (atomic_cond_read_acquire)
>> for spinlock that can boost performance of sibling threads by putting
>> the current cpu to a shallow sleep state that is woken up only when
>> the monitored variable changes or an external event happens.
>>
>> OSQ has a more complicated spinning loop. Besides the lock value, it
>> also checks for need_resched() and vcpu_is_preempted(). The check for
>> need_resched() is not a problem as it is only set by the tick interrupt
>> handler. That will be detected by the spinning cpu right after iret.
>>
>> The vcpu_is_preempted() check, however, is a problem as changes to the
>> preempt state of of previous node will not affect the sleep state. For
>> ARM64, vcpu_is_preempted is not defined and so is a no-op. To guard
>> against future addition of vcpu_is_preempted() to arm64, code is added
>> to cause build error when vcpu_is_preempted becomes defined in arm64
>> without the corresponding changes in the OSQ spinning code.
>>
>> On a 2-socket 56-core 224-thread ARM64 system, a kernel mutex locking
>> microbenchmark was run for 10s with and without the patch. The
>> performance numbers before patch were:
>>
>> Running locktest with mutex [runtime = 10s, load = 1]
>> Threads = 224, Min/Mean/Max = 316/123,143/2,121,269
>> Threads = 224, Total Rate = 2,757 kop/s; Percpu Rate = 12 kop/s
>>
>> After patch, the numbers were:
>>
>> Running locktest with mutex [runtime = 10s, load = 1]
>> Threads = 224, Min/Mean/Max = 334/147,836/1,304,787
>> Threads = 224, Total Rate = 3,311 kop/s; Percpu Rate = 15 kop/s
>>
>> So there was about 20% performance improvement.
>>
>> Signed-off-by: Waiman Long <longman@redhat.com>
>> ---
>>  arch/arm64/include/asm/barrier.h | 10 ++++++++++
>>  kernel/locking/osq_lock.c        | 25 ++++++++++++-------------
>>  2 files changed, 22 insertions(+), 13 deletions(-)
>>
>> diff --git a/arch/arm64/include/asm/barrier.h b/arch/arm64/include/asm/barrier.h
>> index 7d9cc5ec4971..8eb5f1239885 100644
>> --- a/arch/arm64/include/asm/barrier.h
>> +++ b/arch/arm64/include/asm/barrier.h
>> @@ -152,6 +152,16 @@ do {									\
>>  	VAL;								\
>>  })
>>  
>> +/*
>> + * In osq_lock(), smp_cond_load_relaxed() is called with a condition
>> + * that includes vcpu_is_preempted(). For arm64, vcpu_is_preempted is not
>> + * currently defined. So it is a no-op. If vcpu_is_preempted is defined in
>> + * the future, smp_cond_load_relaxed() will not response to changes in the
>> + * preempt state in a timely manner. So code changes will have to be made
>> + * to address this deficiency.
>> + */
>> +#define vcpu_is_preempted_not_used
>> +
>>  #define smp_cond_load_acquire(ptr, cond_expr)				\
>>  ({									\
>>  	typeof(ptr) __PTR = (ptr);					\
>> diff --git a/kernel/locking/osq_lock.c b/kernel/locking/osq_lock.c
>> index 6ef600aa0f47..69ec5161c3cc 100644
>> --- a/kernel/locking/osq_lock.c
>> +++ b/kernel/locking/osq_lock.c
>> @@ -13,6 +13,14 @@
>>   */
>>  static DEFINE_PER_CPU_SHARED_ALIGNED(struct optimistic_spin_node, osq_node);
>>  
>> +/*
>> + * The optimized smp_cond_load_relaxed() spin loop should not be used with
>> + * vcpu_is_preempted defined.
>> + */
>> +#if defined(vcpu_is_preempted) && defined(vcpu_is_preempted_not_used)
>> +#error "vcpu_is_preempted() inside smp_cond_load_relaxed() may not work!"
>> +#endif
> Although I appreciate you going the extra mile for arm64 (thanks!), I think
> this is probably a bit overkill given that I don't plan to merge the series
> from Zengruan any time soon. Instead, how about just defining
> vcpu_is_preempted in arch/arm64/include/asm/spinlock.h with a comment:
>
>
> 	/*
> 	 * Changing this will break osq_lock() thanks to the call inside
> 	 * smp_cond_load_relaxed().
> 	 *
> 	 * See:
> 	 * https://lore.kernel.org/lkml/20200110100612.GC2827@hirez.programming.kicks-ass.net
> 	 */
> 	#define vcpu_is_preempted(cpu)	false
>
>
> So we'll notice that when somebody tries to change it.

Yes, that works for me. I just want to make sure that if any changes to
add vcpu_is_preempted to arm64 in the future will get caught.

Cheers,
Longman


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
