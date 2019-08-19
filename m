Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A13A4926B7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 16:29:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Y5ymO052FcWwfqcfcckQU4wi+Jc+MFzXJbI5FFPYJuw=; b=GDcJjqvlTjOhZ/voa6lTMLDgA
	SRLVqj8MmsLpURuok7W/lWLIHSAw/GT/IVF10T8QvV4xJLlIeFtbdQMCcqrb5S03jfM3odisYCDZ/
	bMv3KarP6a6e1q26o0RUaZy4BdZgC0Kd0SpMen7zl4Z9tP7PeoeI3EcZJNZvfyIvCWaH07sgxkwxh
	WPsYLgtmgZoTMAl0cYG/qm5wwBMcac7NKpjlheV78fA/T/h5liHGioU03n6kN/zO9gPrcDGd/Qdbk
	OK0MRlImNN8u/KnktUAF/smtsV/K8J79HVx8N52eSZq5RTfXMSIO0nGUck3+mgEXXnKlg4VTCISbL
	cpHgwCk8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzif0-0000zP-4H; Mon, 19 Aug 2019 14:29:26 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzieq-0000yz-6h
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 14:29:17 +0000
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 90E4EABBEAC6BB8EC53D;
 Mon, 19 Aug 2019 22:29:13 +0800 (CST)
Received: from [127.0.0.1] (10.184.12.158) by DGGEMS410-HUB.china.huawei.com
 (10.3.19.210) with Microsoft SMTP Server id 14.3.439.0; Mon, 19 Aug 2019
 22:29:07 +0800
Subject: Re: [PATCH v2 01/12] irqchip/gic: Rework gic_configure_irq to take
 the full ICFGR base
To: Marc Zyngier <maz@kernel.org>
References: <20190806100121.240767-1-maz@kernel.org>
 <20190806100121.240767-2-maz@kernel.org>
From: Zenghui Yu <yuzenghui@huawei.com>
Message-ID: <a601236c-8128-ca7a-667f-12a4b7cefb89@huawei.com>
Date: Mon, 19 Aug 2019 22:26:25 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:64.0) Gecko/20100101
 Thunderbird/64.0
