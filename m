Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89A3C14DC96
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Jan 2020 15:12:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hdWidS+rQSfriPN3Ui8FbN2SBwi3m84V+oWRMzzJA5A=; b=MIGwAnlJf6cdKr
	lVBoTlEX2hybNqUy7xXlWNG/8+2Wma0vsiBG484mVxlgl3bZHxqhZY1w3Cv3nzEGVdwNnowRhMukF
	VHvXmddjimszSQpFv/KL/D/wF93vjNfwUsBS5FCSlhI4w0ln2yD1INxygOPjWbd4hwDvfG0DtGaIo
	Xm1YnfHN2xMjCY+if5fJJsnz7ePIWednC4ZV82v5N4BuzCLiPHn4509rWqqAT/NJTKGSj5cBb9mSK
	I/HkvgjDdv+Ovv9xBGbIBF509XhRqQXrs8TthjfQGnjsFeDJs64szpKL3VGlvJy0xM29v7GvVJbD8
	YxUxPI8VKuDyc7IMLBLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixAYK-0002w5-62; Thu, 30 Jan 2020 14:12:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixAYA-0002uw-DH
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Jan 2020 14:12:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B6FF91FB;
 Thu, 30 Jan 2020 06:11:59 -0800 (PST)
Received: from [10.1.36.201] (e121566-lin.cambridge.arm.com [10.1.36.201])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DF61F3F68E;
 Thu, 30 Jan 2020 06:11:54 -0800 (PST)
Subject: Re: [PATCH 23/23] KVM: arm64: Treat emulated TVAL TimerValue as a
 signed 32-bit integer
To: Marc Zyngier <maz@kernel.org>, Paolo Bonzini <pbonzini@redhat.com>
References: <20200130132558.10201-1-maz@kernel.org>
 <20200130132558.10201-24-maz@kernel.org>
From: Alexandru Elisei <alexandru.elisei@arm.com>
Message-ID: <aec2c75e-24d0-8157-14bd-72883a9df6bf@arm.com>
Date: Thu, 30 Jan 2020 14:11:47 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200130132558.10201-24-maz@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_061206_535409_953284ED 
X-CRM114-Status: GOOD (  18.75  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andrew Jones <drjones@redhat.com>,
 Gavin Shan <gshan@redhat.com>, Beata Michalska <beata.michalska@linaro.org>,
 kvm@vger.kernel.org, Suzuki K Poulose <suzuki.poulose@arm.com>,
 YueHaibing <yuehaibing@huawei.com>,
 Christoffer Dall <christoffer.dall@arm.com>,
 Steven Price <steven.price@arm.com>,
 Shannon Zhao <shannon.zhao@linux.alibaba.com>,
 Eric Auger <eric.auger@redhat.com>, Russell King <rmk+kernel@armlinux.org.uk>,
 Mark Brown <broonie@kernel.org>, James Morse <james.morse@arm.com>,
 linux-arm-kernel@lists.infradead.org, Haibin Wang <wanghaibin.wang@huawei.com>,
 Zenghui Yu <yuzenghui@huawei.com>, Andrew Murray <andrew.murray@arm.com>,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 1/30/20 1:25 PM, Marc Zyngier wrote:
> From: Alexandru Elisei <alexandru.elisei@arm.com>
>
> According to the ARM ARM, registers CNT{P,V}_TVAL_EL0 have bits [63:32]
> RES0 [1]. When reading the register, the value is truncated to the least
> significant 32 bits [2], and on writes, TimerValue is treated as a signed
> 32-bit integer [1, 2].
>
> When the guest behaves correctly and writes 32-bit values, treating TVAL
> as an unsigned 64 bit register works as expected. However, things start
> to break down when the guest writes larger values, because
> (u64)0x1_ffff_ffff = 8589934591. but (s32)0x1_ffff_ffff = -1, and the
> former will cause the timer interrupt to be asserted in the future, but
> the latter will cause it to be asserted now.  Let's treat TVAL as a
> signed 32-bit register on writes, to match the behaviour described in
> the architecture, and the behaviour experimentally exhibited by the
> virtual timer on a non-vhe host.
>
> [1] Arm DDI 0487E.a, section D13.8.18
> [2] Arm DDI 0487E.a, section D11.2.4
>
> Signed-off-by: Alexandru Elisei <alexandru.elisei@arm.com>
> [maz: replaced the read-side mask with lower_32_bits]
> Signed-off-by: Marc Zyngier <maz@kernel.org>
> Fixes: 8fa761624871 ("KVM: arm/arm64: arch_timer: Fix CNTP_TVAL calculation")
> Link: https://lore.kernel.org/r/20200127103652.2326-1-alexandru.elisei@arm.com
> ---
>  virt/kvm/arm/arch_timer.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/virt/kvm/arm/arch_timer.c b/virt/kvm/arm/arch_timer.c
> index f182b2380345..c6c2a9dde00c 100644
> --- a/virt/kvm/arm/arch_timer.c
> +++ b/virt/kvm/arm/arch_timer.c
> @@ -805,6 +805,7 @@ static u64 kvm_arm_timer_read(struct kvm_vcpu *vcpu,
>  	switch (treg) {
>  	case TIMER_REG_TVAL:
>  		val = timer->cnt_cval - kvm_phys_timer_read() + timer->cntvoff;
> +		val &= lower_32_bits(val);

This is correct, but how about making it val = lower_32_bits(val) for more
clarity? Apologies for not spotting it earlier :(

Thanks,
Alex
>  		break;
>  
>  	case TIMER_REG_CTL:
> @@ -850,7 +851,7 @@ static void kvm_arm_timer_write(struct kvm_vcpu *vcpu,
>  {
>  	switch (treg) {
>  	case TIMER_REG_TVAL:
> -		timer->cnt_cval = kvm_phys_timer_read() - timer->cntvoff + val;
> +		timer->cnt_cval = kvm_phys_timer_read() - timer->cntvoff + (s32)val;
>  		break;
>  
>  	case TIMER_REG_CTL:

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
