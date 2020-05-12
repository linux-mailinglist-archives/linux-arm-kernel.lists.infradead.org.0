Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C25A41CF4DB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 14:53:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sfNSDKelggLBKKIHRqp+e7Rk0qwX+kOe9Nh38bx89Gw=; b=pqDGLnZA++TheLSWsqH+tjS18
	g8/C8xjGQAMHHds4mIiUXgsWoBzqMPy6mimSrkSc954FLM8MtfuLI8lh3lPRm4nWFlwS3E4o+kyDx
	97jJT9zuis+N74EWbofn76J5c9NAVmggOPLr0knhJuwEl1d9/e+yp/y6k8Cw4tVu5Whi8rwUHXrsn
	uZxeolvxSp3uhS/RGs0I3ESrWcNz0scgQo9HOm0EOIM800kjQy3qDwanPX59OJqC7gFP5Xk6dsaGv
	cxGV6BkdHfTYVavciSObKiFO7hm7ktWeDcBFPBbSZhiAJtYFIvfG+uucNWBbCLvh4O9cGn1Q21d1v
	BEJNZoWdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYUPG-0003n8-Fx; Tue, 12 May 2020 12:53:10 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYUP8-0003mF-Ra
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 12:53:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0BFDB30E;
 Tue, 12 May 2020 05:53:02 -0700 (PDT)
Received: from [10.37.12.83] (unknown [10.37.12.83])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E02C73F71E;
 Tue, 12 May 2020 05:52:59 -0700 (PDT)
Subject: Re: [PATCH v3] memory/samsung: reduce protected code area in IRQ
To: Bernard Zhao <bernard@vivo.com>, Kukjin Kim <kgene@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, linux-pm@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20200512123149.40162-1-bernard@vivo.com>
From: Lukasz Luba <lukasz.luba@arm.com>
Message-ID: <99adbca2-7f8f-b255-8538-8819f83d1991@arm.com>
Date: Tue, 12 May 2020 13:52:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200512123149.40162-1-bernard@vivo.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_055302_936838_1B1560F2 
X-CRM114-Status: GOOD (  18.16  )
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



On 5/12/20 1:31 PM, Bernard Zhao wrote:
> This change will speed-up a bit this IRQ processing and there
> is no need to protect return value or printing.
> 
> Signed-off-by: Bernard Zhao <bernard@vivo.com>

LGTM

Acked-by: Lukasz Luba <lukasz.luba@arm.com>


> ---
> Changes since v1:
> *change release lock before the if statement.
> *revert dmc->df->lock mutex lock to protect function
> exynos5_dmc_perf_events_check
> 
> Changes since v2:
> *Improve subject and commit message
> 
> Link for V1:
> *https://lore.kernel.org/patchwork/patch/1238888/
> ---
>   drivers/memory/samsung/exynos5422-dmc.c | 6 ++----
>   1 file changed, 2 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/memory/samsung/exynos5422-dmc.c b/drivers/memory/samsung/exynos5422-dmc.c
> index 22a43d662833..25196d6268e2 100644
> --- a/drivers/memory/samsung/exynos5422-dmc.c
> +++ b/drivers/memory/samsung/exynos5422-dmc.c
> @@ -1346,15 +1346,13 @@ static irqreturn_t dmc_irq_thread(int irq, void *priv)
>   	struct exynos5_dmc *dmc = priv;
>   
>   	mutex_lock(&dmc->df->lock);
> -
>   	exynos5_dmc_perf_events_check(dmc);
> -
>   	res = update_devfreq(dmc->df);
> +	mutex_unlock(&dmc->df->lock);
> +
>   	if (res)
>   		dev_warn(dmc->dev, "devfreq failed with %d\n", res);
>   
> -	mutex_unlock(&dmc->df->lock);
> -
>   	return IRQ_HANDLED;
>   }
>   
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
