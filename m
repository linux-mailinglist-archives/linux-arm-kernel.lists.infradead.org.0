Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CF581E35EF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 04:55:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JVfxe7NHAwz6TkQc9yJhBoh6Bwj/CdOl7HcXkhtmAZM=; b=KeXjGbM5UrJXIe
	EjMzwOqtnW9ilbWpf9Jc2Qz4Ho0Fla7Z821QUcpKx/pYXsHMlELBE0YrJMfm0m5mUePqwvkipV7DP
	Qliin5yA6WWgNn5ZhRH9uM2eE7SSZEK3yb/iZPphx/oTJaHlGz/72eM5rNIg71ufI4epPlLOBFyxO
	IalsUMFkVw4fIDrK63ECQ6j+YUkL8nV3fzf2qRLBcPRgOhtJ2l8FjhU/BFW0hsTb97nZNe3UJ2Kn4
	DsSvFveLG6Tt5eAptDqBKBPWH0ppfBVWzL4/rYRkFcl8croXRgYRPSPktsA3OOIm/t6dns1JrfwWo
	Oa1UKvC1Nxv51BC56fwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdmE9-00040m-KZ; Wed, 27 May 2020 02:55:33 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdmDx-00040P-JP
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 02:55:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1590548120;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=l4K9Ld8nvFhhrcUkF46+uYVzHz+spBxIeBhQGnUCsLs=;
 b=A9utoaO4xJ1KlkScQ/p6asaAvyHOcr1eEy8yWJrqj0SlOFf2iGGYdiVk3mvjQIRZRuAy27
 rACSvKxFb+44EeQIXR3UTthEUV7KMTYegfZrFlaC0h8Zs9xSxwnOSPGxRk7QnObFmjailZ
 ZtsA4wNaDOqvYN5IvEctMxB5J99MMt0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-301-vg8k3xqlP2uyYE5pKH1NJA-1; Tue, 26 May 2020 22:55:15 -0400
X-MC-Unique: vg8k3xqlP2uyYE5pKH1NJA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B61EC10753FB;
 Wed, 27 May 2020 02:55:13 +0000 (UTC)
Received: from localhost.localdomain (vpn2-54-130.bne.redhat.com
 [10.64.54.130])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 2852E5D9E7;
 Wed, 27 May 2020 02:55:06 +0000 (UTC)
Subject: Re: [PATCH RFCv2 4/9] kvm/arm64: Detach ESR operator from vCPU struct
To: Mark Rutland <mark.rutland@arm.com>
References: <20200508032919.52147-1-gshan@redhat.com>
 <20200508032919.52147-5-gshan@redhat.com>
 <20200526105154.GD1363@C02TD0UTHF1T.local>
From: Gavin Shan <gshan@redhat.com>
Message-ID: <4cda1e43-8f96-4e48-2642-39a5545905c0@redhat.com>
Date: Wed, 27 May 2020 12:55:04 +1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <20200526105154.GD1363@C02TD0UTHF1T.local>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_195521_719871_D2F5FF73 
X-CRM114-Status: GOOD (  21.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [207.211.31.120 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Reply-To: Gavin Shan <gshan@redhat.com>
Cc: aarcange@redhat.com, drjones@redhat.com, suzuki.poulose@arm.com,
 catalin.marinas@arm.com, linux-kernel@vger.kernel.org, eric.auger@redhat.com,
 james.morse@arm.com, shan.gavin@gmail.com, maz@kernel.org, will@kernel.org,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mark,

On 5/26/20 8:51 PM, Mark Rutland wrote:
> On Fri, May 08, 2020 at 01:29:14PM +1000, Gavin Shan wrote:
>> There are a set of inline functions defined in kvm_emulate.h. Those
>> functions reads ESR from vCPU fault information struct and then operate
>> on it. So it's tied with vCPU fault information and vCPU struct. It
>> limits their usage scope.
>>
>> This detaches these functions from the vCPU struct. With this, the
>> caller has flexibility on where the ESR is read. It shouldn't cause
>> any functional changes.
>>
>> Signed-off-by: Gavin Shan <gshan@redhat.com>
>> ---
>>   arch/arm64/include/asm/kvm_emulate.h     | 83 +++++++++++-------------
>>   arch/arm64/kvm/handle_exit.c             | 20 ++++--
>>   arch/arm64/kvm/hyp/switch.c              | 24 ++++---
>>   arch/arm64/kvm/hyp/vgic-v2-cpuif-proxy.c |  7 +-
>>   arch/arm64/kvm/inject_fault.c            |  4 +-
>>   arch/arm64/kvm/sys_regs.c                | 12 ++--
>>   virt/kvm/arm/arm.c                       |  4 +-
>>   virt/kvm/arm/hyp/aarch32.c               |  2 +-
>>   virt/kvm/arm/hyp/vgic-v3-sr.c            |  5 +-
>>   virt/kvm/arm/mmio.c                      | 27 ++++----
>>   virt/kvm/arm/mmu.c                       | 22 ++++---
>>   11 files changed, 112 insertions(+), 98 deletions(-)
>>
>> diff --git a/arch/arm64/include/asm/kvm_emulate.h b/arch/arm64/include/asm/kvm_emulate.h
>> index bd1a69e7c104..2873bf6dc85e 100644
>> --- a/arch/arm64/include/asm/kvm_emulate.h
>> +++ b/arch/arm64/include/asm/kvm_emulate.h
>> @@ -270,10 +270,8 @@ static __always_inline u32 kvm_vcpu_get_esr(const struct kvm_vcpu *vcpu)
>>   	return vcpu->arch.fault.esr_el2;
>>   }
>>   
>> -static __always_inline int kvm_vcpu_get_condition(const struct kvm_vcpu *vcpu)
>> +static __always_inline int kvm_vcpu_get_condition(u32 esr)
> 
> Given the `vcpu` argument has been removed, it's odd to keep `vcpu` in the
> name, rather than `esr`.
> 
> e.g. this would make more sense as something like esr_get_condition().
> 
> ... and if we did something like that, we could move most of the
> extraction functions into <asm/esr.h>, and share them with non-KVM code.
> 
> Otherwise, do you need to extract all of these for your use-case, or do
> you only need a few of the helpers? If you only need a few, it might be
> better to only factor those out for now, and keep the existing API in
> place with wrappers, e.g. have:
> 
> | esr_get_condition(u32 esr) {
> | 	...
> | }
> |
> | kvm_vcpu_get_condition(const struct kvm_vcpu *vcpu)
> | {
> | 	return esr_get_condition(kvm_vcpu_get_esr(vcpu));
> | }
> 

Sure, I'll follow approach#1, to move these helper functions to asm/esr.h
and with "vcpu" dropped in their names. I don't think it makes sense to
maintain two sets of helper functions for the simple logic. So the helper
function will be called where they should be, as below:

    esr_get_condition(u32 esr) { ... }
    
    bool __hyp_text kvm_condition_valid32(const struct kvm_vcpu *vcpu)
    {
         int cond = esr_get_condition(kvm_vcpu_get_esr(vcpu));
         :
    }

Thanks,
Gavin


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
