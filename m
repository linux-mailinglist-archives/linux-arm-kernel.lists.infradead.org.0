Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 826961903A9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 03:43:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8ywgLbPn5oCh2guQZkB8cB4+5HzU3yIgyvmpfdONVe4=; b=bTOzMhXI+BfemUCGTGUjSSYxP
	JL5Fa+vjpVAqksSpCflPxBtV0yKtI0cE3xk6VKqAEzGe1ifCNvWcokgLaLM9oXeMB2WBDZsdT+FFU
	OBTP5SDu1wg8Pln5Sxv6g11vbx/E3NuOuTsvs3E5sbam54kkwUXMw/3VHKvg5pwqJm4pufP72lai3
	2u6HaExAGQAIdssVJ4gXVaIcUxrXRq3JBPnQxIoozXwZeBVdHL4GUO6fq2wETq0Cnng3+uckfEOXX
	giLb4ucLg+mf3b3ms4SfFfzFbvIl8jkhfs0g1++5cih2Iy4xeksY0YzYwR4j4HrlXTupdBGv8ixy4
	vbbVsMjHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGZXU-0004ui-2m; Tue, 24 Mar 2020 02:43:36 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGZXL-0004u3-2P
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 02:43:28 +0000
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 89E47BFAA9A5134BBF4F;
 Tue, 24 Mar 2020 10:43:20 +0800 (CST)
Received: from [127.0.0.1] (10.173.222.27) by DGGEMS405-HUB.china.huawei.com
 (10.3.19.205) with Microsoft SMTP Server id 14.3.487.0; Tue, 24 Mar 2020
 10:43:10 +0800
Subject: Re: [PATCH v6 14/23] irqchip/gic-v4.1: Add VSGI allocation/teardown
To: Marc Zyngier <maz@kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <kvmarm@lists.cs.columbia.edu>, <kvm@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
References: <20200320182406.23465-1-maz@kernel.org>
 <20200320182406.23465-15-maz@kernel.org>
From: Zenghui Yu <yuzenghui@huawei.com>
Message-ID: <f778d757-0312-5412-668c-db9aee889cf0@huawei.com>
Date: Tue, 24 Mar 2020 10:43:09 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <20200320182406.23465-15-maz@kernel.org>
Content-Language: en-US
X-Originating-IP: [10.173.222.27]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_194327_281250_3D3595CD 
X-CRM114-Status: GOOD (  13.49  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Jason Cooper <jason@lakedaemon.net>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Eric Auger <eric.auger@redhat.com>, James Morse <james.morse@arm.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On 2020/3/21 2:23, Marc Zyngier wrote:
> Allocate per-VPE SGIs when initializing the GIC-specific part of the
> VPE data structure.
> 
> Signed-off-by: Marc Zyngier <maz@kernel.org>
> Reviewed-by: Zenghui Yu <yuzenghui@huawei.com>
> Link: https://lore.kernel.org/r/20200304203330.4967-15-maz@kernel.org
> ---
>   drivers/irqchip/irq-gic-v3-its.c   |  2 +-
>   drivers/irqchip/irq-gic-v4.c       | 68 +++++++++++++++++++++++++++++-
>   include/linux/irqchip/arm-gic-v4.h |  4 +-
>   3 files changed, 71 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/irqchip/irq-gic-v3-its.c b/drivers/irqchip/irq-gic-v3-its.c
> index 15250faa9ef7..7ad46ff5f0b9 100644
> --- a/drivers/irqchip/irq-gic-v3-its.c
> +++ b/drivers/irqchip/irq-gic-v3-its.c
> @@ -4053,7 +4053,7 @@ static int its_sgi_set_vcpu_affinity(struct irq_data *d, void *vcpu_info)
>   	struct its_cmd_info *info = vcpu_info;
>   
>   	switch (info->cmd_type) {
> -	case PROP_UPDATE_SGI:
> +	case PROP_UPDATE_VSGI:
>   		vpe->sgi_config[d->hwirq].priority = info->priority;
>   		vpe->sgi_config[d->hwirq].group = info->group;
>   		its_configure_sgi(d, false);

[...]

> @@ -103,7 +105,7 @@ enum its_vcpu_info_cmd_type {
>   	SCHEDULE_VPE,
>   	DESCHEDULE_VPE,
>   	INVALL_VPE,
> -	PROP_UPDATE_SGI,
> +	PROP_UPDATE_VSGI,
>   };
>   
>   struct its_cmd_info {

As Eric pointed out, this belongs to patch #12.


Thanks,
Zenghui


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
