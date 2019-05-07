Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C14015E5D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 09:39:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bL1yyLVNBDNwn/ceko12QUM6KwSvIk+xOGM2zPXxsm4=; b=TqjDPW7A2YdTGZ
	81l7u3KJZvAK1yj5vJEp1pttQayF8ouqzDT+iiFJiCxCOS2QaToLEVZUZT5wdbPBmnTP6QQKSFk1E
	WjPVlTW4fDPBKrSsodAPJyy4275fDDISXOHDYIfP3DY2H2eEd/m3Ztq1lNUCiWgLeKljevP2V9+hC
	9+eaDCqoKAXZ1yMyMsIJ2K7Bf5XW+VUZ+LPmhsW2GVFWmdh1gAq5mgnsUHKy6RCdWSINjIQhXcLSU
	au2YJtMKPGhF/2E8xGG1ihMLyPT2WSBvwPKOPuXwvPpd4rU1y3xh/YV6mXjr7zqWUm1FDZKraFeBi
	nr6A5OIt5+6/qylJDTDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNuh2-0000vV-By; Tue, 07 May 2019 07:39:16 +0000
Received: from mail-yw1-xc44.google.com ([2607:f8b0:4864:20::c44])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNugv-0000v1-1G
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 07:39:10 +0000
Received: by mail-yw1-xc44.google.com with SMTP id 18so7662700ywe.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 May 2019 00:39:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ox0QvGlynKEooKzsy+172nC86UWhPOoEzTXTbKXN/w8=;
 b=Xl3tXHYn4Cog38rXgQyJuLu5mQV3+zR3j8CZoAglumYKlowzaElJz6mRZ1OWslKkv/
 7ZQS2xpABL41BnsvsHcYu0zS46qawCACVwEGFGVk3Wa511A4Qvt0n27oQOGhYY+JBIaR
 PgN1OKxxDvgsJlTx8/+ppRO7gBpJWke7UnxYB5esH682Tsn32Munxg4r3xQnuKWoQdMx
 0Wr5iYFvibKWzQ56yW3QAOtAsQNHPfOHRFpgYg22ijbZHF4icpZ699Ubhhw/Fnd2lHjc
 kw6RQvJLlYGuAYl3MxGeoLvGFmmmEqDVi4ARJYfGp68rpr/8MvMmSnsNNxzjMzzLfRD7
 quJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ox0QvGlynKEooKzsy+172nC86UWhPOoEzTXTbKXN/w8=;
 b=qeyBSLoTSHdoVCZXXlaW2btzOqobPXEHAB1er87bWYGV+Xt9JgASImGtwql1GsLtA/
 QdMbHb3ACQIor8o5bWxs2FrfeGfbJCc63uGpQGpeB2SrQALhk1i5HLknBA3IJstwzo86
 eIUfq5dVU14y0QgRL9t3gQpae2BP0IMY0nMvSlEG1hCOKyNPRTygQ6Mk0P+kwizzpmaS
 vWtChOByVT0tjBY4jUeFlXDHJZm619NwMcqtoed45tmdBT7uNRRy/dEeyAAO1fgZXftf
 jXIA5oXcn1iRLgE1IvWmfTJ0F+bJN0DqtvDlu20tblHKRHz9YRAZTCA09eO/q0wwrj3I
 B+WA==
X-Gm-Message-State: APjAAAXjcW2mMYTo7uhWbEtAovmFyxdjODyrd993gYZqGfUsyQfCICc1
 fZ8iCJS+3ONQFC7k0FmYcgnX5A==
X-Google-Smtp-Source: APXvYqxq1FP/vABWC9b7FoslJE9jsa5nBUF5paCEaLCvYC25Fy4vapQLO7lCrtCNsQVLBpXYRkYJkg==
X-Received: by 2002:a25:504e:: with SMTP id e75mr19562139ybb.68.1557214747824; 
 Tue, 07 May 2019 00:39:07 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li931-65.members.linode.com.
 [45.56.113.65])
 by smtp.gmail.com with ESMTPSA id 198sm1379827ywd.23.2019.05.07.00.38.56
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 07 May 2019 00:39:06 -0700 (PDT)
Date: Tue, 7 May 2019 15:38:50 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH 1/5] coresight: Fix buffer size in snapshot mode
Message-ID: <20190507073850.GA21730@leoy-ThinkPad-X240s>
References: <20190501175052.29667-1-mathieu.poirier@linaro.org>
 <20190501175052.29667-2-mathieu.poirier@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190501175052.29667-2-mathieu.poirier@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_003909_079775_6B42AABF 
