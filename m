Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A020E2FB8F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 14:27:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=REWbvEOr/Qb3p0cdUiUSbV7FctFPTRzgvCJj3jN5YFU=; b=TTYUzbEwkH62mv
	x5RdPYto3J39fUc64PmMR8Zbd5T0Mnny28ICw8D+2/1eKg68ZdUi4FioOMOEtV/Ayn7TOkefNnZO/
	WxBiFwU4iRDTwHIWdxUPPpCWmExieFUoyzMmGeUjoZX88ZbbcxBz2nhPtR48IGdbiWOzUUAIo4pM6
	86FEy4+D6Ty0zGlQCPyUUWCwq3oArXgadprWqXRrVcXL1d4yPe+QeTG5bLXyGqako2hLm/6hsXunm
	n9zM69Qlgz1DPrG7EoeLdjdtv3Ju3+UOlC76uh9FtK0bLl3FyQdHE/LYhevXzH1F+mPNWwqxP/v1X
	MygjD8LHZjgKho4UP0Dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWK9w-0000we-6A; Thu, 30 May 2019 12:27:52 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWK9o-0000wC-UT
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 12:27:46 +0000
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id E5931AD4E0FB6A5B3EBE;
 Thu, 30 May 2019 20:27:32 +0800 (CST)
Received: from [127.0.0.1] (10.177.19.180) by DGGEMS409-HUB.china.huawei.com
 (10.3.19.209) with Microsoft SMTP Server id 14.3.439.0; Thu, 30 May 2019
 20:27:29 +0800
Subject: Re: [PATCH] clk: samsung: exynos5433: Use of_clk_get_parent_count()
To: Sylwester Nawrocki <s.nawrocki@samsung.com>
References: <CGME20190525114732epcas3p1fdc42650975c9f7b1a39a87561e65a29@epcas3p1.samsung.com>
 <20190525115542.107929-1-wangkefeng.wang@huawei.com>
 <b57d66da-9b18-7b1d-ffa6-3b4600f9dc5a@samsung.com>
From: Kefeng Wang <wangkefeng.wang@huawei.com>
Message-ID: <3673777a-60dc-3eec-ccb8-9ffa1a3e5cf4@huawei.com>
Date: Thu, 30 May 2019 20:24:46 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.3.1
MIME-Version: 1.0
In-Reply-To: <b57d66da-9b18-7b1d-ffa6-3b4600f9dc5a@samsung.com>
Content-Language: en-US
X-Originating-IP: [10.177.19.180]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_052745_207565_222A5F2F 
X-CRM114-Status: GOOD (  12.83  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-samsung-soc@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Kukjin Kim <kgene@kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 2019/5/30 19:13, Sylwester Nawrocki wrote:
> On 5/25/19 13:55, Kefeng Wang wrote:
>> Use of_clk_get_parent_count() instead of open coding.
>>
>> Signed-off-by: Kefeng Wang <wangkefeng.wang@huawei.com>
> Patch applied, thank you.
>
> In future please make sure to also Cc linux-clk@vger.kernel.org mailing list 
> and the clk maintainers (Stephen, Michael) when sending clk patches.

OK, thanks for the tip.

>
>> ---
>>  drivers/clk/samsung/clk-exynos5433.c | 4 ++--
>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/clk/samsung/clk-exynos5433.c b/drivers/clk/samsung/clk-exynos5433.c
>> index dae1c96de933..14e253915ca4 100644
>> --- a/drivers/clk/samsung/clk-exynos5433.c
>> +++ b/drivers/clk/samsung/clk-exynos5433.c
>> @@ -5590,8 +5590,8 @@ static int __init exynos5433_cmu_probe(struct platform_device *pdev)
>>  	data->nr_clk_save = info->nr_clk_regs;
>>  	data->clk_suspend = info->suspend_regs;
>>  	data->nr_clk_suspend = info->nr_suspend_regs;
>> -	data->nr_pclks = of_count_phandle_with_args(dev->of_node, "clocks",
>> -						    "#clock-cells");
>> +	data->nr_pclks = of_clk_get_parent_count(dev->of_node);
>> +
>>  	if (data->nr_pclks > 0) {
>>  		data->pclks = devm_kcalloc(dev, sizeof(struct clk *),
>>  					   data->nr_pclks, GFP_KERNEL);
>>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
