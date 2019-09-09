Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FE7CAD181
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 03:25:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5yKV9+BV9NI96EtIH6Zlj1jcrs3iaxamO5Qq/MQaQM0=; b=bmkSi3RojTsuvS
	HOqUW1Jb74JvTgk0WmDCkgH9U7o0n2E2HaJ6HcrSI9Co0rScsRoJnEWlnn6XWWjGPjMg49uwRdT9i
	VgxOabkCXBkqyUtmyBVkgk6Sc2U66o2Jg1Y64wBIHsol6ecbO6Dj+BM805fDroF8RXNHRcDYIHTrB
	YvZIvV3kpqw2MVj1wbs//+lY1p52tmqY6IUU3ldAdWgi5RyxVNYfKxgDWs64IZa7KFc0ZVKyqVsV3
	kXTNH0YPPBFi4qYRvrUVNnD0KxlahpHPMoDTeESQ4sxt+aEOENm12HRK5rJ9jMXlpurBzSxuSEman
	igApAQ3stRg7RBf+aZ5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i78Qk-00051R-PJ; Mon, 09 Sep 2019 01:25:22 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i78Qe-00050t-JX
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 01:25:18 +0000
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id C96ABB1BDEDBF66C19FA;
 Mon,  9 Sep 2019 09:25:13 +0800 (CST)
Received: from [127.0.0.1] (10.133.213.239) by DGGEMS401-HUB.china.huawei.com
 (10.3.19.201) with Microsoft SMTP Server id 14.3.439.0;
 Mon, 9 Sep 2019 09:25:12 +0800
Subject: Re: [PATCH -next] perf/smmuv3: gpio: creg-snps: use
 devm_platform_ioremap_resource() to simplify code
To: <will@kernel.org>, <mark.rutland@arm.com>
References: <20190906143844.27956-1-yuehaibing@huawei.com>
From: Yuehaibing <yuehaibing@huawei.com>
Message-ID: <de66c0f1-129e-846d-1bde-f2e45b38dd82@huawei.com>
Date: Mon, 9 Sep 2019 09:25:11 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <20190906143844.27956-1-yuehaibing@huawei.com>
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190908_182516_842922_CEF020DE 
X-CRM114-Status: GOOD (  13.62  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch title is wrong,  fix it in v2, sorry.

On 2019/9/6 22:38, YueHaibing wrote:
> Use devm_platform_ioremap_resource() to simplify the code a bit.
> This is detected by coccinelle.
> 
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
> ---
>  drivers/perf/arm_smmuv3_pmu.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/perf/arm_smmuv3_pmu.c b/drivers/perf/arm_smmuv3_pmu.c
> index abcf54f..773128f 100644
> --- a/drivers/perf/arm_smmuv3_pmu.c
> +++ b/drivers/perf/arm_smmuv3_pmu.c
> @@ -727,7 +727,7 @@ static void smmu_pmu_get_acpi_options(struct smmu_pmu *smmu_pmu)
>  static int smmu_pmu_probe(struct platform_device *pdev)
>  {
>  	struct smmu_pmu *smmu_pmu;
> -	struct resource *res_0, *res_1;
> +	struct resource *res_0;
>  	u32 cfgr, reg_size;
>  	u64 ceid_64[2];
>  	int irq, err;
> @@ -764,8 +764,7 @@ static int smmu_pmu_probe(struct platform_device *pdev)
>  
>  	/* Determine if page 1 is present */
>  	if (cfgr & SMMU_PMCG_CFGR_RELOC_CTRS) {
> -		res_1 = platform_get_resource(pdev, IORESOURCE_MEM, 1);
> -		smmu_pmu->reloc_base = devm_ioremap_resource(dev, res_1);
> +		smmu_pmu->reloc_base = devm_platform_ioremap_resource(pdev, 1);
>  		if (IS_ERR(smmu_pmu->reloc_base))
>  			return PTR_ERR(smmu_pmu->reloc_base);
>  	} else {
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
