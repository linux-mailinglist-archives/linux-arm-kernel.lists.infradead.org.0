Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 398E51BF555
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 12:26:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eZ52ocjbMgigyrYSgDj2wo/3ID5E9+JJSCE/j4QerfY=; b=tI54Duq1bSZ7aL
	uSRWZftxmj5icbLGc6rI10Bji3sboSenGAFMi5joAsa7NrfRBmiiXxFDHrJmAS9rWOs2ZJ6GMwhVR
	IV59yneMK2Y/TKcCJjcD6jW3L0FRMr4UC/EY689D0ZkE692CY+cUYEB8RWV0u/cl8U/hLWr9ZKADa
	MsCvV5WC3GR3F9BKv/NL8xJsHImtYgG7kDML4JD/CkAZU272M9ImG0jsBqVGRS1YgioEG8/teW6P7
	fqENIVPBXG3ZJM4j/WXizkl69rMLX2dspznnfs3cGRjz/veJVWdJTLHuawvjUH+W2AnG+50zIGBFn
	V8VIZgxJghf77ljucldA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU6OT-0007BG-7z; Thu, 30 Apr 2020 10:26:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU6OH-0007AY-Jg
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 10:26:02 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F06B420787;
 Thu, 30 Apr 2020 10:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588242361;
 bh=XMmX9NJ0VAXG1hzFUjwysZJZQwf95tai622IpWnK1ik=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Eyqt08hGlFtbAnwMcBbF8peC3OELFpvIkdOun0mkg1RH+la7llBFjFvbHtXK1llA0
 Vrhty+N7PRBTgmP5NznHqff7InfdZymwESJNyYURv8aIv7wG8s8xQRyerSJTQJPxCZ
 foRDopU4ChTxUozDR5O8vCPx9J0ncjH05G69bYIk=
Date: Thu, 30 Apr 2020 11:25:56 +0100
From: Will Deacon <will@kernel.org>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH] KVM: arm64: Fix 32bit PC wrap-around
Message-ID: <20200430102556.GE19932@willie-the-truck>
References: <20200430101513.318541-1-maz@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200430101513.318541-1-maz@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_032601_669221_FA3AE13D 
X-CRM114-Status: GOOD (  18.89  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 30, 2020 at 11:15:13AM +0100, Marc Zyngier wrote:
> In the unlikely event that a 32bit vcpu traps into the hypervisor
> on an instruction that is located right at the end of the 32bit
> range, the emulation of that instruction is going to increment
> PC past the 32bit range. This isn't great, as userspace can then
> observe this value and get a bit confused.
> 
> Conversly, userspace can do things like (in the context of a 64bit
> guest that is capable of 32bit EL0) setting PSTATE to AArch64-EL0,
> set PC to a 64bit value, change PSTATE to AArch32-USR, and observe
> that PC hasn't been truncated. More confusion.
> 
> Fix both by:
> - truncating PC increments for 32bit guests
> - sanitize PC every time a core reg is changed by userspace, and
>   that PSTATE indicates a 32bit mode.

It's not clear to me whether this needs a cc stable. What do you think? I
suppose that it really depends on how confused e.g. QEMU gets.

> Signed-off-by: Marc Zyngier <maz@kernel.org>
> ---
>  arch/arm64/kvm/guest.c     | 4 ++++
>  virt/kvm/arm/hyp/aarch32.c | 8 ++++++--
>  2 files changed, 10 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/kvm/guest.c b/arch/arm64/kvm/guest.c
> index 23ebe51410f0..2a159af82429 100644
> --- a/arch/arm64/kvm/guest.c
> +++ b/arch/arm64/kvm/guest.c
> @@ -200,6 +200,10 @@ static int set_core_reg(struct kvm_vcpu *vcpu, const struct kvm_one_reg *reg)
>  	}
>  
>  	memcpy((u32 *)regs + off, valp, KVM_REG_SIZE(reg->id));
> +
> +	if (*vcpu_cpsr(vcpu) & PSR_AA32_MODE_MASK)
> +		*vcpu_pc(vcpu) = lower_32_bits(*vcpu_pc(vcpu));

It seems slightly odd to me that we don't enforce this for *all* the
registers when running as a 32-bit guest. Couldn't userspace be equally
confused by a 64-bit lr or sp?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
