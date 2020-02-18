Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2172F162D43
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 18:44:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lo0NjmQ0GtRTOzrvzFHVuxnM0t0u38qtjY5BHVnRVgM=; b=WMvcYcS/O6Bn7p
	44zM98VfV0KkQElz5E5caqAoQdpSo9UUMMmCctKLjz8ep5EyK6IIXBXZ1wGiygBbaSX2Lm3YQhdmW
	lxtNPk2+J8gkaG7dB1O9jO6woW/7T6FC/GktjtQwmMVifvr1utOJj34LVlR/5InR2g0ql4BWTRV/q
	Cqb/gBK2iz+j1K0+YTHFHrdwBCcG4Ln7ez0VZfLZL6p7TuTJtcRKkcE7ngOPqUb+lHbvj52o3au4i
	nArNj+PGuXCojugtReig0t7YG9F9qEZyzDYIDVqoZiRD3/n9eHX6o0um3NWAQo9CnUayoG6n+ku6q
	0bsE3hksz3kiPI6Yki8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j46ug-0002EG-Rh; Tue, 18 Feb 2020 17:44:02 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j46uX-0002DY-GZ
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 17:43:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 09773FEC;
 Tue, 18 Feb 2020 09:43:53 -0800 (PST)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 24E873F703;
 Tue, 18 Feb 2020 09:43:52 -0800 (PST)
Subject: Re: [PATCH 3/5] kvm: arm64: Limit PMU version to ARMv8.1
To: Marc Zyngier <maz@kernel.org>
References: <20200216185324.32596-1-maz@kernel.org>
 <20200216185324.32596-4-maz@kernel.org>
From: James Morse <james.morse@arm.com>
Message-ID: <eb0294ef-5ad2-9940-2d59-b92220948ffc@arm.com>
Date: Tue, 18 Feb 2020 17:43:51 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200216185324.32596-4-maz@kernel.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_094353_591267_463E1B92 
X-CRM114-Status: GOOD (  13.63  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Peter Maydell <peter.maydell@linaro.org>, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On 16/02/2020 18:53, Marc Zyngier wrote:
> Our PMU code is only implementing the ARMv8.1 features, so let's
> stick to this when reporting the feature set to the guest.

> diff --git a/arch/arm64/kvm/sys_regs.c b/arch/arm64/kvm/sys_regs.c
> index 682fedd7700f..06b2d0dc6c73 100644
> --- a/arch/arm64/kvm/sys_regs.c
> +++ b/arch/arm64/kvm/sys_regs.c
> @@ -1093,6 +1093,11 @@ static u64 read_id_reg(const struct kvm_vcpu *vcpu,
>  				 FEATURE(ID_AA64ISAR1_GPA) |
>  				 FEATURE(ID_AA64ISAR1_GPI));
>  		break;
> +	case SYS_ID_AA64DFR0_EL1:
> +		/* Limit PMU to ARMv8.1 */

Not just limit, but upgrade too! (force?)
This looks safe because ARMV8_PMU_EVTYPE_EVENT always includes the extra bits this added,
and the register is always trapped.


The PMU version is also readable via ID_DFR0_EL1.PerfMon, should that be sanitised to be
the same?
(I don't think we've hidden an aarch64 feature that also existed in aarch32 before).


Regardless:
Reviewed-by: James Morse <james.morse@arm.com>


Thanks,

James



> +		val &= ~FEATURE(ID_AA64DFR0_PMUVER);
> +		val |= FIELD_PREP(FEATURE(ID_AA64DFR0_PMUVER), 4);
> +		break;
>  	}
>  
>  	return val;
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
