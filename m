Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85B11875D1
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 11:22:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dh772mSfj2t4fVxQwZEp1IrkYksM3KU1v38nv7F5kec=; b=A8vjojexViyENPLEt8+1n+Lbh
	yRj4Re+gBsg93fUTXB5NESCDK7HyaIUoVCagzdn6gulKGWVH/I36Kws3DffWoNDt/0jdT8Lu31x/N
	OkO5SfqOvbeJSuncj3uPvHiotNG6DO4j5ifqf7YSB95ODKjtTKXa8uu4kZMr05GlO1cM4WBzSf7fW
	9GIOytDuUFq/JE9vTdeFiQcpylgYRqXYquiSl1uheziK34QoBgRumN0ZerdlQow07mSv1Bi/UKL1h
	C8/TrfTarCWT5oika5MCiyqTYTdBZg+AX9N2w4dyjaFo4JXSC4YkCDuWpGRnN3ZrITIAo5OUK/tF/
	2rg0/BjyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw16K-0007WI-EB; Fri, 09 Aug 2019 09:22:20 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hw169-0007Vy-NI
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 09:22:10 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2483B15A2;
 Fri,  9 Aug 2019 02:22:09 -0700 (PDT)
Received: from dawn-kernel.cambridge.arm.com (unknown [10.1.197.116])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6D8F53F575;
 Fri,  9 Aug 2019 02:22:08 -0700 (PDT)
Subject: Re: [PATCH] coresight: tmc-etr: Remove perf_data check.
To: yabinc@google.com, mathieu.poirier@linaro.org,
 alexander.shishkin@linux.intel.com
References: <20190808193122.76679-1-yabinc@google.com>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <84df6071-ef7e-c3d6-6ffa-fcfcbab0c8e6@arm.com>
Date: Fri, 9 Aug 2019 10:22:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190808193122.76679-1-yabinc@google.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_022209_806455_01DCC63A 
X-CRM114-Status: GOOD (  18.52  )
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


Thank you for the analysis and the patch.

On 08/08/2019 20:31, Yabin Cui wrote:
> When tracing etm data of multiple threads on multiple cpus through
> perf interface, each cpu has a unique etr_perf_buffer while sharing
> the same etr device. There is no guarantee that the last cpu starts
> etm tracing also stops last. So the perf_data check is no longer valid.
> 
> Signed-off-by: Yabin Cui <yabinc@google.com>
> ---
>   drivers/hwtracing/coresight/coresight-tmc-etr.c | 9 ---------
>   drivers/hwtracing/coresight/coresight-tmc.h     | 2 --
>   2 files changed, 11 deletions(-)
> 
> diff --git a/drivers/hwtracing/coresight/coresight-tmc-etr.c b/drivers/hwtracing/coresight/coresight-tmc-etr.c
> index 17006705287a..0418440e0141 100644
> --- a/drivers/hwtracing/coresight/coresight-tmc-etr.c
> +++ b/drivers/hwtracing/coresight/coresight-tmc-etr.c
> @@ -1484,20 +1484,12 @@ tmc_update_etr_buffer(struct coresight_device *csdev,
>   		goto out;
>   	}
>   
> -	if (WARN_ON(drvdata->perf_data != etr_perf)) {
> -		lost = true;
> -		spin_unlock_irqrestore(&drvdata->spinlock, flags);
> -		goto out;
> -	}
> -

I think some sort of sanity check is a good idea to make sure we don't loose the
context. Even when different CPUs have different etr_perf buffer, the underlying
etr_buf should be the same. So, we should be able to simply convert the check
to, something like :

	struct etr_perf_buffer *perf_buf = drvdata->perf_data;

	...

	if (WARN_ON(perf_buf->etr_buf != etr_perf->buf)) {
		....
	}

Does that solve the problem for you ?

Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