MIME-Version: 1.0
In-Reply-To: <20190806100121.240767-2-maz@kernel.org>
Content-Language: en-US
X-Originating-IP: [10.184.12.158]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_072916_405039_475C22BC 
X-CRM114-Status: GOOD (  23.00  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Jason Cooper <jason@lakedaemon.net>, Lokesh Vutla <lokeshvutla@ti.com>,
 John Garry <john.garry@huawei.com>, linux-kernel@vger.kernel.org, Shameerali
 Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Thomas Gleixner <tglx@linutronix.de>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On 2019/8/6 18:01, Marc Zyngier wrote:
> gic_configure_irq is currently passed the (re)distributor address,
> to which it applies an a fixed offset to get to the configuration
> registers. This offset is constant across all GICs, or rather it was
> until to v3.1...
> 
> An easy way out is for the individual drivers to pass the base
> address of the configuration register for the considered interrupt.
> At the same time, move part of the error handling back to the
> individual drivers, as things are about to change on that front.
> 
> Signed-off-by: Marc Zyngier <maz@kernel.org>
> ---
>   drivers/irqchip/irq-gic-common.c | 14 +++++---------
>   drivers/irqchip/irq-gic-v3.c     | 11 ++++++++++-
>   drivers/irqchip/irq-gic.c        | 10 +++++++++-
>   drivers/irqchip/irq-hip04.c      |  7 ++++++-
>   4 files changed, 30 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/irqchip/irq-gic-common.c b/drivers/irqchip/irq-gic-common.c
> index b0a8215a13fc..6900b6f0921c 100644
> --- a/drivers/irqchip/irq-gic-common.c
> +++ b/drivers/irqchip/irq-gic-common.c
> @@ -63,7 +63,7 @@ int gic_configure_irq(unsigned int irq, unsigned int type,
>   	 * for "irq", depending on "type".
>   	 */
>   	raw_spin_lock_irqsave(&irq_controller_lock, flags);
> -	val = oldval = readl_relaxed(base + GIC_DIST_CONFIG + confoff);
> +	val = oldval = readl_relaxed(base + confoff);
>   	if (type & IRQ_TYPE_LEVEL_MASK)
>   		val &= ~confmask;
>   	else if (type & IRQ_TYPE_EDGE_BOTH)
> @@ -83,14 +83,10 @@ int gic_configure_irq(unsigned int irq, unsigned int type,
>   	 * does not allow us to set the configuration or we are in a
>   	 * non-secure mode, and hence it may not be catastrophic.
>   	 */
> -	writel_relaxed(val, base + GIC_DIST_CONFIG + confoff);
> -	if (readl_relaxed(base + GIC_DIST_CONFIG + confoff) != val) {
> -		if (WARN_ON(irq >= 32))
> -			ret = -EINVAL;

Since this WARN_ON is dropped, the comment above should also be updated.
But what is the reason for deleting it?  (It may give us some points
when we fail to set type for SPIs.)


Thanks,
zenghui

> -		else
> -			pr_warn("GIC: PPI%d is secure or misconfigured\n",
> -				irq - 16);
> -	}
> +	writel_relaxed(val, base + confoff);
> +	if (readl_relaxed(base + confoff) != val)
> +		ret = -EINVAL;
> +
>   	raw_spin_unlock_irqrestore(&irq_controller_lock, flags);
>   
>   	if (sync_access)
> diff --git a/drivers/irqchip/irq-gic-v3.c b/drivers/irqchip/irq-gic-v3.c
> index 96d927f0f91a..b250e69908f8 100644
> --- a/drivers/irqchip/irq-gic-v3.c
> +++ b/drivers/irqchip/irq-gic-v3.c
> @@ -407,6 +407,7 @@ static int gic_set_type(struct irq_data *d, unsigned int type)
>   	unsigned int irq = gic_irq(d);
>   	void (*rwp_wait)(void);
>   	void __iomem *base;
> +	int ret;
>   
>   	/* Interrupt configuration for SGIs can't be changed */
>   	if (irq < 16)
> @@ -425,7 +426,15 @@ static int gic_set_type(struct irq_data *d, unsigned int type)
>   		rwp_wait = gic_dist_wait_for_rwp;
>   	}
>   
> -	return gic_configure_irq(irq, type, base, rwp_wait);
> +
> +	ret = gic_configure_irq(irq, type, base + GICD_ICFGR, rwp_wait);
> +	if (ret && irq < 32) {
> +		/* Misconfigured PPIs are usually not fatal */
> +		pr_warn("GIC: PPI%d is secure or misconfigured\n", irq - 16);
> +		ret = 0;
> +	}
> +
> +	return ret;
>   }
>   
>   static int gic_irq_set_vcpu_affinity(struct irq_data *d, void *vcpu)
> diff --git a/drivers/irqchip/irq-gic.c b/drivers/irqchip/irq-gic.c
> index e45f45e68720..ab48760acabb 100644
> --- a/drivers/irqchip/irq-gic.c
> +++ b/drivers/irqchip/irq-gic.c
> @@ -291,6 +291,7 @@ static int gic_set_type(struct irq_data *d, unsigned int type)
>   {
>   	void __iomem *base = gic_dist_base(d);
>   	unsigned int gicirq = gic_irq(d);
> +	int ret;
>   
>   	/* Interrupt configuration for SGIs can't be changed */
>   	if (gicirq < 16)
> @@ -301,7 +302,14 @@ static int gic_set_type(struct irq_data *d, unsigned int type)
>   			    type != IRQ_TYPE_EDGE_RISING)
>   		return -EINVAL;
>   
> -	return gic_configure_irq(gicirq, type, base, NULL);
> +	ret = gic_configure_irq(gicirq, type, base + GIC_DIST_CONFIG, NULL);
> +	if (ret && gicirq < 32) {
> +		/* Misconfigured PPIs are usually not fatal */
> +		pr_warn("GIC: PPI%d is secure or misconfigured\n", gicirq - 16);
> +		ret = 0;
> +	}
> +
> +	return ret;
>   }
>   
>   static int gic_irq_set_vcpu_affinity(struct irq_data *d, void *vcpu)
> diff --git a/drivers/irqchip/irq-hip04.c b/drivers/irqchip/irq-hip04.c
> index cf705827599c..1626131834a6 100644
> --- a/drivers/irqchip/irq-hip04.c
> +++ b/drivers/irqchip/irq-hip04.c
> @@ -130,7 +130,12 @@ static int hip04_irq_set_type(struct irq_data *d, unsigned int type)
>   
>   	raw_spin_lock(&irq_controller_lock);
>   
> -	ret = gic_configure_irq(irq, type, base, NULL);
> +	ret = gic_configure_irq(irq, type, base + GIC_DIST_CONFIG, NULL);
> +	if (ret && irq < 32) {
> +		/* Misconfigured PPIs are usually not fatal */
> +		pr_warn("GIC: PPI%d is secure or misconfigured\n", irq - 16);
> +		ret = 0;
> +	}
>   
>   	raw_spin_unlock(&irq_controller_lock);
>   
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
