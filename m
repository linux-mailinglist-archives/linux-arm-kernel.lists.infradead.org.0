Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26B941886BB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 15:00:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lMvt5grb016FlkFkKgbfcf/H4au6b9xoDhGNE+xWYdw=; b=dwxqzMrDj/Re0h
	sUyH+QWq2cqMaMA8L4mHBCTsTem5vLfoH2A7dI0z7zZ4rmUhUZWcP0aPn/56VkZ9w3/GCnGnVAVOB
	cr6QSvrPRcMUWDSNHvVd8/LGBbqX/bRZLyTaL1skpMRixsGOCCerS+icAtMqz9CfpkECyKTuR5Ijm
	MKlcu3naEpNRZsZ8/pNbJZRZg1ysO1Vcc9FypG+QPXyaQbqeM5qGnBkaqWH6VNSuJYHmhGX+CETPa
	KJ3wiVwUE9S63yoGzg4jr5hPPhcU0oUE1/WY4nPwLNgeaz8QfPLrRss/93xYFiW0WSl0+W/eL4E1E
	0u8bnlu/66LXvoK/52GQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEClN-0002dN-Tx; Tue, 17 Mar 2020 14:00:09 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jECkz-0002Uc-IG
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 13:59:51 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DAF01FEC;
 Tue, 17 Mar 2020 06:59:41 -0700 (PDT)
Received: from [10.37.12.184] (unknown [10.37.12.184])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8C0E73F534;
 Tue, 17 Mar 2020 06:59:40 -0700 (PDT)
Subject: Re: [PATCH] KVM: arm64: Use the correct timer for accessing CNT
To: KarimAllah Ahmed <karahmed@amazon.de>
References: <1584351546-5018-1-git-send-email-karahmed@amazon.de>
From: James Morse <james.morse@arm.com>
Openpgp: preference=signencrypt
Message-ID: <ac2933bf-452a-f27a-2d8a-8299c3044111@arm.com>
Date: Tue, 17 Mar 2020 13:59:38 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1584351546-5018-1-git-send-email-karahmed@amazon.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_065945_699092_44A7C81D 
X-CRM114-Status: GOOD (  17.72  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>, Marc Zyngier <maz@kernel.org>,
 linux-kernel@vger.kernel.org, Julien Thierry <julien.thierry.kdev@gmail.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi KarimAllah,

On 3/16/20 9:39 AM, KarimAllah Ahmed wrote:
> Use the physical timer object when reading the physical timer counter
> instead of using the virtual timer object. This is only visible when
> reading it from user-space as kvm_arm_timer_get_reg() is only executed on
> the get register patch from user-space.

Have you seen this go wrong?

I agree this looks like this was a typo introduced by:
84135d3d1 ("KVM: arm/arm64: consolidate arch timer trap handlers")
-----------------%<-----------------
        case KVM_REG_ARM_PTIMER_CNT:
-               return kvm_phys_timer_read();
+               return kvm_arm_timer_read(vcpu,
+                                         vcpu_vtimer(vcpu), TIMER_REG_CNT);
-----------------%<-----------------

This would be a problem when the guest reads the physical counter
directly, (which doesn't get trapped), and the VMM makes this API call
and gets a number in a totally different ball-park.


Can the VMM actually read these registers with this path?

kvm_arm_get_reg() gets to filter out the coproc registers that aren't in
the sys_reg[], it also uses is_timer_reg() to spot the timer/counter
registers, but is_timer_reg() only matches three of them:
|	case KVM_REG_ARM_TIMER_CTL:
|	case KVM_REG_ARM_TIMER_CNT:
|	case KVM_REG_ARM_TIMER_CVAL:

KVM_REG_ARM_PTIMER_CNT is not one of them.

It looks like when the VMM tries to read this, it fails is_timer_reg(),
and matches in the sys_regs[] and is handled by access_arch_timer(),
which uses kvm_arm_timer_read_sysreg() -> kvm_arm_timer_read(),
bypassing this bug.

... this looks like a bug in dead code ...


Thanks!

James

> diff --git a/virt/kvm/arm/arch_timer.c b/virt/kvm/arm/arch_timer.c
> index 0d9438e..93bd59b 100644
> --- a/virt/kvm/arm/arch_timer.c
> +++ b/virt/kvm/arm/arch_timer.c
> @@ -788,7 +788,7 @@ u64 kvm_arm_timer_get_reg(struct kvm_vcpu *vcpu, u64 regid)
>  					  vcpu_ptimer(vcpu), TIMER_REG_CTL);
>  	case KVM_REG_ARM_PTIMER_CNT:
>  		return kvm_arm_timer_read(vcpu,
> -					  vcpu_vtimer(vcpu), TIMER_REG_CNT);
> +					  vcpu_ptimer(vcpu), TIMER_REG_CNT);
>  	case KVM_REG_ARM_PTIMER_CVAL:
>  		return kvm_arm_timer_read(vcpu,
>  					  vcpu_ptimer(vcpu), TIMER_REG_CVAL);
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
