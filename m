Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE4564CA3F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 11:07:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VJ8RpKsj6/tcsCMI+rWv3zJh2LB3Hz6cPsMdmg2cXuA=; b=b8sE1l1F0s6sOMcOnNSP4k1Gz
	bLVmP1URlimhpyGhQhinNejz0ZfOMoB8i4ZGCQuiuetjCogV+PEXudcTX9f1EI6UeRI0BpezP4/z2
	pI5IftpcdEDLgenQ9pu5mSDCnOhD9RfL+WZU97TnRJ9+mScsqVbyjgOfQ3tEF23KDxMJXejyOe57F
	uUXYmFLMv1KZQaCLX9YELSvlDpAg/540Qyj8ZehvDc92SCwgM+q4hrcOEhlW6GC2yIkhL0yAMoWo/
	S5vKrFOkrNKKiJm9Ga2AvkT2yCcrnt7m1AvzTYFRJMN+rwGZy4/Uzh/oiMV10XwAu4mJZBi4HYZ/3
	p/vvS9q8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdt1z-0005ID-Ei; Thu, 20 Jun 2019 09:06:55 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hdt1Z-0005Hs-SA
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 09:06:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 12584344;
 Thu, 20 Jun 2019 02:06:29 -0700 (PDT)
Received: from [10.1.196.93] (en101.cambridge.arm.com [10.1.196.93])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9F6EC3F246;
 Thu, 20 Jun 2019 02:06:27 -0700 (PDT)
Subject: Re: Coresight causes synchronous external abort on msm8916
To: saiprakash.ranjan@codeaurora.org, stephan@gerhold.net,
 mathieu.poirier@linaro.org
References: <20190618202623.GA53651@gerhold.net>
 <a51f117f-c48d-d3f4-c3d1-9b584e3a055f@arm.com>
 <20190619183904.GB937@gerhold.net>
 <0dcea9a1-999d-7d85-267e-c3bfcfcfa95a@codeaurora.org>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <6589bf4d-5b39-c95e-0ee5-aaf35a87b40e@arm.com>
Date: Thu, 20 Jun 2019 10:06:26 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <0dcea9a1-999d-7d85-267e-c3bfcfcfa95a@codeaurora.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_020629_998834_27D79959 
X-CRM114-Status: GOOD (  33.83  )
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
 david.brown@linaro.org, agross@kernel.org, sibis@codeaurora.org,
 vivek.gautam@codeaurora.org, linux-arm-kernel@lists.infradead.org,
 mike.leach@linaro.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 20/06/2019 07:29, Sai Prakash Ranjan wrote:
