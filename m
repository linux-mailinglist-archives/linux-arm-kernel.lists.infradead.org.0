Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8677183070
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 13:15:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8IZBru5bTJMBzzsrVnWMmrJVbB5GCSKrm1tdo2ZitLw=; b=PAppxBAdv7pjtDExM+JIVaoxl
	Syzoit+yPj25sTE4JljOEZIjrpuknz2BHW1DLUuNFxTvyVpRfywWmi7CMTkCc/oyugQyoGYAE0IwC
	pxxvJ4BfUjEp7kJAtFVaR/PxThJIv+9EMLITyI7YPr41rr0IzEcsLE6zza7ubk17bXirY+PXpu/dA
	bVaYReRq4ghQPlfMdFTm+M3CiicPJfaV1zc8QNXkhnmkYBvuGd1J3Ye9DXFxDxGA5xprLOqOcoYRx
	wVOp925HJT9NDFOsp3vOhRkRQKagm1RQcbC4PWfdqhmMCsTd+CwPVGghF9QlTvhe/Xv0ATrpYiKo3
	W7QoY9K9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huxRL-00011j-14; Tue, 06 Aug 2019 11:15:39 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1huxR6-00010x-Pd
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 11:15:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1BC0B337;
 Tue,  6 Aug 2019 04:15:23 -0700 (PDT)
Received: from dawn-kernel.cambridge.arm.com (unknown [10.1.197.116])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 690503F694;
 Tue,  6 Aug 2019 04:15:22 -0700 (PDT)
Subject: Re: [PATCH] coresight: tmc-etr: Fix updating buffer in not-snapshot
 mode.
To: yabinc@google.com, mathieu.poirier@linaro.org,
 alexander.shishkin@linux.intel.com
References: <20190805233738.136357-1-yabinc@google.com>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <fa08b60a-8098-34f3-cc4d-6b1fc9f50594@arm.com>
Date: Tue, 6 Aug 2019 12:15:21 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190805233738.136357-1-yabinc@google.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_041524_878184_997985AC 
X-CRM114-Status: GOOD (  20.70  )
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

Hi Yabin

On 06/08/2019 00:37, Yabin Cui wrote:
> TMC etr always copies all available data to perf aux buffer, which
> may exceed the available space in perf aux buffer. It isn't suitable
> for not-snapshot mode, because:
> 1) It may overwrite previously written data.
> 2) It may make the perf_event_mmap_page->aux_head report having more
> or less data than the reality.

Thanks for debugging and the fix.

> Signed-off-by: Yabin Cui <yabinc@google.com>
> ---
>   drivers/hwtracing/coresight/coresight-tmc-etr.c | 12 ++++++++----
>   1 file changed, 8 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/hwtracing/coresight/coresight-tmc-etr.c b/drivers/hwtracing/coresight/coresight-tmc-etr.c
> index 17006705287a..697e68d492af 100644
> --- a/drivers/hwtracing/coresight/coresight-tmc-etr.c
> +++ b/drivers/hwtracing/coresight/coresight-tmc-etr.c
> @@ -1410,9 +1410,10 @@ static void tmc_free_etr_buffer(void *config)
>    * tmc_etr_sync_perf_buffer: Copy the actual trace data from the hardware
>    * buffer to the perf ring buffer.
>    */
> -static void tmc_etr_sync_perf_buffer(struct etr_perf_buffer *etr_perf)
> +static void tmc_etr_sync_perf_buffer(struct etr_perf_buffer *etr_perf,
> +				     unsigned long to_copy)
>   {
> -	long bytes, to_copy;
> +	long bytes;
>   	long pg_idx, pg_offset, src_offset;
>   	unsigned long head = etr_perf->head;
>   	char **dst_pages, *src_buf;
> @@ -1423,7 +1424,6 @@ static void tmc_etr_sync_perf_buffer(struct etr_perf_buffer *etr_perf)
>   	pg_offset = head & (PAGE_SIZE - 1);
>   	dst_pages = (char **)etr_perf->pages;
>   	src_offset = etr_buf->offset;
> -	to_copy = etr_buf->len;
>   
>   	while (to_copy > 0) {
>   		/*
> @@ -1501,7 +1501,11 @@ tmc_update_etr_buffer(struct coresight_device *csdev,
>   	spin_unlock_irqrestore(&drvdata->spinlock, flags);
>   
>   	size = etr_buf->len;
> -	tmc_etr_sync_perf_buffer(etr_perf);
> +	if (!etr_perf->snapshot && size > handle->size) {
> +		size = handle->size;
> +		lost = true;
> +	}
> +	tmc_etr_sync_perf_buffer(etr_perf, size);

The patch as such looks good to me.
I was thinking if we should limit the ETR buffer to the perf ring buffer,
in case the perf buffer is smaller than the ETR configured size.
Irrespective of snapshot mode or not, we can't save more than what the ring
buffer offers us with. Even though for the cpu-wide trace, we could have "n"
such ring buffers, we end up using only one ring buffer(the last one scheduled 
out). May be we could explore if we could improve the handling of large buffer
into multiple ring buffers (which may require perf core changes).

Anyways, for this patch:

Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
