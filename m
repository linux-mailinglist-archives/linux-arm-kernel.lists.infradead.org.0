Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C4F34415D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 18:14:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=L4IMw8Nhb6u8XQ1RSXQz6VROjMEaiw8Gf3b3I0ORi6Y=; b=BqkMiwDKiOJVn4R8UUOyzDLZT
	6N/OyimpNjawvyEJWZmFcyhIDTz/3qGk2VR0JhtPw2xVG861V27jvDvGoesfPWC8mI1ZJzhRfsp/A
	Boe6C3MmHenbheuRI+7cSP2vj1pjbmHjGWCPW7eIBjy6yVuUg34F5kNRgNQJxoCtVvnUjwtPhcX7X
	OttOnDctLkI12tX/YBNiqgr3kVlzcjq1n6WSLk37W5S6A5AneqbrRgGSSHjfoMFDWCvAN88D+kVRz
	UeobH9MUt3SvaUbWXvlXIDGLLPetTEVH7dOHCpBrsRRyMc19kMK1KdqehBoOYR3q2Lvi6cG7appfR
	WZKO8iOEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbSMX-0000pT-2K; Thu, 13 Jun 2019 16:14:05 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hbSMJ-0000oQ-Og
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 16:13:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 162C6367;
 Thu, 13 Jun 2019 09:13:51 -0700 (PDT)
Received: from [10.1.196.93] (en101.cambridge.arm.com [10.1.196.93])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CFBC73F694;
 Thu, 13 Jun 2019 09:13:49 -0700 (PDT)
Subject: Re: [RFC v2 1/7] arm64: cpufeature: add pointer auth meta-capabilities
From: Suzuki K Poulose <suzuki.poulose@arm.com>
To: kristina.martsenko@arm.com, linux-arm-kernel@lists.infradead.org
References: <20190529190332.29753-1-kristina.martsenko@arm.com>
 <20190529190332.29753-2-kristina.martsenko@arm.com>
 <631b3ef0-7edc-dbcb-199a-809bb8ef68d9@arm.com>
Message-ID: <9522833b-ca5e-82d8-775d-29a6c99c30cf@arm.com>
Date: Thu, 13 Jun 2019 17:13:48 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <631b3ef0-7edc-dbcb-199a-809bb8ef68d9@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_091351_848999_6D0EC28D 
X-CRM114-Status: GOOD (  17.50  )
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
Cc: mark.rutland@arm.com, keescook@chromium.org, ard.biesheuvel@linaro.org,
 catalin.marinas@arm.com, will.deacon@arm.com, ramana.radhakrishnan@arm.com,
 Amit.Kachhap@arm.com, dave.martin@arm.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 30/05/2019 11:50, Suzuki K Poulose wrote:
> Hi Kristina,
> 
> On 05/29/2019 08:03 PM, Kristina Martsenko wrote:
>> To enable pointer auth for the kernel, we're going to need to check for
>> the presence of address auth and generic auth using alternative_if. We
>> currently have two cpucaps for each, but alternative_if needs to check a
>> single cpucap. So define meta-capabilities that are present when either
>> of the current two capabilities is present.
>>
>> Leave the existing four cpucaps in place, as they are still needed to
>> check for mismatched systems where one CPU has the architected algorithm
>> but another has the IMP DEF algorithm.
>>
>> Note, the meta-capabilities were present before but were removed in
>> commits a56005d32105 ("arm64: cpufeature: Reduce number of pointer auth
>> CPU caps from 6 to 4") and 1e013d06120c ("arm64: cpufeature: Rework ptr
>> auth hwcaps using multi_entry_cap_matches"), as they were not needed
>> then. Note, unlike before, the current patch checks the cpucap values
>> directly, instead of reading the CPU ID register value.
>>
>> Signed-off-by: Kristina Martsenko <kristina.martsenko@arm.com>
> 
> This patch as such looks fine to me. However, do we really make use of
> the individual caps for ARCH/IMPDEF support ? Do we plan to do something
> about them in the future ? If not we could as well remove them and have
> the generic ones in place. That may be done in a separate series as a
> cleanup.

I take that back. I think both are needed to make sure the secondaries
match what the Boot CPU initially reported it has. With a generic cap,
we don't have a reliable way to verify against the boot CPU. Sorry for
the noise. This makes sense when we make it a boot CPU feature.

> 
> Either way, for this patch:
> 
> Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> 

This still holds.

Cheers
Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
