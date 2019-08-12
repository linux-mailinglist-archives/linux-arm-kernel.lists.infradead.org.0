Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41FBF89BCD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 12:45:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=v5DnjyLYfy6Qpp8Ozzd5UNoOJG9Kfbp/stgAMAOTfhw=; b=I3ST67Z1hbWrlYL41fUsTrn8i
	JxGjpN5CZn/kGz+cct6VqesksiyUuJ3nHptslTr55jCzrIzkr2dF7LDMwyNjf9guuM4J2kF4ZWbm9
	t5dgeYc5WLFicb5JoUkhJWjeOUy9i84jbFTA76tWqNIyfLoBMp9fbVRydHOW9Zczh04MGNqX3CYhd
	mqNSKE9V1nD8B7Y8Ge0+LLs/Irmy0rllUOnhu9YLMOG8/lDWRDLoRF0N3KY6TtbzD8jesoCyRFayS
	MbOi/SLuAJJ2NLzXeAH0AoNRUYqjal//Vwc+zf2TQ139VcAXZAlgEmNPTsQKOzYHqrUbhgVp7P6RD
	hQE1wfI5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx7pa-0006vd-UM; Mon, 12 Aug 2019 10:45:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hx7pU-0006uz-2x
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 10:45:33 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1BA0715AB;
 Mon, 12 Aug 2019 03:45:31 -0700 (PDT)
Received: from dawn-kernel.cambridge.arm.com (unknown [10.1.197.116])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 677F73F706;
 Mon, 12 Aug 2019 03:45:30 -0700 (PDT)
Subject: Re: [PATCH] coresight: tmc-etr: Fix perf_data check.
To: yabinc@google.com, mathieu.poirier@linaro.org,
 alexander.shishkin@linux.intel.com
References: <20190809202330.51183-1-yabinc@google.com>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <8b154f20-60d9-74a4-8e5d-65ad612dc387@arm.com>
Date: Mon, 12 Aug 2019 11:45:29 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190809202330.51183-1-yabinc@google.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_034532_175534_76B1BCEA 
X-CRM114-Status: GOOD (  17.88  )
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 09/08/2019 21:23, Yabin Cui wrote:
> When tracing etm data of multiple threads on multiple cpus through
> perf interface, each cpu has a unique etr_perf_buffer while sharing
> the same etr device. There is no guarantee that the last cpu starts
> etm tracing also stops last. This makes perf_data check fail.
> 
> Fix it by checking etr_buf instead of etr_perf_buffer.

Please could you add a Fixes tag for this:

Fixes: 3147da92a8a81fc3 ("coresight: tmc-etr: Allocate and free ETR memory 
buffers for CPU-wide scenarios")

as the problem was introduced as a side effect of the above patch ?

> 
> Signed-off-by: Yabin Cui <yabinc@google.com>
> ---
>   drivers/hwtracing/coresight/coresight-tmc-etr.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/hwtracing/coresight/coresight-tmc-etr.c b/drivers/hwtracing/coresight/coresight-tmc-etr.c
> index 17006705287a..f466f05afe08 100644
> --- a/drivers/hwtracing/coresight/coresight-tmc-etr.c
> +++ b/drivers/hwtracing/coresight/coresight-tmc-etr.c
> @@ -1484,7 +1484,7 @@ tmc_update_etr_buffer(struct coresight_device *csdev,
>   		goto out;
>   	}
>   
> -	if (WARN_ON(drvdata->perf_data != etr_perf)) {
> +	if (WARN_ON(drvdata->perf_data != etr_buf)) {
>   		lost = true;
>   		spin_unlock_irqrestore(&drvdata->spinlock, flags);
>   		goto out;
> @@ -1556,7 +1556,7 @@ static int tmc_enable_etr_sink_perf(struct coresight_device *csdev, void *data)
>   	}
>   
>   	etr_perf->head = PERF_IDX2OFF(handle->head, etr_perf);
> -	drvdata->perf_data = etr_perf;
> +	drvdata->perf_data = etr_perf->etr_buf;

minor nit: Now that we are storing the etr_buf instead of the etr_perf_buf in
perf_data, we could make the "perf_data" => "perf_buf" inline with the
sysfs_buf.

Either ways:

Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
