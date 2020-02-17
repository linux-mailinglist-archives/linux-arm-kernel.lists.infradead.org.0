Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08C29160E30
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 10:12:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iAWUbK+a0I/yNmrnndaba0uBFz/GhJmYhy3RZ8K34mM=; b=nx3MDfWV24swJUdzYnNz8NQUD
	UFD323svst7DntTnOeDE9g2MiZIZLmiXTuGr1GbD1TA9dYdMaZOUFND1aKBXhJgLKhJ6hy87hrePX
	YiooXXMN9uHB19H+g8Lf/nUOAG8OaCJxrjIfCX77Bsuco46Enz/6sUyhMxHmlaiOnOavKFXx4F233
	qHSEvUh/NLmRtssYjQgc4sq/OAZe4v6Z6EBSCMrLSAF6+L7VVwEbof0TMo/C+CVotKyGM34lW3IqW
	SR6eSJbqX/x3RS5lFQzlM09ULwF8RrZr5UMvO3cKiFQfrBATVs7RakZRtgdW3xMz+gCi+3OINIGrp
	ptSDMclMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3cRq-0007cq-7C; Mon, 17 Feb 2020 09:12:14 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3cRd-0007c9-C3
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 09:12:02 +0000
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id C17C2B5DC1BA1A12947B;
 Mon, 17 Feb 2020 17:11:55 +0800 (CST)
Received: from [127.0.0.1] (10.173.222.27) by DGGEMS411-HUB.china.huawei.com
 (10.3.19.211) with Microsoft SMTP Server id 14.3.439.0; Mon, 17 Feb 2020
 17:11:48 +0800
Subject: Re: [PATCH v4 01/20] irqchip/gic-v4.1: Skip absent CPUs while
 iterating over redistributors
To: Marc Zyngier <maz@kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <kvmarm@lists.cs.columbia.edu>, <kvm@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
References: <20200214145736.18550-1-maz@kernel.org>
 <20200214145736.18550-2-maz@kernel.org>
From: Zenghui Yu <yuzenghui@huawei.com>
Message-ID: <1f86bcdd-01ca-4925-3163-d47e17d006ab@huawei.com>
Date: Mon, 17 Feb 2020 17:11:47 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <20200214145736.18550-2-maz@kernel.org>
Content-Language: en-US
X-Originating-IP: [10.173.222.27]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_011201_582391_9E880BA8 
X-CRM114-Status: GOOD (  14.89  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
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

On 2020/2/14 22:57, Marc Zyngier wrote:
> In a system that is only sparsly populated with CPUs, we can end-up with
> redistributors structures that are not initialized. Let's make sure we
> don't try and access those when iterating over them (in this case when
> checking we have a L2 VPE table).
> 
> Fixes: 4e6437f12d6e ("irqchip/gic-v4.1: Ensure L2 vPE table is allocated at RD level")
> Signed-off-by: Marc Zyngier <maz@kernel.org>
> ---
>   drivers/irqchip/irq-gic-v3-its.c | 4 ++++
>   1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/irqchip/irq-gic-v3-its.c b/drivers/irqchip/irq-gic-v3-its.c
> index 83b1186ffcad..da883a691028 100644
> --- a/drivers/irqchip/irq-gic-v3-its.c
> +++ b/drivers/irqchip/irq-gic-v3-its.c
> @@ -2452,6 +2452,10 @@ static bool allocate_vpe_l2_table(int cpu, u32 id)
>   	if (!gic_rdists->has_rvpeid)
>   		return true;
>   
> +	/* Skip non-present CPUs */
> +	if (!base)
> +		return true;
> +

Thanks for fixing this,

Reviewed-by: Zenghui Yu <yuzenghui@huawei.com>

>   	val  = gicr_read_vpropbaser(base + SZ_128K + GICR_VPROPBASER);
>   
>   	esz  = FIELD_GET(GICR_VPROPBASER_4_1_ENTRY_SIZE, val) + 1;
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
