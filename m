Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 316644C77E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 08:29:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mUg3JiZ/anHDrSRxVsBqNIv3xgXh0lgFwvZpxNh1sho=; b=FDOiEd2izyf5ooO0axMxxFA8P
	z/lDbQq09m7r4e8nquCD0vTEOTdwPpiS9O6FowaFaKFJykxy/bMLId+zvl5bRV+QjnD8isNIfh8hM
	NhhrUAfDJuEWyLnTI3bXp0Ckt0RvU++I4G+DTwoo57IchvVs+l6TU+Q7YhpQruQnSAMwdQVNPIYP9
	b8q7YbcWuhHUA2cUwRUVjN/WzBjHnLT7qrgRVaf/FwvuhsNyRyuRtT1O6nkruJ+Qadrv7mybHjELq
	ruf7mzbquTM5Ay6qfdp2Qk8d31NIc2VxYiCmwe40j8aSyNLSTC0ImVAQNjfNZvoVubADjH4UroudV
	h6TwXHL8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdqZg-0001eT-Bs; Thu, 20 Jun 2019 06:29:32 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdqZU-0001e4-AQ
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 06:29:21 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 742E260850; Thu, 20 Jun 2019 06:29:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561012159;
 bh=NZEClqzVfuNrG0u2LnRVLKZy/0ZXM/ymvg5lvsVu97c=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=eQvlepuJTyTBaS7/xbRkg6REHSoGkbQ8tvHEQNQj1pnI08wmEsj32xKBQGXO4Bii1
 u/iTyCT1tQVlWIGMpdYWS9Td62oJRMnBobG/Goc654kXOf9RO0dU+ViDjyHX/ll20a
 VorGo9miKzOFpBtr9Oq0j33sxFPSwgXmVPOBwkUI=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from [10.79.136.27]
 (blr-bdr-fw-01_globalnat_allzones-outside.qualcomm.com [103.229.18.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id B7ACF60790;
 Thu, 20 Jun 2019 06:29:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561012158;
 bh=NZEClqzVfuNrG0u2LnRVLKZy/0ZXM/ymvg5lvsVu97c=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=Z9HG38za9BwP6TCnqYNrkTCLXJndecYgqvqZpNdho+EXDVCLr3K4y9xGnFpLdEjZG
 i04T+tcuzLeemwIsDdkuik4PmeoyHQR29S3oIfAk29LxJoOTuB6HVxrBIX2GvSKrG5
 ApGMovDptgme8bwA8VIrlFI03NmOOuCIIEz+lbzU=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org B7ACF60790
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org; spf=none
 smtp.mailfrom=saiprakash.ranjan@codeaurora.org
Subject: Re: Coresight causes synchronous external abort on msm8916
To: Stephan Gerhold <stephan@gerhold.net>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, mathieu.poirier@linaro.org
References: <20190618202623.GA53651@gerhold.net>
 <a51f117f-c48d-d3f4-c3d1-9b584e3a055f@arm.com>
 <20190619183904.GB937@gerhold.net>
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Message-ID: <0dcea9a1-999d-7d85-267e-c3bfcfcfa95a@codeaurora.org>
Date: Thu, 20 Jun 2019 11:59:13 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190619183904.GB937@gerhold.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_232920_401096_A984562E 
X-CRM114-Status: GOOD (  30.89  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Rajendra Nayak <rnayak@codeaurora.org>, mathieu.poirier@linaro.org,
 linux-arm-msm@vger.kernel.org, david.brown@linaro.org, agross@kernel.org,
 Sibi Sankar <sibis@codeaurora.org>, Vivek Gautam <vivek.gautam@codeaurora.org>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Stephan,

On 6/20/2019 12:09 AM, Stephan Gerhold wrote:
> Hi,
> 
> On Wed, Jun 19, 2019 at 09:49:03AM +0100, Suzuki K Poulose wrote:
>> Hi Stephan,
>>
>> On 18/06/2019 21:26, Stephan Gerhold wrote:
>>> Hi,
>>>
>>> I'm trying to run mainline Linux on a smartphone with MSM8916 SoC.
>>> It works surprisingly well, but the coresight devices seem to cause the
>>> following crash shortly after userspace starts:
>>>
>>>       Internal error: synchronous external abort: 96000010 [#1] PREEMPT SMP
>>
>> ...
>>
>>
>>>
>>> In this case I'm using a simple device tree similar to apq8016-sbc,
>>> but it also happens using something as simple as msm8916-mtp.dts
>>> on this particular device.
>>>     (Attached: dmesg log with msm8916-mtp.dts and arm64 defconfig)
>>>
>>> I can avoid the crash and boot without any further problems by disabling
>>> every coresight device defined in msm8916.dtsi, e.g.:
>>>
>>> 	tpiu@820000 { status = "disabled"; };
>>
>> ...
>>
>>>
>>> I don't have any use for coresight at the moment,
>>> but it seems somewhat odd to put this in the device specific dts.
>>>
>>> Any idea what could be causing this crash?
>>
>> This is mostly due to the missing power domain support. The CoreSight
>> components are usually in a debug power domain. So unless that is turned on,
>> (either by specifying proper power domain ids for power management protocol
>> supported by the firmware OR via other hacks - e.g, connecting a DS-5 to
>> keep the debug power domain turned on , this works on Juno -).
> 
> Interesting, thanks a lot!
> 
> In this case I'm wondering how it works on the Dragonboard 410c.
> Does it enable these power domains in the firmware?
>    (Assuming it boots without this error...)
> 
> If coresight is not working properly on all/most msm8916 devices,
> shouldn't coresight be disabled by default in msm8916.dtsi?
> At least until those power domains can be set up by the kernel.
> 
> If this is a device-specific issue, what would be an acceptable solution
> for mainline?
> Can I turn on these power domains from the kernel?
> Or is it fine to disable coresight for this device with the snippet above?
> 
> I'm not actually trying to use coresight, I just want the device to boot :)
> And since I am considering submitting my device tree for inclusion in
> mainline, I want to ask in advance how I should tackle this problem.
> 
> Thanks!
> Stephan
> 

This doesn't seem like cpuidle or debug power domain issue, but looks
like cpu affinity issue. Can you please try out this patch and let us
know?

diff --git a/drivers/hwtracing/coresight/coresight-cpu-debug.c 
b/drivers/hwtracing/coresight/coresight-cpu-debug.c
index e8819d750938..9acf9f190d42 100644
--- a/drivers/hwtracing/coresight/coresight-cpu-debug.c
+++ b/drivers/hwtracing/coresight/coresight-cpu-debug.c
@@ -579,7 +579,11 @@ static int debug_probe(struct amba_device *adev, 
const struct amba_id *id)
  	if (!drvdata)
  		return -ENOMEM;

-	drvdata->cpu = np ? of_coresight_get_cpu(np) : 0;
+	drvdata->cpu = np ? of_coresight_get_cpu(np) : -ENODEV;
+	if (drvdata->cpu == -ENODEV) {
+		return -ENODEV;
+	}
+
  	if (per_cpu(debug_drvdata, drvdata->cpu)) {
  		dev_err(dev, "CPU%d drvdata has already been initialized\n",
  			drvdata->cpu);
diff --git a/drivers/hwtracing/coresight/coresight-etm4x.c 
b/drivers/hwtracing/coresight/coresight-etm4x.c
index 8bb0092c7ec2..660432acbac0 100644
--- a/drivers/hwtracing/coresight/coresight-etm4x.c
+++ b/drivers/hwtracing/coresight/coresight-etm4x.c
@@ -1107,7 +1107,10 @@ static int etm4_probe(struct amba_device *adev, 
const struct amba_id *id)

  	spin_lock_init(&drvdata->spinlock);

-	drvdata->cpu = pdata ? pdata->cpu : 0;
+	drvdata->cpu = pdata ? pdata->cpu : -ENODEV;
+	if (drvdata->cpu == -ENODEV) {
+		return -ENODEV;
+       }

  	cpus_read_lock();
  	etmdrvdata[drvdata->cpu] = drvdata;
diff --git a/drivers/hwtracing/coresight/of_coresight.c 
b/drivers/hwtracing/coresight/of_coresight.c
index 7045930fc958..8c1b90ba233c 100644
--- a/drivers/hwtracing/coresight/of_coresight.c
+++ b/drivers/hwtracing/coresight/of_coresight.c
@@ -153,14 +153,14 @@ int of_coresight_get_cpu(const struct device_node 
*node)
  	struct device_node *dn;

  	dn = of_parse_phandle(node, "cpu", 0);
-	/* Affinity defaults to CPU0 */
+	/* Affinity defaults to invalid */
  	if (!dn)
-		return 0;
+		return -ENODEV;
  	cpu = of_cpu_node_to_id(dn);
  	of_node_put(dn);

-	/* Affinity to CPU0 if no cpu nodes are found */
-	return (cpu < 0) ? 0 : cpu;
+	/* Affinity to invalid if no cpu nodes are found */
+	return (cpu < 0) ? -ENODEV : cpu;
  }
  EXPORT_SYMBOL_GPL(of_coresight_get_cpu);

-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
