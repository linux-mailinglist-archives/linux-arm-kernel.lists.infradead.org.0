Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2604318C666
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 05:23:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6Mel79CING0wgoO3kIe0WjFZy28jm+gyRQzbxok/v54=; b=DMaaJprA6AzZatkefKDBghF8T
	VH+5+3G/AQkYu20PBcZfAP5HFhcKTxblQvghtgUJ9tkUXcD/L+Tvcg18mRWbZcd9jV94BlTj5cgIE
	8yGKYiEOPPZiR/Gj3TVu3orOsZTsrDXTkE7sCnAxPNb7r+GVpelhX1o8TM+4rrhnePfrvYeHk+DrP
	lsVsM+1ClLSndQYMUTzCdtkve0DvAyHbMG4xPGtKAIZ9Mk8guHGLl8KtJWl7KPP8ATbhwX7dA5WFr
	kHa+nUdoPuq4vbBHeK1TYG9zNHRC8+y7KoiA+9Y4Fkbepa+UpyU5xP6KJbcHV5PypoloM/J/znpKk
	P3P0At15A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jF9CB-000545-QD; Fri, 20 Mar 2020 04:23:43 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jF9Bw-00053V-IW
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 04:23:29 +0000
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 36E0FF08001D6C88CCDA;
 Fri, 20 Mar 2020 12:23:27 +0800 (CST)
Received: from [127.0.0.1] (10.173.222.27) by DGGEMS407-HUB.china.huawei.com
 (10.3.19.207) with Microsoft SMTP Server id 14.3.487.0; Fri, 20 Mar 2020
 12:23:19 +0800
Subject: Re: [PATCH v5 22/23] KVM: arm64: GICv4.1: Allow non-trapping WFI when
 using HW SGIs
To: Marc Zyngier <maz@kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <kvmarm@lists.cs.columbia.edu>, <kvm@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
References: <20200304203330.4967-1-maz@kernel.org>
 <20200304203330.4967-23-maz@kernel.org>
From: Zenghui Yu <yuzenghui@huawei.com>
Message-ID: <1eef38a1-4ee1-a88c-53bd-5994421a8186@huawei.com>
Date: Fri, 20 Mar 2020 12:23:17 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <20200304203330.4967-23-maz@kernel.org>
Content-Language: en-US
X-Originating-IP: [10.173.222.27]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_212328_780366_C3594427 
X-CRM114-Status: GOOD (  14.32  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Jason Cooper <jason@lakedaemon.net>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Eric Auger <eric.auger@redhat.com>, Robert Richter <rrichter@marvell.com>,
 James Morse <james.morse@arm.com>, Thomas
 Gleixner <tglx@linutronix.de>, Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On 2020/3/5 4:33, Marc Zyngier wrote:
> Just like for VLPIs, it is beneficial to avoid trapping on WFI when the
> vcpu is using the GICv4.1 SGIs.
> 
> Add such a check to vcpu_clear_wfx_traps().
> 
> Signed-off-by: Marc Zyngier <maz@kernel.org>

Reviewed-by: Zenghui Yu <yuzenghui@huawei.com>


Thanks

> ---
>   arch/arm64/include/asm/kvm_emulate.h | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/include/asm/kvm_emulate.h b/arch/arm64/include/asm/kvm_emulate.h
> index f658dda12364..a30b4eec7cb4 100644
> --- a/arch/arm64/include/asm/kvm_emulate.h
> +++ b/arch/arm64/include/asm/kvm_emulate.h
> @@ -89,7 +89,8 @@ static inline unsigned long *vcpu_hcr(struct kvm_vcpu *vcpu)
>   static inline void vcpu_clear_wfx_traps(struct kvm_vcpu *vcpu)
>   {
>   	vcpu->arch.hcr_el2 &= ~HCR_TWE;
> -	if (atomic_read(&vcpu->arch.vgic_cpu.vgic_v3.its_vpe.vlpi_count))
> +	if (atomic_read(&vcpu->arch.vgic_cpu.vgic_v3.its_vpe.vlpi_count) ||
> +	    vcpu->kvm->arch.vgic.nassgireq)
>   		vcpu->arch.hcr_el2 &= ~HCR_TWI;
>   	else
>   		vcpu->arch.hcr_el2 |= HCR_TWI;
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
