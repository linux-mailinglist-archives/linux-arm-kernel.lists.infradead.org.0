Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 809B39918C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 13:01:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dSDBnllM6+mcGpxJDyxCZHtLi5jyewqF4fsJsF2SEyo=; b=l4rp+6JxU4kR0+
	as9usDKLHde2T/RVJFm+fPt79McW0E7ldI9MIHmuZjA4CocFSztk24nd99MFPu8K5iA0n2RFn7rm9
	V1CPhPT2cRSREkryiOxZ8U6XFFqXi82SlolDs1tim1t1HzNIeerq2ByLSQ2iz1YpS7gFPi3ETgN7z
	2A/H8tmNqMFvlYfDOfHMThYlNX04niP8NiJmdPKBMFkiRjnULl8UeLTTMqlaVLOwgkeqMUEJRoXr/
	8Qij8Z+4zoTIcjWQwM9dInyUxl3A6KDhkSdQuxt19HHOGJ+1iFW872cXl8weZfA5pNelVloWnprfU
	mhj+PTVJJ5Vb7TvI0LJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0kqA-0000MD-7K; Thu, 22 Aug 2019 11:01:14 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i0kpv-0000Lk-8t
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 11:01:00 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D3F691596;
 Thu, 22 Aug 2019 04:00:57 -0700 (PDT)
Received: from [10.1.196.133] (e112269-lin.cambridge.arm.com [10.1.196.133])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E5B673F246;
 Thu, 22 Aug 2019 04:00:55 -0700 (PDT)
Subject: Re: [PATCH v3 05/10] KVM: arm64: Support stolen time reporting via
 shared structure
To: Jonathan Cameron <jonathan.cameron@huawei.com>
References: <20190821153656.33429-1-steven.price@arm.com>
 <20190821153656.33429-6-steven.price@arm.com>
 <20190822113942.0000701f@huawei.com>
From: Steven Price <steven.price@arm.com>
Message-ID: <301610cc-ba04-89d6-a0b6-d37ecf4a717a@arm.com>
Date: Thu, 22 Aug 2019 12:00:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190822113942.0000701f@huawei.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_040059_357315_339F9FFF 
X-CRM114-Status: GOOD (  16.45  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 =?UTF-8?B?UmFkaW0gS3LEjW3DocWZ?= <rkrcmar@redhat.com>, kvm@vger.kernel.org,
 Suzuki K Pouloze <suzuki.poulose@arm.com>, Marc Zyngier <maz@kernel.org>,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, James Morse <james.morse@arm.com>,
 linux-arm-kernel@lists.infradead.org,
 Catalin Marinas <catalin.marinas@arm.com>, Paolo Bonzini <pbonzini@redhat.com>,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 22/08/2019 11:39, Jonathan Cameron wrote:
> On Wed, 21 Aug 2019 16:36:51 +0100
> Steven Price <steven.price@arm.com> wrote:
> 
>> Implement the service call for configuring a shared structure between a
>> VCPU and the hypervisor in which the hypervisor can write the time
>> stolen from the VCPU's execution time by other tasks on the host.
>>
>> The hypervisor allocates memory which is placed at an IPA chosen by user
>> space. The hypervisor then updates the shared structure using
>> kvm_put_guest() to ensure single copy atomicity of the 64-bit value
>> reporting the stolen time in nanoseconds.
>>
>> Whenever stolen time is enabled by the guest, the stolen time counter is
>> reset.
>>
>> The stolen time itself is retrieved from the sched_info structure
>> maintained by the Linux scheduler code. We enable SCHEDSTATS when
>> selecting KVM Kconfig to ensure this value is meaningful.
>>
>> Signed-off-by: Steven Price <steven.price@arm.com>
> 
> One totally trivial comment inline... Feel free to ignore :)
> 
[...]
>> +int kvm_hypercall_stolen_time(struct kvm_vcpu *vcpu)
>> +{
>> +	u64 ret;
>> +	int err;
>> +
>> +	/*
>> +	 * Start counting stolen time from the time the guest requests
>> +	 * the feature enabled.
>> +	 */
>> +	vcpu->arch.steal.steal = 0;
>> +	vcpu->arch.steal.last_steal = current->sched_info.run_delay;
>> +
>> +	err = kvm_update_stolen_time(vcpu, true);
>> +
>> +	if (err)
>> +		ret = SMCCC_RET_NOT_SUPPORTED;
> 
> Trivial by why not
> 		return SMCCC_RET_NOT_SUPPORTED;
> 
> 	return vcpu->kvm->arch.pvtime.st_base +
> ...
> Drops the indentation a bit and puts the error handling out of
> line which is slightly nicer to read (to my eyes).

Yes that's a nice change - drops the extra "ret" variable too.

Thanks,

Steve

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
