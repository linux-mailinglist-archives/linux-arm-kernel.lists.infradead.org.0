Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 794429AA34
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 10:23:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VutlsS2mFnxUM901xcsNwa8sjlGS4GKHtREd8gROC3E=; b=mdWmC0yto7L8qc
	49Xj9ErP3aGrwcSw5AQ1R+JUpO798Z8SZ2CfyJNAkUUTZLi0sS9LuSL069qJt3+mIGjr1u3j9F1rs
	kCF1mC113f6ksjOUcaSG16K2gOHsqXWQrpqcnLs2MqD24E31EGMvA0zkCECUjpNJ+hpKzL2RtHhQV
	/2v0MF24Mp15JlbHEiUunUxN3DQ6RLlvEmePRgPgm7gx58Z6JA35j+sn4htasbJGOjzwVnRxGd65v
	bIfY2ldwe0KBEvBgRCtWkdM8ZNUUo/tv/txrmvBE77f6D9/uqhSTUBnjHiWCo3JfN0q4oHHItxRdh
	lhVGMNmA99N3/WQCtTCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i14qi-0006VM-2P; Fri, 23 Aug 2019 08:23:08 +0000
Received: from mail-yw1-xc41.google.com ([2607:f8b0:4864:20::c41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i14q8-00063H-VL
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 08:22:34 +0000
Received: by mail-yw1-xc41.google.com with SMTP id i138so3509896ywg.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 23 Aug 2019 01:22:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=gqMJISdK1sCvYoXtpRx34/j2w5oB126SSByYfrdAv0A=;
 b=WA1nHmf0HPn+DPmdLUPjZRzKgLBGLIIYwMtxCzN3RoUYJpZE7Jv7ZuPEECCwMvslsz
 zE+c63vSSHU/W0CzZy8AC4VLrulnjBfjgACbqqopi3m53qj+YK0oSf+NqAlnk37HSXYs
 Uyi+4Rh4CPeHS8oJCy6LasuAHWsL15kxJIrZ++ysLepjEx/WJTXyudh2M3XnS4XNcPf4
 6uFgLMupMLHUrVD4dibamjFoaT0vA556V/yrOaPK10AZoiSWRO1o2yJf2VWP1Nwma69A
 xae4VAM5Q/qAnAt/RhiPiHn3Hq+wQPX159xy1a2v+wOSfieuFg8dTwrJaa2j8cnN/Ipx
 6ZHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=gqMJISdK1sCvYoXtpRx34/j2w5oB126SSByYfrdAv0A=;
 b=k9amc9uxTo++LhBQ9oGqB9wBd1ymlhtGCSP5w2ck1REVglZrzhH3THagAw+krzq08s
 3s0kLzkHnbcZldtJnncCoOv/cV+jmIiTLxzk5cz/PuKpYu8mvuTfL1czKYBQ5Cq31W8b
 T+vaN0Xs/Ts24rew3CNgkff/DmyRztGCT4s95RD7LkbpeksHuR9UD5zbnSKl5KryCPsT
 MqmCk3mzb9xnc+QYaiMFNjYJLizXHBgOVeGP5Q/JrZ6FhPu331k5rOFzQLcNpS+9l3nZ
 Y7IZXWazVrrhHWwz7KCg9AnogMBcoSTlpK6AxW15WsEtytN2ZhH32waaPru+d1KQgXcd
 hWfA==
X-Gm-Message-State: APjAAAVgQeLbntfGN/DRv/DqZsOaB7pu8wBQHiRsBJvRYdZEIjsO/6IE
 3aaYT7QSphI6Z9t/LkBmPOGTvQ==
X-Google-Smtp-Source: APXvYqzgV7MAThnepSDDwUZxhGw/YEQ6uHjAIBxukar3eVfsDVAzorisNiTPS4i6N/QuF2n3hn+rWg==
X-Received: by 2002:a0d:ddcd:: with SMTP id g196mr2330144ywe.460.1566548551310; 
 Fri, 23 Aug 2019 01:22:31 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li1320-244.members.linode.com.
 [45.79.221.244])
 by smtp.gmail.com with ESMTPSA id x67sm437667ywg.70.2019.08.23.01.22.25
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 23 Aug 2019 01:22:27 -0700 (PDT)
Date: Fri, 23 Aug 2019 16:22:21 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH 2/2] coresight: tmc-etr: Add barrier packet when moving
 offset forward
Message-ID: <20190823082221.GB18092@leoy-ThinkPad-X240s>
References: <20190822220915.8876-1-mathieu.poirier@linaro.org>
 <20190822220915.8876-3-mathieu.poirier@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190822220915.8876-3-mathieu.poirier@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_012233_008235_8170741E 
