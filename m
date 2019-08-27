Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5A7F9DB89
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 04:08:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=u5Z9AF1s5NCXmd2t45Bu6tsGI+exzyOKL5UrWD8fwJI=; b=H6LR8s5nlku3Q/T9utRy0Rvm1
	GW17hLzmTlCNVce7EwlDRoO4pI4wIS7aO1e4phO/xkBoC+wc0tuBHhwIHKFDnTqTaTxAGvBQNH3s4
	phiMsO+s/S6ilGAkzQQMAOXehR/CHWIEkMMa887t9HMxvhEjWlHW23SJIDwMwQ8Cwd28btTINzzD3
	ccrqsqid9XgbTpGhmJCkDWYYmDvSDPLn3ess5JmZJcc8+/TIywCtamiuIbYqP2TLy0sZ96+h/jE1E
	OwqXJp/Mw+vpQwiDRXiB3dLrPoY4tm5xc5boIGfl5dG3NBfsP1gZa1niR0djshVWaI2nA64RAfU3y
	Xc+PzRKKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2QuW-0004fK-7b; Tue, 27 Aug 2019 02:08:40 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2QuK-0004eL-Kl
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 02:08:30 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 75E88657AF33BC0E7616;
 Tue, 27 Aug 2019 10:08:20 +0800 (CST)
Received: from [127.0.0.1] (10.133.216.73) by DGGEMS414-HUB.china.huawei.com
 (10.3.19.214) with Microsoft SMTP Server id 14.3.439.0; Tue, 27 Aug 2019
 10:08:14 +0800
Subject: Re: [PATCH] kvm/arm/vgic: fix potential deadlock when ap_list is long
To: <linux-arm-kernel@lists.infradead.org>, <kvmarm@lists.cs.columbia.edu>,
 <linux-kernel@vger.kernel.org>
References: <1566837552-127854-1-git-send-email-guoheyi@huawei.com>
From: Guoheyi <guoheyi@huawei.com>
Message-ID: <72277d40-de7a-905b-f3a0-7bcc8222d727@huawei.com>
Date: Tue, 27 Aug 2019 10:08:13 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.1
MIME-Version: 1.0
In-Reply-To: <1566837552-127854-1-git-send-email-guoheyi@huawei.com>
X-Originating-IP: [10.133.216.73]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_190828_845767_BC0F1B5E 
X-CRM114-Status: GOOD (  17.48  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>, Marc
 Zyngier <maz@kernel.org>, James Morse <james.morse@arm.com>,
 Zenghui Yu <yuzenghui@huawei.com>, wanghaibin.wang@huawei.com,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 2019/8/27 0:39, Heyi Guo wrote:
> If ap_list is longer than 256, merge_final() in sort_list() will call
> comparison function with the same element just as below:
>
>      do {
>          /*
>           * If the merge is highly unbalanced (e.g. the input is
>           * already sorted), this loop may run many iterations.
>           * Continue callbacks to the client even though no
>           * element comparison is needed, so the client's cmp()
>           * routine can invoke cond_resched() periodically.
>           */
>          if (unlikely(!++count))
>              cmp(priv, b, b);
>
> This will definitely cause deadlock in vgic_irq_cmp() and the call trace
> is:
>
> [ 2667.130283] Call trace:
> [ 2667.130284] queued_spin_lock_slowpath+0x64/0x2a8
> [ 2667.130284] vgic_irq_cmp+0xfc/0x130
> [ 2667.130284] list_sort.part.0+0x1c0/0x268
> [ 2667.130285] list_sort+0x18/0x28
> [ 2667.130285] vgic_flush_lr_state+0x158/0x518
> [ 2667.130285] kvm_vgic_flush_hwstate+0x70/0x108
> [ 2667.130286] kvm_arch_vcpu_ioctl_run+0x114/0xa50
> [ 2667.130286] kvm_vcpu_ioctl+0x490/0x8c8
> [ 2667.130286] do_vfs_ioctl+0xc4/0x8c0
> [ 2667.130287] ksys_ioctl+0x8c/0xa0
> [ 2667.130287] __arm64_sys_ioctl+0x28/0x38
> [ 2667.130287] el0_svc_common+0x78/0x130
> [ 2667.130288] el0_svc_handler+0x38/0x78
> [ 2667.130288] el0_svc+0x8/0xc
>
> So return 0 immediately when a==b.
>
> Signed-off-by: Zenghui Yu <yuzenghui@huawei.com>
> Signed-off-by: Heyi Guo <guoheyi@huawei.com>
> Cc: Marc Zyngier <maz@kernel.org>
> Cc: James Morse <james.morse@arm.com>
> Cc: Julien Thierry <julien.thierry.kdev@gmail.com>
> Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
> ---
>   virt/kvm/arm/vgic/vgic.c | 7 +++++++
>   1 file changed, 7 insertions(+)
>
> diff --git a/virt/kvm/arm/vgic/vgic.c b/virt/kvm/arm/vgic/vgic.c
> index 13d4b38..64ed0dc 100644
> --- a/virt/kvm/arm/vgic/vgic.c
> +++ b/virt/kvm/arm/vgic/vgic.c
> @@ -254,6 +254,13 @@ static int vgic_irq_cmp(void *priv, struct list_head *a, struct list_head *b)
>   	bool penda, pendb;
>   	int ret;
>   
> +	/*
> +	 * list_sort may call this function with the same element when the list
> +	 * is farely long.

Sorry, s/farely/fairly/ :)

HG

> +	 */
> +	if (unlikely(a == b))
> +		return 0;
> +
>   	raw_spin_lock(&irqa->irq_lock);
>   	raw_spin_lock_nested(&irqb->irq_lock, SINGLE_DEPTH_NESTING);
>   



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
