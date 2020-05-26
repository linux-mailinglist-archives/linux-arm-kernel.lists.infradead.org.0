Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FA6D19A69B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 09:52:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:In-Reply-To:MIME-Version:
	References:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=beUHbiXF4B3mXICcft9xcOV65rBy8Y0hOFbaPr0ZX/k=; b=doB/vJaSeg2iXH
	KS8xQprkmIgM1RBAcr+NhNJC/FRi41NAKfl1zfiO2MuUW4C75o/Mn2zozACNoNUiuV2Qs5ba+42oe
	4RattCyEyvTFVthLUJgW0q+FW2SXFBhmPP3HcuDffM1Fn5D5jd7NGJNeO1mF7YO8gtEk/JmX0ttMU
	JDwGzcmUdZM8mPAc+zy0qkFlE/eslMExnRinjVxmGqzgWYyq5G2ZeNdOaMIyGtV8qM10zWHmDMGab
	XnV4sqsmy1MKSLojKAPFv7pHHEZdhQtQ+sS+CBBsumdGQFCrhZ0ugPTfedAMCH1lPnPxhWT800EgJ
	nC9BI/jqXk1JTx2yrlQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJYAf-000829-63; Wed, 01 Apr 2020 07:52:21 +0000
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJYAW-00081c-U8
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 07:52:15 +0000
Received: from pps.filterd (m0098396.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 0317Y0UF016975
 for <linux-arm-kernel@lists.infradead.org>; Wed, 1 Apr 2020 03:52:12 -0400
Received: from e06smtp03.uk.ibm.com (e06smtp03.uk.ibm.com [195.75.94.99])
 by mx0a-001b2d01.pphosted.com with ESMTP id 3020wehqk5-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Wed, 01 Apr 2020 03:52:12 -0400
Received: from localhost
 by e06smtp03.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-arm-kernel@lists.infradead.org> from <rppt@linux.ibm.com>;
 Wed, 1 Apr 2020 08:52:02 +0100
Received: from b06cxnps3074.portsmouth.uk.ibm.com (9.149.109.194)
 by e06smtp03.uk.ibm.com (192.168.101.133) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Wed, 1 Apr 2020 08:51:54 +0100
Received: from d06av26.portsmouth.uk.ibm.com (d06av26.portsmouth.uk.ibm.com
 [9.149.105.62])
 by b06cxnps3074.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 0317q0Mp55705830
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 1 Apr 2020 07:52:00 GMT
Received: from d06av26.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 42A1CAE053;
 Wed,  1 Apr 2020 07:52:00 +0000 (GMT)
Received: from d06av26.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 7AFD1AE051;
 Wed,  1 Apr 2020 07:51:57 +0000 (GMT)
Received: from linux.ibm.com (unknown [9.148.201.75])
 by d06av26.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
 Wed,  1 Apr 2020 07:51:57 +0000 (GMT)
Date: Wed, 1 Apr 2020 10:51:55 +0300
From: Mike Rapoport <rppt@linux.ibm.com>
To: Baoquan He <bhe@redhat.com>
Subject: Re: [PATCH RFC] mm: remove CONFIG_HAVE_MEMBLOCK_NODE_MAP (was: Re:
 [PATCH v3 0/5] mm: Enable CONFIG_NODES_SPAN_OTHER_NODES by default for NUMA)
References: <1585420282-25630-1-git-send-email-Hoan@os.amperecomputing.com>
 <20200330074246.GA14243@dhcp22.suse.cz>
 <20200330092127.GB30942@linux.ibm.com>
 <20200330095843.GF14243@dhcp22.suse.cz>
 <20200331215618.GG30942@linux.ibm.com>
 <20200401054227.GC2129@MiWiFi-R3L-srv>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200401054227.GC2129@MiWiFi-R3L-srv>
X-TM-AS-GCONF: 00
x-cbid: 20040107-0012-0000-0000-0000039C263D
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 20040107-0013-0000-0000-000021D93511
Message-Id: <20200401075155.GH30942@linux.ibm.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-03-31_07:2020-03-31,
 2020-03-31 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 impostorscore=0
 priorityscore=1501 malwarescore=0 phishscore=0 mlxlogscore=999
 adultscore=0 suspectscore=5 bulkscore=0 mlxscore=0 lowpriorityscore=0
 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2004010064
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_005212_983565_0C30079D 
X-CRM114-Status: GOOD (  42.62  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.156.1 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mmorana@amperecomputing.com, Catalin Marinas <catalin.marinas@arm.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Michal Hocko <mhocko@kernel.org>,
 "open list:MEMORY MANAGEMENT" <linux-mm@kvack.org>,
 Paul Mackerras <paulus@samba.org>, "H. Peter Anvin" <hpa@zytor.com>,
 sparclinux@vger.kernel.org,
 Alexander Duyck <alexander.h.duyck@linux.intel.com>,
 linux-s390@vger.kernel.org, Michael Ellerman <mpe@ellerman.id.au>,
 x86@kernel.org, Christian Borntraeger <borntraeger@de.ibm.com>,
 Ingo Molnar <mingo@redhat.com>, Hoan Tran <Hoan@os.amperecomputing.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Pavel Tatashin <pavel.tatashin@microsoft.com>, lho@amperecomputing.com,
 Vasily Gorbik <gor@linux.ibm.com>, Vlastimil Babka <vbabka@suse.cz>,
 Will Deacon <will.deacon@arm.com>, Borislav Petkov <bp@alien8.de>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Oscar Salvador <osalvador@suse.de>, linux-kernel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Wed, Apr 01, 2020 at 01:42:27PM +0800, Baoquan He wrote:
> On 04/01/20 at 12:56am, Mike Rapoport wrote:
> > On Mon, Mar 30, 2020 at 11:58:43AM +0200, Michal Hocko wrote:
> > > 
> > > What would it take to make ia64 use HAVE_MEMBLOCK_NODE_MAP? I would
> > > really love to see that thing go away. It is causing problems when
> > > people try to use memblock api.
> > 
> > Well, it's a small patch in the end :)
> > 
> > Currently all NUMA architectures currently enable
> > CONFIG_HAVE_MEMBLOCK_NODE_MAP and use free_area_init_nodes() to initialize
> > nodes and zones structures.
> 
> I did some investigation, there are nine ARCHes having NUMA config. And
> among them, alpha doesn't have HAVE_MEMBLOCK_NODE_MAP support.

alpha has NUMA marked as BROKEN for a long time now. I doubt anybody is
going to fix that.

> While the interesting thing is there are two ARCHes which have
> HAVE_MEMBLOCK_NODE_MAP config, but don't have NUMA config adding, they
> are microblaze and riscv. Obviously it was not carefully considered to
> add HAVE_MEMBLOCK_NODE_MAP config into riscv and microblaze.

Well, microblaze probably copied it and forgot to remove and riscv might
get actual NUMA at some point.

> arch/alpha/Kconfig:config NUMA
> arch/arm64/Kconfig:config NUMA
> arch/ia64/Kconfig:config NUMA
> arch/mips/Kconfig:config NUMA
> arch/powerpc/Kconfig:config NUMA
> arch/s390/Kconfig:config NUMA
> arch/sh/mm/Kconfig:config NUMA
> arch/sparc/Kconfig:config NUMA
> arch/x86/Kconfig:config NUMA
> 
> From above information, we can remove HAVE_MEMBLOCK_NODE_MAP, and
> replace it with CONFIG_NUMA. That sounds more sensible to store nid into
> memblock when NUMA support is enabled.
 
Replacing CONFIG_HAVE_MEMBLOCK_NODE_MAP with CONFIG_NUMA will work, but
this will not help cleaning up the whole node/zone initialization mess and
we'll be stuck with two implementations.

The overhead of enabling HAVE_MEMBLOCK_NODE_MAP is only for init time as
most architectures will anyway discard the entire memblock, so having it in
a UMA arch won't be a problem. The only exception is arm that uses
memblock for pfn_valid(), here we may also think about a solution to
compensate the addition of nid to the memblock structures. 

We also may want to make all the movable_node and movable_core
functionality dependent on CONFIG_NUMA.
 
> > diff --git a/include/linux/memblock.h b/include/linux/memblock.h
> > index 079d17d96410..9de81112447e 100644
> > --- a/include/linux/memblock.h
> > +++ b/include/linux/memblock.h
> > @@ -50,9 +50,7 @@ struct memblock_region {
> >  	phys_addr_t base;
> >  	phys_addr_t size;
> >  	enum memblock_flags flags;
> > -#ifdef CONFIG_HAVE_MEMBLOCK_NODE_MAP
> >  	int nid;
> > -#endif
> 
> I didn't look into other change very carefully, but feel enabling
> memblock node map for all ARCHes looks a little radical. After all, many
> ARCHes even don't have NUMA support.
> 
> >  };
> >  
> >  /**
> > @@ -215,7 +213,6 @@ static inline bool memblock_is_nomap(struct memblock_region *m)
> >  	return m->flags & MEMBLOCK_NOMAP;
> >  }
> >  
> > -#ifdef CONFIG_HAVE_MEMBLOCK_NODE_MAP
> >  int memblock_search_pfn_nid(unsigned long pfn, unsigned long *start_pfn,
> >  			    unsigned long  *end_pfn);
> >  void __next_mem_pfn_range(int *idx, int nid, unsigned long *out_start_pfn,
> > @@ -234,7 +231,6 @@ void __next_mem_pfn_range(int *idx, int nid, unsigned long *out_start_pfn,
> >  #define for_each_mem_pfn_range(i, nid, p_start, p_end, p_nid)		\
> >  	for (i = -1, __next_mem_pfn_range(&i, nid, p_start, p_end, p_nid); \
> >  	     i >= 0; __next_mem_pfn_range(&i, nid, p_start, p_end, p_nid))
> > -#endif /* CONFIG_HAVE_MEMBLOCK_NODE_MAP */
> >  
> >  #ifdef CONFIG_DEFERRED_STRUCT_PAGE_INIT
> >  void __next_mem_pfn_range_in_zone(u64 *idx, struct zone *zone,
> > @@ -310,7 +306,6 @@ void __next_mem_pfn_range_in_zone(u64 *idx, struct zone *zone,
> >  	for_each_mem_range_rev(i, &memblock.memory, &memblock.reserved,	\
> >  			       nid, flags, p_start, p_end, p_nid)
> >  
> > -#ifdef CONFIG_HAVE_MEMBLOCK_NODE_MAP
> >  int memblock_set_node(phys_addr_t base, phys_addr_t size,
> >  		      struct memblock_type *type, int nid);
> >  
> > @@ -323,16 +318,6 @@ static inline int memblock_get_region_node(const struct memblock_region *r)
> >  {
> >  	return r->nid;
> >  }
> > -#else
> > -static inline void memblock_set_region_node(struct memblock_region *r, int nid)
> > -{
> > -}
> > -
> > -static inline int memblock_get_region_node(const struct memblock_region *r)
> > -{
> > -	return 0;
> > -}
> > -#endif /* CONFIG_HAVE_MEMBLOCK_NODE_MAP */
> >  
> >  /* Flags for memblock allocation APIs */
> >  #define MEMBLOCK_ALLOC_ANYWHERE	(~(phys_addr_t)0)
> > diff --git a/include/linux/mm.h b/include/linux/mm.h
> > index c54fb96cb1e6..368a45d4696a 100644
> > --- a/include/linux/mm.h
> > +++ b/include/linux/mm.h
> > @@ -2125,9 +2125,8 @@ static inline unsigned long get_num_physpages(void)
> >  	return phys_pages;
> >  }
> >  
> > -#ifdef CONFIG_HAVE_MEMBLOCK_NODE_MAP
> >  /*
> > - * With CONFIG_HAVE_MEMBLOCK_NODE_MAP set, an architecture may initialise its
> > + * Using memblock node mappings, an architecture may initialise its
> >   * zones, allocate the backing mem_map and account for memory holes in a more
> >   * architecture independent manner. This is a substitute for creating the
> >   * zone_sizes[] and zholes_size[] arrays and passing them to
> > @@ -2148,9 +2147,6 @@ static inline unsigned long get_num_physpages(void)
> >   * registered physical page range.  Similarly
> >   * sparse_memory_present_with_active_regions() calls memory_present() for
> >   * each range when SPARSEMEM is enabled.
> > - *
> > - * See mm/page_alloc.c for more information on each function exposed by
> > - * CONFIG_HAVE_MEMBLOCK_NODE_MAP.
> >   */
> >  extern void free_area_init_nodes(unsigned long *max_zone_pfn);
> >  unsigned long node_map_pfn_alignment(void);
> > @@ -2165,22 +2161,12 @@ extern void free_bootmem_with_active_regions(int nid,
> >  						unsigned long max_low_pfn);
> >  extern void sparse_memory_present_with_active_regions(int nid);
> >  
> > -#endif /* CONFIG_HAVE_MEMBLOCK_NODE_MAP */
> >  
> > -#if !defined(CONFIG_HAVE_MEMBLOCK_NODE_MAP) && \
> > -    !defined(CONFIG_HAVE_ARCH_EARLY_PFN_TO_NID)
> > -static inline int __early_pfn_to_nid(unsigned long pfn,
> > -					struct mminit_pfnnid_cache *state)
> > -{
> > -	return 0;
> > -}
> > -#else
> >  /* please see mm/page_alloc.c */
> >  extern int __meminit early_pfn_to_nid(unsigned long pfn);
> >  /* there is a per-arch backend function. */
> >  extern int __meminit __early_pfn_to_nid(unsigned long pfn,
> >  					struct mminit_pfnnid_cache *state);
> > -#endif
> >  
> >  extern void set_dma_reserve(unsigned long new_dma_reserve);
> >  extern void memmap_init_zone(unsigned long, int, unsigned long, unsigned long,
> > diff --git a/include/linux/mmzone.h b/include/linux/mmzone.h
> > index 462f6873905a..4422d1961d0e 100644
> > --- a/include/linux/mmzone.h
> > +++ b/include/linux/mmzone.h
> > @@ -917,11 +917,7 @@ extern int movable_zone;
> >  #ifdef CONFIG_HIGHMEM
> >  static inline int zone_movable_is_highmem(void)
> >  {
> > -#ifdef CONFIG_HAVE_MEMBLOCK_NODE_MAP
> >  	return movable_zone == ZONE_HIGHMEM;
> > -#else
> > -	return (ZONE_MOVABLE - 1) == ZONE_HIGHMEM;
> > -#endif
> >  }
> >  #endif
> >  
> > @@ -1121,15 +1117,6 @@ static inline struct zoneref *first_zones_zonelist(struct zonelist *zonelist,
> >  #include <asm/sparsemem.h>
> >  #endif
> >  
> > -#if !defined(CONFIG_HAVE_ARCH_EARLY_PFN_TO_NID) && \
> > -	!defined(CONFIG_HAVE_MEMBLOCK_NODE_MAP)
> > -static inline unsigned long early_pfn_to_nid(unsigned long pfn)
> > -{
> > -	BUILD_BUG_ON(IS_ENABLED(CONFIG_NUMA));
> > -	return 0;
> > -}
> > -#endif
> > -
> >  #ifdef CONFIG_FLATMEM
> >  #define pfn_to_nid(pfn)		(0)
> >  #endif
> > diff --git a/mm/memblock.c b/mm/memblock.c
> > index eba94ee3de0b..819441133a21 100644
> > --- a/mm/memblock.c
> > +++ b/mm/memblock.c
> > @@ -620,9 +620,7 @@ static int __init_memblock memblock_add_range(struct memblock_type *type,
> >  		 * area, insert that portion.
> >  		 */
> >  		if (rbase > base) {
> > -#ifdef CONFIG_HAVE_MEMBLOCK_NODE_MAP
> >  			WARN_ON(nid != memblock_get_region_node(rgn));
> > -#endif
> >  			WARN_ON(flags != rgn->flags);
> >  			nr_new++;
> >  			if (insert)
> > @@ -1197,7 +1195,6 @@ void __init_memblock __next_mem_range_rev(u64 *idx, int nid,
> >  	*idx = ULLONG_MAX;
> >  }
> >  
> > -#ifdef CONFIG_HAVE_MEMBLOCK_NODE_MAP
> >  /*
> >   * Common iterator interface used to define for_each_mem_pfn_range().
> >   */
> > @@ -1258,7 +1255,7 @@ int __init_memblock memblock_set_node(phys_addr_t base, phys_addr_t size,
> >  	memblock_merge_regions(type);
> >  	return 0;
> >  }
> > -#endif /* CONFIG_HAVE_MEMBLOCK_NODE_MAP */
> > +
> >  #ifdef CONFIG_DEFERRED_STRUCT_PAGE_INIT
> >  /**
> >   * __next_mem_pfn_range_in_zone - iterator for for_each_*_range_in_zone()
> > @@ -1797,7 +1794,6 @@ bool __init_memblock memblock_is_map_memory(phys_addr_t addr)
> >  	return !memblock_is_nomap(&memblock.memory.regions[i]);
> >  }
> >  
> > -#ifdef CONFIG_HAVE_MEMBLOCK_NODE_MAP
> >  int __init_memblock memblock_search_pfn_nid(unsigned long pfn,
> >  			 unsigned long *start_pfn, unsigned long *end_pfn)
> >  {
> > @@ -1812,7 +1808,6 @@ int __init_memblock memblock_search_pfn_nid(unsigned long pfn,
> >  
> >  	return type->regions[mid].nid;
> >  }
> > -#endif
> >  
> >  /**
> >   * memblock_is_region_memory - check if a region is a subset of memory
> > @@ -1903,11 +1898,9 @@ static void __init_memblock memblock_dump(struct memblock_type *type)
> >  		size = rgn->size;
> >  		end = base + size - 1;
> >  		flags = rgn->flags;
> > -#ifdef CONFIG_HAVE_MEMBLOCK_NODE_MAP
> >  		if (memblock_get_region_node(rgn) != MAX_NUMNODES)
> >  			snprintf(nid_buf, sizeof(nid_buf), " on node %d",
> >  				 memblock_get_region_node(rgn));
> > -#endif
> >  		pr_info(" %s[%#x]\t[%pa-%pa], %pa bytes%s flags: %#x\n",
> >  			type->name, idx, &base, &end, &size, nid_buf, flags);
> >  	}
> > diff --git a/mm/memory_hotplug.c b/mm/memory_hotplug.c
> > index 19389cdc16a5..dc8828b087bf 100644
> > --- a/mm/memory_hotplug.c
> > +++ b/mm/memory_hotplug.c
> > @@ -1366,11 +1366,7 @@ check_pages_isolated_cb(unsigned long start_pfn, unsigned long nr_pages,
> >  
> >  static int __init cmdline_parse_movable_node(char *p)
> >  {
> > -#ifdef CONFIG_HAVE_MEMBLOCK_NODE_MAP
> >  	movable_node_enabled = true;
> > -#else
> > -	pr_warn("movable_node parameter depends on CONFIG_HAVE_MEMBLOCK_NODE_MAP to work properly\n");
> > -#endif
> >  	return 0;
> >  }
> >  early_param("movable_node", cmdline_parse_movable_node);
> > diff --git a/mm/page_alloc.c b/mm/page_alloc.c
> > index 3c4eb750a199..84a69d6e7e61 100644
> > --- a/mm/page_alloc.c
> > +++ b/mm/page_alloc.c
> > @@ -335,7 +335,6 @@ static unsigned long nr_kernel_pages __initdata;
> >  static unsigned long nr_all_pages __initdata;
> >  static unsigned long dma_reserve __initdata;
> >  
> > -#ifdef CONFIG_HAVE_MEMBLOCK_NODE_MAP
> >  static unsigned long arch_zone_lowest_possible_pfn[MAX_NR_ZONES] __initdata;
> >  static unsigned long arch_zone_highest_possible_pfn[MAX_NR_ZONES] __initdata;
> >  static unsigned long required_kernelcore __initdata;
> > @@ -348,7 +347,6 @@ static bool mirrored_kernelcore __meminitdata;
> >  /* movable_zone is the "real" zone pages in ZONE_MOVABLE are taken from */
> >  int movable_zone;
> >  EXPORT_SYMBOL(movable_zone);
> > -#endif /* CONFIG_HAVE_MEMBLOCK_NODE_MAP */
> >  
> >  #if MAX_NUMNODES > 1
> >  unsigned int nr_node_ids __read_mostly = MAX_NUMNODES;
> > @@ -1447,9 +1445,6 @@ void __free_pages_core(struct page *page, unsigned int order)
> >  	__free_pages(page, order);
> >  }
> >  
> > -#if defined(CONFIG_HAVE_ARCH_EARLY_PFN_TO_NID) || \
> > -	defined(CONFIG_HAVE_MEMBLOCK_NODE_MAP)
> > -
> >  static struct mminit_pfnnid_cache early_pfnnid_cache __meminitdata;
> >  
> >  int __meminit early_pfn_to_nid(unsigned long pfn)
> > @@ -1465,7 +1460,6 @@ int __meminit early_pfn_to_nid(unsigned long pfn)
> >  
> >  	return nid;
> >  }
> > -#endif
> >  
> >  #ifdef CONFIG_NODES_SPAN_OTHER_NODES
> >  /* Only safe to use early in boot when initialisation is single-threaded */
> > @@ -5828,7 +5822,6 @@ void __ref build_all_zonelists(pg_data_t *pgdat)
> >  static bool __meminit
> >  overlap_memmap_init(unsigned long zone, unsigned long *pfn)
> >  {
> > -#ifdef CONFIG_HAVE_MEMBLOCK_NODE_MAP
> >  	static struct memblock_region *r;
> >  
> >  	if (mirrored_kernelcore && zone == ZONE_MOVABLE) {
> > @@ -5844,7 +5837,7 @@ overlap_memmap_init(unsigned long zone, unsigned long *pfn)
> >  			return true;
> >  		}
> >  	}
> > -#endif
> > +
> >  	return false;
> >  }
> >  
> > @@ -6227,7 +6220,6 @@ void __meminit init_currently_empty_zone(struct zone *zone,
> >  	zone->initialized = 1;
> >  }
> >  
> > -#ifdef CONFIG_HAVE_MEMBLOCK_NODE_MAP
> >  #ifndef CONFIG_HAVE_ARCH_EARLY_PFN_TO_NID
> >  
> >  /*
> > @@ -6503,8 +6495,7 @@ static unsigned long __init zone_absent_pages_in_node(int nid,
> >  	return nr_absent;
> >  }
> >  
> > -#else /* CONFIG_HAVE_MEMBLOCK_NODE_MAP */
> > -static inline unsigned long __init zone_spanned_pages_in_node(int nid,
> > +static inline unsigned long __init compat_zone_spanned_pages_in_node(int nid,
> >  					unsigned long zone_type,
> >  					unsigned long node_start_pfn,
> >  					unsigned long node_end_pfn,
> > @@ -6523,7 +6514,7 @@ static inline unsigned long __init zone_spanned_pages_in_node(int nid,
> >  	return zones_size[zone_type];
> >  }
> >  
> > -static inline unsigned long __init zone_absent_pages_in_node(int nid,
> > +static inline unsigned long __init compat_zone_absent_pages_in_node(int nid,
> >  						unsigned long zone_type,
> >  						unsigned long node_start_pfn,
> >  						unsigned long node_end_pfn,
> > @@ -6535,13 +6526,12 @@ static inline unsigned long __init zone_absent_pages_in_node(int nid,
> >  	return zholes_size[zone_type];
> >  }
> >  
> > -#endif /* CONFIG_HAVE_MEMBLOCK_NODE_MAP */
> > -
> >  static void __init calculate_node_totalpages(struct pglist_data *pgdat,
> >  						unsigned long node_start_pfn,
> >  						unsigned long node_end_pfn,
> >  						unsigned long *zones_size,
> > -						unsigned long *zholes_size)
> > +						unsigned long *zholes_size,
> > +						bool compat)
> >  {
> >  	unsigned long realtotalpages = 0, totalpages = 0;
> >  	enum zone_type i;
> > @@ -6549,17 +6539,38 @@ static void __init calculate_node_totalpages(struct pglist_data *pgdat,
> >  	for (i = 0; i < MAX_NR_ZONES; i++) {
> >  		struct zone *zone = pgdat->node_zones + i;
> >  		unsigned long zone_start_pfn, zone_end_pfn;
> > +		unsigned long spanned, absent;
> >  		unsigned long size, real_size;
> >  
> > -		size = zone_spanned_pages_in_node(pgdat->node_id, i,
> > -						  node_start_pfn,
> > -						  node_end_pfn,
> > -						  &zone_start_pfn,
> > -						  &zone_end_pfn,
> > -						  zones_size);
> > -		real_size = size - zone_absent_pages_in_node(pgdat->node_id, i,
> > -						  node_start_pfn, node_end_pfn,
> > -						  zholes_size);
> > +		if (compat) {
> > +			spanned = compat_zone_spanned_pages_in_node(
> > +						pgdat->node_id, i,
> > +						node_start_pfn,
> > +						node_end_pfn,
> > +						&zone_start_pfn,
> > +						&zone_end_pfn,
> > +						zones_size);
> > +			absent = compat_zone_absent_pages_in_node(
> > +						pgdat->node_id, i,
> > +						node_start_pfn,
> > +						node_end_pfn,
> > +						zholes_size);
> > +		} else {
> > +			spanned = zone_spanned_pages_in_node(pgdat->node_id, i,
> > +						node_start_pfn,
> > +						node_end_pfn,
> > +						&zone_start_pfn,
> > +						&zone_end_pfn,
> > +						zones_size);
> > +			absent = zone_absent_pages_in_node(pgdat->node_id, i,
> > +						node_start_pfn,
> > +						node_end_pfn,
> > +						zholes_size);
> > +		}
> > +
> > +		size = spanned;
> > +		real_size = size - absent;
> > +
> >  		if (size)
> >  			zone->zone_start_pfn = zone_start_pfn;
> >  		else
> > @@ -6859,10 +6870,8 @@ static void __ref alloc_node_mem_map(struct pglist_data *pgdat)
> >  	 */
> >  	if (pgdat == NODE_DATA(0)) {
> >  		mem_map = NODE_DATA(0)->node_mem_map;
> > -#if defined(CONFIG_HAVE_MEMBLOCK_NODE_MAP) || defined(CONFIG_FLATMEM)
> >  		if (page_to_pfn(mem_map) != pgdat->node_start_pfn)
> >  			mem_map -= offset;
> > -#endif /* CONFIG_HAVE_MEMBLOCK_NODE_MAP */
> >  	}
> >  #endif
> >  }
> > @@ -6879,9 +6888,10 @@ static inline void pgdat_set_deferred_range(pg_data_t *pgdat)
> >  static inline void pgdat_set_deferred_range(pg_data_t *pgdat) {}
> >  #endif
> >  
> > -void __init free_area_init_node(int nid, unsigned long *zones_size,
> > -				   unsigned long node_start_pfn,
> > -				   unsigned long *zholes_size)
> > +void __init __free_area_init_node(int nid, unsigned long *zones_size,
> > +				  unsigned long node_start_pfn,
> > +				  unsigned long *zholes_size,
> > +				  bool compat)
> >  {
> >  	pg_data_t *pgdat = NODE_DATA(nid);
> >  	unsigned long start_pfn = 0;
> > @@ -6893,16 +6903,17 @@ void __init free_area_init_node(int nid, unsigned long *zones_size,
> >  	pgdat->node_id = nid;
> >  	pgdat->node_start_pfn = node_start_pfn;
> >  	pgdat->per_cpu_nodestats = NULL;
> > -#ifdef CONFIG_HAVE_MEMBLOCK_NODE_MAP
> > -	get_pfn_range_for_nid(nid, &start_pfn, &end_pfn);
> > -	pr_info("Initmem setup node %d [mem %#018Lx-%#018Lx]\n", nid,
> > -		(u64)start_pfn << PAGE_SHIFT,
> > -		end_pfn ? ((u64)end_pfn << PAGE_SHIFT) - 1 : 0);
> > -#else
> > -	start_pfn = node_start_pfn;
> > -#endif
> > +	if (!compat) {
> > +		get_pfn_range_for_nid(nid, &start_pfn, &end_pfn);
> > +		pr_info("Initmem setup node %d [mem %#018Lx-%#018Lx]\n", nid,
> > +			(u64)start_pfn << PAGE_SHIFT,
> > +			end_pfn ? ((u64)end_pfn << PAGE_SHIFT) - 1 : 0);
> > +	} else {
> > +		start_pfn = node_start_pfn;
> > +	}
> > +
> >  	calculate_node_totalpages(pgdat, start_pfn, end_pfn,
> > -				  zones_size, zholes_size);
> > +				  zones_size, zholes_size, compat);
> >  
> >  	alloc_node_mem_map(pgdat);
> >  	pgdat_set_deferred_range(pgdat);
> > @@ -6910,6 +6921,14 @@ void __init free_area_init_node(int nid, unsigned long *zones_size,
> >  	free_area_init_core(pgdat);
> >  }
> >  
> > +void __init free_area_init_node(int nid, unsigned long *zones_size,
> > +				unsigned long node_start_pfn,
> > +				unsigned long *zholes_size)
> > +{
> > +	__free_area_init_node(nid, zones_size, node_start_pfn, zholes_size,
> > +			      true);
> > +}
> > +
> >  #if !defined(CONFIG_FLAT_NODE_MEM_MAP)
> >  /*
> >   * Initialize all valid struct pages in the range [spfn, epfn) and mark them
> > @@ -6993,8 +7012,6 @@ static inline void __init init_unavailable_mem(void)
> >  }
> >  #endif /* !CONFIG_FLAT_NODE_MEM_MAP */
> >  
> > -#ifdef CONFIG_HAVE_MEMBLOCK_NODE_MAP
> > -
> >  #if MAX_NUMNODES > 1
> >  /*
> >   * Figure out the number of possible node ids.
> > @@ -7423,8 +7440,8 @@ void __init free_area_init_nodes(unsigned long *max_zone_pfn)
> >  	init_unavailable_mem();
> >  	for_each_online_node(nid) {
> >  		pg_data_t *pgdat = NODE_DATA(nid);
> > -		free_area_init_node(nid, NULL,
> > -				find_min_pfn_for_node(nid), NULL);
> > +		__free_area_init_node(nid, NULL,
> > +				      find_min_pfn_for_node(nid), NULL, false);
> >  
> >  		/* Any memory on that node */
> >  		if (pgdat->node_present_pages)
> > @@ -7489,8 +7506,6 @@ static int __init cmdline_parse_movablecore(char *p)
> >  early_param("kernelcore", cmdline_parse_kernelcore);
> >  early_param("movablecore", cmdline_parse_movablecore);
> >  
> > -#endif /* CONFIG_HAVE_MEMBLOCK_NODE_MAP */
> > -
> >  void adjust_managed_page_count(struct page *page, long count)
> >  {
> >  	atomic_long_add(count, &page_zone(page)->managed_pages);
> > -- 
> > 2.25.1
> > 
> > 
> 

-- 
Sincerely yours,
Mike.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
