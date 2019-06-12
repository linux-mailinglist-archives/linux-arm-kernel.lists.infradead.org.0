Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FCE7424CE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 13:53:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Rae+Xw4cY/Dm5lhhDRHU7IRhmhQdi6wtXxFFoq7aIw=; b=pUMTKQrGFL1O42
	o1/BTY1Czp7UZCzox/jYaVBywn3SRnsrMjmT3Vz+ehbLf4BuGEUd+ZuE6mv4q1EILkXyiVGoORA9J
	7E3JesCNa2aKbt7h00Q6TidmwUo+cqUX7Tl0JiJggoJNLpAg2I5nuzDc8VeTHo6H+sg1DcqLfZyQf
	GX1n3Og9gOmbrXrPWT3Am/QksHRSnoFwXs7Kk6IqH6znIrHoCnap8L7fZMGfQAVxHkHGukgCtsC8C
	eeB5Yh4wmauBgMl15JlVWDfxqZvY45es8LslmSHAGBfyXWi+lbmgY+6POqEvgCxVqaqjDjwHM71t0
	xQD2kMk52SAYzRs3Jimw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb1oW-0007Sj-06; Wed, 12 Jun 2019 11:53:12 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hb1oH-0007SF-8y
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 11:52:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 78BEC28;
 Wed, 12 Jun 2019 04:52:55 -0700 (PDT)
