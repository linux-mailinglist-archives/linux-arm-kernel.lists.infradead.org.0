Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C48E134476
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 12:35:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iJemlxRCaqVuWIoPGyfqQ3bXNktx1QKClM5T0JSn65I=; b=MmhHS1yNy/3Jghb6Rpd2vvi/6
	5b2SCHmYvvM2m+OEbKSJnG3BimAg+Qd2PPsompHXeOsUHtvnEodNQXcpbbfZhh+weQPt0dlzcgANN
	NYe0h1ghp9aEr2MEpbHxPB07EFA7X5G55zNIvjqLIH4gcNtPfw6Qoy4zqFsKYfA1BCDMPpxx3HTFH
	V4s/JNBf9DIKZocs09xyNeLqBCsDRIYgW42X5Z6wkMsr+Cvf2QOy0tcA6TPzAzYOzg83IMKyfVXAj
	I/UvObzkUPsJ255dyZj5sBdvdz7QyW19qOKXuuUFJUZj8blwjKiSzCJG3jV5oAqFzUNi71pdxhWvL
	4DwF5s/ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY6mr-0005WI-QG; Tue, 04 Jun 2019 10:35:25 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY6mk-0005VX-VV
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 10:35:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6032980D;
 Tue,  4 Jun 2019 03:35:16 -0700 (PDT)
Received: from [10.37.8.2] (unknown [10.37.8.2])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A3E1A3F246;
 Tue,  4 Jun 2019 03:35:13 -0700 (PDT)
Subject: Re: [PATCH v5 3/3] arm64/fpsimd: Don't disable softirq when touching
 FPSIMD/SVE state
To: Catalin Marinas <catalin.marinas@arm.com>
References: <20190521172139.21277-1-julien.grall@arm.com>
 <20190521172139.21277-4-julien.grall@arm.com>
 <20190603162534.GF63283@arrakis.emea.arm.com>
 <20190603212104.mhz7vvj7afb2p3yr@mbp>
From: Julien Grall <julien.grall@arm.com>
Message-ID: <5c159919-d220-f8dc-d609-b1b1b2844d4b@arm.com>
Date: Tue, 4 Jun 2019 11:35:11 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190603212104.mhz7vvj7afb2p3yr@mbp>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_033519_022242_9B0489E5 
X-CRM114-Status: GOOD (  16.13  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: kvmarm@lists.cs.columbia.edu, ard.biesheuvel@linaro.org,
 julien.thierry@arm.com, marc.zyngier@arm.com, suzuki.poulose@arm.com,
 will.deacon@arm.com, christoffer.dall@arm.com, linux-kernel@vger.kernel.org,
 james.morse@arm.com, Dave.Martin@arm.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Catalin,

On 6/3/19 10:21 PM, Catalin Marinas wrote:
> On Mon, Jun 03, 2019 at 05:25:34PM +0100, Catalin Marinas wrote:
>> On Tue, May 21, 2019 at 06:21:39PM +0100, Julien Grall wrote:
>>> Since a softirq is supposed to check may_use_simd() anyway before
>>> attempting to use FPSIMD/SVE, there is limited reason to keep softirq
>>> disabled when touching the FPSIMD/SVE context. Instead, we can simply
>>> disable preemption and mark the FPSIMD/SVE context as in use by setting
>>> CPU's fpsimd_context_busy flag.
>> [...]
>>> +static void get_cpu_fpsimd_context(void)
>>> +{
>>> +	preempt_disable();
>>> +	__get_cpu_fpsimd_context();
>>> +}
>>
>> Is there anything that prevents a softirq being invoked between
>> preempt_disable() and __get_cpu_fpsimd_context()?
> 
> Actually, it shouldn't matter as the softirq finishes using the fpsimd
> before the thread is resumed.

If the softirqs is handled in a thread (i.e ksoftirqd), then 
preempt_disable() will prevent them to run.

For softirq running on return from interrupt context, they will finish 
before using fpsimd before the thread is resumed.

Softirq running after __get_cpu_fpsimd_context() is called will not be 
able to use FPSIMD (may_use_simd() returns false).

Cheers,

-- 
Julien Grall

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
