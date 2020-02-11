Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ADA8159822
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 19:20:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=J9ZRIp8l3Bq04ogWEulrwCX/iQJSFeZWIlM5hUOHmKs=; b=k5h1DlzO/7isEj4pW46NKovpl
	eYbl9hLIfE3Y2ggN1Tj195wYT3bi8JNHHAHEhBExLswh4wQ8XgAqs8Hv6HtR4A9m7/PJcUGZ1cJUt
	IXWbnpfYP1MGNbkwQfmkZt2NvI8wwHgtO+gPs5YmOWV6ZPh02pHXzrsh+j4NsoH0YKLIe/KFXNjq9
	kPxV2UNjuQFtsM24lyKpys319xSxYIBGspxTITsEFeZzPESiiOW3maePvBhPBT9ZE900NyISX78yV
	fY1oeXioQB88GOtXhxofdzMoQTmgZA4hseh5HCs1aOL4vm6+6IscA3htTkpmuvd4X/Hc/eiB4TVnn
	mTvrZrRcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1a8e-0006jt-14; Tue, 11 Feb 2020 18:20:00 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1Zkq-0005r2-F6
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 17:55:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6F3E31FB;
 Tue, 11 Feb 2020 09:55:23 -0800 (PST)
Received: from [10.1.197.1] (ewhatever.cambridge.arm.com [10.1.197.1])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 87ADA3F68E;
 Tue, 11 Feb 2020 09:55:22 -0800 (PST)
Subject: Re: [PATCH v5 2/3] KVM: arm64: limit PMU version to PMUv3 for ARMv8.1
To: Andrew Murray <andrew.murray@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Marc Zyngier <maz@kernel.org>, Mark Rutland <mark.rutland@arm.com>
References: <1580125469-23887-1-git-send-email-andrew.murray@arm.com>
 <1580125469-23887-3-git-send-email-andrew.murray@arm.com>
From: Suzuki Kuruppassery Poulose <suzuki.poulose@arm.com>
Message-ID: <7f5a1a45-34f0-596b-8a93-c77e35d0faaf@arm.com>
Date: Tue, 11 Feb 2020 17:55:21 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <1580125469-23887-3-git-send-email-andrew.murray@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_095524_578105_45ACD5B8 
X-CRM114-Status: GOOD (  18.19  )
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
Cc: kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 27/01/2020 11:44, Andrew Murray wrote:
> We currently expose the PMU version of the host to the guest via
> emulation of the DFR0_EL1 and AA64DFR0_EL1 debug feature registers.
> However many of the features offered beyond PMUv3 for 8.1 are not
> supported in KVM. Examples of this include support for the PMMIR
> registers (added in PMUv3 for ARMv8.4) and 64-bit event counters
> added in (PMUv3 for ARMv8.5).
> 
> Let's trap the Debug Feature Registers in order to limit
> PMUVer/PerfMon in the Debug Feature Registers to PMUv3 for ARMv8.1
> to avoid unexpected behaviour.
> 
> Signed-off-by: Andrew Murray <andrew.murray@arm.com>
> ---
>   arch/arm64/include/asm/sysreg.h |  5 +++++
>   arch/arm64/kvm/sys_regs.c       | 11 +++++++++++
>   2 files changed, 16 insertions(+)
> 
> diff --git a/arch/arm64/include/asm/sysreg.h b/arch/arm64/include/asm/sysreg.h
> index 6e919fa..1009878 100644
> --- a/arch/arm64/include/asm/sysreg.h
> +++ b/arch/arm64/include/asm/sysreg.h
> @@ -672,6 +672,11 @@
>   #define ID_AA64DFR0_TRACEVER_SHIFT	4
>   #define ID_AA64DFR0_DEBUGVER_SHIFT	0
>   
> +#define ID_DFR0_PERFMON_SHIFT		24
> +
> +#define ID_DFR0_EL1_PMUVER_8_1		4
> +#define ID_AA64DFR0_EL1_PMUVER_8_1	4
> +
>   #define ID_ISAR5_RDM_SHIFT		24
>   #define ID_ISAR5_CRC32_SHIFT		16
>   #define ID_ISAR5_SHA2_SHIFT		12
> diff --git a/arch/arm64/kvm/sys_regs.c b/arch/arm64/kvm/sys_regs.c
> index 9f21659..3f0f3cc 100644
> --- a/arch/arm64/kvm/sys_regs.c
> +++ b/arch/arm64/kvm/sys_regs.c
> @@ -1085,6 +1085,17 @@ static u64 read_id_reg(const struct kvm_vcpu *vcpu,
>   			 (0xfUL << ID_AA64ISAR1_API_SHIFT) |
>   			 (0xfUL << ID_AA64ISAR1_GPA_SHIFT) |
>   			 (0xfUL << ID_AA64ISAR1_GPI_SHIFT));
> +	} else if (id == SYS_ID_AA64DFR0_EL1) {
> +		/* Limit guests to PMUv3 for ARMv8.1 */
> +		val = cpuid_feature_cap_signed_field_width(val,
> +						ID_AA64DFR0_PMUVER_SHIFT,
> +						4, ID_AA64DFR0_EL1_PMUVER_8_1);
> +	} else if (id == SYS_ID_DFR0_EL1) {
> +		/* Limit guests to PMUv3 for ARMv8.1 */
> +		val = cpuid_feature_cap_signed_field_width(val,
> +						ID_DFR0_PERFMON_SHIFT,
> +						4, ID_DFR0_EL1_PMUVER_8_1);
> +
>   	}

Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
