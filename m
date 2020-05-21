Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE0D41DC582
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 05:13:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6o+ZRe9aJiEu1z7noiaB1SHl3Q7lXVEvHh922oQG/U0=; b=VHtV1zj0fNyx45
	+3NIFCeJrTqpB+9q0nNr+LcW1qJbGQHH/BaaLF+7AM7ep4Po+TqBgEBmEsoF7INUjTYycLKwdyTpY
	5JBwuXwqUdaF0v8lE/6XO5sUWTYKiSJX47nypYHzSnlvaQnFqbBxVdFp/XhvUw/IskeJ8Vlj2m+p/
	Z7eD6g6UOPz+S3QL2dcQDXxHXSxKGXCBeuxnFxVyjAmDtjHgjuraX3xgs8lUI89IYgNPBqnjozwdr
	tLmg2yj8wC1+vEgq79+1ZNNLImBhxE4FyMJ3wIbRruwAr2tspgR2kjg03fy5rKbmOyE0OaPcZaCdH
	dLxf/C5nmHq1F3TbVHLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbbe8-000619-MV; Thu, 21 May 2020 03:13:24 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbbdy-00060X-SG
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 03:13:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8B45230E;
 Wed, 20 May 2020 20:13:13 -0700 (PDT)
Received: from [10.163.75.69] (unknown [10.163.75.69])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 944B03F52E;
 Wed, 20 May 2020 20:13:11 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH] arm64/cpufeature: Move BUG_ON() inside get_arm64_ftr_reg()
To: Will Deacon <will@kernel.org>
References: <1589937774-20479-1-git-send-email-anshuman.khandual@arm.com>
 <20200520122012.GA25815@willie-the-truck>
Message-ID: <7bb0b88a-d551-463c-b777-68fb1c7f3c2c@arm.com>
Date: Thu, 21 May 2020 08:42:35 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20200520122012.GA25815@willie-the-truck>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_201315_002070_B5BC5A1F 
X-CRM114-Status: GOOD (  22.09  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 05/20/2020 05:50 PM, Will Deacon wrote:
> Hi Anshuman,
> 
> On Wed, May 20, 2020 at 06:52:54AM +0530, Anshuman Khandual wrote:
>> There is no way to proceed when requested register could not be searched in
>> arm64_ftr_reg[]. Requesting for a non present register would be an error as
>> well. Hence lets just BUG_ON() when the search fails in get_arm64_ftr_reg()
>> rather than checking for return value and doing the same in some individual
>> callers.
>>
>> But there are some callers that dont BUG_ON() upon search failure. It adds
>> an argument 'failsafe' that provides required switch between callers based
>> on whether they could proceed or not.
>>
>> Cc: Catalin Marinas <catalin.marinas@arm.com>
>> Cc: Will Deacon <will@kernel.org>
>> Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
>> Cc: Mark Brown <broonie@kernel.org>
>> Cc: linux-arm-kernel@lists.infradead.org
>> Cc: linux-kernel@vger.kernel.org
>>
>> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
>> ---
>> Applies on next-20200518 that has recent cpufeature changes from Will.
>>
>>  arch/arm64/kernel/cpufeature.c | 26 +++++++++++++-------------
>>  1 file changed, 13 insertions(+), 13 deletions(-)
>>
>> diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
>> index bc5048f152c1..62767cc540c3 100644
>> --- a/arch/arm64/kernel/cpufeature.c
>> +++ b/arch/arm64/kernel/cpufeature.c
>> @@ -557,7 +557,7 @@ static int search_cmp_ftr_reg(const void *id, const void *regp)
>>   *         - NULL on failure. It is upto the caller to decide
>>   *	     the impact of a failure.
>>   */
>> -static struct arm64_ftr_reg *get_arm64_ftr_reg(u32 sys_id)
>> +static struct arm64_ftr_reg *get_arm64_ftr_reg(u32 sys_id, bool failsafe)
> 
> Generally, I'm not a big fan of boolean arguments because they are really
> opaque at the callsite. It also seems bogus to me that we don't trust the

If preferred, we could replace with an enum variable here with some
more context e.g

enum ftr_reg_search {
	FTR_REG_SEARCH_SAFE,
	FTR_REG_SEARCH_UNSAFE,
};

> caller to pass a valid sys_id, but we trust it to get "failsafe" right,

If we really trust the callers, then why BUG_ON() checks are present in
the first place. Because it is always prudent to protect against the
unexpected.

> which seems to mean "I promise to check the result isn't NULL before
> dereferencing it."

Not sure I got this. Do you mean all the present BUG_ON() are trying to
check that returned arm64_ftr_reg is valid before dereferencing it ? If
there is real trust on the callers that a non present sys_id will never
get requested, then all present BUG_ON() instances should never be there.

Either we trust the callers - drop all BUG_ON() and WARN_ON() instances
or we dont - consolidate BUG_ON() and WARN_ON() instances appropriately.

> 
> So I don't see how this patch improves anything. I'd actually be more

It consolidates multiple BUG_ON() in various callers which are not really
required. Code consolidation and reduction especially BUG_ON() instances,
is invariably a good thing.

> inclined to stick a WARN() in get_arm64_ftr_reg() when it returns NULL and

AFAICS in emulate_sys_reg() where the user can send non-present sys_id
registers that eventually gets emulated, should not expect an WARN_ON()
as it did not do anything wrong.

> have the callers handle NULL by returning early, getting rid of all the
> BUG_ONs in here. Sure, the system might end up in a funny state, but we
> WARN()d about it and tried to keep going (and Linus has some strong opinions
> on this too).

Sure, we could go with an WARN_ON() instead, if acceptable and preferred.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
