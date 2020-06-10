Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D1DA1F565E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 16:00:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=l8bP3JDDS/VFbFDC0B9GV1FWPJFYuQcMCwwe4Xt4cnM=; b=GrS9pEbFbnv/jiKS5PGKiz/NJ
	khNQ8gFHab6H8PAVwsC4aYg1X6ZVH58EgGaXcwMos7KetOEEltGDy/5VQ089gTpQZnxSfO9ZYmiXT
	WkUwcNm0pg+obeqybHbB8PpJNKscQbqPEecqa5D3ZMMB3jI7uDlf+G1whTbmAqWC7Foyhmz5zdCqB
	fnACFhZfZDpDhxyrWS0woT1YsSJX8vppbZQ9qh2kqsCQLyZCx/J6neA2UUuhXu1kBhfv2DAc3h12f
	/YO5/ymVuWvULwE5tvjzQ8SlR4oDfQfgSsHQBjr8+5IZKBL8gnltKpH+u0jtJftg4GbEMXuT2gapv
	V4JOq2xbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj1Gn-0004FW-3V; Wed, 10 Jun 2020 13:59:57 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj1Gd-0004Dr-Ht
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 13:59:50 +0000
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 95CC8DAAEE057B21A14B;
 Wed, 10 Jun 2020 21:59:28 +0800 (CST)
Received: from [10.173.222.27] (10.173.222.27) by
 DGGEMS407-HUB.china.huawei.com (10.3.19.207) with Microsoft SMTP Server id
 14.3.487.0; Wed, 10 Jun 2020 21:59:20 +0800
Subject: Re: [PATCH] irqchip/gic-v4.1: Use readx_poll_timeout_atomic() to fix
 sleep in atomic
To: <maz@kernel.org>
References: <20200605052345.1494-1-yuzenghui@huawei.com>
From: Zenghui Yu <yuzenghui@huawei.com>
Message-ID: <4a9822bd-0362-7ffe-6e56-3f05a7816d9e@huawei.com>
Date: Wed, 10 Jun 2020 21:59:17 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <20200605052345.1494-1-yuzenghui@huawei.com>
Content-Language: en-US
X-Originating-IP: [10.173.222.27]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_065947_760308_8202641D 
X-CRM114-Status: GOOD (  16.26  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.35 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: jason@lakedaemon.net, linux-kernel@vger.kernel.org, wangjingyi11@huawei.com,
 wanghaibin.wang@huawei.com, tglx@linutronix.de, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

Sorry to ping you in the merge window, but ...

On 2020/6/5 13:23, Zenghui Yu wrote:
> readx_poll_timeout() can sleep if @sleep_us is specified by the caller,
> and is therefore unsafe to be used inside the atomic context, which is
> this case when we use it to poll the GICR_VPENDBASER.Dirty bit in
> irq_set_vcpu_affinity() callback.

this seems like an urgent thing to me. Without this patch, CPUs are
easily to get stuck on my board with GICv4.1 enabled. So it'd be good if
you can have a look and take this as a fix (if it is correct).


Thanks,
Zenghui

> 
> Let's convert to its atomic version instead which helps to get the v4.1
> board back to life!
> 
> Fixes: 96806229ca03 ("irqchip/gic-v4.1: Add support for VPENDBASER's Dirty+Valid signaling")
> Signed-off-by: Zenghui Yu <yuzenghui@huawei.com>
> ---
>   drivers/irqchip/irq-gic-v3-its.c | 8 ++++----
>   1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/irqchip/irq-gic-v3-its.c b/drivers/irqchip/irq-gic-v3-its.c
> index cd685f521c77..6a5a87fc4601 100644
> --- a/drivers/irqchip/irq-gic-v3-its.c
> +++ b/drivers/irqchip/irq-gic-v3-its.c
> @@ -3797,10 +3797,10 @@ static void its_wait_vpt_parse_complete(void)
>   	if (!gic_rdists->has_vpend_valid_dirty)
>   		return;
>   
> -	WARN_ON_ONCE(readq_relaxed_poll_timeout(vlpi_base + GICR_VPENDBASER,
> -						val,
> -						!(val & GICR_VPENDBASER_Dirty),
> -						10, 500));
> +	WARN_ON_ONCE(readq_relaxed_poll_timeout_atomic(vlpi_base + GICR_VPENDBASER,
> +						       val,
> +						       !(val & GICR_VPENDBASER_Dirty),
> +						       10, 500));
>   }
>   
>   static void its_vpe_schedule(struct its_vpe *vpe)
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
