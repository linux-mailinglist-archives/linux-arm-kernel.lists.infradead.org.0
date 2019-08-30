Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00BB5A3579
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 13:13:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VX9FCO3qCzh0Jytv0ArPfu5E6iHaUSh1q8jeiCfpfbA=; b=hurrprX7eSlIFE
	dwV5NgK4RZEgnt1z+4z+7npRW4wO7UGy/i3aCKY7OqCkWyNyeSLt6DikaUg5ckuYyqp82fzT8IPKQ
	MZVUhTdA++CQShdB5CYHITd/UkqqVFAV/hdKV+4xChlHD2LPJUa5byrmoTXhQQCYOJWs2mtXbFQLn
	5URIoR93OraQZPLEUfJAfPpSiVAMU5EVSmEZlrUcPe0IycCRTqF7YdyFyo5Rho17ghi/prcR/wawl
	7vkhAqBgjFl2ZzA+HbNRzxXhsE60qMzXYUYuXL8XsBjgG1Jdcny6WvqmLOLwSFKzn7xpVaanFhgvy
	4ZHgmjT4wJgTcJrzUQVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3eqn-0002ok-2b; Fri, 30 Aug 2019 11:13:53 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3eqf-0002o3-UG
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 11:13:47 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 3D05CAF11;
 Fri, 30 Aug 2019 11:13:44 +0000 (UTC)
Date: Fri, 30 Aug 2019 13:13:43 +0200
From: Michal Hocko <mhocko@kernel.org>
To: Yunsheng Lin <linyunsheng@huawei.com>
Subject: Re: [PATCH] arm64: numa: check the node id before accessing
 node_to_cpumask_map
Message-ID: <20190830111343.GD28313@dhcp22.suse.cz>
References: <1567131991-189761-1-git-send-email-linyunsheng@huawei.com>
 <20190830055528.GO28313@dhcp22.suse.cz>
 <49b86da7-f114-27c2-463a-9bf5082ac197@huawei.com>
 <20190830064421.GS28313@dhcp22.suse.cz>
 <740cae36-f1a9-4d20-e4ea-3100076de533@huawei.com>
 <20190830083925.GV28313@dhcp22.suse.cz>
 <20839f55-dc99-d2bf-7c60-c37f38232044@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20839f55-dc99-d2bf-7c60-c37f38232044@huawei.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_041346_121188_C138C0BC 
X-CRM114-Status: GOOD (  21.07  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: tglx@linutronix.de, anshuman.khandual@arm.com, robin.murphy@arm.com,
 linuxarm@huawei.com, linux-kernel@vger.kernel.org, rppt@linux.ibm.com,
 cai@lca.pw, akpm@linux-foundation.org, will@kernel.org, adobriyan@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri 30-08-19 17:49:46, Yunsheng Lin wrote:
> On 2019/8/30 16:39, Michal Hocko wrote:
> > On Fri 30-08-19 16:08:14, Yunsheng Lin wrote:
[...]
> >> It seems the cpumask_of_node with CONFIG_DEBUG_PER_CPU_MAPS is used
> >> to catch the erorr case and give a warning to user when node id is not
> >> valid.
> > 
> > Yeah the config help text
> > config DEBUG_PER_CPU_MAPS
> >         bool "Debug access to per_cpu maps"
> >         depends on DEBUG_KERNEL
> >         depends on SMP
> >         help
> >           Say Y to verify that the per_cpu map being accessed has
> >           been set up. This adds a fair amount of code to kernel memory
> >           and decreases performance.
> > 
> >           Say N if unsure.
> > 
> > suggests that this is intentionally hidden behind a config so a normal
> > path shouldn't really duplicate it. If those checks make sense in
> > general then the config option should be dropped I think.
> 
> It seems cpumask_of_node with CONFIG_DEBUG_PER_CPU_MAPS on may be used to
> debug some early use of cpumask_of_node problem, see below:
> 
> /*
>  * Allocate node_to_cpumask_map based on number of available nodes
>  * Requires node_possible_map to be valid.
>  *
>  * Note: cpumask_of_node() is not valid until after this is done.
>  * (Use CONFIG_DEBUG_PER_CPU_MAPS to check this.)
>  */
> static void __init setup_node_to_cpumask_map(void)
> {
> 	int node;
> 
> 	/* setup nr_node_ids if not done yet */
> 	if (nr_node_ids == MAX_NUMNODES)
> 		setup_nr_node_ids();
> 
> 	/* allocate and clear the mapping */
> 	for (node = 0; node < nr_node_ids; node++) {
> 		alloc_bootmem_cpumask_var(&node_to_cpumask_map[node]);
> 		cpumask_clear(node_to_cpumask_map[node]);
> 	}
> 
> 	/* cpumask_of_node() will now work */
> 	pr_debug("Node to cpumask map for %u nodes\n", nr_node_ids);
> }
> 
> So I prefer to keep it as two implementations for arm64 and x86, but
> ensure the two implementations be consistent. It can be cleaned up later
> when there is no use at all.
> 
> Is it ok with you?

I am not really sure what you are asking here TBH. You want both
CONFIG_DEBUG_PER_CPU_MAPS implementations to use the same (duplicated) code?
If that is the case then no objections from me. I would obviously
preferred a shared code but that might be a larger change indeed and can
be done later.

-- 
Michal Hocko
SUSE Labs

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
