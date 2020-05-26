Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B4CA1B59CD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 12:59:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7OK1TRk0eKoStq0ACqgkVXBKnaZRffDr/h4yJelngaY=; b=XFhWQgQrmgPnyhGZa8d/d8dzX
	cnlxHCmroXM/1vhwR5tiqagr1UTRBL2AdiGnHL6d55lguMR8wHh615GpkZgOeaARp1wrE1EqW7IIC
	JvvHpnLv44LPmFrSE0/YunPdL8WuGj0TPSwycwx0LeR4XjOnYcebNVa0sUolMuZwS/0/rSuo+5TbM
	ZHtRty3uTbVBFl9olnSgo4o1rncBzM1DyqewP8RI7fAGpBSTvHphnXL8gwuLcM1tuWqbJiiPljouS
	Xishi3ydP/FY+BmbeJ+8obzFYsZTHDI2rRFjfnN58OTZB/DW52QKwObqGdxvR9RJh4hUrjYjGKCFi
	Z732CxRqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRZZZ-0001VK-41; Thu, 23 Apr 2020 10:59:13 +0000
Received: from out30-130.freemail.mail.aliyun.com ([115.124.30.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRZZN-0001TY-Qn
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 10:59:03 +0000
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R741e4; CH=green; DM=||false|;
 DS=||; FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01f04427;
 MF=tianjia.zhang@linux.alibaba.com; NM=1; PH=DS; RN=36; SR=0;
 TI=SMTPD_---0TwQ1hHs_1587639532; 
Received: from 30.27.118.66(mailfrom:tianjia.zhang@linux.alibaba.com
 fp:SMTPD_---0TwQ1hHs_1587639532) by smtp.aliyun-inc.com(127.0.0.1);
 Thu, 23 Apr 2020 18:58:54 +0800
Subject: Re: [PATCH v2 1/7] KVM: s390: clean up redundant 'kvm_run' parameters
To: Cornelia Huck <cohuck@redhat.com>
References: <20200422125810.34847-1-tianjia.zhang@linux.alibaba.com>
 <20200422125810.34847-2-tianjia.zhang@linux.alibaba.com>
 <20200422154543.2efba3dd.cohuck@redhat.com>
 <dc5e0fa3-558b-d606-bda9-ed281cf9e9ae@de.ibm.com>
 <20200422180403.03f60b0c.cohuck@redhat.com>
 <5e1e126d-f1b0-196c-594b-4289d0afb9a8@linux.alibaba.com>
 <20200423123901.72a4c6a4.cohuck@redhat.com>
From: Tianjia Zhang <tianjia.zhang@linux.alibaba.com>
Message-ID: <71344f73-c34f-a373-49d1-5d839c6be5f6@linux.alibaba.com>
Date: Thu, 23 Apr 2020 18:58:52 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200423123901.72a4c6a4.cohuck@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_035902_642395_6CC464D4 
X-CRM114-Status: GOOD (  14.43  )
X-Spam-Score: -8.0 (--------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-8.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [115.124.30.130 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
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
Cc: wanpengli@tencent.com, kvm@vger.kernel.org, david@redhat.com,
 benh@kernel.crashing.org, heiko.carstens@de.ibm.com, peterx@redhat.com,
 linux-mips@vger.kernel.org, paulus@ozlabs.org, hpa@zytor.com,
 kvmarm@lists.cs.columbia.edu, linux-s390@vger.kernel.org,
 frankja@linux.ibm.com, maz@kernel.org, joro@8bytes.org, x86@kernel.org,
 Christian Borntraeger <borntraeger@de.ibm.com>, mingo@redhat.com,
 julien.thierry.kdev@gmail.com, thuth@redhat.com, gor@linux.ibm.com,
 suzuki.poulose@arm.com, kvm-ppc@vger.kernel.org, bp@alien8.de,
 tglx@linutronix.de, linux-arm-kernel@lists.infradead.org, jmattson@google.com,
 tsbogend@alpha.franken.de, christoffer.dall@arm.com,
 sean.j.christopherson@intel.com, linux-kernel@vger.kernel.org,
 james.morse@arm.com, mpe@ellerman.id.au, pbonzini@redhat.com,
 vkuznets@redhat.com, linuxppc-dev@lists.ozlabs.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 2020/4/23 18:39, Cornelia Huck wrote:
> On Thu, 23 Apr 2020 11:01:43 +0800
> Tianjia Zhang <tianjia.zhang@linux.alibaba.com> wrote:
> 
>> On 2020/4/23 0:04, Cornelia Huck wrote:
>>> On Wed, 22 Apr 2020 17:58:04 +0200
>>> Christian Borntraeger <borntraeger@de.ibm.com> wrote:
>>>    
>>>> On 22.04.20 15:45, Cornelia Huck wrote:
>>>>> On Wed, 22 Apr 2020 20:58:04 +0800
>>>>> Tianjia Zhang <tianjia.zhang@linux.alibaba.com> wrote:
>>>>>       
>>>>>> In the current kvm version, 'kvm_run' has been included in the 'kvm_vcpu'
>>>>>> structure. Earlier than historical reasons, many kvm-related function
>>>>>
>>>>> s/Earlier than/For/ ?
>>>>>       
>>>>>> parameters retain the 'kvm_run' and 'kvm_vcpu' parameters at the same time.
>>>>>> This patch does a unified cleanup of these remaining redundant parameters.
>>>>>>
>>>>>> Signed-off-by: Tianjia Zhang <tianjia.zhang@linux.alibaba.com>
>>>>>> ---
>>>>>>    arch/s390/kvm/kvm-s390.c | 37 ++++++++++++++++++++++---------------
>>>>>>    1 file changed, 22 insertions(+), 15 deletions(-)
>>>>>>
>>>>>> diff --git a/arch/s390/kvm/kvm-s390.c b/arch/s390/kvm/kvm-s390.c
>>>>>> index e335a7e5ead7..d7bb2e7a07ff 100644
>>>>>> --- a/arch/s390/kvm/kvm-s390.c
>>>>>> +++ b/arch/s390/kvm/kvm-s390.c
>>>>>> @@ -4176,8 +4176,9 @@ static int __vcpu_run(struct kvm_vcpu *vcpu)
>>>>>>    	return rc;
>>>>>>    }
>>>>>>    
>>>>>> -static void sync_regs_fmt2(struct kvm_vcpu *vcpu, struct kvm_run *kvm_run)
>>>>>> +static void sync_regs_fmt2(struct kvm_vcpu *vcpu)
>>>>>>    {
>>>>>> +	struct kvm_run *kvm_run = vcpu->run;
>>>>>>    	struct runtime_instr_cb *riccb;
>>>>>>    	struct gs_cb *gscb;
>>>>>>    
>>>>>> @@ -4235,7 +4236,7 @@ static void sync_regs_fmt2(struct kvm_vcpu *vcpu, struct kvm_run *kvm_run)
>>>>>>    		}
>>>>>>    		if (vcpu->arch.gs_enabled) {
>>>>>>    			current->thread.gs_cb = (struct gs_cb *)
>>>>>> -						&vcpu->run->s.regs.gscb;
>>>>>> +						&kvm_run->s.regs.gscb;
>>>>>
>>>>> Not sure if these changes (vcpu->run-> => kvm_run->) are really worth
>>>>> it. (It seems they amount to at least as much as the changes advertised
>>>>> in the patch description.)
>>>>>
>>>>> Other opinions?
>>>>
>>>> Agreed. It feels kind of random. Maybe just do the first line (move kvm_run from the
>>>> function parameter list into the variable declaration)? Not sure if this is better.
>>>>   
>>>
>>> There's more in this patch that I cut... but I think just moving
>>> kvm_run from the parameter list would be much less disruptive.
>>>    
>>
>> I think there are two kinds of code(`vcpu->run->` and `kvm_run->`), but
>> there will be more disruptive, not less.
> 
> I just fail to see the benefit; sure, kvm_run-> is convenient, but the
> current code is just fine, and any rework should be balanced against
> the cost (e.g. cluttering git annotate).
> 

cluttering git annotate ? Does it mean Fix xxxx ("comment"). Is it 
possible to solve this problem by splitting this patch?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
