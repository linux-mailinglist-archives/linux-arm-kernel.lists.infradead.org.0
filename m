Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4262CA3038
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 08:44:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j+gQZnSZkz+8ThSBVmiKzszAENiX9JyJZRMWjm+Th3c=; b=NnlrvS0b8Kbo5b
	TBzA/dQLZBj8HjAL8W8EeMUKTmMVzpXEuiFjtXcYefoICrqMfWTmj2lyulrQa3UNjtvj9p5VIHynX
	13WFpwnEwXuUpmerjN+MFdtHx7eA0dHJwEnHmAFq2ayPCsYviMZU0vnWkv+M5Ps3ZkuFWRJ6xu2Op
	8t3IbITjbK3PZXpDN7r4uY5BOkEPIrGikiOu0trEmw0JcKOVfFHa58fWY4c/a/hDe0yUZy8DDP4au
	iAj0KqvdfCnr3A5gmp9nWd6xxaCOnVq8n5Xw4/59F+7u58MaUBcGC1cqLYvNnshmVIhdWn83d5v7P
	m0CxF5877Crl0p7ZHdFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3aeC-0001rp-FW; Fri, 30 Aug 2019 06:44:36 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3adz-0001rT-QK
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 06:44:25 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 48227ABC4;
 Fri, 30 Aug 2019 06:44:22 +0000 (UTC)
Date: Fri, 30 Aug 2019 08:44:21 +0200
From: Michal Hocko <mhocko@kernel.org>
To: Yunsheng Lin <linyunsheng@huawei.com>
Subject: Re: [PATCH] arm64: numa: check the node id before accessing
 node_to_cpumask_map
Message-ID: <20190830064421.GS28313@dhcp22.suse.cz>
References: <1567131991-189761-1-git-send-email-linyunsheng@huawei.com>
 <20190830055528.GO28313@dhcp22.suse.cz>
 <49b86da7-f114-27c2-463a-9bf5082ac197@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <49b86da7-f114-27c2-463a-9bf5082ac197@huawei.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_234424_145812_3D460E3B 
X-CRM114-Status: GOOD (  25.30  )
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

On Fri 30-08-19 14:35:26, Yunsheng Lin wrote:
> On 2019/8/30 13:55, Michal Hocko wrote:
> > On Fri 30-08-19 10:26:31, Yunsheng Lin wrote:
> >> Some buggy bios may not set the device' numa id, and dev_to_node
> >> will return -1, which may cause global-out-of-bounds error
> >> detected by KASAN.
> > 
> > Why should we workaround a buggy bios like that? Is it so widespread and
> > no BIOS update available? Also, why is this arm64 specific?
> 
> For our case, there is BIOS update available. I just thought it might
> be better to protect from this case when BIOS has not implemented the
> device' numa id setting feature or the feature from BIOS has some bug.
> 
> It is not arm64 specific, right now I only have arm64 board. If it is
> ok to protect this from the buggy BIOS, maybe all other arch can be
> changed too.

If we are to really care then this should be consistent among
architectures IMHO. But I am not really sure this is really worth it.
The code is quite old and I do not really remember any reports. 

> >> This patch changes cpumask_of_node to return cpu_none_mask if the
> >> node is not valid, and sync the cpumask_of_node between the
> >> cpumask_of_node function in numa.h and numa.c.
> > 
> > Why?
> 
> When CONFIG_DEBUG_PER_CPU_MAPS is defined, the cpumask_of_node() in
> numa.c is used, if not, the cpumask_of_node() in numa.h is used.
> 
> I am not sure why there is difference between them, and it is there
> when since the below commit:
> 1a2db300348b ("arm64, numa: Add NUMA support for arm64 platforms.")
> 
> I synced them to keep them consistent whether CONFIG_DEBUG_PER_CPU_MAPS
> is defined.

Such a change should be made in a separate patch with a full
clarification/justification. From the above it is still not clear why
this is needed though.

> >> Signed-off-by: Yunsheng Lin <linyunsheng@huawei.com>
> >> ---
> >>  arch/arm64/include/asm/numa.h | 6 ++++++
> >>  arch/arm64/mm/numa.c          | 2 +-
> >>  2 files changed, 7 insertions(+), 1 deletion(-)
> >>
> >> diff --git a/arch/arm64/include/asm/numa.h b/arch/arm64/include/asm/numa.h
> >> index 626ad01..da891ed 100644
> >> --- a/arch/arm64/include/asm/numa.h
> >> +++ b/arch/arm64/include/asm/numa.h
> >> @@ -25,6 +25,12 @@ const struct cpumask *cpumask_of_node(int node);
> >>  /* Returns a pointer to the cpumask of CPUs on Node 'node'. */
> >>  static inline const struct cpumask *cpumask_of_node(int node)
> >>  {
> >> +	if (node >= nr_node_ids || node < 0)
> >> +		return cpu_none_mask;
> >> +
> >> +	if (!node_to_cpumask_map[node])
> >> +		return cpu_online_mask;
> >> +
> >>  	return node_to_cpumask_map[node];
> >>  }
> >>  #endif
> >> diff --git a/arch/arm64/mm/numa.c b/arch/arm64/mm/numa.c
> >> index 4f241cc..3846313 100644
> >> --- a/arch/arm64/mm/numa.c
> >> +++ b/arch/arm64/mm/numa.c
> >> @@ -46,7 +46,7 @@ EXPORT_SYMBOL(node_to_cpumask_map);
> >>   */
> >>  const struct cpumask *cpumask_of_node(int node)
> >>  {
> >> -	if (WARN_ON(node >= nr_node_ids))
> >> +	if (WARN_ON(node >= nr_node_ids || node < 0))
> >>  		return cpu_none_mask;
> >>  
> >>  	if (WARN_ON(node_to_cpumask_map[node] == NULL))
> >> -- 
> >> 2.8.1
> > 

-- 
Michal Hocko
SUSE Labs

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
