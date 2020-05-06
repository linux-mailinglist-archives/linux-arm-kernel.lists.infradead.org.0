Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7898B1C7156
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 15:05:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AQspeWbtuWOOh9MuEavGl+qh1TGWFxG5fqOOQcAJA/o=; b=jkC88AG9GRBvAZvrWB6Gj9JSd
	MgV8VF/+OlMiEqjSYtDElG3OXPSInJr2KQ5Rx+WnehAb/iOJyhJdu7MO05TY/0FfOXDc5pM4B9v93
	Fd5+ZzQO88DKWL6ds5Rre2DFClfOZWh46/jzebwL02gaWHWVVCLUi6EzvUSH0PZCm3PwgRXj39MC+
	teYm+g/GcUcowQOY5gJjYAJv5uYyYbiByKKp6zqHBkxkW5iU7/HHHa8QNeA7/9lEarBAyhOUIlOl8
	sZGMo4+guKAUfWfGVsOfYp7ukWeyUu67GpnwtvMgHi54XLxexFI3tFDtRZR3GZBLJxXxyqmd0Fq2W
	k64Kyknrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWJjT-0008JR-CK; Wed, 06 May 2020 13:05:03 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWJjD-0008IM-7x; Wed, 06 May 2020 13:04:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 63B95D6E;
 Wed,  6 May 2020 06:04:46 -0700 (PDT)
Received: from [10.57.31.214] (unknown [10.57.31.214])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 64E833F68F;
 Wed,  6 May 2020 06:04:43 -0700 (PDT)
Subject: Re: [PATCH v2 1/2] arm64/crash_core: Export KERNELPACMASK in
 vmcoreinfo
To: Will Deacon <will@kernel.org>
References: <1587968702-19996-1-git-send-email-amit.kachhap@arm.com>
 <20200504171741.GD1833@willie-the-truck>
 <bc5e6fc5-15f4-40bb-4466-816de5912893@arm.com>
 <20200506123112.GF8043@willie-the-truck>
From: Amit Kachhap <amit.kachhap@arm.com>
Message-ID: <590176f0-802b-f71a-0c1e-00283808e1d8@arm.com>
Date: Wed, 6 May 2020 18:34:20 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20200506123112.GF8043@willie-the-truck>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_060447_322757_41BD931A 
X-CRM114-Status: GOOD (  14.25  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 5/6/20 6:01 PM, Will Deacon wrote:
> On Wed, May 06, 2020 at 05:32:56PM +0530, Amit Kachhap wrote:
>> On 5/4/20 10:47 PM, Will Deacon wrote:
>>> On Mon, Apr 27, 2020 at 11:55:01AM +0530, Amit Daniel Kachhap wrote:
>>>> diff --git a/arch/arm64/include/asm/compiler.h b/arch/arm64/include/asm/compiler.h
>>>> index eece20d..32d5900 100644
>>>> --- a/arch/arm64/include/asm/compiler.h
>>>> +++ b/arch/arm64/include/asm/compiler.h
>>>> @@ -19,6 +19,9 @@
>>>>    #define __builtin_return_address(val)					\
>>>>    	(void *)(ptrauth_clear_pac((unsigned long)__builtin_return_address(val)))
>>>> +#else  /* !CONFIG_ARM64_PTR_AUTH */
>>>> +#define	ptrauth_user_pac_mask()		0ULL
>>>> +#define	ptrauth_kernel_pac_mask()	0ULL
>>>
>>> This doesn't look quite right to me, since you still have to take into
>>> account the case where CONFIG_ARM64_PTR_AUTH=y but the feature is not
>>> available at runtime:
>>
>> Yes agree with you here. However the config gaurd is saving some extra
>> computation for __builtin_return_address. There are some compiler
>> support being added in __builtin_extract_return_address to mask the PAC.
>> Hopefully that will improve this code. In the meantime let it be like this.
> 
> Does the extra computation matter? Isn't it just a couple of instructions?

ok sure. I will push v3 as you suggested.

Thanks,
Amit

> 
> Will
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
