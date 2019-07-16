Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3B466AC5A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 17:59:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vTPmrGemKNrhPBl2jYXX5aZXsAzvUYDLca53CO2wzMM=; b=bwOxlb/Zx/fHIE
	7WirqYCFwrG+lLckqQTqF0ybEGBe81k8g+V9A4FWWXUXlfAzI/Q7A44q3n3102GjPV4u5f9IjHHLe
	EQ4kmC9Bo5hQzvbj5IuW641iHgyPZhrSFLHI8Le4pOsuPHMNwxJ9mT9gqeBre6OwrFSytlZpz4ncu
	u7yaz59vv7px9Hw2sUzRzo3Tl+948bszkshgrnLm3uLSKGiQJZAPgyl4oan3kSfNVPlf8X/Z6lTdz
	jiJe23bD/G4UXusruN1Cd0Pr3uL/m6LiRwLNhxZqwd3QA3cKNg20t0UjQkj2GDgQQsV0gHauVnG2h
	cFVC65VzYc+eIFgvRvyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnPrY-0001Go-34; Tue, 16 Jul 2019 15:59:32 +0000
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=hirez.programming.kicks-ass.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hnPr4-00015I-B2; Tue, 16 Jul 2019 15:59:02 +0000
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id B55F12059DEA3; Tue, 16 Jul 2019 17:59:00 +0200 (CEST)
Date: Tue, 16 Jul 2019 17:59:00 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Alex Kogan <alex.kogan@oracle.com>
Subject: Re: [PATCH v3 4/5] locking/qspinlock: Introduce starvation avoidance
 into CNA
Message-ID: <20190716155900.GS3419@hirez.programming.kicks-ass.net>
References: <20190715192536.104548-1-alex.kogan@oracle.com>
 <20190715192536.104548-5-alex.kogan@oracle.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190715192536.104548-5-alex.kogan@oracle.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: linux-arch@vger.kernel.org, guohanjun@huawei.com, arnd@arndb.de,
 dave.dice@oracle.com, jglauber@marvell.com, x86@kernel.org,
 will.deacon@arm.com, linux@armlinux.org.uk, steven.sistare@oracle.com,
 linux-kernel@vger.kernel.org, rahul.x.yadav@oracle.com, mingo@redhat.com,
 bp@alien8.de, hpa@zytor.com, longman@redhat.com, tglx@linutronix.de,
 daniel.m.jordan@oracle.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 15, 2019 at 03:25:35PM -0400, Alex Kogan wrote:

> @@ -36,6 +37,33 @@ struct cna_node {
>  
>  #define CNA_NODE(ptr) ((struct cna_node *)(ptr))
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
> +#define INTRA_NODE_HANDOFF_PROB_ARG 0x10000
> +
> +/*
> + * Return false with probability 1 / @range.
> + * @range must be a power of 2.
> + */
> +static bool probably(unsigned int range)
> +{
> +	u32 s;
> +
> +	s = this_cpu_read(seed);
> +	s = next_pseudo_random32(s);
> +	this_cpu_write(seed, s);
> +
> +	return s & (range - 1);

This is fragile, better to take a number of bits as argument.

> +}
> +
>  static void cna_init_node(struct mcs_spinlock *node)
>  {
>  	struct cna_node *cn = CNA_NODE(node);
> @@ -140,7 +168,13 @@ static inline void cna_pass_mcs_lock(struct mcs_spinlock *node,
>  	u64 *var = &next->locked;
>  	u64 val = 1;
>  
> -	succ = find_successor(node);
> +	/*
> +	 * Try to pass the lock to a thread running on the same node.
> +	 * For long-term fairness, search for such a thread with high
> +	 * probability rather than always.
> +	 */
> +	if (probably(INTRA_NODE_HANDOFF_PROB_ARG))
> +		succ = find_successor(node);
>  
>  	if (succ) {
>  		var = &succ->mcs.locked;

And this is where that tertiary condition comes from.. I think.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
