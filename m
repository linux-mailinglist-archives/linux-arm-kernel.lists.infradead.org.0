Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EECE5FB27F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 15:24:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4sADVgffzfqXkfQBOwpwR+PPJL7BVwZ0ElIMmAmd72M=; b=HThdStxaymHbWg
	wsGFOSJgLCHtBsG2/FON8WqA3zxRiXqJQMFOM5GRg1mVBWayVJO8ISnBslg51S980+57bt5/0C2cQ
	baxWEZ06qc88aqvSpB+Gw9216GGbAun0bGaIk8TiLRhQD808mBzsnUL7i5G8aht7uQD/e5gTyQMCh
	L9nqUI9eCnA1qrz9sR4XOfqVTr3rsGthFVWQKGwBV7IivXYDkaDPh2Ulvje1psuH6qMgQbBAUroJB
	Kq3AjWKZ7ZPvcOZ7fudX2QKftsH1skSxn9zE00yjUBsl3Ur3i2DLY32A0y6c+GmKHFgNACiWI2tuE
	Cyt7mtCNO3BOAtIkNqdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUtZL-0002qs-C0; Wed, 13 Nov 2019 14:24:27 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUtZA-0002qD-NL
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 14:24:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 84C5D7A7;
 Wed, 13 Nov 2019 06:24:15 -0800 (PST)
Received: from [10.1.194.43] (e112269-lin.cambridge.arm.com [10.1.194.43])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7A14F3F6C4;
 Wed, 13 Nov 2019 06:24:14 -0800 (PST)
From: Steven Price <steven.price@arm.com>
Subject: Re: [PATCH -next] KVM: arm: remove duplicate include
To: YueHaibing <yuehaibing@huawei.com>, maz@kernel.org, james.morse@arm.com,
 julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com
References: <20191113014045.15276-1-yuehaibing@huawei.com>
Message-ID: <daa269a8-17d2-b568-8287-7606ccd9e200@arm.com>
Date: Wed, 13 Nov 2019 14:24:13 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191113014045.15276-1-yuehaibing@huawei.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_062416_806920_55788A75 
X-CRM114-Status: GOOD (  12.32  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 13/11/2019 01:40, YueHaibing wrote:
> Remove duplicate header which is included twice.
> 
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>

Reviewed-by: Steven Price <steven.price@arm.com>

Thanks for spotting - I'm not sure how that happened! This
Fixes: 8564d6372a7d ("KVM: arm64: Support stolen time reporting via shared structure")
although I don't think it causes any actual harm.

Steve

> ---
>  virt/kvm/arm/arm.c | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/virt/kvm/arm/arm.c b/virt/kvm/arm/arm.c
> index 12e0280..d910a03 100644
> --- a/virt/kvm/arm/arm.c
> +++ b/virt/kvm/arm/arm.c
> @@ -20,8 +20,6 @@
>  #include <linux/irqbypass.h>
>  #include <linux/sched/stat.h>
>  #include <trace/events/kvm.h>
> -#include <kvm/arm_pmu.h>
> -#include <kvm/arm_psci.h>
>  
>  #define CREATE_TRACE_POINTS
>  #include "trace.h"
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