Received: from [10.1.196.72] (e119884-lin.cambridge.arm.com [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2E9883F246;
 Wed, 12 Jun 2019 04:54:33 -0700 (PDT)
Subject: Re: [PATCH v16 02/16] arm64: untag user pointers in access_ok and
 __uaccess_mask_ptr
To: Catalin Marinas <catalin.marinas@arm.com>
References: <cover.1559580831.git.andreyknvl@google.com>
 <4327b260fb17c4776a1e3c844f388e4948cfb747.1559580831.git.andreyknvl@google.com>
 <20190610175326.GC25803@arrakis.emea.arm.com>
 <20190611145720.GA63588@arrakis.emea.arm.com>
 <d3dc2b1f-e8c9-c60d-f648-0bc9b08f20e4@arm.com>
 <20190612093158.GG10165@c02tf0j2hf1t.cambridge.arm.com>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <c760f34a-1b99-17bb-8cc8-ea8b0d63fe90@arm.com>
Date: Wed, 12 Jun 2019 12:52:49 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190612093158.GG10165@c02tf0j2hf1t.cambridge.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_045257_410174_32EA0E09 
X-CRM114-Status: GOOD (  20.52  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 Christian Koenig <Christian.Koenig@amd.com>,
 Szabolcs Nagy <Szabolcs.Nagy@arm.com>, Will Deacon <will.deacon@arm.com>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 Khalid Aziz <khalid.aziz@oracle.com>, Lee Smith <Lee.Smith@arm.com>,
 linux-kselftest@vger.kernel.org, Jacob Bramley <Jacob.Bramley@arm.com>,
 Leon Romanovsky <leon@kernel.org>, linux-rdma@vger.kernel.org,
 amd-gfx@lists.freedesktop.org, Christoph Hellwig <hch@infradead.org>,
 Jason Gunthorpe <jgg@ziepe.ca>, linux-arm-kernel@lists.infradead.org,
 Dave Martin <Dave.Martin@arm.com>, Evgeniy Stepanov <eugenis@google.com>,
 linux-media@vger.kernel.org, Kees Cook <keescook@chromium.org>,
 Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Dmitry Vyukov <dvyukov@google.com>,
 Kostya Serebryany <kcc@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Felix Kuehling <Felix.Kuehling@amd.com>, linux-kernel@vger.kernel.org,
 Jens Wiklander <jens.wiklander@linaro.org>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Alexander Deucher <Alexander.Deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, enh <enh@google.com>,
 Robin Murphy <robin.murphy@arm.com>, Yishai Hadas <yishaih@mellanox.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Catalin,

On 12/06/2019 10:32, Catalin Marinas wrote:
> Hi Vincenzo,
> 
> On Tue, Jun 11, 2019 at 06:09:10PM +0100, Vincenzo Frascino wrote:
>>> diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
>>> index 3767fb21a5b8..69d0be1fc708 100644
>>> --- a/arch/arm64/kernel/process.c
>>> +++ b/arch/arm64/kernel/process.c
>>> @@ -30,6 +30,7 @@
>>>  #include <linux/kernel.h>
>>>  #include <linux/mm.h>
>>>  #include <linux/stddef.h>
>>> +#include <linux/sysctl.h>
>>>  #include <linux/unistd.h>
>>>  #include <linux/user.h>
>>>  #include <linux/delay.h>
>>> @@ -323,6 +324,7 @@ void flush_thread(void)
>>>  	fpsimd_flush_thread();
>>>  	tls_thread_flush();
>>>  	flush_ptrace_hw_breakpoint(current);
>>> +	clear_thread_flag(TIF_TAGGED_ADDR);
>>
>> Nit: in line we the other functions in thread_flush we could have something like
>> "tagged_addr_thread_flush", maybe inlined.
> 
> The other functions do a lot more than clearing a TIF flag, so they
> deserved their own place. We could do this when adding MTE support. I
> think we also need to check what other TIF flags we may inadvertently
> pass on execve(), maybe have a mask clearing.
> 

Agreed. All the comments I provided are meant to simplify the addition of MTE
support.

>>> diff --git a/include/uapi/linux/prctl.h b/include/uapi/linux/prctl.h
>>> index 094bb03b9cc2..2e927b3e9d6c 100644
>>> --- a/include/uapi/linux/prctl.h
>>> +++ b/include/uapi/linux/prctl.h
>>> @@ -229,4 +229,9 @@ struct prctl_mm_map {
>>>  # define PR_PAC_APDBKEY			(1UL << 3)
>>>  # define PR_PAC_APGAKEY			(1UL << 4)
>>>  
>>> +/* Tagged user address controls for arm64 */
>>> +#define PR_SET_TAGGED_ADDR_CTRL		55
>>> +#define PR_GET_TAGGED_ADDR_CTRL		56
>>> +# define PR_TAGGED_ADDR_ENABLE		(1UL << 0)
>>> +
>>>  #endif /* _LINUX_PRCTL_H */
>>> diff --git a/kernel/sys.c b/kernel/sys.c
>>> index 2969304c29fe..ec48396b4943 100644
>>> --- a/kernel/sys.c
>>> +++ b/kernel/sys.c
>>> @@ -124,6 +124,12 @@
>>>  #ifndef PAC_RESET_KEYS
>>>  # define PAC_RESET_KEYS(a, b)	(-EINVAL)
>>>  #endif
>>> +#ifndef SET_TAGGED_ADDR_CTRL
>>> +# define SET_TAGGED_ADDR_CTRL(a)	(-EINVAL)
>>> +#endif
>>> +#ifndef GET_TAGGED_ADDR_CTRL
>>> +# define GET_TAGGED_ADDR_CTRL()		(-EINVAL)
>>> +#endif
>>>  
>>>  /*
>>>   * this is where the system-wide overflow UID and GID are defined, for
>>> @@ -2492,6 +2498,16 @@ SYSCALL_DEFINE5(prctl, int, option, unsigned long, arg2, unsigned long, arg3,
>>>  			return -EINVAL;
>>>  		error = PAC_RESET_KEYS(me, arg2);
>>>  		break;
>>> +	case PR_SET_TAGGED_ADDR_CTRL:
>>> +		if (arg3 || arg4 || arg5)
>>> +			return -EINVAL;
>>> +		error = SET_TAGGED_ADDR_CTRL(arg2);
>>> +		break;
>>> +	case PR_GET_TAGGED_ADDR_CTRL:
>>> +		if (arg2 || arg3 || arg4 || arg5)
>>> +			return -EINVAL;
>>> +		error = GET_TAGGED_ADDR_CTRL();
>>> +		break;
>>
>> Why do we need two prctl here? We could have only one and use arg2 as set/get
>> and arg3 as a parameter. What do you think?
> 
> This follows the other PR_* options, e.g. PR_SET_VL/GET_VL,
> PR_*_FP_MODE. We will use other bits in arg2, for example to set the
> precise vs imprecise MTE trapping.
> 

Indeed. I was not questioning the pre-existing interface definition, but trying
more to reduce the changes to the ABI to the minimum since:
 - prctl does not mandate how to use the arg[2-5]
 - prctl interface is flexible enough for the problem to be solved with only one
   PR_ command.

I agree on reusing the interface for MTE for the purposes you specified.

-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
