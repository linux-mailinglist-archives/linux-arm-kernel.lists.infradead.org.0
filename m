Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D30D1A8071
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 16:53:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fhqLkgHAn6h80PHT+bmtf1ODSm4sHndL+ZzmbkRgkqc=; b=jecAZG755Zyl5E
	1+h1Aihv+woJn4CYbel632KEU934bfgbQqSMaRud3aX7m0PKRoWLjueE9KMBS0HbNgxNX8J6baLmM
	x2x0iUCGo6XtZmHzvEP75frtTQUryQb1qMFk9zGmCg07pPchi3pXw+uxes+oH9Fdh6Mnwpx64EAx0
	bSmW3ieiKYa1EZX1WMdpP8Jw5UqbrZJXv8YqYjzv7ZLSo08hJsIhnNWZco6FzzN1jpZ/m6lJPJzKL
	glrVCdCGgALBEbKS8tqRJEcMqfGGBo31y91MhK2lq80m5/EhycskWJ/2Aa1R6Jk8F6Ctn09hWtCG5
	2B4BwjzoXAzd4g90LCwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOMvz-0008Gc-94; Tue, 14 Apr 2020 14:53:07 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOMvq-0008G7-FG
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 14:52:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DFBC130E;
 Tue, 14 Apr 2020 07:52:56 -0700 (PDT)
Received: from [192.168.1.172] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EE19B3F73D;
 Tue, 14 Apr 2020 07:52:55 -0700 (PDT)
Subject: Re: [PATCH 1/5] arm64: vdso: don't free unallocated pages
To: Mark Rutland <mark.rutland@arm.com>
References: <20200414104252.16061-1-mark.rutland@arm.com>
 <20200414104252.16061-2-mark.rutland@arm.com>
 <c5596228-2685-abb3-5ab1-9519759e1f7a@arm.com>
 <20200414132751.GF2486@C02TD0UTHF1T.local>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <8681c958-0fd9-130e-f7bb-99bfd3a027cb@arm.com>
Date: Tue, 14 Apr 2020 15:53:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200414132751.GF2486@C02TD0UTHF1T.local>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_075258_556024_D4762031 
X-CRM114-Status: GOOD (  20.89  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: catalin.marinas@arm.com, will@kernel.org, stable@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 4/14/20 2:27 PM, Mark Rutland wrote:
> On Tue, Apr 14, 2020 at 01:50:38PM +0100, Vincenzo Frascino wrote:
>> Hi Mark,
>>
>> On 4/14/20 11:42 AM, Mark Rutland wrote:
>>> The aarch32_vdso_pages[] array never has entries allocated in the C_VVAR
>>> or C_VDSO slots, and as the array is zero initialized these contain
>>> NULL.
>>>
>>> However in __aarch32_alloc_vdso_pages() when
>>> aarch32_alloc_kuser_vdso_page() fails we attempt to free the page whose
>>> struct page is at NULL, which is obviously nonsensical.
>>
>> Could you please explain why do you think that free(NULL) is "nonsensical"? 
> 
> Regardless of the below, can you please explain why it is sensical? I'm
> struggling to follow your argument here.

free(NULL) is a no-operation ("no action occurs") according to the C standard
(ISO-IEC 9899 paragraph 7.20.3.2). Hence this should not cause any bug if the
allocator is correctly implemented. From what I can see the implementation of
the page allocator honors this assumption.

Since you say it is a bug (providing evidence), we might have to investigate
because probably there is an issue somewhere else.

> 
> * It serves no legitimate purpose. One cannot free a page without a
>   corresponding struct page.
> 
> * It is redundant. Removing the code does not detract from the utility
>   of the remainging code, or make that remaing code more complex.
> 
> * It hinders comprehension of the code. When a developer sees the
>   free_page() they will assume that the page was allocated somewhere,
>   but there is no corresponding allocation as the pointers are never
>   assigned to. Even if the code in question is not harmful to the
>   functional correctness of the code, it is an unnecessary burden to
>   developers.
> 
> * page_to_virt(NULL) does not have a well-defined result, and
>   page_to_virt() should only be called for a valid struct page pointer.
>   The result of page_to_virt(NULL) may not be a pointer into the linear
>   map as would be expected.
> 

Do you know why this is the case? To be compliant with what the page allocator
expects page_to_virt(NULL) should be equal to NULL.

> * free_page(x) calls free_pages(x, 0), which checks virt_addr_valid(x).
>   As page_to_virt(NULL) is not a valid linear map address, this can
>   trigger a VM_BUG_ON()
> 

free_pages(x, 0) checks virt_addr_valid(x) only if "addr != 0" (as per C
standard) which makes me infer what I stated above. But maybe I am missing
something.

[...]
-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
