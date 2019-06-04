Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15B55341E4
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 10:34:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p4xUF8hw44NsmlrymwI2/eOOEbOgWcixDnyyv6mg+vo=; b=eJxsOj+iVCkTkU
	bk8PXYJ5CxTU9Wvjl15VR7abgroVU5czD/a93/tBI0Z07jFtaTX92OFSdAgI4OX82lCjkLtCKT7vq
	mveEY7ghHEezFrHCkmjmq2eIr4aEFUGUHnHbQ2UZprejwt3MzXa1jMRe8iSjnR2ziwYHeasMDps1m
	SLUfoytOQ/PjX9/HnsuZvnULOAr2lFsEdriVtHhf5l1mQ1PdeX/h9f5BT+uOukAyFl4+8Ta6M0LDC
	/NOzlkkcq3cNHjAhWu5RtgfZdPC/Otmgkda8X76l67JfzmoX436uX093/Xkbkg8JKSUlkGkEIpTR7
	aNxZgRmebG6Hv2AuMXBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY4tQ-00022n-Br; Tue, 04 Jun 2019 08:34:04 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY4tJ-000222-6Q
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 08:33:58 +0000
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id C46289A8C6DCB0E85411;
 Tue,  4 Jun 2019 16:33:48 +0800 (CST)
Received: from [127.0.0.1] (10.133.213.239) by DGGEMS412-HUB.china.huawei.com
 (10.3.19.212) with Microsoft SMTP Server id 14.3.439.0;
 Tue, 4 Jun 2019 16:33:46 +0800
Subject: Re: [PATCH] arm64: arch_k3: Fix kconfig dependency warning
To: <catalin.marinas@arm.com>, <will.deacon@arm.com>, <marc.zyngier@arm.com>, 
 <lokeshvutla@ti.com>, <tony@atomide.com>, <t-kristo@ti.com>,
 <lokeshvutla@ti.com>
References: <20190510035255.27568-1-yuehaibing@huawei.com>
From: Yuehaibing <yuehaibing@huawei.com>
Message-ID: <a9ea9cf2-71d0-d8f8-3139-33f1945520c5@huawei.com>
Date: Tue, 4 Jun 2019 16:33:44 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <20190510035255.27568-1-yuehaibing@huawei.com>
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_013357_464807_B7272433 
X-CRM114-Status: GOOD (  12.52  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

Friendly ping:

Who can take this?

On 2019/5/10 11:52, YueHaibing wrote:
> Fix Kbuild warning when SOC_TI is not set
> 
> WARNING: unmet direct dependencies detected for TI_SCI_INTA_IRQCHIP
>   Depends on [n]: TI_SCI_PROTOCOL [=y] && SOC_TI [=n]
>   Selected by [y]:
>   - ARCH_K3 [=y]
> 
> Fixes: 009669e74813 ("arm64: arch_k3: Enable interrupt controller drivers")
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
> ---
>  arch/arm64/Kconfig.platforms | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/Kconfig.platforms b/arch/arm64/Kconfig.platforms
> index 42eca65..9d1292f 100644
> --- a/arch/arm64/Kconfig.platforms
> +++ b/arch/arm64/Kconfig.platforms
> @@ -88,6 +88,7 @@ config ARCH_K3
>  	bool "Texas Instruments Inc. K3 multicore SoC architecture"
>  	select PM_GENERIC_DOMAINS if PM
>  	select MAILBOX
> +	select SOC_TI
>  	select TI_MESSAGE_MANAGER
>  	select TI_SCI_PROTOCOL
>  	select TI_SCI_INTR_IRQCHIP
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
