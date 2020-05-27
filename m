Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04DD51E3C43
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 10:41:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ONrg8AT0jquMIEzlgDaUkncrgHa+MlPNulLj7uWfJ2s=; b=cJa2XcapKlzP/d2g6LfybVEn+
	XD0A7bJpKZ4ubit02ElUodKsxtYVoDTav2PlDxkEj9HChdHRcH2HU1h3LMlZUdSsImDL7663Nskg8
	ES0++r4hXp+CPDiI5OvS+TuETlHz0jOhDRFEslE9DT5yK1Pa4FyovX77kY7LFPzlbLjNCV2U6h4Xm
	PKwU0H/rWvq/iQ4k9CBI/KFzLxgtCVTkUby4m/DKKRV9OLYV9j6QZt7TOx+O3eoTOjuv9pKD1yi16
	HAE3tT7VJppGa605xh+XSA0lcfyrcCTOxAFAr9ToVWrwbx/VmZ4+Ammlrlp3rumKW/x0i7l82QLUk
	zz6yzP3CA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdrd5-0006Ru-FF; Wed, 27 May 2020 08:41:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdrcv-0006RX-Dm
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 08:41:30 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BF36120723;
 Wed, 27 May 2020 08:41:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590568888;
 bh=E378D1wkdmQfMiop/fBX66cdxZ0b9zhjf0U/fYZnvBk=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=nmjnrOt6WgNE82CBCmt4ZJ8pDHHi6T+/y6D/ivIGYua+SXBSlKOrfbiEBriENHmGv
 xWvu55Jfjl8GQN0O46HWurgC/PJfj3r1bBcFfphCXq2Z8Y+FzkWo58iaQdFLBFaQbu
 aEHmcEhuDX/LU957RhGmlO3saI7YCobglXKif+mM=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jdrct-00Fe3b-6m; Wed, 27 May 2020 09:41:27 +0100
MIME-Version: 1.0
Date: Wed, 27 May 2020 09:41:27 +0100
From: Marc Zyngier <maz@kernel.org>
To: Alexandru Elisei <alexandru.elisei@arm.com>
Subject: Re: [PATCH 03/26] KVM: arm64: Factor out stage 2 page table data from
 struct kvm
In-Reply-To: <6518439c-65b7-1e87-a21d-a053d75c0514@arm.com>
References: <20200422120050.3693593-1-maz@kernel.org>
 <20200422120050.3693593-4-maz@kernel.org>
 <a7c8207c-9061-ad0e-c9f8-64c995e928b6@arm.com>
 <76d811eb-b304-c49f-1f21-fe9d95112a28@arm.com>
 <6518439c-65b7-1e87-a21d-a053d75c0514@arm.com>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <ea603b3a7a51a597263e7c8152f4c795@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: alexandru.elisei@arm.com, james.morse@arm.com,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org, andre.przywara@arm.com, christoffer.dall@arm.com,
 Dave.Martin@arm.com, jintack@cs.columbia.edu, gcherian@marvell.com,
 prime.zeng@hisilicon.com, will@kernel.org, catalin.marinas@arm.com,
 mark.rutland@arm.com, julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_014129_499318_2E39CBEC 
X-CRM114-Status: GOOD (  17.36  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Jintack Lim <jintack@cs.columbia.edu>, Andre Przywara <andre.przywara@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>, Dave Martin <Dave.Martin@arm.com>,
 George Cherian <gcherian@marvell.com>, James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 "Zengtao \(B\)" <prime.zeng@hisilicon.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Alex,

On 2020-05-12 17:53, Alexandru Elisei wrote:
> Hi,
> 
> On 5/12/20 12:17 PM, James Morse wrote:
>> Hi Alex, Marc,
>> 
>> (just on this last_vcpu_ran thing...)
>> 
>> On 11/05/2020 17:38, Alexandru Elisei wrote:
>>> On 4/22/20 1:00 PM, Marc Zyngier wrote:
>>>> From: Christoffer Dall <christoffer.dall@arm.com>
>>>> 
>>>> As we are about to reuse our stage 2 page table manipulation code 
>>>> for
>>>> shadow stage 2 page tables in the context of nested virtualization, 
>>>> we
>>>> are going to manage multiple stage 2 page tables for a single VM.
>>>> 
>>>> This requires some pretty invasive changes to our data structures,
>>>> which moves the vmid and pgd pointers into a separate structure and
>>>> change pretty much all of our mmu code to operate on this structure
>>>> instead.
>>>> 
>>>> The new structure is called struct kvm_s2_mmu.
>>>> 
>>>> There is no intended functional change by this patch alone.
>>>> diff --git a/arch/arm64/include/asm/kvm_host.h 
>>>> b/arch/arm64/include/asm/kvm_host.h
>>>> index 7dd8fefa6aecd..664a5d92ae9b8 100644
>>>> --- a/arch/arm64/include/asm/kvm_host.h
>>>> +++ b/arch/arm64/include/asm/kvm_host.h
>>>> @@ -63,19 +63,32 @@ struct kvm_vmid {
>>>>  	u32    vmid;
>>>>  };
>>>> 
>>>> -struct kvm_arch {
>>>> +struct kvm_s2_mmu {
>>>>  	struct kvm_vmid vmid;
>>>> 
>>>> -	/* stage2 entry level table */
>>>> -	pgd_t *pgd;
>>>> -	phys_addr_t pgd_phys;
>>>> -
>>>> -	/* VTCR_EL2 value for this VM */
>>>> -	u64    vtcr;
>>>> +	/*
>>>> +	 * stage2 entry level table
>>>> +	 *
>>>> +	 * Two kvm_s2_mmu structures in the same VM can point to the same 
>>>> pgd
>>>> +	 * here.  This happens when running a non-VHE guest hypervisor 
>>>> which
>>>> +	 * uses the canonical stage 2 page table for both vEL2 and for 
>>>> vEL1/0
>>>> +	 * with vHCR_EL2.VM == 0.
>>> It makes more sense to me to say that a non-VHE guest hypervisor will 
>>> use the
>>> canonical stage *1* page table when running at EL2
>> Can KVM say anything about stage1? Its totally under the the guests 
>> control even at vEL2...
> 
> It just occurred to me that "canonical stage 2 page table" refers to 
> the L0
> hypervisor stage 2, not to the L1 hypervisor stage 2. If you don't mind 
> my
> suggestion, perhaps the comment can be slightly improved to avoid any 
> confusion?
> Maybe something along the lines of "[..] This happens when running a
> non-VHE guest
> hypervisor, in which case we use the canonical stage 2 page table for 
> both vEL2
> and for vEL1/0 with vHCR_EL2.VM == 0".

If the confusion stems from the lack of guest stage-2, how about:

"This happens when running a guest using a translation regime that isn't
  affected by its own stage-2 translation, such as a non-VHE hypervisor
  running at vEL2, or for vEL1/EL0 with vHCR_EL2.VM == 0. In that case,
  we use the canonical stage-2 page tables."

instead? Does this lift the ambiguity?

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
