Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2D2489BB3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 12:39:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fHzs+iCXb66jvCFq/R9SoimjmMBkp/lVdF1xNjyIhu4=; b=Irb0oSzms4wsd6Sgpy077BaHd
	h6HTxaARHhYgl45WPG35dR2nHqhV6F1d/i6MufabrJchaD84fP34pJVhtDPuA5Iy1HymC21a68lVI
	qjTyp0gA/jxbXiX898mqkVFUssnSe6xCNKsHiOQeHu/WE964r+1LcHBDmYA2YeJet4TzZp35yttxS
	qsqfS+UckrLNrDVqJ5EK9qfOXrakU+R2bNLcCu0UhbnER/zuuPMVfAy1GA9b4jQ5u8A9GG3IAV44z
	M1mgLSlUMzqtZ8SnHZ/s5ls6kbiCiab+v8aPRDd7NyzV746cwJZ/L/c+wvDSKq3/xWiW8hyc+wL8l
	Gq/uDPUtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx7ja-0003PC-W1; Mon, 12 Aug 2019 10:39:27 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hx7jE-0003Ee-FE
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 10:39:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C9FC615AB;
 Mon, 12 Aug 2019 03:39:01 -0700 (PDT)
Received: from dawn-kernel.cambridge.arm.com (unknown [10.1.197.116])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1EBDF3F706;
 Mon, 12 Aug 2019 03:39:01 -0700 (PDT)
Subject: Re: [PATCH v2] coresight: Serialize enabling/disabling a link device.
To: yabinc@google.com, mathieu.poirier@linaro.org,
 alexander.shishkin@linux.intel.com
References: <20190809214538.29677-1-yabinc@google.com>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <056f411f-eef2-752e-0c02-2e5ed803cc62@arm.com>
Date: Mon, 12 Aug 2019 11:38:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190809214538.29677-1-yabinc@google.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_033904_596802_EC180C9E 
X-CRM114-Status: GOOD (  23.73  )
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


Hi Yabin,

On 09/08/2019 22:45, Yabin Cui wrote:
> When tracing etm data of multiple threads on multiple cpus through perf
> interface, some link devices are shared between paths of different cpus.
> It creates race conditions when different cpus wants to enable/disable
> the same link device at the same time.
> 
> Example 1:
> Two cpus want to enable different ports of a coresight funnel, thus
> calling the funnel enable operation at the same time. But the funnel
> enable operation isn't reentrantable.
> 
> Example 2:
> For an enabled coresight dynamic replicator with refcnt=1, one cpu wants
> to disable it, while another cpu wants to enable it. Ideally we still have
> an enabled replicator with refcnt=1 at the end. But in reality the result
> is uncertain.
> 
> Since coresight devices claim themselves when enabled for self-hosted
> usage, the race conditions above usually make the link devices not usable
> after many cycles.
> 
> To fix the race conditions, this patch adds a spinlock to serialize
> enabling/disabling a link device.
> 
> Signed-off-by: Yabin Cui <yabinc@google.com>
> ---
> 
> v1 -> v2: extend lock range to protect read of refcnt in
> coresight_disable_link().

Thanks for this. Please find my comments below.

> 
> ---
>   drivers/hwtracing/coresight/coresight.c | 12 +++++++++++-
>   include/linux/coresight.h               |  3 +++
>   2 files changed, 14 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/hwtracing/coresight/coresight.c b/drivers/hwtracing/coresight/coresight.c
> index 55db77f6410b..e526bdeaeb22 100644
> --- a/drivers/hwtracing/coresight/coresight.c
> +++ b/drivers/hwtracing/coresight/coresight.c
> @@ -256,6 +256,7 @@ static int coresight_enable_link(struct coresight_device *csdev,
>   	int ret;
>   	int link_subtype;
>   	int refport, inport, outport;
> +	unsigned long flags;
>   
>   	if (!parent || !child)
>   		return -EINVAL;
> @@ -274,15 +275,18 @@ static int coresight_enable_link(struct coresight_device *csdev,
>   	if (refport < 0)
>   		return refport;
>   
> +	spin_lock_irqsave(&csdev->spinlock, flags);
>   	if (atomic_inc_return(&csdev->refcnt[refport]) == 1) {
>   		if (link_ops(csdev)->enable) {
>   			ret = link_ops(csdev)->enable(csdev, inport, outport);
>   			if (ret) {
>   				atomic_dec(&csdev->refcnt[refport]);
> +				spin_unlock_irqrestore(&csdev->spinlock, flags);
>   				return ret;
>   			}
>   		}
>   	}
> +	spin_unlock_irqrestore(&csdev->spinlock, flags);
>   
>   	csdev->enable = true;

Please could we move this inside the spin_lock () too ?

>   
> @@ -296,6 +300,7 @@ static void coresight_disable_link(struct coresight_device *csdev,
>   	int i, nr_conns;
>   	int link_subtype;
>   	int refport, inport, outport;
> +	unsigned long flags;
>   
>   	if (!parent || !child)
>   		return;
> @@ -315,14 +320,18 @@ static void coresight_disable_link(struct coresight_device *csdev,
>   		nr_conns = 1;
>   	}
>   
> +	spin_lock_irqsave(&csdev->spinlock, flags);
>   	if (atomic_dec_return(&csdev->refcnt[refport]) == 0) {
>   		if (link_ops(csdev)->disable)
>   			link_ops(csdev)->disable(csdev, inport, outport);
>   	}
>   
>   	for (i = 0; i < nr_conns; i++)
> -		if (atomic_read(&csdev->refcnt[i]) != 0)
> +		if (atomic_read(&csdev->refcnt[i]) != 0) {
> +			spin_unlock_irqrestore(&csdev->spinlock, flags);
>   			return;
> +		}
> +	spin_unlock_irqrestore(&csdev->spinlock, flags);
>   
>   	csdev->enable = false;
>   }

And this too ? I understand this may not be used right now, but we can avoid any
surprises when we do so.

With the above fixed, :

Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
