Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01EF8111DD
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 05:29:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fP0FANoEduaqe24+W4LaBQcEEHt5lmPjGvl4cUlSTb4=; b=XCn9Adsr2lnM7D
	S1uR5NY1FMvHf4sM6hPzkJalKYPEraZNZNiStsUj/+uDbPhgaXIq79rXiFVza5sayiY828v8qdOoX
	WIAtaAs3R1H3JE6egFN+d+UTgcEeUtUwAVAvXe0rGHiDYGgH1kbwfEHKt4VPnIvW8ZTmOy4SlMGN2
	wreOg5M3BTn3B5RmosFyTdc/CCAkckiYZfpteIrlYKMEhLqRynFw4z9dlp3pw8Ooquyi6UmU+i9wR
	ZmkfESN59UjBO+LiA7difUYSdFFSxosixCDd8tSkpHDlM1WD+krVRKGlr4KiAbwchwdjTdhoVnyRD
	XEzCKZdzzIjWc8b3saWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM2PI-0003Wc-CL; Thu, 02 May 2019 03:29:12 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM2PB-0003Vs-MS
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 03:29:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6474F374;
 Wed,  1 May 2019 20:29:02 -0700 (PDT)
Received: from [10.163.1.85] (unknown [10.163.1.85])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D50263F557;
 Wed,  1 May 2019 20:29:00 -0700 (PDT)
Subject: Re: [PATCH V2] arm64/mm: Fix pgtable page offset address in
 [pud|pmd]_free_[pmd|pte]_page
To: Catalin Marinas <catalin.marinas@arm.com>
References: <1556595839-9282-1-git-send-email-anshuman.khandual@arm.com>
 <20190430161759.GI29799@arrakis.emea.arm.com>
 <4f2d0ad4-7453-1851-4e12-f83a9226a6ef@arm.com>
 <20190501111416.GD58847@arrakis.emea.arm.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <8ea03724-5939-9c0e-5adb-a588069e5e2a@arm.com>
Date: Thu, 2 May 2019 08:59:06 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190501111416.GD58847@arrakis.emea.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_202905_741870_2948C194 
X-CRM114-Status: GOOD (  25.42  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
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



On 05/01/2019 04:44 PM, Catalin Marinas wrote:
> On Wed, May 01, 2019 at 10:15:49AM +0530, Anshuman Khandual wrote:
>> On 04/30/2019 09:47 PM, Catalin Marinas wrote:
>>> On Tue, Apr 30, 2019 at 09:13:59AM +0530, Anshuman Khandual wrote:
>>>> @@ -1026,8 +1028,10 @@ int pud_free_pmd_page(pud_t *pudp, unsigned long addr)
>>>>  		return 1;
>>>>  	}
>>>>  
>>>> -	table = pmd_offset(pudp, addr);
>>>> -	pmdp = table;
>>>> +	VM_WARN_ONCE(!IS_ALIGNED(addr, PUD_SIZE),
>>>> +		"%s: unaligned address 0x%016llx\n", __func__, addr);
>>>> +	table = pmd_offset(pudp, 0UL);
>>>> +	pmdp = pmd_offset(pudp, addr);
>>>
>>> Why does pmdp need to use addr? We are freeing the whole pmd page, so I
>>> don't think pmdp should be different from table here.
>>
>> pmd_offset(pudp, addr) and pmd_offset(pudp, 0UL) would evaluate the same if
>> the input addr is PMD_SIZE aligned. The problem just arises when it is not.
>>
>> The Idea is that the wrong input should be allowed to have adverse affect
>> all the way without any corrections. Now because intermediate 'next' and
>> 'end' are derived from wrong input 'addr' in the first place, all 'pmdp'
>> start and intermediate values should just follow without any corrections
>> starting at pmd_offset(pudp, addr).
>>
>> The new warning here just informs about the fact that the iteration range is
>> going to be wrong (as well as everything else probably) because the input
>> address is not aligned. 'table = pmd_offset(pudp, 0UL)' will prevent it from
>> hitting unaligned BUG_ON() in pmd_free(). 
>>
>> Using 'pmdp = pmd_offset(pudp, 0UL)' for iterations will be sort of fixing
>> or aligning the wrong input 'addr' which we always wanted to avoid.
> 
> So you want to hide the BUG_ON in pmd_free() by changing this to a
> warning in the caller (pud_free_pmd_page()) and sanitising the value
> passed to pmd_free(). I don't see how this is different from just
> turning the BUG_ON into a warning in pmd_free() directly (which I don't
> think we should, see below).
> 
> It looks to me like we should either fix the callers in ioremap.c (e.g.
> ioremap_try_huge_pud() returning 0 if addr is not PUD_SIZE aligned, not
> just phys_addr) or return 0 in pud_free_pmd_page() with a similar check.
> I'd go for changing ioremap.c since x86 doesn't have such check either.

Sounds good. Will change ioremap_try_huge_[pud|pmd] to include alignment
checks for 'addr' along with existing 'phys_addr'. But still bit inclined
towards having XXX_offset(XXX, 0UL) for fetching the pgtable page address
which is different than XXX_offset(XXX, addr) for iteration purpose unless
if you have concerns.

> 
> IIUC currently if we pass a PUD_SIZE range to ioremap_page_range() where
> phys_addr is PUD_SIZE aligned but the virtual addr is not, we'd end up
> randomly freeing the pmd page that potentially still contains valid
> mappings. Your patch just hides the problem by turning the BUG_ON into a
> warning but doesn't solve it.

Right. This patch tried to use XXX_offset(XXX, 0UL) which is a better way
fetching the pgtable page address but that does not solve the problem related
to unaligned input virtual address. VM_WARN_ONCE() just shifts the problem
bit earlier without solving it as you have pointed out.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
