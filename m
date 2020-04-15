Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 500C01A9C53
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 13:33:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=d8st7l8otCPmHgID0RxgVEtDRbhoCG8zc7P4GARfHqo=; b=G/YxFc5IJaOXaxO+Ny7epjMId
	jlkc27ISy2VtOkFS+mgwulEyf9b+GDoufnnHdmRG4y/bqkfKUGY7cscNcSi3Yx5kHN4ts0drK+Xw/
	O4iKT4oNxI7SpBKYKTMJ4e2MBDi64nzGbLAW0fHZqTL67rizDu+3skd9hhNS0aPgmh7lqZTknISCf
	l1nWWS1IVVAhWVRtGQg04AMak6vvvtUCA96Sj1jWmLX6gKzwOW2SwxbcPGXH7DYdazjWhvrSqFEe/
	Oyefkxhqhf6eZ3ir9xvaC7tddbJhuRKu+nMkGwn52JNDI/Qw39YkXMz+2i9gBpMR+iz5r0ykZBzTX
	F3jH5/tlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOgHn-00054g-I4; Wed, 15 Apr 2020 11:32:55 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOgHg-00054B-9x
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 11:32:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8470B1063;
 Wed, 15 Apr 2020 04:32:45 -0700 (PDT)
Received: from [10.37.12.1] (unknown [10.37.12.1])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DCAB13F68F;
 Wed, 15 Apr 2020 04:32:42 -0700 (PDT)
Subject: Re: [PATCH 7/8] arm64: cpufeature: Relax checks for AArch32 support
 at EL[0-2]
To: will@kernel.org
References: <20200414213114.2378-1-will@kernel.org>
 <20200414213114.2378-8-will@kernel.org>
 <714f124c-7eb7-b750-e98c-63da64ddae75@arm.com>
 <20200415105843.GE12621@willie-the-truck>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <d1f538ec-e956-c136-d0f8-54e7351a28a9@arm.com>
Date: Wed, 15 Apr 2020 12:37:31 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <20200415105843.GE12621@willie-the-truck>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_043248_387445_148CC695 
X-CRM114-Status: GOOD (  14.71  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: mark.rutland@arm.com, saiprakash.ranjan@codeaurora.org,
 anshuman.khandual@arm.com, maz@kernel.org, linux-kernel@vger.kernel.org,
 dianders@chromium.org, catalin.marinas@arm.com, kernel-team@android.com,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04/15/2020 11:58 AM, Will Deacon wrote:
> On Wed, Apr 15, 2020 at 11:50:58AM +0100, Suzuki K Poulose wrote:
>> On 04/14/2020 10:31 PM, Will Deacon wrote:
>>> We don't need to be quite as strict about mismatched AArch32 support,
>>> which is good because the friendly hardware folks have been busy
>>> mismatching this to their hearts' content.
>>>
>>>     * We don't care about EL2 or EL3 (there are silly comments concerning
>>>       the latter, so remove those)
>>>
>>>     * EL1 support is gated by the ARM64_HAS_32BIT_EL1 capability and handled
>>>       gracefully when a mismatch occurs
>>>
>>>     * EL1 support is gated by the ARM64_HAS_32BIT_EL0 capability and handled
>>
>> s/EL1/EL0
>>
>>>       gracefully when a mismatch occurs
>>>
>>> Relax the AArch32 checks to FTR_NONSTRICT.
>>
>> Agreed. We should do something similar for the features exposed by the
>> ELF_HWCAP, of course in a separate series.
> 
> Hmm, I didn't think we needed to touch the HWCAPs, as they're derived from
> the sanitised feature register values. What am I missing?

sorry, that was cryptic. I was suggesting to relax the ftr fields to
NONSTRICT for the fields covered by ELF HWCAPs (and other CPU hwcaps).

Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
