Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54FD8160C2
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 11:22:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jhJK2ohoi5vnwvEiOtCJqLJhuabGmujIU/Vie+uUwXI=; b=hWGo44GizhJoBAwHITKt4gpn6
	aWJNP4n8MwVRQskniR8W3DqiftzcYDyyd+XWxd+vA1b7ESt2l+zuOQ1urE/fREZNuFX3PtZ/DexA+
	GGu1wQmHFr/tvgczNB/CgcnVDwNziJfSdUPa0/2XpVVZdPbN/n51dG5j32LRdWivbl+sGClfJUiFg
	0nzrtmQOIXA/kBKu5ITgLkEQjMClfVCOJVb/nytebVD+GKEZViDyfANrJLsVbnMywPfUQG6SslE2P
	clx92VUoRfQXiY8wn2u8w3vFy2OCmoIKXQlGKttcAzAsEpaOzZ7XDK6fD7hSEx9HWIGh/dvqZBQ4p
	e+0k9m9eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNwIw-0006yV-SG; Tue, 07 May 2019 09:22:30 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNwIp-0006yB-Qq
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 09:22:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 50E3C374;
 Tue,  7 May 2019 02:22:23 -0700 (PDT)
Received: from [10.1.196.93] (en101.cambridge.arm.com [10.1.196.93])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A66693F5AF;
 Tue,  7 May 2019 02:22:21 -0700 (PDT)
Subject: Re: [PATCH 2/5] coresight: tmc-etf: Fix snapshot mode update function
To: mathieu.poirier@linaro.org, linux-arm-kernel@lists.infradead.org
References: <20190501175052.29667-1-mathieu.poirier@linaro.org>
 <20190501175052.29667-3-mathieu.poirier@linaro.org>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <ffe8a313-bd9a-ad1d-f87f-d6066b8c3dfe@arm.com>
Date: Tue, 7 May 2019 10:22:20 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190501175052.29667-3-mathieu.poirier@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_022223_872374_A83BFF6F 
X-CRM114-Status: GOOD (  20.70  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
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
Cc: corbet@lwn.net, alexander.shishkin@linux.intel.com,
 coresight@lists.linaro.org, acme@kernel.org, peterz@infradead.org,
 mingo@redhat.com, Mike.leach@arm.com, leo.yan@linaro.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 01/05/2019 18:50, Mathieu Poirier wrote:
> When working in snapshot mode function perf_aux_output_begin()
> does not set the handle->size because the size is expected to be
> deduced by the placement of the "head" and "old" pointers in user
> space.  As such there is no point in trying to adjust the amount
> of data to copy to the ring buffer.
> 
> Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> ---
>   drivers/hwtracing/coresight/coresight-tmc-etf.c | 6 ++++--
>   1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/hwtracing/coresight/coresight-tmc-etf.c b/drivers/hwtracing/coresight/coresight-tmc-etf.c
> index 7694833b13cb..d3025634f5e6 100644
> --- a/drivers/hwtracing/coresight/coresight-tmc-etf.c
> +++ b/drivers/hwtracing/coresight/coresight-tmc-etf.c
> @@ -497,9 +497,11 @@ static unsigned long tmc_update_etf_buffer(struct coresight_device *csdev,
>   	/*
>   	 * The TMC RAM buffer may be bigger than the space available in the
>   	 * perf ring buffer (handle->size).  If so advance the RRP so that we
> -	 * get the latest trace data.
> +	 * get the latest trace data.  In snapshot mode none of that matters
> +	 * since we are expected to clobber stale data in favour of the latest
> +	 * traces.
>   	 */
> -	if (to_read > handle->size) {
> +	if (!buf->snapshot && to_read > handle->size) {
>   		u32 mask = 0;
>   
>   		/*
> 

Looks good to me.

Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
