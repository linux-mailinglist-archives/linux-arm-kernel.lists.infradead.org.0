Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F85BC3E79
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 19:22:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=//ibtWim2vD/G9WMJkEumuBsVG13TtWYwhcgXQtmU0k=; b=EFdrtrSV+YFMrX
	lWfzC04DjtAJ/SVVnQ79kBT/BusSzO/2o+Db4mjFAzApZqR28nUM0x5D9maBAkmmJMohaYegYdzJU
	lkmX72cA07yYLiWs2L0zZBw400GB3leeMEH8WeChRYxU9QXsIzTaA1kEgHhgJVGG7APaGQ1XrNd0p
	UVl2Z5lkjJzrFGZwz6pYyPyDlcM4wPEHuX3ECpFQjsJW0DSk6AooEgxrgc1teE6SSNQM9FTGWXzww
	kXlkhz6mtLDoJbDQn3dXB+2nFyL+iJUEkMYj9td7hdsETEJTAyN5EaKN37LNcFKzBTbFhUlcpEyVl
	pmElc5UuDfTb7yEaQnaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFLqY-0002WK-5P; Tue, 01 Oct 2019 17:21:58 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFLqR-0002Vp-RJ
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 17:21:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AFFF2337;
 Tue,  1 Oct 2019 10:21:50 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AFAB93F706;
 Tue,  1 Oct 2019 10:21:44 -0700 (PDT)
Subject: Re: [PATCH 1/2] KVM: arm/arm64: Allow reporting non-ISV data aborts
 to userspace
To: Christoffer Dall <christoffer.dall@arm.com>, kvmarm@lists.cs.columbia.edu
References: <20190909121337.27287-1-christoffer.dall@arm.com>
 <20190909121337.27287-2-christoffer.dall@arm.com>
From: James Morse <james.morse@arm.com>
Message-ID: <875463bb-caa7-f959-2ffa-7ae8eca04aff@arm.com>
Date: Tue, 1 Oct 2019 18:21:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190909121337.27287-2-christoffer.dall@arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_102151_972832_84D3F59D 
X-CRM114-Status: GOOD (  28.44  )
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
Cc: Peter Maydell <peter.maydell@linaro.org>,
 =?UTF-8?Q?Daniel_P=2e_Berrang=c3=a9?= <berrange@redhat.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Marc Zyngier <maz@kernel.org>,
 Alexander Graf <graf@amazon.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Stefan Hajnoczi <stefanha@redhat.com>,
 Heinrich Schuchardt <xypron.glpk@gmx.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Christoffer,

On 09/09/2019 13:13, Christoffer Dall wrote:
> For a long time, if a guest accessed memory outside of a memslot using
> any of the load/store instructions in the architecture which doesn't
> supply decoding information in the ESR_EL2 (the ISV bit is not set), the
> kernel would print the following message and terminate the VM as a
> result of returning -ENOSYS to userspace:
> 
>   load/store instruction decoding not implemented
> 
> The reason behind this message is that KVM assumes that all accesses
> outside a memslot is an MMIO access which should be handled by
> userspace, and we originally expected to eventually implement some sort
> of decoding of load/store instructions where the ISV bit was not set.

> However, it turns out that many of the instructions which don't provide
> decoding information on abort are not safe to use for MMIO accesses, and
> the remaining few that would potentially make sense to use on MMIO
> accesses, such as those with register writeback, are not used in
> practice.  It also turns out that fetching an instruction from guest
> memory can be a pretty horrible affair, involving stopping all CPUs on
> SMP systems, handling multiple corner cases of address translation in
> software, and more.  It doesn't appear likely that we'll ever implement
> this in the kernel.

> What is much more common is that a user has misconfigured his/her guest
> and is actually not accessing an MMIO region, but just hitting some
> random hole in the IPA space.  In this scenario, the error message above
> is almost misleading and has led to a great deal of confusion over the
> years.
> 
> It is, nevertheless, ABI to userspace, and we therefore need to
> introduce a new capability that userspace explicitly enables to change
> behavior.
> 
> This patch introduces KVM_CAP_ARM_NISV_TO_USER (NISV meaning Non-ISV)
> which does exactly that, and introduces a new exit reason to report the
> event to userspace.  User space can then emulate an exception to the
> guest, restart the guest, suspend the guest, or take any other
> appropriate action as per the policy of the running system.



> diff --git a/Documentation/virt/kvm/api.txt b/Documentation/virt/kvm/api.txt
> index 2d067767b617..02501333f746 100644
> --- a/Documentation/virt/kvm/api.txt
> +++ b/Documentation/virt/kvm/api.txt
> @@ -4453,6 +4453,35 @@ Hyper-V SynIC state change. Notification is used to remap SynIC
>  event/message pages and to enable/disable SynIC messages/events processing
>  in userspace.
>  
> +		/* KVM_EXIT_ARM_NISV */
> +		struct {
> +			__u64 esr_iss;
> +			__u64 fault_ipa;
> +		} arm_nisv;
> +
> +Used on arm and arm64 systems. If a guest accesses memory not in a memslot,
> +KVM will typically return to userspace and ask it to do MMIO emulation on its
> +behalf. However, for certain classes of instructions, no instruction decode
> +(direction, length of memory access) is provided, and fetching and decoding
> +the instruction from the VM is overly complicated to live in the kernel.
> +
> +Historically, when this situation occurred, KVM would print a warning and kill
> +the VM. KVM assumed that if the guest accessed non-memslot memory, it was
> +trying to do I/O, which just couldn't be emulated, and the warning message was
> +phrased accordingly. However, what happened more often was that a guest bug
> +caused access outside the guest memory areas which should lead to a more
> +mearningful warning message and an external abort in the guest, if the access
> +did not fall within an I/O window.
> +
> +Userspace implementations can query for KVM_CAP_ARM_NISV_TO_USER, and enable
> +this capability at VM creation. Once this is done, these types of errors will
> +instead return to userspace with KVM_EXIT_ARM_NISV, with the valid bits from
> +the HSR (arm) and ESR_EL2 (arm64) in the esr_iss field, and the faulting IPA
> +in the fault_ipa field. Userspace can either fix up the access if it's
> +actually an I/O access by decoding the instruction from guest memory (if it's
> +very brave) and continue executing the guest, or it can decide to suspend,
> +dump, or restart the guest.

Should we document which parts of instruction-emulation the VMM has to do?

For KVM_EXIT_MMIO, kvm looks after updating registers and advancing the PC and SS state
machine.

I can't see a kvm_skip_instr() in here, so the VMM has to do all of that stuff, including
any register post-increment, which is the reason we need the instruction in the first place.


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
