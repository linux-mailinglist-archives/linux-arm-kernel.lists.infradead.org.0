Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CB2330B63
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 11:24:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ahk/o56ejrU/egbIWXXi3uu2DA4CLbuL6rZMMrUaXu8=; b=LGFIkTSMmPxhQC
	/DYbPGaHNxKi4W4n7mNCP9PfN8v+nOorRavKeyXyWrxX61xi9q8gkBvvHwJm5A15GPuSb1atYhKLx
	lLzdRwUGp8qrEKhbbjLF5eyZqIKT6AppUtF5NyrS4b4V6iiYn+leALrv9UKl9QYsDPNO+qyBXj5sC
	8ehkACBU5JSGySh3eQb7hyQXCi6bhdx3E3+UsFbKUHxMexh8V+IMYMA8GxIyPnIewdcjNMpE3ZOtj
	HIL6q6Y9iADfdkaN0iBnZc5m4pLF4/5EG8BcoQjf8X8xm9rg70d1Q+cJ5E+AYZpgliN3OxaUJSFHb
	5CVqppc1+m3VGnCGxN4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWdmB-000530-8R; Fri, 31 May 2019 09:24:39 +0000
Received: from hqemgate16.nvidia.com ([216.228.121.65])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWdm3-00052g-Vd
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 09:24:33 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate16.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5cf0f2ce0003>; Fri, 31 May 2019 02:24:31 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Fri, 31 May 2019 02:24:31 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Fri, 31 May 2019 02:24:31 -0700
Received: from [10.21.132.148] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Fri, 31 May
 2019 09:24:29 +0000
Subject: Re: [PATCH 1/2] soc/tegra: pmc: Fail to allocate more than one wake
 IRQ
To: Thierry Reding <thierry.reding@gmail.com>
References: <20190529102654.14665-1-thierry.reding@gmail.com>
From: Jon Hunter <jonathanh@nvidia.com>
Message-ID: <f7b6923f-4e27-83ae-8ef9-3488d1720416@nvidia.com>
Date: Fri, 31 May 2019 10:24:28 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190529102654.14665-1-thierry.reding@gmail.com>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL104.nvidia.com (172.18.146.11) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1559294671; bh=KLwRN9Cn3fxaHjxsKpmVMqhjSDH7QSAFdgUSmjgRLG4=;
 h=X-PGP-Universal:Subject:To:CC:References:From:Message-ID:Date:
 User-Agent:MIME-Version:In-Reply-To:X-Originating-IP:
 X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=N3g6PmTj2TAUP+nROQzxQRTjIe72QGmTl1JJzFwIYbqfW4v4X9fesTsSQl5yTL3ao
 KxOG71EKZvYLgHnuDp3JWFnva/HxCXjLg27v4ws6ThLjnWwmawWAU4c5IuUXpitPYs
 5pmUgcFy79hFmd3bi4QWYARYORFCEZhxYDIKd2liR6P2eLTfFKIVo8NQrgZQWMtpiV
 yyEHbVAtT8jpefVdu/EaE+VjtGsw7hjNNr4V32gsne3QGzgMSCShVMB6HMXt1ySl7C
 Ix6xqc9aJRa1DyDyFXtuYyD7OUd5Vp83VloMVvotKqbyBApNTUOdt1cnFMrghN8OFt
 4CMKifKr4tKqw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_022432_020929_C32A079D 
X-CRM114-Status: GOOD (  15.87  )
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
> The code currently doesn't support allocating more than one wake IRQ at
> a time. Detect this situation and error out. Also make sure to output a
> warning when that happens to help track down callers.
> 
> Signed-off-by: Thierry Reding <treding@nvidia.com>
> ---
>  drivers/soc/tegra/pmc.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/soc/tegra/pmc.c b/drivers/soc/tegra/pmc.c
> index 5648e5c09ef5..653fe2c466f6 100644
> --- a/drivers/soc/tegra/pmc.c
> +++ b/drivers/soc/tegra/pmc.c
> @@ -1863,6 +1863,9 @@ static int tegra_pmc_irq_alloc(struct irq_domain *domain, unsigned int virq,
>  	unsigned int i;
>  	int err = 0;
>  
> +	if (WARN_ON(num_irqs > 1))
> +		return -EINVAL;
> +
>  	for (i = 0; i < soc->num_wake_events; i++) {
>  		const struct tegra_wake_event *event = &soc->wake_events[i];

Acked-by: Jon Hunter <jonathanh@nvidia.com>

Cheers
Jon

-- 
nvpublic

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
