Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 816A71C2A5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 07:56:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kB0ZfRX4DTAb3LQGaW3tc8VJiwbVggjUHipdkqOnoy8=; b=dd7NDkrP8T9EA2
	s4zBg+Hl7ZBdQBy0XcPxSNPmwqgH0MXoQmCcO7M5acE6DXTVvLTQI2o6eSOzZvV1nJMqDBFWR5kHe
	gjhjXHoGmkU3AiQahVTX4CPaPTbXeSu1uU8SvB0TM1/iaISoEiXWelUwkGzJK0wTQws6VM6BFmivL
	HetGZ2zC9cKqcf3yyUq+UI9sqFcK6blgDJfgeWh8GXj/M6wnZ13q3v6EjVRmTKps/Fqfa0VRLZ9iw
	s/kGuH9as0tO7cQVCQBSQ3Syc+cKmhHs8bzMzI7SJSeMIEfO57gVQSQKQKt4MzZZtsMZKWsrcRtQ9
	cafTYNIeMryMrAf294SA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQQPz-0001Ac-1d; Tue, 14 May 2019 05:56:03 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQQPs-0001AF-VV
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 05:55:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D4DF880D;
 Mon, 13 May 2019 22:55:52 -0700 (PDT)
Received: from [10.163.1.137] (unknown [10.163.1.137])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C1BDE3F703;
 Mon, 13 May 2019 22:55:49 -0700 (PDT)
Subject: Re: [PATCH V3 1/2] mm/ioremap: Check virtual address alignment while
 creating huge mappings
To: "Kani, Toshi" <toshi.kani@hpe.com>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>
References: <1557377177-20695-1-git-send-email-anshuman.khandual@arm.com>
 <1557377177-20695-2-git-send-email-anshuman.khandual@arm.com>
 <f56ab0da9e9f20a7c4c019e629052d0e1aa2ffff.camel@hpe.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <a893db51-c89a-b061-d308-2a3a1f6cc0eb@arm.com>
Date: Tue, 14 May 2019 11:25:59 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <f56ab0da9e9f20a7c4c019e629052d0e1aa2ffff.camel@hpe.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_225557_019431_05ECB011 
X-CRM114-Status: GOOD (  17.95  )
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
Cc: "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>,
 "cpandya@codeaurora.org" <cpandya@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 05/14/2019 03:56 AM, Kani, Toshi wrote:
> On Thu, 2019-05-09 at 10:16 +0530, Anshuman Khandual wrote:
>> Virtual address alignment is essential in ensuring correct clearing for all
>> intermediate level pgtable entries and freeing associated pgtable pages. An
>> unaligned address can end up randomly freeing pgtable page that potentially
>> still contains valid mappings. Hence also check it's alignment along with
>> existing phys_addr check.
>>
>> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
>> Cc: Toshi Kani <toshi.kani@hpe.com>
>> Cc: Andrew Morton <akpm@linux-foundation.org>
>> Cc: Will Deacon <will.deacon@arm.com>
>> Cc: Chintan Pandya <cpandya@codeaurora.org>
>> Cc: Thomas Gleixner <tglx@linutronix.de>
>> Cc: Catalin Marinas <catalin.marinas@arm.com>
>> ---
>>  lib/ioremap.c | 6 ++++++
>>  1 file changed, 6 insertions(+)
>>
>> diff --git a/lib/ioremap.c b/lib/ioremap.c
>> index 063213685563..8b5c8dda857d 100644
>> --- a/lib/ioremap.c
>> +++ b/lib/ioremap.c
>> @@ -86,6 +86,9 @@ static int ioremap_try_huge_pmd(pmd_t *pmd, unsigned long addr,
>>  	if ((end - addr) != PMD_SIZE)
>>  		return 0;
>>  
>> +	if (!IS_ALIGNED(addr, PMD_SIZE))
>> +		return 0;
>> +
>>  	if (!IS_ALIGNED(phys_addr, PMD_SIZE))
>>  		return 0;
>>  
>> @@ -126,6 +129,9 @@ static int ioremap_try_huge_pud(pud_t *pud, unsigned long addr,
>>  	if ((end - addr) != PUD_SIZE)
>>  		return 0;
>>  
>> +	if (!IS_ALIGNED(addr, PUD_SIZE))
>> +		return 0;
>> +
>>  	if (!IS_ALIGNED(phys_addr, PUD_SIZE))
>>  		return 0;
> 
> Not sure if we have such case today, but I agree that it is prudent to
> have such checks.  Is there any reason not to add this check to p4d for
> consistency?

No, will add it.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
