Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87B25138C6F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 08:37:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:In-Reply-To:MIME-Version:
	References:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mVU7n2blqLbnkFbf09DTrFA5oOzeA3caM4DUNKA9/vI=; b=K5jyv/mdkPlvWU
	6+9v3/Wdbix4Bm7TA6ZLf7MBRSeEWLSYAeQ9ADKUCwXTVGGHUnBtQNAjI5xJ02vX7MfIhAkFLdGvk
	tZuGw5dj1pF7iuo0iB6S4UdQ1lu7K16FMUL2m8AhY0ZkiMJd+XWeMxZENKqPuccv+vBA5UDSzcKlW
	Ao+BCFrGKDT3EILDYpeZQua+ErvReGd7hz8bvLTNLpEdtOGr6gh84O1wedgmENobpqR4cxVQnZAwN
	QlcJ7WdDgRB1lIuyqB9pHkODpAeGTtcBIGS2fARxRPn6VSJrb81kC0XVeCJ/Mo+Cpojt9f+4vvAtO
	Nfw4UQ5q6HqxvyzWSDaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iquI5-0001QI-4m; Mon, 13 Jan 2020 07:37:37 +0000
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iquHx-0001PU-1Q
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 07:37:30 +0000
Received: from pps.filterd (m0098410.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00D7bRMq073032
 for <linux-arm-kernel@lists.infradead.org>; Mon, 13 Jan 2020 02:37:27 -0500
Received: from e06smtp02.uk.ibm.com (e06smtp02.uk.ibm.com [195.75.94.98])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2xfbs7exvk-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Mon, 13 Jan 2020 02:37:26 -0500
Received: from localhost
 by e06smtp02.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-arm-kernel@lists.infradead.org> from <rppt@linux.ibm.com>;
 Mon, 13 Jan 2020 07:37:23 -0000
Received: from b06cxnps3075.portsmouth.uk.ibm.com (9.149.109.195)
 by e06smtp02.uk.ibm.com (192.168.101.132) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Mon, 13 Jan 2020 07:37:16 -0000
Received: from d06av23.portsmouth.uk.ibm.com (d06av23.portsmouth.uk.ibm.com
 [9.149.105.59])
 by b06cxnps3075.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 00D7bFdm59899960
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 13 Jan 2020 07:37:15 GMT
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 66762A4040;
 Mon, 13 Jan 2020 07:37:15 +0000 (GMT)
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id C58E7A404D;
 Mon, 13 Jan 2020 07:37:13 +0000 (GMT)
Received: from linux.ibm.com (unknown [9.148.8.170])
 by d06av23.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
 Mon, 13 Jan 2020 07:37:13 +0000 (GMT)
Date: Mon, 13 Jan 2020 09:37:12 +0200
From: Mike Rapoport <rppt@linux.ibm.com>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH V11 2/5] mm/memblock: Introduce MEMBLOCK_BOOT flag
References: <1578625755-11792-1-git-send-email-anshuman.khandual@arm.com>
 <1578625755-11792-3-git-send-email-anshuman.khandual@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1578625755-11792-3-git-send-email-anshuman.khandual@arm.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-TM-AS-GCONF: 00
