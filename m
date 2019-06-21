Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C771A4E4F3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 11:54:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xbM1dEMBuGkyAG0cedLCXB6sJMgGfjYtso/kmPyrID0=; b=cKaDPSlRUIARz1/wRN1gFyXCX
	kbokXrxoTgmjHMFm/lUj9Z/FH8fTVyhGtMQzQuTAClIaSYphHTc8HskMZ+AzhWldXTAmEKeXI2ffY
	V3+38F9S3aVDUi9BC4hpNapC5nh1pu4YRWTNOPUAd8xgfyj67hCulTFOF2w138M019SCszQ1LbEeK
	eQf6vQt8MNNO1eJNbB0M01F+w41dRTcda2+aW1J2z6SAdW5mF5HC7wChy1qOECLroEK0axnsFSute
	DLlKdoptSJo8nAS9GLRS5lh0p9hOXAmCBspfI8m63TuZvVJJTi64fwS8pihLH6+BGe3DWju766FOX
	Mt8kf07gA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heGFf-0004Y3-KF; Fri, 21 Jun 2019 09:54:35 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1heFyv-0005BG-PD
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 09:37:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 68334142F;
 Fri, 21 Jun 2019 02:37:14 -0700 (PDT)
Received: from [10.37.13.79] (unknown [10.37.13.79])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2ED413F246;
 Fri, 21 Jun 2019 02:37:12 -0700 (PDT)
Subject: Re: [PATCHv2 2/2] coresight: Abort probe if cpus are not available
To: saiprakash.ranjan@codeaurora.org, mathieu.poirier@linaro.org,
 leo.yan@linaro.org, robh+dt@kernel.org, devicetree@vger.kernel.org,
 alexander.shishkin@linux.intel.com, david.brown@linaro.org,
 mark.rutland@arm.com
References: <cover.1561054498.git.saiprakash.ranjan@codeaurora.org>
 <65050e4cb2b0433f3cb9b1ca0bf6ec49d0751086.1561054498.git.saiprakash.ranjan@codeaurora.org>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <d6e6a32e-4e15-5bc8-42f9-6cfe72fc0910@arm.com>
Date: Fri, 21 Jun 2019 10:40:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <65050e4cb2b0433f3cb9b1ca0bf6ec49d0751086.1561054498.git.saiprakash.ranjan@codeaurora.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_023717_900370_CB59A360 
X-CRM114-Status: GOOD (  20.12  )
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

On 06/20/2019 07:31 PM, Sai Prakash Ranjan wrote:
> Currently coresight etm and cpu-debug will go ahead with
> the probe even when corresponding cpus are not available
> and error out later in the probe path. In such cases, it
> is better to abort the probe earlier.
> 
> Without this, setting *nosmp* will throw below errors:
> 
>   [    5.910622] coresight-cpu-debug 850000.debug: Coresight debug-CPU0 initialized
>   [    5.914266] coresight-cpu-debug 852000.debug: CPU1 debug arch init failed
>   [    5.921474] coresight-cpu-debug 854000.debug: CPU2 debug arch init failed
>   [    5.928328] coresight-cpu-debug 856000.debug: CPU3 debug arch init failed
>   [    5.935330] coresight etm0: CPU0: ETM v4.0 initialized
>   [    5.941875] coresight-etm4x 85d000.etm: ETM arch init failed
>   [    5.946794] coresight-etm4x: probe of 85d000.etm failed with error -22
>   [    5.952707] coresight-etm4x 85e000.etm: ETM arch init failed
>   [    5.958945] coresight-etm4x: probe of 85e000.etm failed with error -22
>   [    5.964853] coresight-etm4x 85f000.etm: ETM arch init failed
>   [    5.971096] coresight-etm4x: probe of 85f000.etm failed with error -22

That is expected. What else do you expect ?

> 
> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> ---
>   drivers/hwtracing/coresight/coresight-platform.c | 3 +++
>   1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/hwtracing/coresight/coresight-platform.c b/drivers/hwtracing/coresight/coresight-platform.c
> index 8b03fa573684..3f4559596c6b 100644
> --- a/drivers/hwtracing/coresight/coresight-platform.c
> +++ b/drivers/hwtracing/coresight/coresight-platform.c
> @@ -168,6 +168,9 @@ static int of_coresight_get_cpu(struct device *dev)
>   	cpu = of_cpu_node_to_id(dn);
>   	of_node_put(dn);
>   
> +	if (num_online_cpus() <= cpu)
> +		return -ENODEV;

That is a pointless and terribly wrong check. What if you have only 2
online CPUs (CPU0 and CPU4) and you were processing the ETM for CPU4 ?

More over you should simply let the driver handle a case where the CPU
is not online. May be the driver could register a hotplug notifier and
bring itself up when the CPU comes online.

So, please drop this patch.

Kind regards
Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
