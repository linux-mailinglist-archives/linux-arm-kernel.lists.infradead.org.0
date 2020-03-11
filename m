Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 172E9181708
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 12:46:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HmkuqOLkjd7gsN/JFAVLH27U/h/8hMSs65ryCyGBWnI=; b=HZiPs99QXY3k6t
	v1nkPba+QwHYnBuOJNkv2XDCqWAOhyIEQWTRCGYAmQuXgDucWcM1BsNgJaefw9At6WQobZqfDNVGT
	JaPt9zJgq8N9Et8VEvvVH+5gxja2sGnG2uUBrVq/XCyTy8zJyud7Da/AL7uzd3Ixc4LH3uGs8vcyE
	o+fD4GXtiknjaQz/ADRy7B/0wKe9u51V5tspwYCg1jOkTzUNvmB3Rea+KxAA2S1RM7rpkpVSXe3UT
	js1VhY6XQ0KZRQit0OqlAAGI69NTPOteyqxjC3hejzJT+A5AMBZHkW+pk5OoUhD55ppCFCSlS7hh2
	+LP22RObTL2sF8HddIow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBzon-0007bs-RO; Wed, 11 Mar 2020 11:46:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBzof-0007bZ-1f
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 11:46:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5F0621FB;
 Wed, 11 Mar 2020 04:46:24 -0700 (PDT)
Received: from [10.37.8.101] (unknown [10.37.8.101])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 916473F6CF;
 Wed, 11 Mar 2020 04:46:21 -0700 (PDT)
Subject: Re: [PATCH v6 08/18] arm64: cpufeature: handle conflicts based on
 capability
To: Catalin Marinas <catalin.marinas@arm.com>
References: <1583476525-13505-1-git-send-email-amit.kachhap@arm.com>
 <1583476525-13505-9-git-send-email-amit.kachhap@arm.com>
 <d0f66afd-3cf3-77eb-9aa6-703f6201bc47@arm.com>
 <20200311110315.GB3216816@arrakis.emea.arm.com>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <7917c501-bf17-da03-9381-8b6d55e42986@arm.com>
Date: Wed, 11 Mar 2020 11:46:46 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200311110315.GB3216816@arrakis.emea.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_044625_133673_1A960C3A 
X-CRM114-Status: GOOD (  13.43  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, Mark Brown <broonie@kernel.org>,
 James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 3/11/20 11:03 AM, Catalin Marinas wrote:
> On Tue, Mar 10, 2020 at 12:31:56PM +0000, Vincenzo Frascino wrote:
>> On 3/6/20 6:35 AM, Amit Daniel Kachhap wrote:
>>
>> [...]
>>
>>>  
>>> +static bool
>>> +cpucap_panic_on_conflict(const struct arm64_cpu_capabilities *cap)
>>> +{
>>> +	return !!(cap->type & ARM64_CPUCAP_PANIC_ON_CONFLICT);
>>> +}
>>> +
>>
>> If there is no specific reason in the previous patch for changing the signature,
>> could you please make "inline" even this function, for symmetry with the others?
> 
> Please don't add new 'inline' unless you have a real justification (in
> which case __always_inline is better suited). Also symmetry with others
> is not a good argument.
> 
> https://www.kernel.org/doc/html/latest/process/coding-style.html#the-inline-disease
> 

Ok, thanks for the explanation.

With this:

Reviewed-by: Vincenzo Frascino <vincenzo.frascino@arm.com>

-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
