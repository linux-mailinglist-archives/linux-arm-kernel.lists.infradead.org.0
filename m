Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5171E10502
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 06:46:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gNsh//JsovsPYrMj3X6dZUg/zytOOCFyWCz+il4zdak=; b=EvgXCJGJFZ9pcY
	9JzEWFvqUoPu0qh/cKtAbGs4po/1ZlgJ5j+3tV2oYbg5GzBK7TbVY72WfZwLQLvq/0jTJZrPYxvTP
	2RtyNhnhMQOhuvhdGWYE6cSNqAYM6MbazzErJ0/88HmLzJuu7t50ZoO+MCNTsOOtoJRXND08u1F3N
	UCtcr95OK1UHDpZDYIhcEPu5FWX5TlGnLpF07RCrxqmPfYwr/2Ch650jUc2JYr2ErMmuvhyLadNjM
	yF3ltFoXfC7DCfauNQzqmhAX8yYkIV3iEmDnUqFRFOpCt/JClFlRmRqQ3fXoMl48doKvJ0eYyRhdv
	+uDrkRFysgE4+A/ObCpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLh82-0002pW-TE; Wed, 01 May 2019 04:45:58 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLh7w-0002p7-R4
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 04:45:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3DA3480D;
 Tue, 30 Apr 2019 21:45:50 -0700 (PDT)
Received: from [10.163.1.85] (unknown [10.163.1.85])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CF9EB3F719;
 Tue, 30 Apr 2019 21:45:47 -0700 (PDT)
Subject: Re: [PATCH V2] arm64/mm: Fix pgtable page offset address in
 [pud|pmd]_free_[pmd|pte]_page
To: Catalin Marinas <catalin.marinas@arm.com>
References: <1556595839-9282-1-git-send-email-anshuman.khandual@arm.com>
 <20190430161759.GI29799@arrakis.emea.arm.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <4f2d0ad4-7453-1851-4e12-f83a9226a6ef@arm.com>
Date: Wed, 1 May 2019 10:15:49 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190430161759.GI29799@arrakis.emea.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_214552_883651_7EC3BDD4 
X-CRM114-Status: GOOD (  17.01  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, will.deacon@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 04/30/2019 09:47 PM, Catalin Marinas wrote:
> On Tue, Apr 30, 2019 at 09:13:59AM +0530, Anshuman Khandual wrote:
>> @@ -1026,8 +1028,10 @@ int pud_free_pmd_page(pud_t *pudp, unsigned long addr)
>>  		return 1;
>>  	}
>>  
>> -	table = pmd_offset(pudp, addr);
>> -	pmdp = table;
>> +	VM_WARN_ONCE(!IS_ALIGNED(addr, PUD_SIZE),
>> +		"%s: unaligned address 0x%016llx\n", __func__, addr);
>> +	table = pmd_offset(pudp, 0UL);
>> +	pmdp = pmd_offset(pudp, addr);
> 
> Why does pmdp need to use addr? We are freeing the whole pmd page, so I
> don't think pmdp should be different from table here.

pmd_offset(pudp, addr) and pmd_offset(pudp, 0UL) would evaluate the same if
the input addr is PMD_SIZE aligned. The problem just arises when it is not.

The Idea is that the wrong input should be allowed to have adverse affect
all the way without any corrections. Now because intermediate 'next' and
'end' are derived from wrong input 'addr' in the first place, all 'pmdp'
start and intermediate values should just follow without any corrections
starting at pmd_offset(pudp, addr).

The new warning here just informs about the fact that the iteration range is
going to be wrong (as well as everything else probably) because the input
address is not aligned. 'table = pmd_offset(pudp, 0UL)' will prevent it from
hitting unaligned BUG_ON() in pmd_free(). 

Using 'pmdp = pmd_offset(pudp, 0UL)' for iterations will be sort of fixing
or aligning the wrong input 'addr' which we always wanted to avoid.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
