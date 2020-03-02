Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0C2417571B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 10:30:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qhTbsQFpuuK3a0Rko47FgxBfivCXkcYq0Hthcc4wa3E=; b=IiSee7yS0/NIMAp5ivVftZckn
	xVPUOyObZvwin5xrXNZ76EsLEKMmq6k0lf9RJxpnVA1AnXVXxyJf3Qi88XBHiDVBF08SY8Y5ueTv7
	PTgFeq/AyBqVfRKaDqP4++Wi8wZS6LiBOlQFXIurn+MHB0BYQjbJDt4aFnFrB6Qt6Z9a5SpmumcmR
	Ik7NtfKSks4a3SLT+Vf/uoVG/XA9YX91BEkwoHUniMIlSzBr5Za1gA2i9ejzSRRqzB7q6nzDG4OWw
	zJ4WvOfLZutDxk2xar5C2JOTCpqu+Epanz+Om56FD/RBI8H7PlO6dBkuf8tt6r2nOn/TWMhI//btN
	PBVG2rkyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8hOt-00076F-88; Mon, 02 Mar 2020 09:30:11 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8hOj-000748-1w
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 09:30:02 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7280D31B;
 Mon,  2 Mar 2020 01:29:55 -0800 (PST)
Received: from [10.163.1.6] (unknown [10.163.1.6])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9BED83F6CF;
 Mon,  2 Mar 2020 01:29:51 -0800 (PST)
Subject: Re: [PATCH v5 07/17] arm64: cpufeature: handle conflicts based on
 capability
To: Catalin Marinas <catalin.marinas@arm.com>
References: <1581931668-11559-1-git-send-email-amit.kachhap@arm.com>
 <1581931668-11559-8-git-send-email-amit.kachhap@arm.com>
 <20200228181832.GI4019108@arrakis.emea.arm.com>
From: Amit Kachhap <amit.kachhap@arm.com>
Message-ID: <fb2f1fac-9eaf-30ba-4a69-506b14c459f6@arm.com>
Date: Mon, 2 Mar 2020 14:59:53 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20200228181832.GI4019108@arrakis.emea.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_013001_143866_7B1E79BF 
X-CRM114-Status: GOOD (  14.69  )
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
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 2/28/20 11:48 PM, Catalin Marinas wrote:
> On Mon, Feb 17, 2020 at 02:57:38PM +0530, Amit Daniel Kachhap wrote:
>> diff --git a/arch/arm64/include/asm/cpufeature.h b/arch/arm64/include/asm/cpufeature.h
>> index 8c80483..1e88aee 100644
>> --- a/arch/arm64/include/asm/cpufeature.h
>> +++ b/arch/arm64/include/asm/cpufeature.h
>> @@ -352,6 +360,12 @@ cpucap_late_cpu_permitted(const struct arm64_cpu_capabilities *cap)
>>   	return !!(cap->type & ARM64_CPUCAP_PERMITTED_FOR_LATE_CPU);
>>   }
>>   
>> +static inline bool
>> +cpucap_panic_on_conflict(const struct arm64_cpu_capabilities *cap)
>> +{
>> +	return !!(cap->type & ARM64_CPUCAP_PANIC_ON_CONFLICT);
>> +}
> 
> Does this need to be in the header file? If not, please move it to
> cpufeature.c (and drop 'inline' if moved).

Actually there are similar functions in cpufeature.h such as
cpucap_late_cpu_permitted, cpucap_late_cpu_optional etc in the
file cpufeature.h so done this way.

But yes all these functions are consumed only in cpufeature.c so can be 
moved there. I can send as a cleanup patch.

> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
