Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7499345CAF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 14:22:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3DxXqhrT7ZvUUaGj6SmkWyC7ngyJFrcOKKJg6KA4JYc=; b=MGdkoKHA9Rr+2H
	gkxMAnXVocxVflbRiE/Gs4yJ4kjzmKqkwcmYMDpjDVNnTcuV0etCFEuM4+1BrR4i62yqRFUfOkLEy
	AAg+Xh5S24p/c7qILa5PMyvHakGfdflS54NtvcqwO9DiGFhisw+SrxLBHO3QAnzIDdPMvXho1X1Dd
	ZWmsfymYIEtnIykWFSy3UHOY4ebhYFsmngahlHNcB0hqjh8bA0GY0Y+dVS6QX5qvekxv2NgFByAZL
	z9M0pZ7Qwbl99dMIqE5jjLckue+vndDG5xTfvA8ANy6i5v32sguqCf8qo8j/kEJfi1CZVndEGvJRs
	9txskc7QBRpGXaktMEeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hblEB-00060V-B4; Fri, 14 Jun 2019 12:22:43 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hblAt-0002EY-CB
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 12:19:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4E2DA3EF;
 Fri, 14 Jun 2019 05:19:18 -0700 (PDT)
Received: from [192.168.1.18] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C24183F246;
 Fri, 14 Jun 2019 05:19:15 -0700 (PDT)
Subject: Re: [PATCH v6 00/19] Unify vDSOs across more architectures
To: Thomas Gleixner <tglx@linutronix.de>
References: <20190530141531.43462-1-vincenzo.frascino@arm.com>
 <CAK8P3a11DE0sXteZoaP_N=mDhx3tXitGKddn1ogtFqJBYO-SCA@mail.gmail.com>
 <d96667d5-e43b-d33a-fbd0-5acfb4904316@arm.com>
 <alpine.DEB.2.21.1906141413070.1722@nanos.tec.linutronix.de>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <6f3bcd07-6eb4-53d6-d209-de42396a4ee2@arm.com>
Date: Fri, 14 Jun 2019 13:19:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.21.1906141413070.1722@nanos.tec.linutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_051919_511427_5F5342FC 
X-CRM114-Status: GOOD (  17.51  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: linux-arch <linux-arch@vger.kernel.org>, Shuah Khan <shuah@kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, Huw Davies <huw@codeweavers.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Will Deacon <will.deacon@arm.com>,
 linux-mips@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Paul Burton <paul.burton@mips.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Russell King <linux@armlinux.org.uk>, Dmitry Safonov <0x7f454c46@gmail.com>,
 Mark Salyzyn <salyzyn@android.com>, Peter Collingbourne <pcc@google.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 6/14/19 1:16 PM, Thomas Gleixner wrote:
> On Tue, 4 Jun 2019, Vincenzo Frascino wrote:
>> On 31/05/2019 09:46, Arnd Bergmann wrote:
>>> One open question I touched in my review is whether we want to
>>> have a vdso version of clock_getres() in all architectures or not.
>>> I'd prefer to leave it out because there is very little advantage to
>>> it over the system call (the results don't change at runtime and
>>> can easily be cached by libc if performance ever matters), and
>>> it takes up a small amount of memory for the implementation.
>>>
>>
>> I thought about it and I ended up with what proposed in this patchset mainly for
>> symmetry across all the architectures since in the end they use the same common
>> code.
>>
>> It seems also that there is some performance impact (i.e.):
>>
>> clock-getres-monotonic:    libc(system call): 296 nsec/call
>> clock-getres-monotonic:    libc(vdso): 5 nsec/call
> 
> clock_getres() is usually not a hot path operation.
> 
>> I agree with you though when you say that caching it in the libc is a
>> possibility to overcome the performance impact.
>>
>>> We shouldn't just need it for consistency because all callers
>>> would require implementing a fallback to the system call
>>> anyway, to deal with old kernels.
> 
> libc has the fallback already. Let's aim for 1:1 replacement of the
> architecture code first and then add the extra bits in separate patches.
>

Ok, thanks Thomas, I will split the patches accordingly.

> Thanks,
> 
> 	tglx
> 

-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
