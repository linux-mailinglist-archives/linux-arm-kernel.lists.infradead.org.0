Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 250C51C9545
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 17:43:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TGu1fQrUcOTae+6Oh9xjP0VGuEVoqX5Iy1ML9tPD7w8=; b=JdwcDnTHoHdYmq1OK/o54b4Yz
	PCfEC8cUFKT2a3ZQsu7msibI8EHbZdqL4zzPZDp6Aw3scyitZid80mogvlTYVsne9Yewo2EJTXZna
	Oyc3DWgNrwcXvehRz0eyRkGWLO77fpHAk2CQys4GEdl0GwKy8VAakxbT/fwai+H8FtRuHDpLMQuTh
	/HReoMcTIvuXGICJkJMhbYYmWimY2yv0CAIgq2g8U1oAjjzCShqrZhRTAZ99ZCiqkcsNCETKzrGM4
	aL8+4+WnMsYsVvqdUx+kQVKriBCxbxwHYiaduxtwsdEfuQltQMOFID25wf7Df0ULrGQvNQin/Qt9+
	NVyMIBZWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWifv-0007jd-LC; Thu, 07 May 2020 15:43:03 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWifm-0007i0-QS
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 15:42:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 08C801FB;
 Thu,  7 May 2020 08:42:51 -0700 (PDT)
Received: from [10.37.12.53] (unknown [10.37.12.53])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 292293F68F;
 Thu,  7 May 2020 08:42:48 -0700 (PDT)
Subject: Re: [PATCH] memory/samsung: Maybe wrong triming parameter
To: Bernard Zhao <bernard@vivo.com>, Kukjin Kim <kgene@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, linux-pm@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20200507114514.11589-1-bernard@vivo.com>
From: Lukasz Luba <lukasz.luba@arm.com>
Message-ID: <2eeb33f7-1acc-66bb-704a-b724fa0be0a8@arm.com>
Date: Thu, 7 May 2020 16:42:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200507114514.11589-1-bernard@vivo.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_084254_895925_39EA6C02 
X-CRM114-Status: GOOD (  20.26  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: opensource.kernel@vivo.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Bernard,


On 5/7/20 12:45 PM, Bernard Zhao wrote:
> In function create_timings_aligned, all the max is to use
> dmc->min_tck->xxx, aligned with val dmc->timings->xxx.
> But the dmc->timings->tFAW use dmc->min_tck->tXP?
> Maybe this point is wrong parameter useing.
> 
> Signed-off-by: Bernard Zhao <bernard@vivo.com>
> ---
>   drivers/memory/samsung/exynos5422-dmc.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/memory/samsung/exynos5422-dmc.c b/drivers/memory/samsung/exynos5422-dmc.c
> index 81a1b1d01683..22a43d662833 100644
> --- a/drivers/memory/samsung/exynos5422-dmc.c
> +++ b/drivers/memory/samsung/exynos5422-dmc.c
> @@ -1091,7 +1091,7 @@ static int create_timings_aligned(struct exynos5_dmc *dmc, u32 *reg_timing_row,
>   	/* power related timings */
>   	val = dmc->timings->tFAW / clk_period_ps;
>   	val += dmc->timings->tFAW % clk_period_ps ? 1 : 0;
> -	val = max(val, dmc->min_tck->tXP);
> +	val = max(val, dmc->min_tck->tFAW);
>   	reg = &timing_power[0];
>   	*reg_timing_power |= TIMING_VAL2REG(reg, val);
>   
> 

Good catch! Indeed this should be a dmc->min_tck->tFAW used for
clamping.

It didn't show up in testing because the frequency values based on
which the 'clk_period_ps' are calculated are sane.
Check the dump below:

[    5.458227] DMC: mem tFAW=25000, clk_period_ps=6060
[    5.461743] DMC: tFAW=5, tXP=2 val=5
[    5.465273] DMC: mem tFAW=25000, clk_period_ps=4854
[    5.470101] DMC: tFAW=5, tXP=2 val=6
[    5.473668] DMC: mem tFAW=25000, clk_period_ps=3636
[    5.478507] DMC: tFAW=5, tXP=2 val=7
[    5.482072] DMC: mem tFAW=25000, clk_period_ps=2421
[    5.486951] DMC: tFAW=5, tXP=2 val=11
[    5.490531] DMC: mem tFAW=25000, clk_period_ps=1841
[    5.495439] DMC: tFAW=5, tXP=2 val=14
[    5.499113] DMC: mem tFAW=25000, clk_period_ps=1579
[    5.503877] DMC: tFAW=5, tXP=2 val=16
[    5.507476] DMC: mem tFAW=25000, clk_period_ps=1373
[    5.512368] DMC: tFAW=5, tXP=2 val=19
[    5.515968] DMC: mem tFAW=25000, clk_period_ps=1212
[    5.520826] DMC: tFAW=5, tXP=2 val=21

That's why in the existing configuration it does not harm
(the calculated 'val' is always >= 5) the board.

But I think this patch should be applied (after small changes in the
commit message).

@Krzysztof could you have a look on the commit message or take the
patch with small adjustment in the description, please?

I conditionally give (because of this description):

Reviewed-by: Lukasz Luba <lukasz.luba@arm.com>


Thank you Bernard for reporting and fixing this.

Regards,
Lukasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