X-CRM114-Status: GOOD (  21.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 coresight@lists.linaro.org, suzuki.poulose@arm.com, acme@kernel.org,
 peterz@infradead.org, mingo@redhat.com, mike.leach@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 01, 2019 at 11:50:48AM -0600, Mathieu Poirier wrote:
> In snapshot mode the buffer used by the sink devices need to be
> equal to the ring buffer size in order for the user space mechanic
> to work properly.
> 
> Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> ---
>  drivers/hwtracing/coresight/coresight-etb10.c | 23 +++++++++++++++++++
>  .../hwtracing/coresight/coresight-tmc-etf.c   | 20 ++++++++++++++++
>  .../hwtracing/coresight/coresight-tmc-etr.c   |  8 +++++--
>  3 files changed, 49 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/hwtracing/coresight/coresight-etb10.c b/drivers/hwtracing/coresight/coresight-etb10.c
> index 4ee4c80a4354..0764647b92bc 100644
> --- a/drivers/hwtracing/coresight/coresight-etb10.c
> +++ b/drivers/hwtracing/coresight/coresight-etb10.c
> @@ -374,7 +374,30 @@ static void *etb_alloc_buffer(struct coresight_device *csdev,
>  			      int nr_pages, bool overwrite)
>  {
>  	int node, cpu = event->cpu;
> +	u32 capacity;
>  	struct cs_buffers *buf;
> +	struct etb_drvdata *drvdata;
> +
> +	/*
> +	 * In snapsot mode the size of the perf ring buffer needs to be equal
> +	 * to the size of the device's internal memory if we want to reuse the
> +	 * generic AUX buffer management mechanic.
> +	 *
> +	 * For example (assuming 4096 byte page size):

Here is delibrately to write as '4096 byte'?  Though I think should be
'4096 bytes' but I am not confident which is right ...

> +	 *
> +	 *    # cat /sys/bus/coresight/devices/20010000.etb/mgmt/rdp
> +	 *    0x2000
> +	 *    # perf record -e cs_etm/@20010000.etf/ -S -m,8 --per-thread $APP
> +	 *
> +	 */
> +	drvdata = dev_get_drvdata(csdev->dev.parent);
> +	capacity = drvdata->buffer_depth * ETB_FRAME_SIZE_WORDS;
> +
> +	if (overwrite &&
> +	    ((nr_pages << PAGE_SHIFT) != capacity)) {
> +		dev_err(&csdev->dev, "Ring buffer not equal to device buffer");
> +		return NULL;
> +	}
>  
>  	if (cpu == -1)
>  		cpu = smp_processor_id();
> diff --git a/drivers/hwtracing/coresight/coresight-tmc-etf.c b/drivers/hwtracing/coresight/coresight-tmc-etf.c
> index 2527b5d3b65e..7694833b13cb 100644
> --- a/drivers/hwtracing/coresight/coresight-tmc-etf.c
> +++ b/drivers/hwtracing/coresight/coresight-tmc-etf.c
> @@ -380,6 +380,26 @@ static void *tmc_alloc_etf_buffer(struct coresight_device *csdev,
>  {
>  	int node, cpu = event->cpu;
>  	struct cs_buffers *buf;
> +	struct tmc_drvdata *drvdata;
> +
> +	/*
> +	 * In snapsot mode the size of the perf ring buffer needs to be equal
> +	 * to the size of the device's internal memory if we want to reuse the
> +	 * generic AUX buffer management mechanic.
> +	 *
> +	 * For example (assuming 4096 byte page size):
> +	 *
> +	 *    # cat /sys/bus/coresight/devices/20010000.etf/buffer_size
> +	 *    0x10000
> +	 *    # perf record -e cs_etm/@20010000.etf/ -S -m,16 --per-thread $APP
> +	 *
> +	 */
> +	drvdata = dev_get_drvdata(csdev->dev.parent);
> +	if (overwrite &&
> +	    ((nr_pages << PAGE_SHIFT) != drvdata->size)) {
> +		dev_err(&csdev->dev, "Ring buffer not equal to device buffer");
> +		return NULL;
> +	}
>  
>  	if (cpu == -1)
>  		cpu = smp_processor_id();
> diff --git a/drivers/hwtracing/coresight/coresight-tmc-etr.c b/drivers/hwtracing/coresight/coresight-tmc-etr.c
> index df6e4b0b84e9..b9881d6d41ba 100644
> --- a/drivers/hwtracing/coresight/coresight-tmc-etr.c
> +++ b/drivers/hwtracing/coresight/coresight-tmc-etr.c
> @@ -1188,9 +1188,13 @@ alloc_etr_buf(struct tmc_drvdata *drvdata, struct perf_event *event,
>  
>  	/*
>  	 * Try to match the perf ring buffer size if it is larger
> -	 * than the size requested via sysfs.
> +	 * than the size requested via sysfs.  In snapsot mode the size
> +	 * of the perf ring buffer needs to be equal to the allocated
> +	 * size if we want to reuse the generic AUX buffer management
> +	 * mechanic.
>  	 */
> -	if ((nr_pages << PAGE_SHIFT) > drvdata->size) {
> +	if (snapshot ||
> +	    (nr_pages << PAGE_SHIFT) > drvdata->size) {
>  		etr_buf = tmc_alloc_etr_buf(drvdata, (nr_pages << PAGE_SHIFT),
>  					    0, node, NULL);
>  		if (!IS_ERR(etr_buf))

If tmc_alloc_etr_buf() returns failure then it's possible to run into
the below sequence to allocate smaller buffer size for snapshot mode;
which is not expected for snapshot mode.

So here if tmc_alloc_etr_buf() fails to allocate buffer for snapshot
mode, should directly bail out with error code.

Thanks,
Leo Yan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
