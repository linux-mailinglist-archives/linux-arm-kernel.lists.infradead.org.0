Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9BC7B54E4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 20:07:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nSbW5G/zKBsP7lnoR7KTCo9yUSyPxeyxDMcorKNpwe0=; b=jF4+pjqqmYkuHJ
	nuXIyhoGMOjNs9t/0h+a6KmjvS9nWJEAgIE9fpRs6gkLdEI+OEcmZ7PLAQCG7JG+lHKzipta3D3f0
	nFXYtW+JmMtO5bKPSaqNNhCynxwU2dnsosUPLePNxNfzqo6t0xFoztAzeyrjJBTIXr6T7cenfqadE
	Maugh8xYyBPDA5eWJfYIKPlIdAwRsBESFPVhGhqnURzB7TGajKnUjuQ+bf5KveOEt+cwyp6jUqmVI
	uhLJa/J52fO85x4Li02JszNfP1Qkbmdduw/ZivO5OZRdAePV0I8vJb3tt0YRkRJHlaojYCoiyseR2
	/+Q4vRePoMLbn1P7Z4aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAHt6-0004zy-GK; Tue, 17 Sep 2019 18:07:40 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAHsq-0004zN-49
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 18:07:25 +0000
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 78B6E8A1C8E;
 Tue, 17 Sep 2019 18:07:23 +0000 (UTC)
Received: from llong.remote.csb (dhcp-17-160.bos.redhat.com [10.18.17.160])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B4B9319C6A;
 Tue, 17 Sep 2019 18:07:21 +0000 (UTC)
Subject: Re: [PATCH v4 4/5] locking/qspinlock: Introduce starvation avoidance
 into CNA
To: Alex Kogan <alex.kogan@oracle.com>, linux@armlinux.org.uk,
 peterz@infradead.org, mingo@redhat.com, will.deacon@arm.com, arnd@arndb.de,
 linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, tglx@linutronix.de, bp@alien8.de,
 hpa@zytor.com, x86@kernel.org, guohanjun@huawei.com, jglauber@marvell.com
References: <20190906142541.34061-1-alex.kogan@oracle.com>
 <20190906142541.34061-5-alex.kogan@oracle.com>
From: Waiman Long <longman@redhat.com>
Organization: Red Hat
Message-ID: <506c7d1c-faef-d094-3baa-6aaaf9089c60@redhat.com>
Date: Tue, 17 Sep 2019 14:07:21 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190906142541.34061-5-alex.kogan@oracle.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.69]); Tue, 17 Sep 2019 18:07:23 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_110724_201684_D3C5E63F 
X-CRM114-Status: GOOD (  24.73  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: rahul.x.yadav@oracle.com, dave.dice@oracle.com, steven.sistare@oracle.com,
 daniel.m.jordan@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 9/6/19 10:25 AM, Alex Kogan wrote:
> Choose the next lock holder among spinning threads running on the same
> node with high probability rather than always. With small probability,
> hand the lock to the first thread in the secondary queue or, if that
> queue is empty, to the immediate successor of the current lock holder
> in the main queue.  Thus, assuming no failures while threads hold the
> lock, every thread would be able to acquire the lock after a bounded
> number of lock transitions, with high probability.
>
> Signed-off-by: Alex Kogan <alex.kogan@oracle.com>
> Reviewed-by: Steve Sistare <steven.sistare@oracle.com>
> ---
>  kernel/locking/qspinlock_cna.h | 35 +++++++++++++++++++++++++++++++++--
>  1 file changed, 33 insertions(+), 2 deletions(-)
>
> diff --git a/kernel/locking/qspinlock_cna.h b/kernel/locking/qspinlock_cna.h
> index f983debf20bb..e86182e6163b 100644
> --- a/kernel/locking/qspinlock_cna.h
> +++ b/kernel/locking/qspinlock_cna.h
> @@ -4,6 +4,7 @@
>  #endif
>  
>  #include <linux/topology.h>
> +#include <linux/random.h>
>  
>  /*
>   * Implement a NUMA-aware version of MCS (aka CNA, or compact NUMA-aware lock).
> @@ -50,6 +51,34 @@ struct cna_node {
>  	struct	cna_node *tail;    /* points to the secondary queue tail */
>  };
>  
> +/* Per-CPU pseudo-random number seed */
> +static DEFINE_PER_CPU(u32, seed);
> +
> +/*
> + * Controls the probability for intra-node lock hand-off. It can be
> + * tuned and depend, e.g., on the number of CPUs per node. For now,
> + * choose a value that provides reasonable long-term fairness without
> + * sacrificing performance compared to a version that does not have any
> + * fairness guarantees.
> + */
> +#define INTRA_NODE_HANDOFF_PROB_ARG (16)
> +
> +/*
> + * Return false with probability 1 / 2^@num_bits.
> + * Intuitively, the larger @num_bits the less likely false is to be returned.
> + * @num_bits must be a number between 0 and 31.
> + */
> +static bool probably(unsigned int num_bits)
> +{
> +	u32 s;
> +
> +	s = this_cpu_read(seed);
> +	s = next_pseudo_random32(s);
> +	this_cpu_write(seed, s);
> +
> +	return s & ((1 << num_bits) - 1);
> +}
> +
>  static void __init cna_init_nodes_per_cpu(unsigned int cpu)
>  {
>  	struct mcs_spinlock *base = per_cpu_ptr(&qnodes[0].mcs, cpu);
> @@ -202,9 +231,11 @@ static inline void cna_pass_lock(struct mcs_spinlock *node,
>  
>  	/*
>  	 * Try to find a successor running on the same NUMA node
> -	 * as the current lock holder.
> +	 * as the current lock holder. For long-term fairness,
> +	 * search for such a thread with high probability rather than always.
>  	 */
> -	new_next = cna_try_find_next(node, next);
> +	if (probably(INTRA_NODE_HANDOFF_PROB_ARG))
> +		new_next = cna_try_find_next(node, next);
>  
>  	if (new_next) {		          /* if such successor is found */
>  		next_holder = new_next;

Because the accounting is done per cpu, not per lock, there is no
guaranteed maximum of times for passing the lock to waiters in the same
node versus other nodes for a given lock. So lock starvation is still
theoretically possible. How about just keeping a count of how many times
a lock is passed to waiters of the same node in the CNA structure? So if
the count reaches a threshold, the lock will be passed to the one in the
secondary queue. 16 bits should be enough for node ID. That will leave
16 bits to store the count without increasing the size of the CNA structure.

Cheers,
Longman


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
