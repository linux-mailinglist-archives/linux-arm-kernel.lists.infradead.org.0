Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B40F9C9323
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 22:59:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ko3lVV0AKvmNkLrX5ymABwJXZf6aQ3zMheHQzWVVU3M=; b=S3w9fts7RdSeQc7IwaoHILeZj
	qqJ9atuFiec1XJp0WwGRyx/xgc8PsLA0ezL0grwg1CQ22fEW7xBLqxuo7gmHsaq1kSCCDUJyb2v6n
	2HwgWpUdRcK8FJQ+inbuM9OEqI3MquK4E+88TWvKTVlq8QYqfmgfFT2eS1P1k3bZMnW/h3W7AhKQB
	jlMGGka2S0YMZjewiRkuUBJYE28tTENwvqHcLWBnvZwzqo1vJCBx1idmLxmiLSCczaAyLhCkCpKyg
	lb4MO5+DyRi+znw8A93BnbnMtwzTltDkd7J+hJQPfvXUqsnZqg/d2qOdJ0keZeIlSuxzvtgA+HalA
	7bCYKN9XA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFliM-0007K0-1G; Wed, 02 Oct 2019 20:59:14 +0000
Received: from avon.wwwdotorg.org ([104.237.132.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFliD-0007IB-8n
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 20:59:06 +0000
Received: from [10.20.204.51] (unknown [216.228.112.24])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by avon.wwwdotorg.org (Postfix) with ESMTPSA id D9A9C1C00ED;
 Wed,  2 Oct 2019 14:59:03 -0600 (MDT)
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.100.3 at avon.wwwdotorg.org
Subject: Re: [PATCH 1/4] clk: tegra: Enable fuse clock on Tegra124
To: Thierry Reding <thierry.reding@gmail.com>
References: <20191001211346.104400-1-swarren@wwwdotorg.org>
 <20191002110454.GJ3716706@ulmo>
From: Stephen Warren <swarren@wwwdotorg.org>
Message-ID: <6a48d716-2312-4623-f47a-a53ac2ece83c@wwwdotorg.org>
Date: Wed, 2 Oct 2019 14:59:03 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191002110454.GJ3716706@ulmo>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_135905_392766_3847D188 
X-CRM114-Status: GOOD (  21.52  )
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
Cc: Prashant Gaikwad <pgaikwad@nvidia.com>, Stephen Boyd <sboyd@kernel.org>,
 Peter De Schrijver <pdeschrijver@nvidia.com>, linux-clk@vger.kernel.org,
 Jonathan Hunter <jonathanh@nvidia.com>, linux-tegra@vger.kernel.org,
 Michael Turquette <mturquette@baylibre.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/2/19 5:04 AM, Thierry Reding wrote:
> On Tue, Oct 01, 2019 at 03:13:43PM -0600, Stephen Warren wrote:
>> From: Stephen Warren <swarren@nvidia.com>
>>
>> For a little over a year, U-Boot has configured the flow controller to
>> perform automatic RAM re-repair on off->on power transitions of the CPU
>> rail1]. This is mandatory for correct operation of Tegra124. However, RAM
>> re-repair relies on certain clocks, which the kernel must enable and
>> leave running. The fuse clock is one of those clocks. Enable this clock
>> so that LP1 power mode (system suspend) operates correctly.
>>
>> [1] 3cc7942a4ae5 ARM: tegra: implement RAM repair
>>
>> Reported-by: Jonathan Hunter <jonathanh@nvidia.com>
>> Cc: stable@vger.kernel.org
>> Signed-off-by: Stephen Warren <swarren@nvidia.com>
>> ---
>>   drivers/clk/tegra/clk-tegra124.c | 1 +
>>   1 file changed, 1 insertion(+)
>>
>> diff --git a/drivers/clk/tegra/clk-tegra124.c b/drivers/clk/tegra/clk-tegra124.c
>> index 0224fdc4766f..f53f6315c646 100644
>> --- a/drivers/clk/tegra/clk-tegra124.c
>> +++ b/drivers/clk/tegra/clk-tegra124.c
>> @@ -1291,6 +1291,7 @@ static struct tegra_clk_init_table common_init_table[] __initdata = {
>>   };
>>   
>>   static struct tegra_clk_init_table tegra124_init_table[] __initdata = {
>> +	{ TEGRA124_CLK_FUSE, -1, 0, 1 },
> 
> I think the correct way to do this these days is to mark the clock as
> CRITICAL. Not sure if there's an easy way to do that given that the
> clock init table doesn't allow storing flags.
> 
> Do you have any good ideas on how to achieve this with the critical flag
> instead of forcing the refcount to 1?
> 
> Perhaps something like the below would work?
 > ...

The following works for me; does this seem like a reasonable approach? 
It does set the critical flag for all SoCs, including any that don't 
require RAM re-repair. I'm not sure which do; I know it's more than just 
Tegra124, but I'm not sure how far back/forward the requirement goes.

> diff --git a/drivers/clk/tegra/clk-tegra-periph.c b/drivers/clk/tegra/clk-tegra-periph.c
> index 1ed85f120a1b..76dd91eebd13 100644
> --- a/drivers/clk/tegra/clk-tegra-periph.c
> +++ b/drivers/clk/tegra/clk-tegra-periph.c
> @@ -785,7 +785,7 @@ static struct tegra_periph_init_data gate_clks[] = {
>         GATE("ahbdma", "hclk", 33, 0, tegra_clk_ahbdma, 0),
>         GATE("apbdma", "pclk", 34, 0, tegra_clk_apbdma, 0),
>         GATE("kbc", "clk_32k", 36, TEGRA_PERIPH_ON_APB | TEGRA_PERIPH_NO_RESET, tegra_clk_kbc, 0),
> -       GATE("fuse", "clk_m", 39, TEGRA_PERIPH_ON_APB, tegra_clk_fuse, 0),
> +       GATE("fuse", "clk_m", 39, TEGRA_PERIPH_ON_APB, tegra_clk_fuse, CLK_IS_CRITICAL),
>         GATE("fuse_burn", "clk_m", 39, TEGRA_PERIPH_ON_APB, tegra_clk_fuse_burn, 0),
>         GATE("kfuse", "clk_m", 40, TEGRA_PERIPH_ON_APB, tegra_clk_kfuse, 0),
>         GATE("apbif", "clk_m", 107, TEGRA_PERIPH_ON_APB, tegra_clk_apbif, 0),

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
