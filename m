Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF07D87E32
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 17:39:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ccfvtTA10W3zq4GoV2Epfage5HkE+18DcE6B1p+aVBo=; b=BzCnKupMpnvzmeLXhVIZvFVds
	uDbji1i+XNe/JRnsMpiZAomyiaczA5V9Gfp0v+fqYUKXmVHFzlliMntBkfcbddC9UR1VMEuMpKimg
	5B/logeW+loqc5owkf1uxdsyPWzdhActgYFMp43/vziTJ4WFMUvs6XEWlem6aePrVsHIo70eMSa8t
	dU2BEZENGc47UgP231+oBfvnLwFHK6miDRaNw4HesjdmVl5XzkTSOrKXgVd4Y3824FQ6jITJ3qgFv
	Be49ifM5Nc8a5QhZg2XcvWOUHs2RDJ1QaAonK/TWesZtGQke834iE5V3y5TTHrQffRCY3ifPBJfs4
	09n3wn1bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw6ys-0002cU-6k; Fri, 09 Aug 2019 15:39:02 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hw6yi-0002bn-Rq
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 15:38:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 729A915A2;
 Fri,  9 Aug 2019 08:38:47 -0700 (PDT)
Received: from dawn-kernel.cambridge.arm.com (unknown [10.1.197.116])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BFC3B3F575;
 Fri,  9 Aug 2019 08:38:46 -0700 (PDT)
Subject: Re: [PATCH] coresight: Serialize enabling/disabling a link device.
To: yabinc@google.com, mathieu.poirier@linaro.org,
 alexander.shishkin@linux.intel.com
References: <20190808191726.65806-1-yabinc@google.com>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <c7ac79dd-c15c-6edf-153f-71dd8f754a93@arm.com>
Date: Fri, 9 Aug 2019 16:38:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190808191726.65806-1-yabinc@google.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_083852_989562_6FCC9C1C 
X-CRM114-Status: GOOD (  20.83  )
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

Hi,-

On 08/08/2019 20:17, Yabin Cui wrote:
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
>   drivers/hwtracing/coresight/coresight.c | 8 ++++++++
>   include/linux/coresight.h               | 3 +++
>   2 files changed, 11 insertions(+)
> 
> diff --git a/drivers/hwtracing/coresight/coresight.c b/drivers/hwtracing/coresight/coresight.c
> index 55db77f6410b..90f97f4f99b2 100644
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
>   

> @@ -296,6 +300,7 @@ static void coresight_disable_link(struct coresight_device *csdev,
>   	int i, nr_conns;
>   	int link_subtype;
>   	int refport, inport, outport;
> +	unsigned long flags;
>   
>   	if (!parent || !child)
>   		return;
> @@ -315,10 +320,12 @@ static void coresight_disable_link(struct coresight_device *csdev,
>   		nr_conns = 1;
>   	}
>   
> +	spin_lock_irqsave(&csdev->spinlock, flags);
>   	if (atomic_dec_return(&csdev->refcnt[refport]) == 0) {
>   		if (link_ops(csdev)->disable)
>   			link_ops(csdev)->disable(csdev, inport, outport);
>   	}
> +	spin_unlock_irqrestore(&csdev->spinlock, flags);

You may also want to protect the refcount checks below with the same lock, just
to be consistent.

With that :

Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
