Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4201015FC2
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 10:50:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=310KX7J8ex6Jd/NiOGWJrnFbNh/zOTitsI+mlkC2tXw=; b=lT+apYcaOu/ZiDqUw1Fezf3LO
	6AlSRndssouSmG8GA5zHgS5/B3fUITWUyD4UH0mw+I8CsYOkRDA/6ZmTmW0c667w3ft3gmN4FGVsi
	I9i13XtMqApDvGFciAheM9iMdD9oIRzdSazdiinUCihZVZ7ERSjzClxnrkD5Jw+XKJ6Vji9zL+soz
	ENhP3nziEeTPbTZ4uw0fcsBxwLpbAizhRLzDe/hKIH24Mhu9459xp+wEobzsEcr0AP8bCTYrvkuJQ
	SJwWoP4SpucIWnt3Y2I3hCW6eFc+2ojvWyfNA8MInWMBWkYc60iOmCYgqsqyDNoZArhVg3N2D0LOW
	DXfCT6uSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNvoB-0004MB-3X; Tue, 07 May 2019 08:50:43 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNvo3-0004LY-8a
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 08:50:36 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B5786374;
 Tue,  7 May 2019 01:50:34 -0700 (PDT)
Received: from [10.1.196.93] (en101.cambridge.arm.com [10.1.196.93])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0E4FA3F238;
 Tue,  7 May 2019 01:50:32 -0700 (PDT)
Subject: Re: [PATCH 1/5] coresight: Fix buffer size in snapshot mode
To: mathieu.poirier@linaro.org, linux-arm-kernel@lists.infradead.org
References: <20190501175052.29667-1-mathieu.poirier@linaro.org>
 <20190501175052.29667-2-mathieu.poirier@linaro.org>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <808f4985-bbc8-6473-52c2-31b3743199bb@arm.com>
Date: Tue, 7 May 2019 09:50:31 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190501175052.29667-2-mathieu.poirier@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_015035_310715_5C609252 
X-CRM114-Status: GOOD (  24.31  )
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

Hi Mathieu,

On 01/05/2019 18:50, Mathieu Poirier wrote:
> In snapshot mode the buffer used by the sink devices need to be
> equal to the ring buffer size in order for the user space mechanic
> to work properly.

The patch as such looks good to me. However I don't understand the
need for it for ETB and ETF. We can't use the AUX buf directly anyway
for these devices. We could always pretend that there was no overflow and
simply copy it to the AUX buf. The decoder would know the end of trace packets.
What am I missing here ?

> 
> Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> ---
>   drivers/hwtracing/coresight/coresight-etb10.c | 23 +++++++++++++++++++
>   .../hwtracing/coresight/coresight-tmc-etf.c   | 20 ++++++++++++++++
>   .../hwtracing/coresight/coresight-tmc-etr.c   |  8 +++++--
>   3 files changed, 49 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/hwtracing/coresight/coresight-etb10.c b/drivers/hwtracing/coresight/coresight-etb10.c
> index 4ee4c80a4354..0764647b92bc 100644
> --- a/drivers/hwtracing/coresight/coresight-etb10.c
> +++ b/drivers/hwtracing/coresight/coresight-etb10.c
> @@ -374,7 +374,30 @@ static void *etb_alloc_buffer(struct coresight_device *csdev,
>   			      int nr_pages, bool overwrite)
>   {
>   	int node, cpu = event->cpu;
> +	u32 capacity;
>   	struct cs_buffers *buf;
> +	struct etb_drvdata *drvdata;
> +
> +	/*
> +	 * In snapsot mode the size of the perf ring buffer needs to be equal
> +	 * to the size of the device's internal memory if we want to reuse the
> +	 * generic AUX buffer management mechanic.
> +	 *
> +	 * For example (assuming 4096 byte page size):
> +	 *
> +	 *    # cat /sys/bus/coresight/devices/20010000.etb/mgmt/rdp
> +	 *    0x2000
> +	 *    # perf record -e cs_etm/@20010000.etf/ -S -m,8 --per-thread $APP
> +	 *
> +	 */

If at all we need to do this, Is there a way to force the perf to use the
appropriate size for AUX buf depending on the sink ? I would prefer that instead
of finding this magic number and calculating it based on the page_size. If we
could not do that easily, it may be a good idea to expose something like,
"buffer_pages" under sysfs to help the user a bit.

Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
