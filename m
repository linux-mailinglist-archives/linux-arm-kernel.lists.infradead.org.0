Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6C1D1A1341
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 20:00:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zw7bI2qeV3Sfa65q/HcDdm63JLeC0P1kQ5oqGPNw5S0=; b=LkTuaW1OsP5Y8BDPtpj/05kGh
	jN1N7Oc1AXWsF0mV6MT4+2wNrCIhBdJEjEGYjG8nOmVm1RFKL2ahKvVj7dpGIv4/sWz8bvKVdJklx
	jIMm87+kv/gGbQ09rOPv9aU7BB2mLT3PW4J7uIzQhHlFANgX3RcMLno9f8FrEc3hoQmnb5Q01Cnbc
	/yc6EpOG65Bhp4lsMDEHcBqByC4gg1PS4aK637T92xyr5pEWEdJrHjkq8evpf+Csupyc+Au/ogDdu
	d1pJkOxobx06rk2xkGdFqE/Ec6KVGVgKBqZiDhXX7QX49c1x4I9UwmOlhjkT36Lt5Y/f5/SErEz4C
	zh9kp5jDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLsWT-000120-1q; Tue, 07 Apr 2020 18:00:29 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLsWJ-00010w-JX
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 18:00:23 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1586282421; h=Content-Transfer-Encoding: Content-Type:
 In-Reply-To: MIME-Version: Date: Message-ID: From: References: Cc: To:
 Subject: Sender; bh=dk+x0rTY0DaiUKQYsPBwoDgbCv6jZ7mH7/iIl9UgojQ=;
 b=vxlItLQ+hhmSiVsoEk8OZK6cgzO8lGdojki/em/yX+rGlV5NNMhv3WFZ8ffN1CD5dWiNSJug
 TAT5qTjWwr7/kkHk0cLVWl0fcdssmBGpVivpcSw0BB4SHKNe53OTYo7Njs284oyTEPStSHAb
 tiPa9g8KQ1jVm6ZBBN1wtUNOex0=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e8cbfa3.7f4ece158880-smtp-out-n04;
 Tue, 07 Apr 2020 18:00:03 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 2F365C433BA; Tue,  7 Apr 2020 18:00:03 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from [192.168.1.10] (cpe-70-95-5-60.san.res.rr.com [70.95.5.60])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: sidgup)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 2D70FC433F2;
 Tue,  7 Apr 2020 18:00:01 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 2D70FC433F2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=sidgup@codeaurora.org
Subject: Re: [PATCH 2/2] remoteproc: core: Prevent sleep when rproc crashes
To: Mathieu Poirier <mathieu.poirier@linaro.org>
References: <1582164713-6413-1-git-send-email-sidgup@codeaurora.org>
 <1582164713-6413-3-git-send-email-sidgup@codeaurora.org>
 <20200224185334.GB9477@xps15>
From: Siddharth Gupta <sidgup@codeaurora.org>
Message-ID: <1a6a8661-d44f-adad-b262-ff42633c7b38@codeaurora.org>
Date: Tue, 7 Apr 2020 11:00:00 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200224185334.GB9477@xps15>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_110022_090680_C222882F 
X-CRM114-Status: GOOD (  19.88  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: ohad@wizery.com, tsoni@codeaurora.org, linux-arm-msm@vger.kernel.org,
 linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
 bjorn.andersson@linaro.org, rishabhb@codeaurora.org, psodagud@codeaurora.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hey Mathieu,
I will be sending a revised patchset soon. Will try to address your 
comments there.

Thanks,
Siddharth

On 2/24/2020 10:53 AM, Mathieu Poirier wrote:
> On Wed, Feb 19, 2020 at 06:11:53PM -0800, Siddharth Gupta wrote:
>> Remoteproc recovery should be fast and any delay will have an impact on the
>> user-experience. Use power management APIs (pm_stay_awake and pm_relax) to
>> ensure that the system does not go to sleep.
> When you say "ensure the system does not go to sleep", you're referring to the
> system going idle from the CPUidle subsystem?
>
>> Signed-off-by: Siddharth Gupta <sidgup@codeaurora.org>
>> ---
>>   drivers/remoteproc/remoteproc_core.c | 4 ++++
>>   1 file changed, 4 insertions(+)
>>
>> diff --git a/drivers/remoteproc/remoteproc_core.c b/drivers/remoteproc/remoteproc_core.c
>> index 5ab65a4..52e318c 100644
>> --- a/drivers/remoteproc/remoteproc_core.c
>> +++ b/drivers/remoteproc/remoteproc_core.c
>> @@ -1712,6 +1712,8 @@ static void rproc_crash_handler_work(struct work_struct *work)
>>   
>>   	if (!rproc->recovery_disabled)
>>   		rproc_trigger_recovery(rproc);
>> +
>> +	pm_relax(&rproc->dev);
>>   }
>>   
>>   /**
>> @@ -2242,6 +2244,8 @@ void rproc_report_crash(struct rproc *rproc, enum rproc_crash_type type)
>>   		return;
>>   	}
>>   
>> +	pm_stay_awake(&rproc->dev);
>> +
> I fail to understand how this can be useful since there is no HW associted to
> rproc->dev...  Is it possible for you to elaborate more on the problem you're
> trying to fix?
>
> Thanks,
> Mathieu
>
>>   	dev_err(&rproc->dev, "crash detected in %s: type %s\n",
>>   		rproc->name, rproc_crash_to_string(type));
>>   
>> -- 
>> Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
>> a Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
