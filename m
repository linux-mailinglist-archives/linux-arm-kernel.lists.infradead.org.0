Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC7261CBC17
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 May 2020 03:18:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Jo64+YY+gFNzAS/phQtvIuHXoUbduTcd7+OnP/n/rTg=; b=JLMgaGwjK8SHaVrZsKvnoixdL
	2hCOUnU45TFHxvxGtiLbWayYTYg8uKyAl8Xb7yHmMXdd1fY+/XKALkABvpgmrkvwWWcnksm8+lWU5
	BnZqS0hL2fQPOt37O4N5wvWtWptQ16nBW8ak/0b17D2PTMsaxv2F9CihEhOCODyPbR/8l9DNEocje
	QxAWBCRD4YQh6VGGwoCSvggJ0m1Y2mRiRTgVQvuyDhRXWHOnenjfT13910DI4H/QiLFGU7us18ulh
	jb9sSHCo6hj/k2BFQMJa9f3xjtXAIFGKdDz23LJKaKSMJaOfDgHBYucIs/3SrYBt7awwweLIcw6ZM
	xOrhp2wIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXE8a-0005b3-Pf; Sat, 09 May 2020 01:18:44 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXE8S-0005aQ-KQ
 for linux-arm-kernel@lists.infradead.org; Sat, 09 May 2020 01:18:38 +0000
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 9CEAAC5A4080CDBAD7ED;
 Sat,  9 May 2020 09:18:18 +0800 (CST)
Received: from [127.0.0.1] (10.166.213.93) by DGGEMS407-HUB.china.huawei.com
 (10.3.19.207) with Microsoft SMTP Server id 14.3.487.0; Sat, 9 May 2020
 09:18:07 +0800
Subject: Re: [PATCH -next] arm64: gtdt: Fix section mismatch in
 next_platform_timer()
To: Kefeng Wang <wangkefeng.wang@huawei.com>, Lorenzo Pieralisi
 <lorenzo.pieralisi@arm.com>, Sudeep Holla <sudeep.holla@arm.com>,
 <linux-acpi@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>
References: <20200508152653.157663-1-wangkefeng.wang@huawei.com>
From: Hanjun Guo <guohanjun@huawei.com>
Message-ID: <e2328035-9caa-590c-b80a-b11860010020@huawei.com>
Date: Sat, 9 May 2020 09:18:07 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200508152653.157663-1-wangkefeng.wang@huawei.com>
Content-Language: en-GB
X-Originating-IP: [10.166.213.93]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_181836_838912_5510E3F0 
X-CRM114-Status: GOOD (  13.60  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [45.249.212.191 listed in wl.mailspike.net]
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
Cc: Hulk Robot <hulkci@huawei.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020/5/8 23:26, Kefeng Wang wrote:
> Drop the __initdata for acpi_gtdt_desc variable to fix the section mismatch,
> 
> WARNING: modpost: vmlinux.o(.text.unlikely+0x95ac): Section mismatch in reference from the function next_platform_timer() to the variable .init.data:acpi_gtdt_desc
> The function next_platform_timer() references
> the variable __initdata acpi_gtdt_desc.
> This is often because next_platform_timer lacks a __initdata
> annotation or the annotation of acpi_gtdt_desc is wrong.
> 
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: Kefeng Wang <wangkefeng.wang@huawei.com>
> ---
>   drivers/acpi/arm64/gtdt.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/acpi/arm64/gtdt.c b/drivers/acpi/arm64/gtdt.c
> index 01962c63a711..6a327616a299 100644
> --- a/drivers/acpi/arm64/gtdt.c
> +++ b/drivers/acpi/arm64/gtdt.c
> @@ -34,7 +34,7 @@ struct acpi_gtdt_descriptor {
>   	void *platform_timer;
>   };
>   
> -static struct acpi_gtdt_descriptor acpi_gtdt_desc __initdata;
> +static struct acpi_gtdt_descriptor acpi_gtdt_desc;
>   
>   static inline void *next_platform_timer(void *platform_timer)

I prefer to make this function as no inline, and make it
as __init function, becasue acpi_gtdt_desc is not used after
gtdt_sbsa_gwdt_init().

Thanks
Hanjun


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