> Hi Stephan,
> 
> On 6/20/2019 12:09 AM, Stephan Gerhold wrote:
>> Hi,
>>
>> On Wed, Jun 19, 2019 at 09:49:03AM +0100, Suzuki K Poulose wrote:
>>> Hi Stephan,
>>>
>>> On 18/06/2019 21:26, Stephan Gerhold wrote:
>>>> Hi,
>>>>
>>>> I'm trying to run mainline Linux on a smartphone with MSM8916 SoC.
>>>> It works surprisingly well, but the coresight devices seem to cause the
>>>> following crash shortly after userspace starts:
>>>>
>>>>        Internal error: synchronous external abort: 96000010 [#1] PREEMPT SMP
>>>
>>> ...
>>>
>>>
>>>>
>>>> In this case I'm using a simple device tree similar to apq8016-sbc,
>>>> but it also happens using something as simple as msm8916-mtp.dts
>>>> on this particular device.
>>>>      (Attached: dmesg log with msm8916-mtp.dts and arm64 defconfig)
>>>>
>>>> I can avoid the crash and boot without any further problems by disabling
>>>> every coresight device defined in msm8916.dtsi, e.g.:
>>>>
>>>> 	tpiu@820000 { status = "disabled"; };
>>>
>>> ...
>>>
>>>>
>>>> I don't have any use for coresight at the moment,
>>>> but it seems somewhat odd to put this in the device specific dts.
>>>>
>>>> Any idea what could be causing this crash?
>>>
>>> This is mostly due to the missing power domain support. The CoreSight
>>> components are usually in a debug power domain. So unless that is turned on,
>>> (either by specifying proper power domain ids for power management protocol
>>> supported by the firmware OR via other hacks - e.g, connecting a DS-5 to
>>> keep the debug power domain turned on , this works on Juno -).
>>
>> Interesting, thanks a lot!
>>
>> In this case I'm wondering how it works on the Dragonboard 410c.
>> Does it enable these power domains in the firmware?
>>     (Assuming it boots without this error...)
>>
>> If coresight is not working properly on all/most msm8916 devices,
>> shouldn't coresight be disabled by default in msm8916.dtsi?
>> At least until those power domains can be set up by the kernel.
>>
>> If this is a device-specific issue, what would be an acceptable solution
>> for mainline?
>> Can I turn on these power domains from the kernel?
>> Or is it fine to disable coresight for this device with the snippet above?
>>
>> I'm not actually trying to use coresight, I just want the device to boot :)
>> And since I am considering submitting my device tree for inclusion in
>> mainline, I want to ask in advance how I should tackle this problem.
>>
>> Thanks!
>> Stephan
>>
> 
> This doesn't seem like cpuidle or debug power domain issue, but looks

We are not yet there in the Coresight driver and we crash at AMBA bus layer
trying to read the PID of the CoreSight device. So I doubt if this is an
issue your patch trying to address. I still think this is a debug power domain
issue. More your patch below.

> like cpu affinity issue. Can you please try out this patch and let us
> know?

In general I am for the patch, breaking the "assumption" that a missing CPU
phandle gives you the affinity of "0".

> 
> diff --git a/drivers/hwtracing/coresight/coresight-cpu-debug.c
> b/drivers/hwtracing/coresight/coresight-cpu-debug.c
> index e8819d750938..9acf9f190d42 100644
> --- a/drivers/hwtracing/coresight/coresight-cpu-debug.c
> +++ b/drivers/hwtracing/coresight/coresight-cpu-debug.c
> @@ -579,7 +579,11 @@ static int debug_probe(struct amba_device *adev,
> const struct amba_id *id)
>    	if (!drvdata)
>    		return -ENOMEM;
> 
> -	drvdata->cpu = np ? of_coresight_get_cpu(np) : 0;
> +	drvdata->cpu = np ? of_coresight_get_cpu(np) : -ENODEV;


of_coresight_get_cpu() must be modified to return -ENODEV, rather than
defaulting to 0. This is something that is required by the CTI driver too.
And lets not bring up something and assume it belongs to CPU0.

> +	if (drvdata->cpu == -ENODEV) {
> +		return -ENODEV;
> +	}
> +
>    	if (per_cpu(debug_drvdata, drvdata->cpu)) {
>    		dev_err(dev, "CPU%d drvdata has already been initialized\n",
>    			drvdata->cpu);
> diff --git a/drivers/hwtracing/coresight/coresight-etm4x.c
> b/drivers/hwtracing/coresight/coresight-etm4x.c
> index 8bb0092c7ec2..660432acbac0 100644
> --- a/drivers/hwtracing/coresight/coresight-etm4x.c
> +++ b/drivers/hwtracing/coresight/coresight-etm4x.c
> @@ -1107,7 +1107,10 @@ static int etm4_probe(struct amba_device *adev,
> const struct amba_id *id)
> 
>    	spin_lock_init(&drvdata->spinlock);
> 
> -	drvdata->cpu = pdata ? pdata->cpu : 0;

I believe, we should simply abort when we don't have pdata. There is no point
in registering this ETM unless we know where this is connected to.

> +	drvdata->cpu = pdata ? pdata->cpu : -ENODEV;
> +	if (drvdata->cpu == -ENODEV) {
> +		return -ENODEV;
> +       }

> 
>    	cpus_read_lock();
>    	etmdrvdata[drvdata->cpu] = drvdata;
> diff --git a/drivers/hwtracing/coresight/of_coresight.c
> b/drivers/hwtracing/coresight/of_coresight.c
> index 7045930fc958..8c1b90ba233c 100644
> --- a/drivers/hwtracing/coresight/of_coresight.c
> +++ b/drivers/hwtracing/coresight/of_coresight.c
> @@ -153,14 +153,14 @@ int of_coresight_get_cpu(const struct device_node
> *node)
>    	struct device_node *dn;
> 
>    	dn = of_parse_phandle(node, "cpu", 0);
> -	/* Affinity defaults to CPU0 */
> +	/* Affinity defaults to invalid */
>    	if (!dn)
> -		return 0;
> +		return -ENODEV;
>    	cpu = of_cpu_node_to_id(dn);
>    	of_node_put(dn);
> 
> -	/* Affinity to CPU0 if no cpu nodes are found */
> -	return (cpu < 0) ? 0 : cpu;
> +	/* Affinity to invalid if no cpu nodes are found */
> +	return (cpu < 0) ? -ENODEV : cpu;

	return cpu ?

If you split this into 3 different patches, I would be happy to Ack them.

Mathieu,

What do you think ?


Cheers
Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
