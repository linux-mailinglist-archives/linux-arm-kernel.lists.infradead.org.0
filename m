Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EDF2183740
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 18:17:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=++ssMRfRsElT7X97es2Zw/UhR9qZwR18YaJ7bCeDPBU=; b=L+3406PafXDGlF
	QmEqhI/ks9vh2VqjhUUnISKM+w9UF6i9tuEZnWP9gyXEZUPFbScpU0JVnoioO5VQnihiEPSOFC2kz
	OBAH8aD0TcmVgtyAiwaNqEyHNiGr1mkLbPmbOGWepVrJyfXz/RKsTrST3A8rg4enUZCqA68uKgaUx
	GgzIMe1JFsZ888L3AJ+MN/FT0xIocYPrm6w+YVBtaU90AtTU+ZLZO5ayPldiGnuXKSv6q5P/Qbhxl
	YCxD5vKD3PobXFE1JFsoxleJIdEJKyOP7R+5sNxXuPqhJaDpkB/fbB6oqYDnsRfu4I9qo2ByVMcwe
	yceE2KyOLoC7Axe5R2Yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCRSN-0001IF-Fz; Thu, 12 Mar 2020 17:17:15 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCRSD-0001HU-G6
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 17:17:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1584033422;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=aSU9rKT52eGZ3AMKXS7ZfTHYCWHLV1VyuRTBlIAeJGE=;
 b=DaBWFA/EEUDz7G1jISFe6FcXz/DjTloZi3LrQfS1QzU8Oud31dHafWfhzgVaUVVxqH53k2
 95EG+40FX516xjciBo3zxNOA6lJhvOGVdLnS853V63kFgQYTTVrEexp/+u2Tuq2JEmp4lt
 U2QP+AgzkPSFixkpF+dXxffB6W7G/zk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-477-Z8bhjRwrOKK_DvCW__WeCg-1; Thu, 12 Mar 2020 13:16:55 -0400
X-MC-Unique: Z8bhjRwrOKK_DvCW__WeCg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 99E3F8017DF;
 Thu, 12 Mar 2020 17:16:53 +0000 (UTC)
Received: from [10.36.118.12] (unknown [10.36.118.12])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 6D9F58F37F;
 Thu, 12 Mar 2020 17:16:48 +0000 (UTC)
Subject: Re: [PATCH v5 01/23] irqchip/gic-v3: Use SGIs without active state if
 offered
To: Marc Zyngier <maz@kernel.org>, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20200304203330.4967-1-maz@kernel.org>
 <20200304203330.4967-2-maz@kernel.org>
