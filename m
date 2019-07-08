Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EAC361AF1
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 09:11:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UrM+dWtZN8trynyMsz6SXfe8I9o3oRsMWq4j/U9+dyY=; b=W94uKnEcRfzP6XyMNrvo3jWCV
	CuUkVwk7yU+iFQv6gXZaMRD1pX6wJmWywGS5NK3CXkuA8kiXA+7+U7rAIihCWGf9G+mmQvEKr9zq2
	5ry6BnIUuhz9+F6rOD8Se3+L1nFE5NF5DTOM4184vTtxglbAfk4d+EVD7NhfXJDu2GU1yhR1VOcNU
	0QaTQaDKepywS/lgEWhmW0MXfKjGp/F3zKGeC8WspUqkYH7xlZpJRnG2AwzNaAgvZSo7YgNci9mAm
	RBWpj/IuUvFw30Z0LXE5PpK7eM4gts+8HCLLYMGOyvH3jKfS61uJehZE6QG6SCf5+yhGEb8kiIdBc
	eMFqb5XFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkNnv-0007aE-Ba; Mon, 08 Jul 2019 07:11:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hkNnX-0007ZW-Oz
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 07:10:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 876322B;
 Mon,  8 Jul 2019 00:10:48 -0700 (PDT)
Received: from [10.1.196.120] (e121650-lin.cambridge.arm.com [10.1.196.120])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0079D3F246;
 Mon,  8 Jul 2019 00:12:42 -0700 (PDT)
Subject: Re: [PATCH v2 1/5] perf: arm64: Add test to check userspace access to
 hardware counters.
To: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
References: <20190705085541.9356-1-raphael.gault@arm.com>
 <20190705085541.9356-2-raphael.gault@arm.com>
 <20190705145436.GA29396@kernel.org>
From: Raphael Gault <raphael.gault@arm.com>
Message-ID: <7fcf5a01-15f3-5a97-bc1b-74d82f31981f@arm.com>
Date: Mon, 8 Jul 2019 08:10:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190705145436.GA29396@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_001052_022684_C63EDD8F 
X-CRM114-Status: GOOD (  17.16  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: mark.rutland@arm.com, peterz@infradead.org, catalin.marinas@arm.com,
 will.deacon@arm.com, linux-kernel@vger.kernel.org, mingo@redhat.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Arnaldo,

On 7/5/19 3:54 PM, Arnaldo Carvalho de Melo wrote:
> Em Fri, Jul 05, 2019 at 09:55:37AM +0100, Raphael Gault escreveu:
>> This test relies on the fact that the PMU registers are accessible
>> from userspace. It then uses the perf_event_mmap_page to retrieve
>> the counter index and access the underlying register.
>>
>> This test uses sched_setaffinity(2) in order to run on all CPU and thus
>> check the behaviour of the PMU of all cpus in a big.LITTLE environment.
>>
>> Signed-off-by: Raphael Gault <raphael.gault@arm.com>
>> ---
>>   tools/perf/arch/arm64/include/arch-tests.h |   6 +
>>   tools/perf/arch/arm64/tests/Build          |   1 +
>>   tools/perf/arch/arm64/tests/arch-tests.c   |   4 +
>>   tools/perf/arch/arm64/tests/user-events.c  | 255 +++++++++++++++++++++
>>   4 files changed, 266 insertions(+)
>>   create mode 100644 tools/perf/arch/arm64/tests/user-events.c
>>
>> diff --git a/tools/perf/arch/arm64/include/arch-tests.h b/tools/perf/arch/arm64/include/arch-tests.h
>> index 90ec4c8cb880..a9b17ae0560b 100644
>> --- a/tools/perf/arch/arm64/include/arch-tests.h
>> +++ b/tools/perf/arch/arm64/include/arch-tests.h
>> @@ -2,11 +2,17 @@
>>   #ifndef ARCH_TESTS_H
>>   #define ARCH_TESTS_H
>>   
>> +#define __maybe_unused	__attribute__((unused))
> 
> 
> What is wrong with using:
> 
> #include <linux/compiler.h>
> 
> ?
> 
> [acme@quaco perf]$ find tools/perf/ -name "*.[ch]" | xargs grep __maybe_unused | wc -l
> 1115
> [acme@quaco perf]$ grep __maybe_unused tools/include/linux/compiler.h
> #ifndef __maybe_unused
> # define __maybe_unused		__attribute__((unused))
> [acme@quaco perf]$
> 
> Also please don't break strings in multiple lines just to comply with
> the 80 column limit. That is ok when you have multiple lines ending with
> a newline, but otherwise just makes it look ugly.
> 

You're right, I shall correct those points.

Thanks,

-- 
Raphael Gault

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
