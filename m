Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AA6115C03E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 15:22:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eWs7TXgot4bsi42rjnESdZTXuWrJxWrWojFiUZStH64=; b=NynqNMKzWCxgxyiVQDVFxls7b
	Cu0zB3cg8gtmXCmoRA6zbc7kVDGcGEVnTVOQQTcyIXECYaRn4cAn7vUum1TQ5091QGPFkQRZfTSj3
	dzMiIW/dXhc1Cih+GbMlEtyUrSbu9IM3XKjH7Ft3zxleP9a7wjIzAaU0cO/aS4DIv2GCiKdZD/DbU
	spov+NuB1pYAO3Ww3hx0sWYwAZMJRZRVhgKn286rMedQa9vsAEBOUxzbew46h1qVxwXMs5OlvHCf4
	atii/SLDUn+h7/0nToj1wWAbe1LICm5/sp5phxmvzxV7ZzxCaUb+SVacUPHHx4nT85sNQNHlpvGyu
	Mw1LPmSkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2FNk-0005Uw-U5; Thu, 13 Feb 2020 14:22:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2FNc-0005UG-5U
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 14:22:14 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A312F222C2;
 Thu, 13 Feb 2020 14:22:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581603729;
 bh=6VfGSAC1HNOSPZvAehIj0dyrn4ZvRctoIk3FH92JPYI=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=kSeAbcjQ8QOxAe4QgIbYkEwyQm3vrPqRAkJtjE0GbKOtRmcwL4e4Um3YxtPHyFnrh
 sMbizg7K02UaBIu2Fg5l9afFMJ+YXwXAZ+pOfkgKZPgX3I8z6mAeRgXjKDavzXGviQ
 cFL3ig+yq/2tfGch9ygjX6/xRILMKkgI2klDov8I=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j2FNX-004qXJ-U9; Thu, 13 Feb 2020 14:22:08 +0000
MIME-Version: 1.0
Date: Thu, 13 Feb 2020 14:22:07 +0000
From: Marc Zyngier <maz@kernel.org>
To: Zenghui Yu <yuzenghui@huawei.com>
Subject: Re: [PATCH v2 3/6] irqchip/gic-v4.1: Ensure L2 vPE table is allocated
 at RD level
In-Reply-To: <20200206075711.1275-4-yuzenghui@huawei.com>
References: <20200206075711.1275-1-yuzenghui@huawei.com>
 <20200206075711.1275-4-yuzenghui@huawei.com>
Message-ID: <2f6a27ac57aef9b948952c210c9a5882@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: yuzenghui@huawei.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 tglx@linutronix.de, jason@lakedaemon.net, wanghaibin.wang@huawei.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_062212_245567_7992701B 
X-CRM114-Status: GOOD (  19.83  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: jason@lakedaemon.net, linux-kernel@vger.kernel.org,
 wanghaibin.wang@huawei.com, tglx@linutronix.de, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Zenghui,

On 2020-02-06 07:57, Zenghui Yu wrote:
> In GICv4, we will ensure that level2 vPE table memory is allocated
> for the specified vpe_id on all v4 ITS, in its_alloc_vpe_table().
> This still works well for the typical GICv4.1 implementation, where
> the new vPE table is shared between the ITSs and the RDs.
> 
> To make it explicit, let us introduce allocate_vpe_l2_table() to
> make sure that the L2 tables are allocated on all v4.1 RDs. We're
> likely not need to allocate memory in it because the vPE table is
> shared and (L2 table is) already allocated at ITS level, except
> for the case where the ITS doesn't share anything (say SVPET == 0,
> practically unlikely but architecturally allowed).
> 
> The implementation of allocate_vpe_l2_table() is mostly copied from
> its_alloc_table_entry().
> 
> Signed-off-by: Zenghui Yu <yuzenghui@huawei.com>
> ---
>  drivers/irqchip/irq-gic-v3-its.c | 80 ++++++++++++++++++++++++++++++++
>  1 file changed, 80 insertions(+)
> 
> diff --git a/drivers/irqchip/irq-gic-v3-its.c 
> b/drivers/irqchip/irq-gic-v3-its.c
> index 0f1fe56ce0af..ae4e7b355b46 100644
> --- a/drivers/irqchip/irq-gic-v3-its.c
> +++ b/drivers/irqchip/irq-gic-v3-its.c
> @@ -2443,6 +2443,72 @@ static u64 
> inherit_vpe_l1_table_from_rd(cpumask_t **mask)
>  	return 0;
>  }
> 
> +static bool allocate_vpe_l2_table(int cpu, u32 id)
> +{
> +	void __iomem *base = gic_data_rdist_cpu(cpu)->rd_base;
> +	u64 val, gpsz, npg;
> +	unsigned int psz, esz, idx;
> +	struct page *page;
> +	__le64 *table;
> +
> +	if (!gic_rdists->has_rvpeid)
> +		return true;
> +
> +	val  = gits_read_vpropbaser(base + SZ_128K + GICR_VPROPBASER);

Having rebased the rest of the GICv4.1 series on top of -rc1, I've hit a 
small
issue right here. I run a FVP model that only spawns 4 CPUs, while the 
DT has
8 of them. This means that online_cpus = 4, and possible_cpus = 8.

So in my case, half of the RDs have base == NULL, and things stop 
quickly.

I plan to queue the following:

diff --git a/drivers/irqchip/irq-gic-v3-its.c 
b/drivers/irqchip/irq-gic-v3-its.c
index d85dc8dcb0ad..7656b353a95f 100644
--- a/drivers/irqchip/irq-gic-v3-its.c
+++ b/drivers/irqchip/irq-gic-v3-its.c
@@ -2526,6 +2526,10 @@ static bool allocate_vpe_l2_table(int cpu, u32 
id)
  	if (!gic_rdists->has_rvpeid)
  		return true;

+	/* Skip non-present CPUs */
+	if (!base)
+		return true;
+
  	val  = gicr_read_vpropbaser(base + SZ_128K + GICR_VPROPBASER);

  	esz  = FIELD_GET(GICR_VPROPBASER_4_1_ENTRY_SIZE, val) + 1;


Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
