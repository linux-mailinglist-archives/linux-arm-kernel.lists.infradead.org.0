Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA049FD0D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 17:39:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k9xyb8SZOkAEfj1xy5RKPKmMACsmGABsoYNErERfEy4=; b=ZJ4AnT0NyEdCSd
	80+K4GSJEBB8Omq39q8pcizld1pltCUVo44wxjPi/Kt7Wci7XowNkO2ht2TwaOhMhks8UEDdHEDgY
	xVszhgCpe0phVyhaZ6TaQomU2D2050LxDN2O4WXcjmOcr1ytPU+0UMLqFsG5G/nypvomj7TBUItcH
	fiPnvjAHg0oySMVjOD1AGt3wfSN64vXzDUG4kBVyHEiMYWWYxBL/DoWWmnMyLBGrH2ix/uHrje5o1
	0A55Fmk7RHDM6/YbZf2B+4Y5dZW7CAyZdDI069Ad14TqMR1TW4sYCo5LPSZbPTi0UzQtuJlbuGUzi
	3qVR78xDjAQsKqEwcuSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLUr4-0001kP-CM; Tue, 30 Apr 2019 15:39:38 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLUqw-0001hH-Bv
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 15:39:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A4DA4374;
 Tue, 30 Apr 2019 08:39:27 -0700 (PDT)
Received: from [10.1.194.37] (e113632-lin.cambridge.arm.com [10.1.194.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E89353F719;
 Tue, 30 Apr 2019 08:39:25 -0700 (PDT)
Subject: Re: [PATCH 7/7] clocksource/arm_arch_timer: Use
 arch_timer_read_counter to access stable counters
To: Marc Zyngier <marc.zyngier@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20190408154907.223536-1-marc.zyngier@arm.com>
 <20190408154907.223536-8-marc.zyngier@arm.com>
 <2a60a031-1eab-2d5e-89ff-b5d516545eeb@linaro.org>
 <bbe9b8c1-132f-bbfa-e3d0-ad10c4165ad7@arm.com>
From: Valentin Schneider <valentin.schneider@arm.com>
Message-ID: <cef220b8-f46d-0653-8249-a9d48b2efc48@arm.com>
Date: Tue, 30 Apr 2019 16:39:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <bbe9b8c1-132f-bbfa-e3d0-ad10c4165ad7@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_083930_460885_1B68549F 
X-CRM114-Status: GOOD (  13.20  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, Russell King <linux@arm.linux.org.uk>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 30/04/2019 16:27, Marc Zyngier wrote:
[...]
>>> @@ -372,6 +392,7 @@ static u32 notrace sun50i_a64_read_cntv_tval_el0(void)
>>>  DEFINE_PER_CPU(const struct arch_timer_erratum_workaround *, timer_unstable_counter_workaround);
>>>  EXPORT_SYMBOL_GPL(timer_unstable_counter_workaround);
>>>  
>>> +static atomic_t timer_unstable_counter_workaround_in_use = ATOMIC_INIT(0);
>>
>> Wouldn't make sense to READ_ONCE / WRITE_ONCE instead of using an atomic?
> 
> I don't think *_ONCE says anything about the atomicity of the access. It
> only instruct the compiler that this should only be accessed once, and
> not reloaded/rewritten.

FWIW 7bd3e239d6c6 ("locking: Remove atomicy checks from {READ,WRITE}_ONCE")
points this out.

[...]

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
