Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AD20C9CD9
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 13:10:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J5P7+ILDko8OeT+Hh4GC+aPWB/xRFw9nUFvsKcvHnt4=; b=KiWO2A3rs5PEF2
	s6hxBVkaT6Rc+yXqLD4AXz+Mp66vklvKTfWlszZg0Ok8NIIW0Jm67jgDPRT115vRLGLQJPDs7tUxV
	ZeMDL4fEUBmBuOqS07SNixNSJIijeOgUo5Rphg6LDLvoyZ4zsKm5mI22Znq6m+bQhfzAaIBK5ykTF
	s4dpDUKdZ0++MxiFMcSFFEYyEZKKPbINyEqurYiDYPsRmx4hZOhv9NwJzBOea4MbIWXb6ELrevMEK
	6G3t5K/P/bKll4MAjIp32/Io4MTbHiDokkzhrhCXl2+uGnDemg2FD6dUY+u4xweoXSI4h33G9/cFx
	2zPCdR8PI2xALn1OlGmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFz0D-0006d5-KQ; Thu, 03 Oct 2019 11:10:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFz07-0006cV-KP
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 11:10:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 649C31000;
 Thu,  3 Oct 2019 04:10:26 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4658B3F706;
 Thu,  3 Oct 2019 04:10:25 -0700 (PDT)
Subject: Re: [PATCH 3/5] arm64: KVM: Disable EL1 PTW when invalidating S2 TLBs
To: Marc Zyngier <maz@kernel.org>
References: <20190925111941.88103-1-maz@kernel.org>
 <20190925111941.88103-4-maz@kernel.org>
From: James Morse <james.morse@arm.com>
Message-ID: <030bbc8c-2304-5941-afc0-53f5a66fb143@arm.com>
Date: Thu, 3 Oct 2019 12:10:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190925111941.88103-4-maz@kernel.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_041027_712994_A2EC3C69 
X-CRM114-Status: GOOD (  19.22  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On 25/09/2019 12:19, Marc Zyngier wrote:
> When erratum 1319367 is being worked around, special care must
> be taken not to allow the page table walker to populate TLBs
> while we have the stage-2 translation enabled (which would otherwise
> result in a bizare mix of the host S1 and the guest S2).
> 
> We enforce this by setting TCR_EL1.EPD{0,1} before restoring the S2
> configuration, and clear the same bits after having disabled S2.


Some comment Nits...

> diff --git a/arch/arm64/kvm/hyp/tlb.c b/arch/arm64/kvm/hyp/tlb.c
> index eb0efc5557f3..4ef0bf0d76a6 100644
> --- a/arch/arm64/kvm/hyp/tlb.c
> +++ b/arch/arm64/kvm/hyp/tlb.c
> @@ -63,6 +63,22 @@ static void __hyp_text __tlb_switch_to_guest_vhe(struct kvm *kvm,
>  static void __hyp_text __tlb_switch_to_guest_nvhe(struct kvm *kvm,
>  						  struct tlb_inv_context *cxt)
>  {
> +	if (cpus_have_const_cap(ARM64_WORKAROUND_1319367)) {
> +		u64 val;
> +
> +		/*
> +		 * For CPUs that are affected by ARM 1319367, we need to
> +		 * avoid a host Stage-1 walk while we have the guest's

> +		 * Stage-2 set in the VTTBR in order to invalidate TLBs.

Isn't HCR_EL2.VM==0 for all this? I think its the VMID that matters here:
| ... have the guest's VMID set in VTTBR ...

?


> +		 * We're guaranteed that the S1 MMU is enabled, so we can
> +		 * simply set the EPD bits to avoid any further TLB fill.
> +		 */
> +		val = cxt->tcr = read_sysreg_el1(SYS_TCR);
> +		val |= TCR_EPD1_MASK | TCR_EPD0_MASK;
> +		write_sysreg_el1(val, SYS_TCR);
> +		isb();
> +	}
> +
>  	__load_guest_stage2(kvm);
>  	isb();
>  }
> @@ -100,6 +116,13 @@ static void __hyp_text __tlb_switch_to_host_nvhe(struct kvm *kvm,
>  						 struct tlb_inv_context *cxt)
>  {
>  	write_sysreg(0, vttbr_el2);
> +
> +	if (cpus_have_const_cap(ARM64_WORKAROUND_1319367)) {
> +		/* Ensure stage-2 is actually disabled */

| Ensure the host's VMID has been written

?


> +		isb();
> +		/* Restore the host's TCR_EL1 */
> +		write_sysreg_el1(cxt->tcr, SYS_TCR);
> +	}
>  }


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
