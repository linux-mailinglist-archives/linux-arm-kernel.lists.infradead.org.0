Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04DFCA347F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 11:52:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PnYeN48ae+nKDHPe0cD4dBTTYGnYJOvVsrzy2+TV0MY=; b=U7js05Qw/NQ539
	brW9SUi3Q4aB0v1uf+ht+RTtOWXPX5bBnJWktk3+S6q9IN+houwYk23wQhUHxGwRzPCjWujS2uKjd
	oUO2rHJUFRk7Nz5HFFzhU3HACmHMesVaOH8FFz4VwjUp/PcJ6GpnBMPTcdAsyNjDVSAbzTpTFizcn
	sPgdqUIU1Gft/Awi8wNhUOa2UQETIjjE9E9dSg75iGsPSwSJDh+Pndhu/0iWn5UXNdG7XP08ZcTkh
	L62mNk0zC04dcxvJvAbHs1k6TS9u9HaQSdT5fGKwRSJAX1tr9B06foqnqE5FPGHOFcB7dE0mhUywx
	AmcgUbChqM9oAMYhE8zQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3dZr-000136-7U; Fri, 30 Aug 2019 09:52:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i3dZh-00012l-Ey
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 09:52:10 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C85E8344;
 Fri, 30 Aug 2019 02:52:08 -0700 (PDT)
Received: from [10.1.196.133] (e112269-lin.cambridge.arm.com [10.1.196.133])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 23C263F718;
 Fri, 30 Aug 2019 02:52:07 -0700 (PDT)
Subject: Re: [PATCH v4 05/10] KVM: arm64: Support stolen time reporting via
 shared structure
To: Christoffer Dall <christoffer.dall@arm.com>
References: <20190830084255.55113-1-steven.price@arm.com>
 <20190830084255.55113-6-steven.price@arm.com>
 <20190830094245.GB5307@e113682-lin.lund.arm.com>
From: Steven Price <steven.price@arm.com>
Message-ID: <bf45fea9-f2f7-1ff3-c90c-cb9623cbd959@arm.com>
Date: Fri, 30 Aug 2019 10:52:05 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190830094245.GB5307@e113682-lin.lund.arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_025209_541058_1A17EA3C 
X-CRM114-Status: GOOD (  19.05  )
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
Cc: kvm@vger.kernel.org, linux-doc@vger.kernel.org,
 Marc Zyngier <maz@kernel.org>, Russell King <linux@armlinux.org.uk>,
 linux-kernel@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 Paolo Bonzini <pbonzini@redhat.com>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 30/08/2019 10:42, Christoffer Dall wrote:
> On Fri, Aug 30, 2019 at 09:42:50AM +0100, Steven Price wrote:
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
[...]
>> +int kvm_update_stolen_time(struct kvm_vcpu *vcpu, bool init)
>> +{
>> +	struct kvm *kvm = vcpu->kvm;
>> +	u64 steal;
>> +	u64 steal_le;
>> +	u64 offset;
>> +	int idx;
>> +	u64 base = vcpu->arch.steal.base;
>> +
>> +	if (base == GPA_INVALID)
>> +		return -ENOTSUPP;
>> +
>> +	/* Let's do the local bookkeeping */
>> +	steal = vcpu->arch.steal.steal;
>> +	steal += current->sched_info.run_delay - vcpu->arch.steal.last_steal;
>> +	vcpu->arch.steal.last_steal = current->sched_info.run_delay;
>> +	vcpu->arch.steal.steal = steal;
>> +
>> +	steal_le = cpu_to_le64(steal);
>> +	idx = srcu_read_lock(&kvm->srcu);
>> +	if (init) {
>> +		struct pvclock_vcpu_stolen_time init_values = {
>> +			.revision = 0,
>> +			.attributes = 0
>> +		};
>> +		kvm_write_guest(kvm, base, &init_values,
>> +				sizeof(init_values));
>> +	}
>> +	offset = offsetof(struct pvclock_vcpu_stolen_time, stolen_time);
>> +	kvm_put_guest(kvm, base + offset, steal_le, u64);
> 
> Let's hope we don't have thousands of memslots through which we have to
> do a linear scan on every vcpu load after this.  If that were the case,
> I think the memslot search path would have to be updated anyhow.

Yes I'm not sure with the current memslot implementation it is actually
beneficial to split up the stolen time structures into separate
memslots. But there's nothing requiring the use of so many memslots.

If this is really a problem it would be possible to implement a
memslot-caching kvm_put_guest(), but I'd want to wait until someone
shows there's actually a problem first.

> Otherwise looks reasonable to me.

Great, thanks for the review.

Steve

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
