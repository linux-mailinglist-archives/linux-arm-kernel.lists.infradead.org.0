Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37F3A4CFBA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 15:58:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Pnm/0b1sHridJK4yzoe4kXXCOoKHGwOUE4gkV67LdA0=; b=tM0PUQYWssFpWtVssoQ2tsYrP
	UturTQsp098ojvMlcv9yeqhLGEM9uvaP2Y20cFdh2CHdsYdze36L+nhVJues6aa21CpMIaM+bmAPu
	6nxim+2XTaApYe4H5tgn777LwaSteL8hf1FUlufupalBQzXaq4PKEvpXsbPmXG4HJFbFcT3ZFLoqN
	v2zsuhJxAXLTJWt1ciiWgtI7ObJvKojtTLk0Q6PVqt90bDME3gaKyW19uKSTx/PoPliW9qWjJ5WWK
	Ox0q6rJbfh5M6cT7fYWeu0wtJKM2gktwiWzFRHXxZ+r4cDjQPMxNEmB15R+bd/2yVb/HFxcQ1fLJh
	7CBI20N0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdxaM-0008N3-L1; Thu, 20 Jun 2019 13:58:42 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hdxaA-0008Mj-D3
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 13:58:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AB885344;
 Thu, 20 Jun 2019 06:58:29 -0700 (PDT)
Received: from [10.1.196.93] (en101.cambridge.arm.com [10.1.196.93])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 39AC53F718;
 Thu, 20 Jun 2019 06:58:28 -0700 (PDT)
Subject: Re: [PATCH 2/2] coresight: Abort probe for missing CPU phandle
To: saiprakash.ranjan@codeaurora.org, mathieu.poirier@linaro.org,
 leo.yan@linaro.org, alexander.shishkin@linux.intel.com,
 david.brown@linaro.org, mark.rutland@arm.com
References: <cover.1561037262.git.saiprakash.ranjan@codeaurora.org>
 <d93e28fc80227f9a385130a766a24f8f39a1dcf0.1561037262.git.saiprakash.ranjan@codeaurora.org>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <1ddee3c1-8299-1991-eb88-151b9c3ee180@arm.com>
Date: Thu, 20 Jun 2019 14:58:27 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <d93e28fc80227f9a385130a766a24f8f39a1dcf0.1561037262.git.saiprakash.ranjan@codeaurora.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_065830_493992_F48367F8 
X-CRM114-Status: GOOD (  16.70  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: rnayak@codeaurora.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, sibis@codeaurora.org,
 vivek.gautam@codeaurora.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 20/06/2019 14:45, Sai Prakash Ranjan wrote:
> Currently the coresight etm and cpu-debug drivers
> assume the affinity to CPU0 returned by coresight
> platform and continue the probe in case of missing
> CPU phandle. This is not true and leads to crash
> in some cases, so abort the probe in case of missing
> CPU phandle.
> 
> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> ---
>   drivers/hwtracing/coresight/coresight-cpu-debug.c | 3 +++
>   drivers/hwtracing/coresight/coresight-etm3x.c     | 3 +++
>   drivers/hwtracing/coresight/coresight-etm4x.c     | 3 +++
>   3 files changed, 9 insertions(+)
> 
> diff --git a/drivers/hwtracing/coresight/coresight-cpu-debug.c b/drivers/hwtracing/coresight/coresight-cpu-debug.c
> index 07a1367c733f..43f32fa71ff9 100644
> --- a/drivers/hwtracing/coresight/coresight-cpu-debug.c
> +++ b/drivers/hwtracing/coresight/coresight-cpu-debug.c
> @@ -579,6 +579,9 @@ static int debug_probe(struct amba_device *adev, const struct amba_id *id)
>   		return -ENOMEM;
>   
>   	drvdata->cpu = coresight_get_cpu(dev);
> +	if (drvdata->cpu == -ENODEV)
> +		return -ENODEV;

if (drvdata->cpu < 0)
	return drvdata->cpu;

Same everywhere below ?

Also, I would like to hear Mathieu's thoughts on this change. If he's OK
with it:

Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com> with the change above.





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
