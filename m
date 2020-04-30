Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C885F1BF607
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 13:01:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1kJFDYInPRsGC5XdtGGdDs0SAfSJLCw1aXqKLWT5Fcs=; b=KeeLnMD7LtPK5zuPI7ThP0OR0
	2wLExSCBXQoghoChN2IFtQRAu7v4UkORuJOdJYe3T//3to/PLezIksh2wUgsG194sGQfSW6AgkreN
	r/UsleZYn5tec5NiwJrdvzHq87zzBrCHsc/nv0gI21BKZD3vsgS1YD6od7UECI2Zy6xX0Vkw0wY4q
	KzigpketHzgW4c/e8t4ekXxuLYjbCn0KoiI0fxgpWtYKvzMxfTXOtLaccJ9bwKHFZ4NqB12Fgr9Qv
	NxRdM0667aW9PDdt1HE6jyWARE5Vs6+H1buCllFcQzemsji6oTkAQRz5c+CMPDYbqKZLPMAZA41vR
	tAxQgTqQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU6wi-0007vC-F7; Thu, 30 Apr 2020 11:01:36 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU6wY-0007tI-1y
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 11:01:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EDD7131B;
 Thu, 30 Apr 2020 04:01:22 -0700 (PDT)
Received: from [10.57.27.210] (unknown [10.57.27.210])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 45FCB3F305;
 Thu, 30 Apr 2020 04:01:19 -0700 (PDT)
Subject: Re: [PATCH v2] arm64: Optimize ptrauth by enabling it for non-leaf
 functions
To: Mark Rutland <mark.rutland@arm.com>, Will Deacon <will@kernel.org>
References: <1588149371-20310-1-git-send-email-amit.kachhap@arm.com>
 <20200429101839.GB28631@C02TD0UTHF1T.local>
From: Amit Kachhap <amit.kachhap@arm.com>
Message-ID: <ee659a51-4719-ff17-6d3d-4fc42504111e@arm.com>
Date: Thu, 30 Apr 2020 16:30:57 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20200429101839.GB28631@C02TD0UTHF1T.local>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_040126_187816_9C53CDE6 
X-CRM114-Status: GOOD (  26.73  )
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Mark Brown <broonie@kernel.org>,
 James Morse <james.morse@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 linux-arm-kernel@lists.infradead.org, Daniel Kiss <daniel.kiss@arm.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will/Mark

On 4/29/20 3:48 PM, Mark Rutland wrote:
> Hi Amit,
> 
> On Wed, Apr 29, 2020 at 02:06:10PM +0530, Amit Daniel Kachhap wrote:
>> Compilers are optimized to not create the frame record for the leaf
>> function and hence lr is not signed and stored in the stack. Thus the leaf
>> functions cannot be used for ROP gadget attack.
> 
> IIUC Will's point on the last posting was that leaf functions can be
> used as a restricted ROP gadget, where the LR isn't controlled via the
> stack.
> 
> e.g. you might have a gadget that does something like:
> 
> <gadget>:
> 	LDP	x0, x1, [SP], #16
> 	STR	x0, [x1]
> 	RET				// LR == <gadget>
> 
> ... and if the LR had previously been set up to point to gadget, it
> would return recursively, performing a sequence of arbitrary stores.
> With an AUT, it would fail after the first store.
> 
> That does rely on already subverting control flow (probably via a
> forward-edge BR where we don't have BTI), and so maybe we've already
> lost in practical terms, but there is at least some possibility of a
> gadget that AUT would catch here. There's some nuance to capture in the
> commit message for that.

I had some offline discussion with Daniel Kiss about this patch. I am 
stopping this patch work now as there are some use case of ptrauth 
instructions in leaf functions. This may be re-visited later with 
precise runtime data if needed.

Thanks,
Amit Daniel
> 
>> This patch selects pointer authentication only for non-leaf function
>> and the compiler option is modified to -mbranch-protection=pac-ret and
>> -msign-return-address=non-leaf.
>>
>> As there are no PAC instructions(PACIASP and AUTIASP) inserted in the leaf
>> functions so the kernel code size reduces by ~0.01%.
> 
> Do we expect this to matter? The size difference isn't that large, so is
> there a performance issue?
> 
> Are there any leaf functions which we consider critical to performance?
> 
> I know that one concern is that PACIASP acts as an implicit landing pad,
> and so its use everywhere potentially weakens BTI. Do we have any data
> to indicate that would be a concern here? e.g. with and without this,
> how many instances of  PACIASP and BTI *C exist?
> 
> Thanks,
> Mark.
> 
>> Note, As PACIASP instruction is also used for Armv8.5 BTI branching so the
>> compiler may insert BTI instructions in case of leaf functions which are
>> candidate of JOP gadget for the upcoming BTI in-kernel support.
>>
>> Reported-by: Daniel Kiss <daniel.kiss@arm.com>
>> Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
>> ---
>> Changes since v1:
>> * Updated the commit logs as per the comments from Will and Mark[1].
>>
>> [1]: https://www.spinics.net/lists/arm-kernel/msg798518.html
>>
>>
>>   arch/arm64/Kconfig  | 4 ++--
>>   arch/arm64/Makefile | 4 ++--
>>   2 files changed, 4 insertions(+), 4 deletions(-)
>>
>> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
>> index 40fb05d..29cfe05 100644
>> --- a/arch/arm64/Kconfig
>> +++ b/arch/arm64/Kconfig
>> @@ -1541,11 +1541,11 @@ config ARM64_PTR_AUTH
>>   
>>   config CC_HAS_BRANCH_PROT_PAC_RET
>>   	# GCC 9 or later, clang 8 or later
>> -	def_bool $(cc-option,-mbranch-protection=pac-ret+leaf)
>> +	def_bool $(cc-option,-mbranch-protection=pac-ret)
>>   
>>   config CC_HAS_SIGN_RETURN_ADDRESS
>>   	# GCC 7, 8
>> -	def_bool $(cc-option,-msign-return-address=all)
>> +	def_bool $(cc-option,-msign-return-address=non-leaf)
>>   
>>   config AS_HAS_PAC
>>   	def_bool $(as-option,-Wa$(comma)-march=armv8.3-a)
>> diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
>> index 85e4149..895f506 100644
>> --- a/arch/arm64/Makefile
>> +++ b/arch/arm64/Makefile
>> @@ -70,8 +70,8 @@ endif
>>   branch-prot-flags-y += $(call cc-option,-mbranch-protection=none)
>>   
>>   ifeq ($(CONFIG_ARM64_PTR_AUTH),y)
>> -branch-prot-flags-$(CONFIG_CC_HAS_SIGN_RETURN_ADDRESS) := -msign-return-address=all
>> -branch-prot-flags-$(CONFIG_CC_HAS_BRANCH_PROT_PAC_RET) := -mbranch-protection=pac-ret+leaf
>> +branch-prot-flags-$(CONFIG_CC_HAS_SIGN_RETURN_ADDRESS) := -msign-return-address=non-leaf
>> +branch-prot-flags-$(CONFIG_CC_HAS_BRANCH_PROT_PAC_RET) := -mbranch-protection=pac-ret
>>   # -march=armv8.3-a enables the non-nops instructions for PAC, to avoid the
>>   # compiler to generate them and consequently to break the single image contract
>>   # we pass it only to the assembler. This option is utilized only in case of non
>> -- 
>> 2.7.4
>>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
