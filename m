Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A743130BAD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 11:33:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zi1fOb5TiEFQH8t4/BDzsIz6pBotM2SDohGJInIdY2A=; b=ZmQSQ+yDWnXZLd
	02MbsuS3MrwM8hYXHOLbz2zGtgncZpYtZ3SQNBHWw1Z9mGBIHjITKmtNlw5oZYeY1fgKl/uxabfRO
	r+pnqrn/dsSKQ1tF9jDQNbktfMAyj+Z/E1oC/+QcMivkIVFFIBW1ZHp5JSpjqxQreB2NG03856/aC
	N3BvffPFdKUIFKQabrt2JgxIDbnQQhae3ALU+/HaJmYLcSh5mz2PWE88vGhwv1xK0DmoUco78BjdG
	pNbvkw97tY6okrtaAgCaKbZdyz8rz5xOQVrz1Njj/jIsAh3xJQKkjJR8TvTpQN04GTrfVN+bBECZy
	u6eDJqwFjX8TSn3R8XUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWdua-0001gQ-5r; Fri, 31 May 2019 09:33:20 +0000
Received: from hqemgate16.nvidia.com ([216.228.121.65])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWdu0-0001Qn-JL
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 09:32:55 +0000
Received: from hqpgpgate102.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate16.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5cf0f4bb0000>; Fri, 31 May 2019 02:32:44 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate102.nvidia.com (PGP Universal service);
 Fri, 31 May 2019 02:32:44 -0700
X-PGP-Universal: processed;
 by hqpgpgate102.nvidia.com on Fri, 31 May 2019 02:32:44 -0700
Received: from [10.21.132.148] (172.20.13.39) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Fri, 31 May
 2019 09:32:42 +0000
Subject: Re: [PATCH 2/2] soc/tegra: pmc: Avoid crash for non-wake IRQs
To: Thierry Reding <thierry.reding@gmail.com>
References: <20190529102654.14665-1-thierry.reding@gmail.com>
 <20190529102654.14665-2-thierry.reding@gmail.com>
From: Jon Hunter <jonathanh@nvidia.com>
Message-ID: <27ffbfe6-1c88-63a1-aee1-7fe6ce252e54@nvidia.com>
Date: Fri, 31 May 2019 10:32:40 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190529102654.14665-2-thierry.reding@gmail.com>
X-Originating-IP: [172.20.13.39]
X-ClientProxiedBy: HQMAIL103.nvidia.com (172.20.187.11) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1559295164; bh=wWtsD+i0WLwwLRA1MMQS7zm8F48MjkEzR7WY6EbugbM=;
 h=X-PGP-Universal:Subject:To:CC:References:From:Message-ID:Date:
 User-Agent:MIME-Version:In-Reply-To:X-Originating-IP:
 X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=ObIsDwvPJzAQmeno2iC5akkUperI34LLYpSUCob9uAzLg/jinynbVgiRu65svLJD5
 30iJVi55iW2vRfqPrNvS2Y6toG84z5TKeTDQchHzyY+yberULi433oX5GhxcUUvI6V
 g5R3b46U5/T3hg1HyelrvkVCMjal17KrDQJnkY0E1CbpIv5oLCNQxthOWNbh2z0ulg
 cnMmvfszxW7qy20tw2lAQm0buTAW6sFdVfii2pzHgev+hAqNf9kUYx5l7NKUYYKVgo
 0G9BZoTD+9exD3jqfgZOXDsvJJ9v1HO6paresWXm6UXChm1lUWNlUxhEvOD+uwZFk5
 8yp5oOM09fU8Q==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_023244_995480_D05C1178 
X-CRM114-Status: GOOD (  15.06  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.65 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: linux-tegra@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Bitan Biswas <bbiswas@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 29/05/2019 11:26, Thierry Reding wrote:
> From: Thierry Reding <treding@nvidia.com>
> 
> For interrupts that are not wakeup sources but that may end up getting
> mapped through the PMC as interrupt parent (this can happen for GPIOs),
> return early in order to avoid a subsequent crash from an out-of-bounds
> access to the register region.

Maybe worth clarifying here what you mean by 'not wakeup sources'
because the Tegra GPIO driver does have a set_wake() API to enable
wakeup at the LIC IIRC. So maybe GPIOs that are not wakeup sources for
what level of suspend?

> Reported-by: Bitan Biswas <bbiswas@nvidia.com>
> Signed-off-by: Thierry Reding <treding@nvidia.com>
> ---
>  drivers/soc/tegra/pmc.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/soc/tegra/pmc.c b/drivers/soc/tegra/pmc.c
> index 653fe2c466f6..6e66b5e293be 100644
> --- a/drivers/soc/tegra/pmc.c
> +++ b/drivers/soc/tegra/pmc.c
> @@ -1924,6 +1924,9 @@ static int tegra_pmc_irq_set_wake(struct irq_data *data, unsigned int on)
>  	unsigned int offset, bit;
>  	u32 value;
>  
> +	if (WARN_ON(data->hwirq == ULONG_MAX))
> +		return 0;
> +
>  	offset = data->hwirq / 32;
>  	bit = data->hwirq % 32;

Otherwise ...

Acked-by: Jon Hunter <jonathanh@nvidia.com>

Cheers
Jon


-- 
nvpublic

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