From: Auger Eric <eric.auger@redhat.com>
Message-ID: <1fa8ab2f-6766-9dc1-53a6-9cead19a5a7b@redhat.com>
Date: Thu, 12 Mar 2020 18:16:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20200304203330.4967-2-maz@kernel.org>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_101705_619325_80357E9E 
X-CRM114-Status: GOOD (  24.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Jason Cooper <jason@lakedaemon.net>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Robert Richter <rrichter@marvell.com>, James Morse <james.morse@arm.com>,
 Zenghui Yu <yuzenghui@huawei.com>, Thomas Gleixner <tglx@linutronix.de>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On 3/4/20 9:33 PM, Marc Zyngier wrote:
> To allow the direct injection of SGIs into a guest, the GICv4.1
> architecture has to sacrifice the Active state so that SGIs look
> a lot like LPIs (they are injected by the same mechanism).
> 
> In order not to break existing software, the architecture gives
> offers guests OSs the choice: SGIs with or without an active
nit gives offers
> state. It is the hypervisors duty to honor the guest's choice.
> 
> For this, the architecture offers a discovery bit indicating whether
> the GIC supports GICv4.1 SGIs (GICD_TYPER2.nASSGIcap), and another
> bit indicating whether the guest wants Active-less SGIs or not
> (controlled by GICD_CTLR.nASSGIreq).
> 
> A hypervisor not supporting GICv4.1 SGIs would leave nASSGIcap
> clear, and a guest not knowing about GICv4.1 SGIs (or definitely
> wanting an Active state) would leave nASSGIreq clear (both being
> thankfully backward compatible with older revisions of the GIC).
> 
> Since Linux is perfectly happy without an active state on SGIs,
> inform the hypervisor that we'll use that if offered.
> 
> Signed-off-by: Marc Zyngier <maz@kernel.org>
> Reviewed-by: Zenghui Yu <yuzenghui@huawei.com>
> ---
>  drivers/irqchip/irq-gic-v3.c       | 10 ++++++++--
>  include/linux/irqchip/arm-gic-v3.h |  2 ++
>  2 files changed, 10 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/irqchip/irq-gic-v3.c b/drivers/irqchip/irq-gic-v3.c
> index cd76435c4a31..73e87e176d76 100644
> --- a/drivers/irqchip/irq-gic-v3.c
> +++ b/drivers/irqchip/irq-gic-v3.c
> @@ -724,6 +724,7 @@ static void __init gic_dist_init(void)
>  	unsigned int i;
>  	u64 affinity;
>  	void __iomem *base = gic_data.dist_base;
> +	u32 val;
>  
>  	/* Disable the distributor */
>  	writel_relaxed(0, base + GICD_CTLR);
> @@ -756,9 +757,14 @@ static void __init gic_dist_init(void)
>  	/* Now do the common stuff, and wait for the distributor to drain */
>  	gic_dist_config(base, GIC_LINE_NR, gic_dist_wait_for_rwp);
>  
> +	val = GICD_CTLR_ARE_NS | GICD_CTLR_ENABLE_G1A | GICD_CTLR_ENABLE_G1;
> +	if (gic_data.rdists.gicd_typer2 & GICD_TYPER2_nASSGIcap) {
> +		pr_info("Enabling SGIs without active state\n");
> +		val |= GICD_CTLR_nASSGIreq;
> +	}
> +
>  	/* Enable distributor with ARE, Group1 */
> -	writel_relaxed(GICD_CTLR_ARE_NS | GICD_CTLR_ENABLE_G1A | GICD_CTLR_ENABLE_G1,
> -		       base + GICD_CTLR);
> +	writel_relaxed(val, base + GICD_CTLR);
>  
>  	/*
>  	 * Set all global interrupts to the boot CPU only. ARE must be
> diff --git a/include/linux/irqchip/arm-gic-v3.h b/include/linux/irqchip/arm-gic-v3.h
> index 83439bfb6c5b..c29a02678a6f 100644
> --- a/include/linux/irqchip/arm-gic-v3.h
> +++ b/include/linux/irqchip/arm-gic-v3.h
> @@ -57,6 +57,7 @@
>  #define GICD_SPENDSGIR			0x0F20
>  
>  #define GICD_CTLR_RWP			(1U << 31)
> +#define GICD_CTLR_nASSGIreq		(1U << 8)
I am not able to find this bit in Arm IHI 0069F (ID022020)
same for the bit in GICD_TYPER. Do we still miss part of the spec?

Thanks

Eric
>  #define GICD_CTLR_DS			(1U << 6)
>  #define GICD_CTLR_ARE_NS		(1U << 4)
>  #define GICD_CTLR_ENABLE_G1A		(1U << 1)
> @@ -90,6 +91,7 @@
>  #define GICD_TYPER_ESPIS(typer)						\
>  	(((typer) & GICD_TYPER_ESPI) ? GICD_TYPER_SPIS((typer) >> 27) : 0)
>  
> +#define GICD_TYPER2_nASSGIcap		(1U << 8)
>  #define GICD_TYPER2_VIL			(1U << 7)
>  #define GICD_TYPER2_VID			GENMASK(4, 0)
>  
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
