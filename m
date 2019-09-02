Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58F74A4FD3
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 09:26:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BPXDSuo9GZqiPi64qhzyWi/BNYXJlJm+THy0dReFUp0=; b=BbF5fJ2RnL5ddB
	diI/HMldS/Ydq3/ke1XqvyxEABooVS9zyiLu7vR1S/ssL18MPrptX/LX9cnRCJJWkfBNjZsVGeHyL
	6osstoaLoEE8negZ8x7C4kx9FtEpz6P+WhVqRMRn0+cTAVXLbsnrQE4JKLdN657DbhbIvRjv4Thob
	A3soTI+1B2nCr2/Q1uHu4EfgZqMqSdj/AB7IFxxBZ4ML/As+EmS6hkBxv5tjV5VDAxNLayMA+2pn4
	iAsi6/8VAOqtf9gxk4q+JRST90pL1+akdQLbWlLIyAmsYIGOy7+ZNVOb5EJK+BNEwW9QaW5FSloAk
	BtRxozAlcERl5KksHtLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4gjN-0004MX-LK; Mon, 02 Sep 2019 07:26:29 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4gjC-0004MR-M9
 for linux-arm-kernel@bombadil.infradead.org; Mon, 02 Sep 2019 07:26:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kuvYA3T0maxhdGUw985D46q7bOf4rHWESmnw46BzIyU=; b=RSg8SK30rWjj+TGxS+skngBb9
 2fH0Zbvox/26y8ns9l17onRj+Z0upMjen1Jy9C225gpAYncbszcWwsNoaRVXtRhycw5sQPRXxvqZF
 MZcgdzGUMBphpdnOn16uYyMgLt+qN6EW1z0DTDeFTlEiZTt3odbqEu+DJSqCou9wwYKKH0FxT6dWN
 I+zp9Ai4QHlNhoBhF21uUvEYbhfjZl2GTj5O4kluEqPaq3MIV3nvvVSecP3gXpoqPTIw8UHW+LeG+
 00NHCbD42nXGQS4hidMqlBA/pQDia+x5u1X7c5K0Y5fMyiWYIiSoxiwz3DDXxm0RHe9+pK3isf+sd
 NVR1Me1xA==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1i4gik-0004XZ-Fx; Mon, 02 Sep 2019 07:25:50 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 6DC0530116F;
 Mon,  2 Sep 2019 09:25:06 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 1636C29B6185F; Mon,  2 Sep 2019 09:25:42 +0200 (CEST)
Date: Mon, 2 Sep 2019 09:25:42 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Yunsheng Lin <linyunsheng@huawei.com>
Subject: Re: [PATCH v2 2/9] x86: numa: check the node id consistently for x86
Message-ID: <20190902072542.GN2369@hirez.programming.kicks-ass.net>
References: <1567231103-13237-1-git-send-email-linyunsheng@huawei.com>
 <1567231103-13237-3-git-send-email-linyunsheng@huawei.com>
 <20190831085539.GG2369@hirez.programming.kicks-ass.net>
 <4d89c688-49e4-a2aa-32ee-65e36edcd913@huawei.com>
 <20190831161247.GM2369@hirez.programming.kicks-ass.net>
 <ae64285f-5134-4147-7b02-34bb5d519e8c@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ae64285f-5134-4147-7b02-34bb5d519e8c@huawei.com>
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
Cc: dalias@libc.org, linux-sh@vger.kernel.org, catalin.marinas@arm.com,
 dave.hansen@linux.intel.com, heiko.carstens@de.ibm.com, linuxarm@huawei.com,
 jiaxun.yang@flygoat.com, linux-kernel@vger.kernel.org, mwb@linux.vnet.ibm.com,
 paulus@samba.org, hpa@zytor.com, sparclinux@vger.kernel.org, chenhc@lemote.com,
 will@kernel.org, linux-s390@vger.kernel.org, ysato@users.sourceforge.jp,
 mpe@ellerman.id.au, x86@kernel.org, rppt@linux.ibm.com, borntraeger@de.ibm.com,
 dledford@redhat.com, mingo@redhat.com, jeffrey.t.kirsher@intel.com,
 benh@kernel.crashing.org, jhogan@kernel.org, nfont@linux.vnet.ibm.com,
 mattst88@gmail.com, len.brown@intel.com, gor@linux.ibm.com,
 anshuman.khandual@arm.com, ink@jurassic.park.msu.ru, cai@lca.pw,
 luto@kernel.org, tglx@linutronix.de, naveen.n.rao@linux.vnet.ibm.com,
 linux-arm-kernel@lists.infradead.org, rth@twiddle.net, axboe@kernel.dk,
 robin.murphy@arm.com, linux-mips@vger.kernel.org, ralf@linux-mips.org,
 tbogendoerfer@suse.de, paul.burton@mips.com, linux-alpha@vger.kernel.org,
 bp@alien8.de, akpm@linux-foundation.org, linuxppc-dev@lists.ozlabs.org,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 02, 2019 at 01:46:51PM +0800, Yunsheng Lin wrote:
> On 2019/9/1 0:12, Peter Zijlstra wrote:

> > 1) because even it is not set, the device really does belong to a node.
> > It is impossible a device will have magic uniform access to memory when
> > CPUs cannot.
> 
> So it means dev_to_node() will return either NUMA_NO_NODE or a
> valid node id?

NUMA_NO_NODE := -1, which is not a valid node number. It is also, like I
said, not a valid device location on a NUMA system.

Just because ACPI/BIOS is shit, doesn't mean the device doesn't have a
node association. It just means we don't know and might have to guess.

> > 2) is already true today, cpumask_of_node() requires a valid node_id.
> 
> Ok, most of the user does check node_id before calling
> cpumask_of_node(), but does a little different type of checking:
> 
> 1) some does " < 0" check;
> 2) some does "== NUMA_NO_NODE" check;
> 3) some does ">= MAX_NUMNODES" check;
> 4) some does "< 0 || >= MAX_NUMNODES || !node_online(node)" check.

The one true way is:

	'(unsigned)node_id >= nr_node_ids'

> > 3) is just wrong and increases overhead for everyone.
> 
> Ok, cpumask_of_node() is also used in some critical path such
> as scheduling, which may not need those checking, the overhead
> is unnecessary.
> 
> But for non-critical path such as setup or configuration path,
> it better to have consistent checking, and also simplify the
> user code that calls cpumask_of_node().
> 
> Do you think it is worth the trouble to add a new function
> such as cpumask_of_node_check(maybe some other name) to do
> consistent checking?
> 
> Or caller just simply check if dev_to_node()'s return value is
> NUMA_NO_NODE before calling cpumask_of_node()?

It is not a matter of convenience. The function is called
cpumask_of_node(), when node < 0 || node >= nr_node_ids, it is not a
valid node, therefore the function shouldn't return anything except an
error.

Also note that the CONFIG_DEBUG_PER_CPU_MAPS version of
cpumask_of_node() already does this (although it wants the below fix).

---
diff --git a/arch/x86/mm/numa.c b/arch/x86/mm/numa.c
index e6dad600614c..5f49c10201c7 100644
--- a/arch/x86/mm/numa.c
+++ b/arch/x86/mm/numa.c
@@ -861,7 +861,7 @@ void numa_remove_cpu(int cpu)
  */
 const struct cpumask *cpumask_of_node(int node)
 {
-	if (node >= nr_node_ids) {
+	if ((unsigned)node >= nr_node_ids) {
 		printk(KERN_WARNING
 			"cpumask_of_node(%d): node > nr_node_ids(%u)\n",
 			node, nr_node_ids);

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
