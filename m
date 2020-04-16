Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71CC21AC875
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 17:08:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vU5Ga5V8YP0czcDz2rupu22BXvlFomDd8jKW8MW6sYg=; b=CJp6g6kNVCukcw
	Pae4ZdsKnHB1Q/9fnXE5BWyZSbx+Nzr/dtD954rG1VaO5G7T6PZpPF9rTMzATiYRSwBQAq+6e/Dl1
	kJgmqBCdDE53Gii0RESa1bHcf6L54zFw8sYBYRw9dV22JDempTX8Ct7v4dhGT/yDeA/ynVgkhs5pd
	d1LqqT8Lo9MfB4NdB3pPaCzqk/LA24UIinDPLjtzesjKgB+rni3CxiNNePp5GMZDk6AdV+gQj9w0j
	5Q9/8uhLhd58mewFayfbbFwEbBkbynhexfmVvSAFtB8YHeLx86wKIbxiCDjdQ5ft0qGIrlttHdoPx
	cGnTFdp8KtSvVL8UOfqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP68F-0000IB-MU; Thu, 16 Apr 2020 15:08:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP687-0000H4-5T
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 15:08:40 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 826ED214AF;
 Thu, 16 Apr 2020 15:08:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587049717;
 bh=BngBZ3cc2Wyio0zslJr6qOVPlAUoUyi/rGBM46UeduQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=hphZ2MtjbHZLx4snk5+/eXLlIWH82BkL4dZ1SXUbyyYUROITsuF5pCcdR0knjzEVD
 iNCz63Znj9LYi/xmI8tCq9YciWrCsWO9xvcVQymPa4ezAiZrnBCoMNzfAblK+h7He6
 NS3GJDxdLgkC/Fww/TRtm/UTTdUY3wzFZlvouUQU=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jP683-003tlO-MP; Thu, 16 Apr 2020 16:08:35 +0100
Date: Thu, 16 Apr 2020 16:08:33 +0100
From: Marc Zyngier <maz@kernel.org>
To: Keqian Zhu <zhukeqian1@huawei.com>
Subject: Re: [PATCH v2] KVM/arm64: Support enabling dirty log gradually in
 small chunks
Message-ID: <20200416160833.728017e9@why>
In-Reply-To: <20200413122023.52583-1-zhukeqian1@huawei.com>
References: <20200413122023.52583-1-zhukeqian1@huawei.com>
Organization: Approximate
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: zhukeqian1@huawei.com, kvm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, pbonzini@redhat.com, james.morse@arm.com,
 julien.thierry.kdev@gmail.com, will@kernel.org, suzuki.poulose@arm.com,
 sean.j.christopherson@intel.com, jianjay.zhou@huawei.com,
 wanghaibin.wang@huawei.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_080839_243568_32061E5F 
