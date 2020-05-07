Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FFDE1C7E65
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 02:16:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W/kp9rloKYBAkCjpQw0mBxE/4ytUdHLDJEN83M4RtUo=; b=GmM+47h0pvYfJW
	/dPtQ3AV3JoSSMU4oODVl9lzBWJIZMbMHYEBF/xJAxrlFvBPRAVXNgvfQuugUgOIAOAbM5evQAxcF
	Qt6tJUBHg8qwfcgMLLL+I3p4Bc5+tO0qEVrzeBjMH5SKrgTF0V0rwffHUjVouXfeGbt+Y6FwfcQdT
	/pTCzoYzaD9moL3xpnDtjqnZASkTghFfauIm+fciOYzW5+9zdpBwW0btDealzUBpVPjbDguaJy5GQ
	085tlI8Gm3iaY4AdaA4icUoXEQs3gqQJyaJ2LJFHuyJC1sCf4CBF7NYn4Orvj0KkwTjnecQQcjxkk
	uFN4o3bnm/9EREBEBJKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWUD3-0008Kl-Jw; Thu, 07 May 2020 00:16:17 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWUCw-0008K3-F0
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 00:16:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1588810569;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=dSCA9RBsimoObRbae5ozwK5uzV2+0s8IdfYdBDLhAxc=;
 b=DklHHXX/206wiasduZmnOLyYBtK4QtMV6RTOmHLVCQT9ArbwPEGakADJXLTI0axlb/7RBx
 Ov/DebjJOLZxXH9yrpfIHt/a8xQ/I0rxVRVL+lGJZ6JTphxPWNN3tsoOEKNFLdLQCr7leY
 VwmAlnaKFlciexwDIO4P5vV/XvWSSf0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-384-3aBf_r36NcKdIyBHyYDctA-1; Wed, 06 May 2020 20:16:07 -0400
X-MC-Unique: 3aBf_r36NcKdIyBHyYDctA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 915801005510;
 Thu,  7 May 2020 00:16:05 +0000 (UTC)
Received: from localhost.localdomain (vpn2-54-199.bne.redhat.com
 [10.64.54.199])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 152475C1D4;
 Thu,  7 May 2020 00:16:02 +0000 (UTC)
Subject: Re: [PATCH] arm64/mm: Remove add_huge_page_size()
To: Will Deacon <will@kernel.org>,
 Anshuman Khandual <anshuman.khandual@arm.com>
References: <20200506064635.20114-1-gshan@redhat.com>
 <fa3ad75d-9c4d-d6c9-1664-53b4c9770c6b@arm.com>
 <20200506071927.GB7021@willie-the-truck>
From: Gavin Shan <gshan@redhat.com>
Message-ID: <e13bb496-7988-e096-2131-78c004231f27@redhat.com>
Date: Thu, 7 May 2020 10:15:59 +1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <20200506071927.GB7021@willie-the-truck>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_171610_584963_4D3A9BA5 
X-CRM114-Status: GOOD (  16.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.120 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Reply-To: Gavin Shan <gshan@redhat.com>
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, shan.gavin@gmail.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/6/20 5:19 PM, Will Deacon wrote:
> On Wed, May 06, 2020 at 12:36:43PM +0530, Anshuman Khandual wrote:
>>
>>
>> On 05/06/2020 12:16 PM, Gavin Shan wrote:
>>> The function add_huge_page_size(), wrapper of hugetlb_add_hstate(),
>>> avoids to register duplicated huge page states for same size. However,
>>> the same logic has been included in hugetlb_add_hstate(). So it seems
>>> unnecessary to keep add_huge_page_size() and this just removes it.
>>
>> Makes sense.
>>
>>>
>>> Signed-off-by: Gavin Shan <gshan@redhat.com>
>>> ---
>>>   arch/arm64/mm/hugetlbpage.c | 18 +++++-------------
>>>   1 file changed, 5 insertions(+), 13 deletions(-)
>>>
>>> diff --git a/arch/arm64/mm/hugetlbpage.c b/arch/arm64/mm/hugetlbpage.c
>>> index bbeb6a5a6ba6..ed7530413941 100644
>>> --- a/arch/arm64/mm/hugetlbpage.c
>>> +++ b/arch/arm64/mm/hugetlbpage.c
>>> @@ -441,22 +441,14 @@ void huge_ptep_clear_flush(struct vm_area_struct *vma,
>>>   	clear_flush(vma->vm_mm, addr, ptep, pgsize, ncontig);
>>>   }
>>>   
>>> -static void __init add_huge_page_size(unsigned long size)
>>> -{
>>> -	if (size_to_hstate(size))
>>> -		return;
>>> -
>>> -	hugetlb_add_hstate(ilog2(size) - PAGE_SHIFT);
>>> -}
>>> -
>>>   static int __init hugetlbpage_init(void)
>>>   {
>>>   #ifdef CONFIG_ARM64_4K_PAGES
>>> -	add_huge_page_size(PUD_SIZE);
>>> +	hugetlb_add_hstate(PUD_SHIFT - PAGE_SHIFT);
>>>   #endif
>>> -	add_huge_page_size(CONT_PMD_SIZE);
>>> -	add_huge_page_size(PMD_SIZE);
>>> -	add_huge_page_size(CONT_PTE_SIZE);
>>> +	hugetlb_add_hstate(CONT_PMD_SHIFT + PMD_SHIFT - PAGE_SHIFT);
>>> +	hugetlb_add_hstate(PMD_SHIFT - PAGE_SHIFT);
>>> +	hugetlb_add_hstate(CONT_PTE_SHIFT);
> 
> Something similar has already been done in linux-next.
> 

Thanks, Will. I didn't check linux-next before posting this patch.
Please ignore it then :)

>> Should these page order values be converted into macros instead. Also
>> we should probably keep (CONT_PTE_SHIFT + PAGE_SHIFT - PAGE_SHIFT) as
>> is to make things more clear.
> 
> I think the real confusion stems from us not being consistent with your
> *_SHIFT definitions on arm64. It's madness for CONT_PTE_SHIFT to be smaller
> than PAGE_SHIFT imo, but it's just cosmetic I guess.
> 

Yeah, Do you want me to post a patch, to fix it?

> Will
> 

Thanks,
Gavin


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
