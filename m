Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E86DB71408
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 10:34:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:In-Reply-To:MIME-Version:
	References:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J/IdKeyPGL5GndRuKMtFfkrdmpggWwZvdaZZjjNMjq0=; b=M8nPv+y/C4nVYu
	ilQ3GSWp3sNjX3zvJUfrUNNkgkkTcmExXy++etY39w2rIOjNCJl2ELPIv9kIj8PA6TOkt7/gcmMFX
	o44r1qlcb1z/4hqrmHFwwUPMQ9XAM7Csu+LYuUgQYq1LFfbKBCG1Umcq0Q9vsqv0nR8x4HBQqe4oF
	Yde5vGm6zpXTKPqxe6ZycaMhCdljOMOelLXelkZ7fucXpRa+Uv5nwjjR1nGpQCNm25Brh+wAOK04e
	8mLsnpY4v5WHiM7QWMRNkH+Rzoa2AIIZg7b4jRs8NZOuGOieJ8BFAGPebrR07mq3CxmJPZvZrsDKy
	guW3n47e/9wUU2HNt+aQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpqFV-0002g1-Se; Tue, 23 Jul 2019 08:34:17 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpqFH-0002fi-Nr
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 08:34:05 +0000
Received: from pps.filterd (m0098417.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x6N8X7Ha109623
 for <linux-arm-kernel@lists.infradead.org>; Tue, 23 Jul 2019 04:34:03 -0400
Received: from e06smtp03.uk.ibm.com (e06smtp03.uk.ibm.com [195.75.94.99])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2twwuf2hh8-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Tue, 23 Jul 2019 04:34:02 -0400
Received: from localhost
 by e06smtp03.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-arm-kernel@lists.infradead.org> from <rppt@linux.ibm.com>;
 Tue, 23 Jul 2019 09:34:01 +0100
Received: from b06cxnps4076.portsmouth.uk.ibm.com (9.149.109.198)
 by e06smtp03.uk.ibm.com (192.168.101.133) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Tue, 23 Jul 2019 09:33:58 +0100
Received: from d06av21.portsmouth.uk.ibm.com (d06av21.portsmouth.uk.ibm.com
 [9.149.105.232])
 by b06cxnps4076.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x6N8XveP43909290
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 23 Jul 2019 08:33:57 GMT
Received: from d06av21.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 01C1352051;
 Tue, 23 Jul 2019 08:33:57 +0000 (GMT)
Received: from rapoport-lnx (unknown [9.148.8.168])
 by d06av21.portsmouth.uk.ibm.com (Postfix) with ESMTPS id 47CAC5205F;
 Tue, 23 Jul 2019 08:33:56 +0000 (GMT)
Date: Tue, 23 Jul 2019 11:33:54 +0300
From: Mike Rapoport <rppt@linux.ibm.com>
To: Hanjun Guo <guohanjun@huawei.com>
Subject: Re: [PATCH v12 2/2] mm: page_alloc: reduce unnecessary binary search
 in memblock_next_valid_pfn
References: <1563861073-47071-1-git-send-email-guohanjun@huawei.com>
 <1563861073-47071-3-git-send-email-guohanjun@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1563861073-47071-3-git-send-email-guohanjun@huawei.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-TM-AS-GCONF: 00
x-cbid: 19072308-0012-0000-0000-000003356235
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19072308-0013-0000-0000-0000216EF17F
Message-Id: <20190723083353.GC4896@rapoport-lnx>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-07-23_04:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=982 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1907230079
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_013403_901768_4C1E8F14 
X-CRM114-Status: GOOD (  31.51  )
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

On Tue, Jul 23, 2019 at 01:51:13PM +0800, Hanjun Guo wrote:
> From: Jia He <hejianet@gmail.com>
> 
> After skipping some invalid pfns in memmap_init_zone(), there is still
> some room for improvement.
> 
> E.g. if pfn and pfn+1 are in the same memblock region, we can simply pfn++
> instead of doing the binary search in memblock_next_valid_pfn.
> 
> Furthermore, if the pfn is in a gap of two memory region, skip to next
> region directly to speedup the binary search.

How much speed up do you see with this improvements relatively to simple
binary search in memblock_next_valid_pfn()?
  
> Signed-off-by: Jia He <hejianet@gmail.com>
> Signed-off-by: Hanjun Guo <guohanjun@huawei.com>
> ---
>  mm/memblock.c | 37 +++++++++++++++++++++++++++++++------
>  1 file changed, 31 insertions(+), 6 deletions(-)
> 
> diff --git a/mm/memblock.c b/mm/memblock.c
> index d57ba51bb9cd..95d5916716a0 100644
> --- a/mm/memblock.c
> +++ b/mm/memblock.c
> @@ -1256,28 +1256,53 @@ int __init_memblock memblock_set_node(phys_addr_t base, phys_addr_t size,
>  unsigned long __init_memblock memblock_next_valid_pfn(unsigned long pfn)
>  {
>  	struct memblock_type *type = &memblock.memory;
> +	struct memblock_region *regions = type->regions;
>  	unsigned int right = type->cnt;
>  	unsigned int mid, left = 0;
> +	unsigned long start_pfn, end_pfn, next_start_pfn;
>  	phys_addr_t addr = PFN_PHYS(++pfn);
> +	static int early_region_idx __initdata_memblock = -1;
>  
> +	/* fast path, return pfn+1 if next pfn is in the same region */
> +	if (early_region_idx != -1) {
> +		start_pfn = PFN_DOWN(regions[early_region_idx].base);
> +		end_pfn = PFN_DOWN(regions[early_region_idx].base +
> +				regions[early_region_idx].size);
> +
> +		if (pfn >= start_pfn && pfn < end_pfn)
> +			return pfn;
> +
> +		/* try slow path */
> +		if (++early_region_idx == type->cnt)
> +			goto slow_path;
> +
> +		next_start_pfn = PFN_DOWN(regions[early_region_idx].base);
> +
> +		if (pfn >= end_pfn && pfn <= next_start_pfn)
> +			return next_start_pfn;
> +	}
> +
> +slow_path:
> +	/* slow path, do the binary searching */
>  	do {
>  		mid = (right + left) / 2;
>  
> -		if (addr < type->regions[mid].base)
> +		if (addr < regions[mid].base)
>  			right = mid;
> -		else if (addr >= (type->regions[mid].base +
> -				  type->regions[mid].size))
> +		else if (addr >= (regions[mid].base + regions[mid].size))
>  			left = mid + 1;
>  		else {
> -			/* addr is within the region, so pfn is valid */
> +			early_region_idx = mid;
>  			return pfn;
>  		}
>  	} while (left < right);
>  
>  	if (right == type->cnt)
>  		return -1UL;
> -	else
> -		return PHYS_PFN(type->regions[right].base);
> +
> +	early_region_idx = right;
> +
> +	return PHYS_PFN(regions[early_region_idx].base);
>  }
>  EXPORT_SYMBOL(memblock_next_valid_pfn);
>  #endif /* CONFIG_HAVE_MEMBLOCK_PFN_VALID */
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