X-CRM114-Status: GOOD (  24.12  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: kvm@vger.kernel.org, Suzuki K Poulose <suzuki.poulose@arm.com>,
 wanghaibin.wang@huawei.com, linux-kernel@vger.kernel.org,
 Sean Christopherson <sean.j.christopherson@intel.com>,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Jay Zhou <jianjay.zhou@huawei.com>, Paolo Bonzini <pbonzini@redhat.com>,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 13 Apr 2020 20:20:23 +0800
Keqian Zhu <zhukeqian1@huawei.com> wrote:

> There is already support of enabling dirty log graually in small chunks

gradually

> for x86 in commit 3c9bd4006bfc ("KVM: x86: enable dirty log gradually in
> small chunks"). This adds support for arm64.
> 
> x86 still writes protect all huge pages when DIRTY_LOG_INITIALLY_ALL_SET
> is eanbled. However, for arm64, both huge pages and normal pages can be

enabled

> write protected gradually by userspace.
> 
> Under the Huawei Kunpeng 920 2.6GHz platform, I did some tests on 128G
> Linux VMs with different page size. The memory pressure is 127G in each
> case. The time taken of memory_global_dirty_log_start in QEMU is listed
> below:
> 
> Page Size      Before    After Optimization
>   4K            650ms         1.8ms
>   2M             4ms          1.8ms
>   1G             2ms          1.8ms

These numbers are different from what you have advertised before. What
changed?

> 
> Besides the time reduction, the biggest income is that we will minimize

s/income/improvement/

> the performance side effect (because of dissloving huge pages and marking

dissolving

> memslots dirty) on guest after enabling dirty log.
> 
> Signed-off-by: Keqian Zhu <zhukeqian1@huawei.com>
> ---
>  Documentation/virt/kvm/api.rst    |  2 +-
>  arch/arm64/include/asm/kvm_host.h |  3 +++
>  virt/kvm/arm/mmu.c                | 12 ++++++++++--
>  3 files changed, 14 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/virt/kvm/api.rst b/Documentation/virt/kvm/api.rst
> index efbbe570aa9b..0017f63fa44f 100644
> --- a/Documentation/virt/kvm/api.rst
> +++ b/Documentation/virt/kvm/api.rst
> @@ -5777,7 +5777,7 @@ will be initialized to 1 when created.  This also improves performance because
>  dirty logging can be enabled gradually in small chunks on the first call
>  to KVM_CLEAR_DIRTY_LOG.  KVM_DIRTY_LOG_INITIALLY_SET depends on
>  KVM_DIRTY_LOG_MANUAL_PROTECT_ENABLE (it is also only available on
> -x86 for now).
> +x86 and arm64 for now).
>  
>  KVM_CAP_MANUAL_DIRTY_LOG_PROTECT2 was previously available under the name
>  KVM_CAP_MANUAL_DIRTY_LOG_PROTECT, but the implementation had bugs that make
> diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
> index 32c8a675e5a4..a723f84fab83 100644
> --- a/arch/arm64/include/asm/kvm_host.h
> +++ b/arch/arm64/include/asm/kvm_host.h
> @@ -46,6 +46,9 @@
>  #define KVM_REQ_RECORD_STEAL	KVM_ARCH_REQ(3)
>  #define KVM_REQ_RELOAD_GICv4	KVM_ARCH_REQ(4)
>  
> +#define KVM_DIRTY_LOG_MANUAL_CAPS   (KVM_DIRTY_LOG_MANUAL_PROTECT_ENABLE | \
> +				     KVM_DIRTY_LOG_INITIALLY_SET)
> +
>  DECLARE_STATIC_KEY_FALSE(userspace_irqchip_in_use);
>  
>  extern unsigned int kvm_sve_max_vl;
> diff --git a/virt/kvm/arm/mmu.c b/virt/kvm/arm/mmu.c
> index e3b9ee268823..1077f653a611 100644
> --- a/virt/kvm/arm/mmu.c
> +++ b/virt/kvm/arm/mmu.c
> @@ -2265,8 +2265,16 @@ void kvm_arch_commit_memory_region(struct kvm *kvm,
>  	 * allocated dirty_bitmap[], dirty pages will be be tracked while the
>  	 * memory slot is write protected.
>  	 */
> -	if (change != KVM_MR_DELETE && mem->flags & KVM_MEM_LOG_DIRTY_PAGES)
> -		kvm_mmu_wp_memory_region(kvm, mem->slot);
> +	if (change != KVM_MR_DELETE && mem->flags & KVM_MEM_LOG_DIRTY_PAGES) {
> +		/*
> +		 * If we're with initial-all-set, we don't need to write
> +		 * protect any pages because they're all reported as dirty.
> +		 * Huge pages and normal pages will be write protect gradually.
> +		 */
> +		if (!kvm_dirty_log_manual_protect_and_init_set(kvm)) {
> +			kvm_mmu_wp_memory_region(kvm, mem->slot);
> +		}
> +	}
>  }
>  
>  int kvm_arch_prepare_memory_region(struct kvm *kvm,

As it is, it is pretty good. The one thing that isn't clear to me is
why we have a difference in behaviour between x86 and arm64. What
prevents x86 from having the same behaviour as arm64?

Thanks,

	M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