X-CRM114-Status: GOOD (  24.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: suzuki.poulose@arm.com, alexander.shishkin@linux.intel.com,
 yabinc@google.com, linux-kernel@vger.kernel.org, mike.leach@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mathieu,

On Thu, Aug 22, 2019 at 04:09:15PM -0600, Mathieu Poirier wrote:
> This patch adds barrier packets in the trace stream when the offset in the
> data buffer needs to be moved forward.  Otherwise the decoder isn't aware
> of the break in the stream and can't synchronise itself with the trace
> data.
> 
> Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> ---
>  .../hwtracing/coresight/coresight-tmc-etr.c   | 43 ++++++++++++++-----
>  1 file changed, 33 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/hwtracing/coresight/coresight-tmc-etr.c b/drivers/hwtracing/coresight/coresight-tmc-etr.c
> index 4f000a03152e..0e4cd6ec5f28 100644
> --- a/drivers/hwtracing/coresight/coresight-tmc-etr.c
> +++ b/drivers/hwtracing/coresight/coresight-tmc-etr.c
> @@ -946,10 +946,6 @@ static void tmc_sync_etr_buf(struct tmc_drvdata *drvdata)
>  	WARN_ON(!etr_buf->ops || !etr_buf->ops->sync);
>  
>  	etr_buf->ops->sync(etr_buf, rrp, rwp);
> -
> -	/* Insert barrier packets at the beginning, if there was an overflow */
> -	if (etr_buf->full)
> -		tmc_etr_buf_insert_barrier_packet(etr_buf, etr_buf->offset);
>  }
>  
>  static void __tmc_etr_enable_hw(struct tmc_drvdata *drvdata)
> @@ -1415,10 +1411,11 @@ static void tmc_free_etr_buffer(void *config)
>   * buffer to the perf ring buffer.
>   */
>  static void tmc_etr_sync_perf_buffer(struct etr_perf_buffer *etr_perf,
> +				     unsigned long src_offset,
>  				     unsigned long to_copy)
>  {
>  	long bytes;
> -	long pg_idx, pg_offset, src_offset;
> +	long pg_idx, pg_offset;
>  	unsigned long head = etr_perf->head;
>  	char **dst_pages, *src_buf;
>  	struct etr_buf *etr_buf = etr_perf->etr_buf;
> @@ -1427,7 +1424,6 @@ static void tmc_etr_sync_perf_buffer(struct etr_perf_buffer *etr_perf,
>  	pg_idx = head >> PAGE_SHIFT;
>  	pg_offset = head & (PAGE_SIZE - 1);
>  	dst_pages = (char **)etr_perf->pages;
> -	src_offset = etr_buf->offset + etr_buf->len - to_copy;
>  
>  	while (to_copy > 0) {
>  		/*
> @@ -1475,7 +1471,7 @@ tmc_update_etr_buffer(struct coresight_device *csdev,
>  		      void *config)
>  {
>  	bool lost = false;
> -	unsigned long flags, size = 0;
> +	unsigned long flags, offset, size = 0;
>  	struct tmc_drvdata *drvdata = dev_get_drvdata(csdev->dev.parent);
>  	struct etr_perf_buffer *etr_perf = config;
>  	struct etr_buf *etr_buf = etr_perf->etr_buf;
> @@ -1503,11 +1499,39 @@ tmc_update_etr_buffer(struct coresight_device *csdev,
>  	spin_unlock_irqrestore(&drvdata->spinlock, flags);
>  
>  	size = etr_buf->len;
> +	offset = etr_buf->offset;
> +	lost |= etr_buf->full;
> +
> +	/*
> +	 * The ETR buffer may be bigger than the space available in the
> +	 * perf ring buffer (handle->size).  If so advance the offset so that we
> +	 * get the latest trace data.  In snapshot mode none of that matters
> +	 * since we are expected to clobber stale data in favour of the latest
> +	 * traces.
> +	 */
>  	if (!etr_perf->snapshot && size > handle->size) {
> -		size = handle->size;
> +		u32 mask = tmc_get_memwidth_mask(drvdata);
> +
> +		/*
> +		 * Make sure the new size is aligned in accordance with the
> +		 * requirement explained in function tmc_get_memwidth_mask().
> +		 */
> +		size = handle->size & mask;
> +		offset = etr_buf->offset + etr_buf->len - size;
> +
> +		if (offset >= etr_buf->size)
> +			offset -= etr_buf->size;
>  		lost = true;
>  	}
> -	tmc_etr_sync_perf_buffer(etr_perf, size);
> +
> +	/*
> +	 * Insert barrier packets at the beginning, if there was an overflow
> +	 * or if the offset had to be brought forward.
> +	 */
> +	if (lost)
> +		tmc_etr_buf_insert_barrier_packet(etr_buf, offset);
> +
> +	tmc_etr_sync_perf_buffer(etr_perf, offset, size);

With this new code, the inserting barrier packet has been moved out
from function tmc_sync_etr_buf(); but this patch doesn't handle the
path when user uses SysFS node to access trace data and the trace
buffer is also likely full, thus the SysFS mode might miss to insert
barrier packets?

Thanks,
Leo Yan

>  	/*
>  	 * In snapshot mode we simply increment the head by the number of byte
> @@ -1518,7 +1542,6 @@ tmc_update_etr_buffer(struct coresight_device *csdev,
>  	if (etr_perf->snapshot)
>  		handle->head += size;
>  
> -	lost |= etr_buf->full;
>  out:
>  	/*
>  	 * Don't set the TRUNCATED flag in snapshot mode because 1) the
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
