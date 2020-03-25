Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA0271925E5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 11:39:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IqmBDPsGTIKHXLrgy0MFWn49ovFbJ+xdWSUsVENWpMg=; b=n3a//aiTh+zq6N
	91AfDHFY0C44U5kjHZZlvnZooKX+AyEZp/JnG5k3ku5T5X4VM44r21YBdKaRcBxjKy1aQ8BhpUKKP
	tjxt/HYjIigbS9lNmuoL4VZuf+23r18AEa3nEhdLahwMYEmJvjPiMNo6gU14pP/19QR3s9alCMBbS
	PXn/B/gNh0BHcOoX1Vj9eP+F2Ox1ccPuO2R4UpMhGz+70iutMcEEIt1U5FthrdvNbVuBKXMmjZVo4
	oMf6omIxCCFd9SJRAw50uLjRw1o1AVHgXH1nPEsYoL/6Ecczo2zjBO/JBh/KwvbaDLMcAICv6tq+l
	tgjVSSYeJgRtZaiB+R9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH3Rk-0007zu-Fa; Wed, 25 Mar 2020 10:39:40 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH3Qw-0007QU-8G
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 10:38:51 +0000
Received: from DGGEMS406-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 7787C72ABDB49AE56E7A;
 Wed, 25 Mar 2020 18:38:47 +0800 (CST)
Received: from [127.0.0.1] (10.173.220.25) by DGGEMS406-HUB.china.huawei.com
 (10.3.19.206) with Microsoft SMTP Server id 14.3.487.0; Wed, 25 Mar 2020
 18:38:42 +0800
Subject: Re: [PATCH v2 67/94] arm64: Add level-hinted TLB invalidation helper
To: Marc Zyngier <maz@kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <kvmarm@lists.cs.columbia.edu>, <kvm@vger.kernel.org>
References: <20200211174938.27809-1-maz@kernel.org>
 <20200211174938.27809-68-maz@kernel.org>
From: Zhenyu Ye <yezhenyu2@huawei.com>
Message-ID: <b4120382-d175-0c2f-249e-cc77a09709db@huawei.com>
Date: Wed, 25 Mar 2020 18:38:41 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20200211174938.27809-68-maz@kernel.org>
X-Originating-IP: [10.173.220.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_033850_484971_71279E54 
X-CRM114-Status: GOOD (  12.59  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Andre Przywara <andre.przywara@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>,
 Jintack Lim <jintack@cs.columbia.edu>, James Morse <james.morse@arm.com>,
 Alexandru Elisei <alexandru.elisei@arm.com>, Dave
 Martin <Dave.Martin@arm.com>, Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On 2020/2/12 1:49, Marc Zyngier wrote:
> Add a level-hinted TLB invalidation helper that only gets used if
> ARMv8.4-TTL gets detected.
> 
> Signed-off-by: Marc Zyngier <maz@kernel.org>
> ---
>  arch/arm64/include/asm/tlbflush.h | 30 ++++++++++++++++++++++++++++++
>  1 file changed, 30 insertions(+)
> 
> diff --git a/arch/arm64/include/asm/tlbflush.h b/arch/arm64/include/asm/tlbflush.h
> index bc3949064725..a3f70778a325 100644
> --- a/arch/arm64/include/asm/tlbflush.h
> +++ b/arch/arm64/include/asm/tlbflush.h
> @@ -10,6 +10,7 @@
>  
>  #ifndef __ASSEMBLY__
>  
> +#include <linux/bitfield.h>
>  #include <linux/mm_types.h>
>  #include <linux/sched.h>
>  #include <asm/cputype.h>
> @@ -59,6 +60,35 @@
>  		__ta;						\
>  	})
>  
> +#define TLBI_TTL_MASK	GENMASK_ULL(47, 44)
> +
> +#define __tlbi_level(op, addr, level)					\
> +	do {								\
> +		u64 arg = addr;						\
> +									\
> +		if (cpus_have_const_cap(ARM64_HAS_ARMv8_4_TTL) &&	\
> +		    level) {						\
> +			u64 ttl = level;				\
> +									\
> +			switch (PAGE_SIZE) {				\
> +			case SZ_4K:					\
> +				ttl |= 1 << 2;				\
> +				break;					\
> +			case SZ_16K:					\
> +				ttl |= 2 << 2;				\
> +				break;					\
> +			case SZ_64K:					\
> +				ttl |= 3 << 2;				\
> +				break;					\
> +			}						\

Can we define a macro here to replace the switch? It will be more
clearly and efficient. Such as:

#define __TG ((PAGE_SHIFT - 12) / 2 + 1)
ttl |= __TG << 2;

> +									\
> +			arg &= ~TLBI_TTL_MASK;				\
> +			arg |= FIELD_PREP(TLBI_TTL_MASK, ttl);		\
> +		}							\
> +									\
> +		__tlbi(op,  arg);					\
> +	} while(0)
> +
>  /*
>   *	TLB Invalidation
>   *	================
> 

Thanks,
Zhenyu


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