x-cbid: 20011307-0008-0000-0000-00000348D902
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 20011307-0009-0000-0000-00004A69272A
Message-Id: <20200113073711.GA4214@linux.ibm.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-13_01:2020-01-13,
 2020-01-13 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0
 priorityscore=1501 mlxlogscore=999 suspectscore=0 adultscore=0
 clxscore=1011 bulkscore=0 malwarescore=0 impostorscore=0 mlxscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1910280000 definitions=main-2001130064
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_233729_087280_ED41E619 
X-CRM114-Status: GOOD (  30.36  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: mark.rutland@arm.com, david@redhat.com, catalin.marinas@arm.com,
 linux-mm@kvack.org, arunks@codeaurora.org, cpandya@codeaurora.org,
 will@kernel.org, ira.weiny@intel.com, steven.price@arm.com,
 valentin.schneider@arm.com, suzuki.poulose@arm.com, Robin.Murphy@arm.com,
 broonie@kernel.org, cai@lca.pw, ard.biesheuvel@arm.com,
 dan.j.williams@intel.com, linux-arm-kernel@lists.infradead.org,
 osalvador@suse.de, steve.capper@arm.com, logang@deltatee.com,
 linux-kernel@vger.kernel.org, akpm@linux-foundation.org,
 mgorman@techsingularity.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 10, 2020 at 08:39:12AM +0530, Anshuman Khandual wrote:
> On arm64 platform boot memory should never be hot removed due to certain
> platform specific constraints. Hence the platform would like to override
> earlier added arch call back arch_memory_removable() for this purpose. In
> order to reject boot memory hot removal request, it needs to first track
> them at runtime. In the future, there might be other platforms requiring
> runtime boot memory enumeration. Hence lets expand the existing generic
> memblock framework for this purpose rather then creating one just for
> arm64 platforms.
> 
> This introduces a new memblock flag MEMBLOCK_BOOT along with helpers which
> can be marked by given platform on all memory regions discovered during
> boot.
 
We already have MEMBLOCK_HOTPLUG to mark hotpluggable region. Can't we use
it for your use-case?

> Cc: Mike Rapoport <rppt@linux.ibm.com>
> Cc: Andrew Morton <akpm@linux-foundation.org>
> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
> ---
>  include/linux/memblock.h | 10 ++++++++++
>  mm/memblock.c            | 37 +++++++++++++++++++++++++++++++++++++
>  2 files changed, 47 insertions(+)
> 
> diff --git a/include/linux/memblock.h b/include/linux/memblock.h
> index b38bbef..fb04c87 100644
> --- a/include/linux/memblock.h
> +++ b/include/linux/memblock.h
> @@ -31,12 +31,14 @@ extern unsigned long long max_possible_pfn;
>   * @MEMBLOCK_HOTPLUG: hotpluggable region
>   * @MEMBLOCK_MIRROR: mirrored region
>   * @MEMBLOCK_NOMAP: don't add to kernel direct mapping
> + * @MEMBLOCK_BOOT: memory received from firmware during boot
>   */
>  enum memblock_flags {
>  	MEMBLOCK_NONE		= 0x0,	/* No special request */
>  	MEMBLOCK_HOTPLUG	= 0x1,	/* hotpluggable region */
>  	MEMBLOCK_MIRROR		= 0x2,	/* mirrored region */
>  	MEMBLOCK_NOMAP		= 0x4,	/* don't add to kernel direct mapping */
> +	MEMBLOCK_BOOT		= 0x8,	/* memory received from firmware during boot */
>  };
>  
>  /**
> @@ -116,6 +118,8 @@ int memblock_reserve(phys_addr_t base, phys_addr_t size);
>  void memblock_trim_memory(phys_addr_t align);
>  bool memblock_overlaps_region(struct memblock_type *type,
>  			      phys_addr_t base, phys_addr_t size);
> +int memblock_mark_boot(phys_addr_t base, phys_addr_t size);
> +int memblock_clear_boot(phys_addr_t base, phys_addr_t size);
>  int memblock_mark_hotplug(phys_addr_t base, phys_addr_t size);
>  int memblock_clear_hotplug(phys_addr_t base, phys_addr_t size);
>  int memblock_mark_mirror(phys_addr_t base, phys_addr_t size);
> @@ -216,6 +220,11 @@ static inline bool memblock_is_nomap(struct memblock_region *m)
>  	return m->flags & MEMBLOCK_NOMAP;
>  }
>  
> +static inline bool memblock_is_boot(struct memblock_region *m)
> +{
> +	return m->flags & MEMBLOCK_BOOT;
> +}
> +
>  #ifdef CONFIG_HAVE_MEMBLOCK_NODE_MAP
>  int memblock_search_pfn_nid(unsigned long pfn, unsigned long *start_pfn,
>  			    unsigned long  *end_pfn);
> @@ -449,6 +458,7 @@ void memblock_cap_memory_range(phys_addr_t base, phys_addr_t size);
>  void memblock_mem_limit_remove_map(phys_addr_t limit);
>  bool memblock_is_memory(phys_addr_t addr);
>  bool memblock_is_map_memory(phys_addr_t addr);
> +bool memblock_is_boot_memory(phys_addr_t addr);
>  bool memblock_is_region_memory(phys_addr_t base, phys_addr_t size);
>  bool memblock_is_reserved(phys_addr_t addr);
>  bool memblock_is_region_reserved(phys_addr_t base, phys_addr_t size);
> diff --git a/mm/memblock.c b/mm/memblock.c
> index 4bc2c7d..e10207f 100644
> --- a/mm/memblock.c
> +++ b/mm/memblock.c
> @@ -865,6 +865,30 @@ static int __init_memblock memblock_setclr_flag(phys_addr_t base,
>  }
>  
>  /**
> + * memblock_mark_bootmem - Mark boot memory with flag MEMBLOCK_BOOT.
> + * @base: the base phys addr of the region
> + * @size: the size of the region
> + *
> + * Return: 0 on success, -errno on failure.
> + */
> +int __init_memblock memblock_mark_boot(phys_addr_t base, phys_addr_t size)
> +{
> +	return memblock_setclr_flag(base, size, 1, MEMBLOCK_BOOT);
> +}
> +
> +/**
> + * memblock_clear_bootmem - Clear flag MEMBLOCK_BOOT for a specified region.
> + * @base: the base phys addr of the region
> + * @size: the size of the region
> + *
> + * Return: 0 on success, -errno on failure.
> + */
> +int __init_memblock memblock_clear_boot(phys_addr_t base, phys_addr_t size)
> +{
> +	return memblock_setclr_flag(base, size, 0, MEMBLOCK_BOOT);
> +}
> +
> +/**
>   * memblock_mark_hotplug - Mark hotpluggable memory with flag MEMBLOCK_HOTPLUG.
>   * @base: the base phys addr of the region
>   * @size: the size of the region
> @@ -974,6 +998,10 @@ static bool should_skip_region(struct memblock_region *m, int nid, int flags)
>  	if ((flags & MEMBLOCK_MIRROR) && !memblock_is_mirror(m))
>  		return true;
>  
> +	/* if we want boot memory skip non-boot memory regions */
> +	if ((flags & MEMBLOCK_BOOT) && !memblock_is_boot(m))
> +		return true;
> +
>  	/* skip nomap memory unless we were asked for it explicitly */
>  	if (!(flags & MEMBLOCK_NOMAP) && memblock_is_nomap(m))
>  		return true;
> @@ -1785,6 +1813,15 @@ bool __init_memblock memblock_is_map_memory(phys_addr_t addr)
>  	return !memblock_is_nomap(&memblock.memory.regions[i]);
>  }
>  
> +bool __init_memblock memblock_is_boot_memory(phys_addr_t addr)
> +{
> +	int i = memblock_search(&memblock.memory, addr);
> +
> +	if (i == -1)
> +		return false;
> +	return memblock_is_boot(&memblock.memory.regions[i]);
> +}
> +
>  #ifdef CONFIG_HAVE_MEMBLOCK_NODE_MAP
>  int __init_memblock memblock_search_pfn_nid(unsigned long pfn,
>  			 unsigned long *start_pfn, unsigned long *end_pfn)
> -- 
> 2.7.4
> 

-- 
Sincerely yours,
Mike.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
