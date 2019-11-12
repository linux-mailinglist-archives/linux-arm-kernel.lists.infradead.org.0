Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B96F4F9105
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 14:50:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=liswbEg4U9Mmo1+KAG2IE43EQn6VLRWPKx6N7RIGiNM=; b=Msp0z6jvDOMQXz
	kiT2DW1lRJT3XniQodnKyES5CFyA2IjIubZ16KP/SNmbm7BvaxKYx2AGZPjmE2ntEa2FTWKYOamym
	sPFP4cOic48+hqIxl3oU/+6iyD/slyJpr8vg6/tugMi0xXExDZA6g/0+ncOP5TZL4Dls9dtSmn2/u
	G/4NymvyarN1nNNkSmlbQZTLXxPDpORBMuGm0Y3VrqcRvrbHnUhSCtO9WYFRXR/7W8iomZ8B1buuL
	fYJZORbNmRJpoi/X84ADw6pE2G1Qog4HjReA5Nyh6zrq9HeYfPwLGe7PRWG9FbpvGmqgMkJYnHB0e
	waa+iUEDZ5GtE6Qxz1BQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUWYF-0005xU-66; Tue, 12 Nov 2019 13:49:47 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUWXs-0005nG-Pe
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 13:49:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1573566563;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=pE+UPzYK/83Xgn5Oal6kD+8qNIvBjohPXIrqziRsjnc=;
 b=X05+12TrCphJYyq/KdYgZ5CShtMq/BhUgvOQALwSHyJ5hBGzeaQRJEKnhXb8E38b7bjQVZ
 f5zLRukz5had4NvRtvlAcGindMvPlNUtqtuz9grg0uUGi+AWemyKmSj/Sl/chmRZ2LGskw
 WzGuqv7/0CydSfG09jyYYsu+FCNIr8Y=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-434-s-rOSYUdMzOJ8X686Yd9OQ-1; Tue, 12 Nov 2019 08:49:20 -0500
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 121E180B732;
 Tue, 12 Nov 2019 13:49:19 +0000 (UTC)
Received: from [10.36.116.54] (ovpn-116-54.ams2.redhat.com [10.36.116.54])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 2E55A28D1E;
 Tue, 12 Nov 2019 13:49:16 +0000 (UTC)
Subject: Re: [kvm-unit-tests PATCH 03/17] arm: gic: Provide per-IRQ helper
 functions
To: Andre Przywara <andre.przywara@arm.com>, Andrew Jones
 <drjones@redhat.com>, Paolo Bonzini <pbonzini@redhat.com>
References: <20191108144240.204202-1-andre.przywara@arm.com>
 <20191108144240.204202-4-andre.przywara@arm.com>
