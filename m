Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A47EC1CF2F2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 12:56:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SADvsmQ/0qKitki+Hi42OavcnN12vlUs4M5Qh8kS3+8=; b=AoMStd5aH/VeZf
	TAPH2pizELcIy/VJdYHdCL0rZ7z9IaljZ0VolrvmJ6uJ9nD56xwP+AcJ6w9cvaevlxWLowaxg3Tug
	ejE01civ7gxuC/5VlX9My3C6gMbReg9PWAGX5YaB1VZkIudHqJSFyjV4aHxHKsc/p5mAVO/8SJ2y1
	v/3tGXerzenKpdBmIbwvJMSq58mFRdbW06Zl64kkcxKnjDpbwKRg5R7WuQ3ITMXvoAAc0R73+zx/0
	h4SGwBo5wuQmo/7etyqkoJMgQvt07ujGfPQ1poMX1C1lzhpvcljPmQ6tARVAqqp0qycKHjavB3dDR
	ZZxDBgJFv7JpZgW7plbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYSaK-0004aq-AH; Tue, 12 May 2020 10:56:28 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYSaC-0004a5-IB
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 10:56:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A26A530E;
 Tue, 12 May 2020 03:56:19 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [10.57.28.99])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AD7243F71E;
 Tue, 12 May 2020 03:56:17 -0700 (PDT)
Date: Tue, 12 May 2020 11:56:14 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH] arm64/cpufeature: Add ID_AA64MMFR0_PARANGE_MASK
Message-ID: <20200512105614.GC60359@C02TD0UTHF1T.local>
References: <1589249606-27177-1-git-send-email-anshuman.khandual@arm.com>
 <20200512105343.GB60359@C02TD0UTHF1T.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200512105343.GB60359@C02TD0UTHF1T.local>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_035620_645106_CDC29948 
X-CRM114-Status: GOOD (  11.94  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, Marc Zyngier <maz@kernel.org>,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 12, 2020 at 11:53:43AM +0100, Mark Rutland wrote:
> >
> >  	/* Clamp the IPA limit to the PA size supported by the kernel */
> >  	ipa_max = (pa_max > PHYS_MASK_SHIFT) ? PHYS_MASK_SHIFT : pa_max;
> > @@ -411,7 +411,8 @@ int kvm_arm_setup_stage2(struct kvm *kvm, unsigned long type)
> >  		phys_shift = KVM_PHYS_SHIFT;
> >  	}
> >  
> > -	parange = read_sanitised_ftr_reg(SYS_ID_AA64MMFR0_EL1) & 7;
> > +	parange = id_aa64mmfr0_parange(read_sanitised_ftr_reg
> > +						(SYS_ID_AA64MMFR0_EL1));
> 
> Can't we add a system_ipa_range() helper, and avoid more boilerplate in
> each of these?
> 
> e.g.
> 
> int system_ipa_range(void)
> {
> 	u64 mmfr0;
> 	int parange;
> 
> 	mmfr0 = read_sanitised_ftr_reg(SYS_ID_AA64MMFR0_EL1);
> 	parange = cpuid_feature_extract_unsigned_field(mmfr0,
> 		ID_AA64MMFR0_PARANGE_SHIFT);
> 	
> 	return parange;
> }

As Per MarcZ's comments, that should be system_pa_range() rather than
system_ipa_range().

Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
