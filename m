Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 485A71CBA73
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 May 2020 00:10:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GI48DLcrexuuVsn/47ZjLwapSbFOMBI8PY429DYzTwA=; b=P+u2lPdQq8hPZJ
	WoXBUy2OQjKyFjMguBUO8vzLQblPOZO4zsdlQdv2gPUWavuv2mZybKD0m1jtdyRHwzHvgDgw6Wf0R
	2MAyXoDHS1BRXV0YDvFB8PNnehAtJraoZ+yb3UK+dJN6yNsZAulIH0QWNCKGyqixulNo9Nt7Pbj7+
	G0TxogZZVSV3kNnNlbSNMd/BJrMwV6EaVasz70AaqmDdHOvAzZGCsYP8cQiQfHiHBBwZRs5ENvWCe
	mUa0lkMxFSKaHw2VCWJCC6pxn2xQsszx42WmRq+ZWG8s0ZFh61BkcPVPQtmIOcyVB2INxgbUsUsbM
	pFG3w6wT9Tmu7ylk4krg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXBBt-00077z-Tk; Fri, 08 May 2020 22:09:57 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXBBm-000772-NC
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 22:09:52 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 048M3pT7098830;
 Fri, 8 May 2020 22:09:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2020-01-29;
 bh=e9WYgBCMI0KkS01+P+GDEHtd1NK7qTQIe6h+j1aFO7I=;
 b=TgFaCClTZHf+stqcvIDP2Bl7jaksNxPDQr/w7CfLJoVEUXZKyCTP2NEcQFg77e9AybrD
 Vf3+/kQREb4a5vA306kuIVOO5vtgIE6GV5q+50/4zyNOo7C2bP53T8T+oBbTx0Ap5ofn
 OLkEIVLferlceZkGLq4GYWDgX+ZQWuM6nC37AcdBVOodFt1Zk/pSXB4OtYMO70kTKnd0
 jKYbUxZvFKXvZ37VCrIwmcEWl/YqsZeZtfOaOUcdLlTd8fy/TKudRInZ/zgUQ3ymKxs+
 rUqg2uj68Trkzvsxn9tnGBIqjAXsJifHxtdzQ1c8oU/nEoUFgn+IqOUHxd4HjqSmjJ5r jQ== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2120.oracle.com with ESMTP id 30vtexwdn4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 08 May 2020 22:09:40 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 048M6tFL128051;
 Fri, 8 May 2020 22:09:39 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3020.oracle.com with ESMTP id 30vtehmy9e-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 08 May 2020 22:09:39 +0000
Received: from abhmp0012.oracle.com (abhmp0012.oracle.com [141.146.116.18])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 048M9c41015658;
 Fri, 8 May 2020 22:09:38 GMT
Received: from [192.168.2.157] (/71.63.128.209)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 08 May 2020 15:09:37 -0700
Subject: Re: [PATCH V3 1/3] arm64/mm: Drop __HAVE_ARCH_HUGE_PTEP_GET
To: Anshuman Khandual <anshuman.khandual@arm.com>, linux-mm@kvack.org,
 akpm@linux-foundation.org
References: <1588907271-11920-1-git-send-email-anshuman.khandual@arm.com>
 <1588907271-11920-2-git-send-email-anshuman.khandual@arm.com>
From: Mike Kravetz <mike.kravetz@oracle.com>
Message-ID: <7db44202-0d21-d8fb-6998-0210508a488a@oracle.com>
Date: Fri, 8 May 2020 15:09:34 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <1588907271-11920-2-git-send-email-anshuman.khandual@arm.com>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9615
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 adultscore=0
 phishscore=0 mlxlogscore=999 bulkscore=0 malwarescore=0 spamscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2005080187
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9615
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 lowpriorityscore=0 adultscore=0
 spamscore=0 suspectscore=0 bulkscore=0 priorityscore=1501 malwarescore=0
 phishscore=0 impostorscore=0 mlxscore=0 mlxlogscore=999 clxscore=1015
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2005080187
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_150950_845638_45C0F474 
X-CRM114-Status: GOOD (  24.52  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [156.151.31.85 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/7/20 8:07 PM, Anshuman Khandual wrote:
> Platform specific huge_ptep_get() is required only when fetching the huge
> PTE involves more than just dereferencing the page table pointer. This is
> not the case on arm64 platform. Hence huge_ptep_pte() can be dropped along
> with it's __HAVE_ARCH_HUGE_PTEP_GET subscription. Before that, it updates
> the generic huge_ptep_get() with READ_ONCE() which will prevent known page
> table issues with THP on arm64.
> 
> https://lore.kernel.org/r/1506527369-19535-1-git-send-email-will.deacon@arm.com/
> 
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Andrew Morton <akpm@linux-foundation.org>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-mm@kvack.org
> Cc: linux-kernel@vger.kernel.org
> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
> ---
>  arch/arm64/include/asm/hugetlb.h | 6 ------
>  include/asm-generic/hugetlb.h    | 2 +-
>  2 files changed, 1 insertion(+), 7 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/hugetlb.h b/arch/arm64/include/asm/hugetlb.h
> index 2eb6c234d594..b88878ddc88b 100644
> --- a/arch/arm64/include/asm/hugetlb.h
> +++ b/arch/arm64/include/asm/hugetlb.h
> @@ -17,12 +17,6 @@
>  extern bool arch_hugetlb_migration_supported(struct hstate *h);
>  #endif
>  
> -#define __HAVE_ARCH_HUGE_PTEP_GET
> -static inline pte_t huge_ptep_get(pte_t *ptep)
> -{
> -	return READ_ONCE(*ptep);
> -}
> -
>  static inline int is_hugepage_only_range(struct mm_struct *mm,
>  					 unsigned long addr, unsigned long len)
>  {
> diff --git a/include/asm-generic/hugetlb.h b/include/asm-generic/hugetlb.h
> index 822f433ac95c..40f85decc2ee 100644
> --- a/include/asm-generic/hugetlb.h
> +++ b/include/asm-generic/hugetlb.h
> @@ -122,7 +122,7 @@ static inline int huge_ptep_set_access_flags(struct vm_area_struct *vma,
>  #ifndef __HAVE_ARCH_HUGE_PTEP_GET
>  static inline pte_t huge_ptep_get(pte_t *ptep)
>  {
> -	return *ptep;
> +	return READ_ONCE(*ptep);
>  }
>  #endif

I know you made this change in response to Will's comment.  And, since
changes were made to consistently use READ_ONCE in arm64 code, it makes
sense for that architecture.

However, with this change to generic code, you introduce READ_ONCE to
other architectures where it was not used before.  Could this possibly
introduce inconsistencies in their use of READ_ONCE?  To be honest, I
am not very good at identifying any possible issues this could cause.
However, it does seem possible.

Will was nervous about dropping this from arm64.  I'm just a little nervous
about adding it to other architectures.
-- 
Mike Kravetz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