From: Auger Eric <eric.auger@redhat.com>
Message-ID: <9ce6a73d-8e37-8144-b65e-b1ba7140dae5@redhat.com>
Date: Tue, 12 Nov 2019 14:49:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20191108144240.204202-4-andre.przywara@arm.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-MC-Unique: s-rOSYUdMzOJ8X686Yd9OQ-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_054924_956865_EFDAB06B 
X-CRM114-Status: GOOD (  20.37  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Marc Zyngier <maz@kernel.org>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, kvm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andre

On 11/8/19 3:42 PM, Andre Przywara wrote:
> A common theme when accessing per-IRQ parameters in the GIC distributor
> is to set fields of a certain bit width in a range of MMIO registers.
> Examples are the enabled status (one bit per IRQ), the level/edge
> configuration (2 bits per IRQ) or the priority (8 bits per IRQ).
> 
> Add a generic helper function which is able to mask and set the
> respective number of bits, given the IRQ number and the MMIO offset.
> Provide wrappers using this function to easily allow configuring an IRQ.
> 
> For now assume that private IRQ numbers always refer to the current CPU.
> In a GICv2 accessing the "other" private IRQs is not easily doable (the
> registers are banked per CPU on the same MMIO address), so we impose the
> same limitation on GICv3, even though those registers are not banked
> there anymore.
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>  lib/arm/asm/gic-v3.h |  1 +
>  lib/arm/asm/gic.h    |  9 +++++
>  lib/arm/gic.c        | 90 ++++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 100 insertions(+)
> 
> diff --git a/lib/arm/asm/gic-v3.h b/lib/arm/asm/gic-v3.h
> index ed6a5ad..8cfaed1 100644
> --- a/lib/arm/asm/gic-v3.h
> +++ b/lib/arm/asm/gic-v3.h
> @@ -23,6 +23,7 @@
>  #define GICD_CTLR_ENABLE_G1A		(1U << 1)
>  #define GICD_CTLR_ENABLE_G1		(1U << 0)
>  
> +#define GICD_IROUTER			0x6000
>  #define GICD_PIDR2			0xffe8
>  
>  /* Re-Distributor registers, offsets from RD_base */
> diff --git a/lib/arm/asm/gic.h b/lib/arm/asm/gic.h
> index 1fc10a0..21cdb58 100644
> --- a/lib/arm/asm/gic.h
> +++ b/lib/arm/asm/gic.h
> @@ -15,6 +15,7 @@
>  #define GICD_IIDR			0x0008
>  #define GICD_IGROUPR			0x0080
>  #define GICD_ISENABLER			0x0100
> +#define GICD_ICENABLER			0x0180
>  #define GICD_ISPENDR			0x0200
>  #define GICD_ICPENDR			0x0280
>  #define GICD_ISACTIVER			0x0300
> @@ -73,5 +74,13 @@ extern void gic_write_eoir(u32 irqstat);
>  extern void gic_ipi_send_single(int irq, int cpu);
>  extern void gic_ipi_send_mask(int irq, const cpumask_t *dest);
>  
> +void gic_set_irq_bit(int irq, int offset);
> +void gic_enable_irq(int irq);
> +void gic_disable_irq(int irq);
> +void gic_set_irq_priority(int irq, u8 prio);
> +void gic_set_irq_target(int irq, int cpu);
> +void gic_set_irq_group(int irq, int group);
> +int gic_get_irq_group(int irq);
> +
>  #endif /* !__ASSEMBLY__ */
>  #endif /* _ASMARM_GIC_H_ */
> diff --git a/lib/arm/gic.c b/lib/arm/gic.c
> index 9430116..cf4e811 100644
> --- a/lib/arm/gic.c
> +++ b/lib/arm/gic.c
> @@ -146,3 +146,93 @@ void gic_ipi_send_mask(int irq, const cpumask_t *dest)
>  	assert(gic_common_ops && gic_common_ops->ipi_send_mask);
>  	gic_common_ops->ipi_send_mask(irq, dest);
>  }
> +
> +enum gic_bit_access {
> +	ACCESS_READ,
> +	ACCESS_SET,
> +	ACCESS_RMW
> +};
> +
> +static u8 gic_masked_irq_bits(int irq, int offset, int bits, u8 value,
> +			      enum gic_bit_access access)
> +{
> +	void *base;
> +	int split = 32 / bits;
> +	int shift = (irq % split) * bits;
> +	u32 reg, mask = ((1U << bits) - 1) << shift;
> +
> +	switch (gic_version()) {
> +	case 2:
> +		base = gicv2_dist_base();
> +		break;
> +	case 3:
> +		if (irq < 32)
> +			base = gicv3_sgi_base();
> +		else
> +			base = gicv3_dist_base();
> +		break;
> +	default:
> +		return 0;
> +	}
> +	base += offset + (irq / split) * 4;
> +
> +	switch (access) {
> +	case ACCESS_READ:
> +		return (readl(base) & mask) >> shift;
> +	case ACCESS_SET:
> +		reg = 0;
> +		break;
> +	case ACCESS_RMW:
> +		reg = readl(base) & ~mask;
> +		break;
> +	}
> +
> +	writel(reg | ((u32)value << shift), base);
value & mask may be safer
> +
> +	return 0;
> +}
> +
> +void gic_set_irq_bit(int irq, int offset)
> +{
> +	gic_masked_irq_bits(irq, offset, 1, 1, ACCESS_SET);
Why don't we use ACCESS_RMW?
> +}
> +
> +void gic_enable_irq(int irq)
> +{
> +	gic_set_irq_bit(irq, GICD_ISENABLER);
here we just want to touch one bit and not erase other bits in the word?
> +}
> +
> +void gic_disable_irq(int irq)
> +{
> +	gic_set_irq_bit(irq, GICD_ICENABLER);
> +}
> +
> +void gic_set_irq_priority(int irq, u8 prio)
> +{
> +	gic_masked_irq_bits(irq, GICD_IPRIORITYR, 8, prio, ACCESS_RMW);
> +}
> +
> +void gic_set_irq_target(int irq, int cpu)
> +{
> +	if (irq < 32)
> +		return;
> +
> +	if (gic_version() == 2) {
> +		gic_masked_irq_bits(irq, GICD_ITARGETSR, 8, 1U << cpu,
> +				    ACCESS_RMW);
> +
> +		return;
> +	}
> +
> +	writeq(cpus[cpu], gicv3_dist_base() + GICD_IROUTER + irq * 8);
> +}
> +
> +void gic_set_irq_group(int irq, int group)
> +{
> +	gic_masked_irq_bits(irq, GICD_IGROUPR, 1, group, ACCESS_RMW);
> +}
> +
> +int gic_get_irq_group(int irq)
> +{
> +	return gic_masked_irq_bits(irq, GICD_IGROUPR, 1, 0, ACCESS_READ);
> +}
> 
Thanks

Eric


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
