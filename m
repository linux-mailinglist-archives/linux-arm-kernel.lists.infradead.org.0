Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD8D71A90DE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 04:19:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iZvjYmABleSSgS1nlOrZ3YmRsJf/ncgtqVeMdh/ylcY=; b=ryGeTXwdecBxDEsyt/OCMAGb9
	nmkbiZYZHgGvB6tCcTDDE7FNcpEmfW+zRrpdR1HYW4xNvU0MnWjTORr0nhGTPksPHlMTWjUO2T+JM
	djaq1NlVECmeSttXFkwl5llZ79sLGO/Qe76mx7ZesxNdE6zPjK3oTyLqusqaVDkAmL8BOB+VFXoBb
	ZHIRAbdV2PBvYUrHdzriOuuoipKLFrj0g2g4uK8XgSILiW/iNYBGvflfnC+CqgKgb3legpbfNFG3T
	OgYic8VmvxXD9iMOK7m1UZ7uvQuEHM5cWWUz3u28kAXE+4T8mqpnesiIquDTcgWj9xDSGyed7q9mv
	/S5eoQA1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOXeO-00013Z-Nf; Wed, 15 Apr 2020 02:19:40 +0000
Received: from out30-54.freemail.mail.aliyun.com ([115.124.30.54])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOXeA-00010O-DI
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 02:19:28 +0000
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R171e4; CH=green; DM=||false|;
 DS=||; FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01e04357;
 MF=tianjia.zhang@linux.alibaba.com; NM=1; PH=DS; RN=19; SR=0;
 TI=SMTPD_---0TvZsw-x_1586917144; 
Received: from 30.27.118.45(mailfrom:tianjia.zhang@linux.alibaba.com
 fp:SMTPD_---0TvZsw-x_1586917144) by smtp.aliyun-inc.com(127.0.0.1);
 Wed, 15 Apr 2020 10:19:05 +0800
Subject: Re: [PATCH] KVM: Optimize kvm_arch_vcpu_ioctl_run function
To: Vitaly Kuznetsov <vkuznets@redhat.com>
References: <20200413034523.110548-1-tianjia.zhang@linux.alibaba.com>
 <875ze2ywhy.fsf@vitty.brq.redhat.com>
From: Tianjia Zhang <tianjia.zhang@linux.alibaba.com>
Message-ID: <cc29ce22-4c70-87d1-d7aa-9d38438ba8a5@linux.alibaba.com>
Date: Wed, 15 Apr 2020 10:19:04 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <875ze2ywhy.fsf@vitty.brq.redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_191926_626203_38B3FF59 
X-CRM114-Status: GOOD (  14.10  )
X-Spam-Score: -8.0 (--------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-8.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [115.124.30.54 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: wanpengli@tencent.com, james.morse@arm.com, kvm@vger.kernel.org,
 suzuki.poulose@arm.com, maz@kernel.org, joro@8bytes.org, x86@kernel.org,
 linux-kernel@vger.kernel.org, sean.j.christopherson@intel.com,
 mingo@redhat.com, bp@alien8.de, julien.thierry.kdev@gmail.com, hpa@zytor.com,
 pbonzini@redhat.com, tglx@linutronix.de, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, jmattson@google.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 2020/4/14 22:26, Vitaly Kuznetsov wrote:
> Tianjia Zhang <tianjia.zhang@linux.alibaba.com> writes:
> 
>> kvm_arch_vcpu_ioctl_run() is only called in the file kvm_main.c,
>> where vcpu->run is the kvm_run parameter, so it has been replaced.
>>
>> Signed-off-by: Tianjia Zhang <tianjia.zhang@linux.alibaba.com>
>> ---
>>   arch/x86/kvm/x86.c | 8 ++++----
>>   virt/kvm/arm/arm.c | 2 +-
>>   2 files changed, 5 insertions(+), 5 deletions(-)
>>
>> diff --git a/arch/x86/kvm/x86.c b/arch/x86/kvm/x86.c
>> index 3bf2ecafd027..70e3f4abbd4d 100644
>> --- a/arch/x86/kvm/x86.c
>> +++ b/arch/x86/kvm/x86.c
>> @@ -8726,18 +8726,18 @@ int kvm_arch_vcpu_ioctl_run(struct kvm_vcpu *vcpu, struct kvm_run *kvm_run)
>>   		r = -EAGAIN;
>>   		if (signal_pending(current)) {
>>   			r = -EINTR;
>> -			vcpu->run->exit_reason = KVM_EXIT_INTR;
>> +			kvm_run->exit_reason = KVM_EXIT_INTR;
> 
> I have a more generic question: why do we need to pass 'kvm_run' to
> kvm_arch_vcpu_ioctl_run() if it can be extracted from 'struct kvm_vcpu'?
> The only call site looks like
> 
> virt/kvm/kvm_main.c:            r = kvm_arch_vcpu_ioctl_run(vcpu, vcpu->run);
> 

In the earlier version, kvm_run is used to pass parameters with user 
mode and is not included in the vcpu structure, so it has been retained 
until now.

Thanks,
Tianjia

>>   			++vcpu->stat.signal_exits;
>>   		}
>>   		goto out;
>>   	}
>>   
>> -	if (vcpu->run->kvm_valid_regs & ~KVM_SYNC_X86_VALID_FIELDS) {
>> +	if (kvm_run->kvm_valid_regs & ~KVM_SYNC_X86_VALID_FIELDS) {
>>   		r = -EINVAL;
>>   		goto out;
>>   	}
>>   
>> -	if (vcpu->run->kvm_dirty_regs) {
>> +	if (kvm_run->kvm_dirty_regs) {
>>   		r = sync_regs(vcpu);
>>   		if (r != 0)
>>   			goto out;
>> @@ -8767,7 +8767,7 @@ int kvm_arch_vcpu_ioctl_run(struct kvm_vcpu *vcpu, struct kvm_run *kvm_run)
>>   
>>   out:
>>   	kvm_put_guest_fpu(vcpu);
>> -	if (vcpu->run->kvm_valid_regs)
>> +	if (kvm_run->kvm_valid_regs)
>>   		store_regs(vcpu);
>>   	post_kvm_run_save(vcpu);
>>   	kvm_sigset_deactivate(vcpu);
>> diff --git a/virt/kvm/arm/arm.c b/virt/kvm/arm/arm.c
>> index 48d0ec44ad77..ab9d7966a4c8 100644
>> --- a/virt/kvm/arm/arm.c
>> +++ b/virt/kvm/arm/arm.c
>> @@ -659,7 +659,7 @@ int kvm_arch_vcpu_ioctl_run(struct kvm_vcpu *vcpu, struct kvm_run *run)
>>   		return ret;
>>   
>>   	if (run->exit_reason == KVM_EXIT_MMIO) {
>> -		ret = kvm_handle_mmio_return(vcpu, vcpu->run);
>> +		ret = kvm_handle_mmio_return(vcpu, run);
>>   		if (ret)
>>   			return ret;
>>   	}
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
