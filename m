Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CD7771405
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 10:31:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:In-Reply-To:MIME-Version:
	References:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p76sGS+PdiRSDV28e2mx17J1R4Zf7G05YEiyq3dMbV4=; b=AfjOoC7limG6lp
	W5IlV1CPaIP2ZF/OrwudtyW+Cx9P1u/GskXFxJDKHY0tOHdaJsnpv65dLquQpZz8XnIm3/4Td5S3Q
	dX/IWjoGXFFrBK5PIOSK+m6WRjkdt62RKWqKtZmqv5Gy1oawyUEGxJXGFbI1fQdpkVXrMdahtu0WB
	yibICFp89zLFy1P/rwOwv5URJsGNVoUk1D82VaQwKdGS7xQgm1tmxhJyv5I1Bu1ktajC0ubAOKyl3
	eWX2b/Aczq9lr80tCaFOT4gEMIJTdJ5xBp7XSRhpE0smg0oSR31KXp4A0jk5sAM4o9PnDfh+VaUqz
	220upR8PpUMo/WvAccDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpqCI-0002L6-NE; Tue, 23 Jul 2019 08:30:58 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpqC1-0002JG-QS
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 08:30:43 +0000
Received: from pps.filterd (m0098421.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x6N8S5P6124575
 for <linux-arm-kernel@lists.infradead.org>; Tue, 23 Jul 2019 04:30:38 -0400
Received: from e06smtp02.uk.ibm.com (e06smtp02.uk.ibm.com [195.75.94.98])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2twvatp0bn-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Tue, 23 Jul 2019 04:30:37 -0400
Received: from localhost
 by e06smtp02.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-arm-kernel@lists.infradead.org> from <rppt@linux.ibm.com>;
 Tue, 23 Jul 2019 09:30:36 +0100
Received: from b06avi18878370.portsmouth.uk.ibm.com (9.149.26.194)
 by e06smtp02.uk.ibm.com (192.168.101.132) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Tue, 23 Jul 2019 09:30:31 +0100
Received: from d06av23.portsmouth.uk.ibm.com (d06av23.portsmouth.uk.ibm.com
 [9.149.105.59])
 by b06avi18878370.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP
 id x6N8UU0F33292752
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 23 Jul 2019 08:30:30 GMT
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id C6D34A4057;
 Tue, 23 Jul 2019 08:30:30 +0000 (GMT)
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id BE3A7A4040;
 Tue, 23 Jul 2019 08:30:29 +0000 (GMT)
Received: from rapoport-lnx (unknown [9.148.8.168])
 by d06av23.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
 Tue, 23 Jul 2019 08:30:29 +0000 (GMT)
Date: Tue, 23 Jul 2019 11:30:27 +0300
From: Mike Rapoport <rppt@linux.ibm.com>
To: Hanjun Guo <guohanjun@huawei.com>
Subject: Re: [PATCH v12 1/2] mm: page_alloc: introduce
 memblock_next_valid_pfn() (again) for arm64
References: <1563861073-47071-1-git-send-email-guohanjun@huawei.com>
 <1563861073-47071-2-git-send-email-guohanjun@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1563861073-47071-2-git-send-email-guohanjun@huawei.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-TM-AS-GCONF: 00
x-cbid: 19072308-0008-0000-0000-000002FFFE8D
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19072308-0009-0000-0000-0000226D8A71
Message-Id: <20190723083027.GB4896@rapoport-lnx>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-07-23_04:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1907230078
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_013041_980488_E76A07F3 
X-CRM114-Status: GOOD (  39.26  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.158.5 listed in list.dnswl.org]
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
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, Jia He <hejianet@gmail.com>,
 Andrew Morton <akpm@linux-foundation.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 23, 2019 at 01:51:12PM +0800, Hanjun Guo wrote:
> From: Jia He <hejianet@gmail.com>
> 
> Commit b92df1de5d28 ("mm: page_alloc: skip over regions of invalid pfns
> where possible") optimized the loop in memmap_init_zone(). But it causes
> possible panic on x86 due to specific memory mapping on x86_64 which will
> skip valid pfns as well, so Daniel Vacek reverted it later.
> 
> But as suggested by Daniel Vacek, it is fine to using memblock to skip
> gaps and finding next valid frame with CONFIG_HAVE_ARCH_PFN_VALID.
> 
> Daniel said:
> "On arm and arm64, memblock is used by default. But generic version of
> pfn_valid() is based on mem sections and memblock_next_valid_pfn() does
> not always return the next valid one but skips more resulting in some
> valid frames to be skipped (as if they were invalid). And that's why
> kernel was eventually crashing on some !arm machines."

I think that the crash on x86 was not related to CONFIG_HAVE_ARCH_PFN_VALID
but rather to the x86 way to setup memblock.  Some of the x86 reserved
memory areas were never added to memblock.memory, which makes memblock's
view of the physical memory incomplete and that's why
memblock_next_valid_pfn() could skip valid PFNs on x86.

> Introduce a new config option CONFIG_HAVE_MEMBLOCK_PFN_VALID and only
> selected for arm64, using the new config option to guard the
> memblock_next_valid_pfn().
 
As far as I can tell, the memblock_next_valid_pfn() should work on most
architectures and not only on ARM. For sure there is should be no
dependency between CONFIG_HAVE_ARCH_PFN_VALID and memblock_next_valid_pfn().

I believe that the configuration option to guard memblock_next_valid_pfn()
should be opt-out and that only x86 will require it.

> This was tested on a HiSilicon Kunpeng920 based ARM64 server, the speedup
> is pretty impressive for bootmem_init() at boot:
> 
> with 384G memory,
> before: 13310ms
> after:  1415ms
> 
> with 1T memory,
> before: 20s
> after:  2s
> 
> Suggested-by: Daniel Vacek <neelx@redhat.com>
> Signed-off-by: Jia He <hejianet@gmail.com>
> Signed-off-by: Hanjun Guo <guohanjun@huawei.com>
> ---
>  arch/arm64/Kconfig     |  1 +
>  include/linux/mmzone.h |  9 +++++++++
>  mm/Kconfig             |  3 +++
>  mm/memblock.c          | 31 +++++++++++++++++++++++++++++++
>  mm/page_alloc.c        |  4 +++-
>  5 files changed, 47 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 697ea0510729..058eb26579be 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -893,6 +893,7 @@ config ARCH_FLATMEM_ENABLE
>  
>  config HAVE_ARCH_PFN_VALID
>  	def_bool y
> +	select HAVE_MEMBLOCK_PFN_VALID
>
>  config HW_PERF_EVENTS
>  	def_bool y
> diff --git a/include/linux/mmzone.h b/include/linux/mmzone.h
> index 70394cabaf4e..24cb6bdb1759 100644
> --- a/include/linux/mmzone.h
> +++ b/include/linux/mmzone.h
> @@ -1325,6 +1325,10 @@ static inline int pfn_present(unsigned long pfn)
>  #endif
>  
>  #define early_pfn_valid(pfn)	pfn_valid(pfn)
> +#ifdef CONFIG_HAVE_MEMBLOCK_PFN_VALID
> +extern unsigned long memblock_next_valid_pfn(unsigned long pfn);
> +#define next_valid_pfn(pfn)	memblock_next_valid_pfn(pfn)

Please make it 'static inline' and move out of '#ifdef CONFIG_SPARSEMEM'

> +#endif
>  void sparse_init(void);
>  #else
>  #define sparse_init()	do {} while (0)
> @@ -1347,6 +1351,11 @@ struct mminit_pfnnid_cache {
>  #define early_pfn_valid(pfn)	(1)
>  #endif
>  
> +/* fallback to default definitions */
> +#ifndef next_valid_pfn
> +#define next_valid_pfn(pfn)	(pfn + 1)

static inline as well.

> +#endif
> +
>  void memory_present(int nid, unsigned long start, unsigned long end);
>  
>  /*
> diff --git a/mm/Kconfig b/mm/Kconfig
> index f0c76ba47695..c578374b6413 100644
> --- a/mm/Kconfig
> +++ b/mm/Kconfig
> @@ -132,6 +132,9 @@ config HAVE_MEMBLOCK_NODE_MAP
>  config HAVE_MEMBLOCK_PHYS_MAP
>  	bool
>  
> +config HAVE_MEMBLOCK_PFN_VALID
> +	bool
> +
>  config HAVE_GENERIC_GUP
>  	bool
>  
> diff --git a/mm/memblock.c b/mm/memblock.c
> index 7d4f61ae666a..d57ba51bb9cd 100644
> --- a/mm/memblock.c
> +++ b/mm/memblock.c
> @@ -1251,6 +1251,37 @@ int __init_memblock memblock_set_node(phys_addr_t base, phys_addr_t size,
>  	return 0;
>  }
>  #endif /* CONFIG_HAVE_MEMBLOCK_NODE_MAP */
> +
> +#ifdef CONFIG_HAVE_MEMBLOCK_PFN_VALID
> +unsigned long __init_memblock memblock_next_valid_pfn(unsigned long pfn)
> +{
> +	struct memblock_type *type = &memblock.memory;
> +	unsigned int right = type->cnt;
> +	unsigned int mid, left = 0;
> +	phys_addr_t addr = PFN_PHYS(++pfn);
> +
> +	do {
> +		mid = (right + left) / 2;
> +
> +		if (addr < type->regions[mid].base)
> +			right = mid;
> +		else if (addr >= (type->regions[mid].base +
> +				  type->regions[mid].size))
> +			left = mid + 1;
> +		else {
> +			/* addr is within the region, so pfn is valid */
> +			return pfn;
> +		}
> +	} while (left < right);
> +

We have memblock_search() for this.

> +	if (right == type->cnt)
> +		return -1UL;
> +	else
> +		return PHYS_PFN(type->regions[right].base);
> +}
> +EXPORT_SYMBOL(memblock_next_valid_pfn);
> +#endif /* CONFIG_HAVE_MEMBLOCK_PFN_VALID */
> +
>  #ifdef CONFIG_DEFERRED_STRUCT_PAGE_INIT
>  /**
>   * __next_mem_pfn_range_in_zone - iterator for for_each_*_range_in_zone()
> diff --git a/mm/page_alloc.c b/mm/page_alloc.c
> index d66bc8abe0af..70933c40380a 100644
> --- a/mm/page_alloc.c
> +++ b/mm/page_alloc.c
> @@ -5811,8 +5811,10 @@ void __meminit memmap_init_zone(unsigned long size, int nid, unsigned long zone,
>  		 * function.  They do not exist on hotplugged memory.
>  		 */
>  		if (context == MEMMAP_EARLY) {
> -			if (!early_pfn_valid(pfn))
> +			if (!early_pfn_valid(pfn)) {
> +				pfn = next_valid_pfn(pfn) - 1;
>  				continue;
> +			}
>  			if (!early_pfn_in_nid(pfn, nid))
>  				continue;
>  			if (overlap_memmap_init(zone, &pfn))
> -- 
> 2.19.1
> 

-- 
Sincerely yours,
Mike.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
