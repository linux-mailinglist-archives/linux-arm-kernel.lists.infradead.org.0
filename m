Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 603AC1A1870
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 01:00:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Q9WPlCr9hriZGlaszpucJ871Cj2lM5G7PFs/MisKXPY=; b=hrVeQm33B6zCFa66F7i3TzIoG
	8YJTm8LbYvsP6PQO9B4uy9O8j2vulgVOjtgoZBT9xuquhjgA7oBuTYN0VxzF/io9YWuSBPUhZY1w4
	I1NVQ3fLYA9RwcVLcVJQsOlArEiUFrrXscXLRszP0auvAENiNKyfR2ySM5ZwZxaDuCQ59/i4/+mld
	qLPzIXBh8vN6ChaJ4KeAAQhVeZAqwK92OQbiWRLqtZxF2RuaTRtLuVva9idq3bB81jau15IaDYOWd
	wUaaDyoN4WB2akswk3rSlvhLPR6raDx7F6zG4iZNRrJXc0sXfZKPPHGuaqppNo7PzaYRJlLk3Gp1O
	MJgV4oZOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLxCe-0008RC-Fx; Tue, 07 Apr 2020 23:00:20 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLxCW-0008JT-Pm
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 23:00:15 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1586300413; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=SCZqNjd3i3AXnsdgqxjB0zBNvisnVUii4KRTbEvYcZs=;
 b=KoRgIo0cbfiyYujvlNTimsA9OeqZrijeXEWqIkmi1NBpVo66TV8+5jNQF+aNB8hpsjXGc+MG
 WbLnINYgd2hOrqAfaodbRWMNsrTrcYyEp1P/5PaDz5z8yK+yBiUqgMrkKmrz8Z79TGz4r/1+
 rmy5ZkwuG5hWt333yPAhM0ZD8dM=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e8d05ef.7f3a4d61adc0-smtp-out-n05;
 Tue, 07 Apr 2020 22:59:59 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id A7432C433BA; Tue,  7 Apr 2020 22:59:59 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: rishabhb)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 1A0CCC433D2;
 Tue,  7 Apr 2020 22:59:59 +0000 (UTC)
MIME-Version: 1.0
Date: Tue, 07 Apr 2020 15:59:59 -0700
From: rishabhb@codeaurora.org
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: Re: [PATCH 2/2] remoteproc: core: Prevent sleep when rproc crashes
In-Reply-To: <20200407222958.GL20625@builder.lan>
References: <1582164713-6413-1-git-send-email-sidgup@codeaurora.org>
 <1582164713-6413-3-git-send-email-sidgup@codeaurora.org>
 <20200407222958.GL20625@builder.lan>
Message-ID: <c98b9b02c49b41c6e2493407f11c5eac@codeaurora.org>
X-Sender: rishabhb@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_160014_108886_6D29861E 
X-CRM114-Status: GOOD (  18.86  )
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
 linux-remoteproc-owner@vger.kernel.org,
 Siddharth Gupta <sidgup@codeaurora.org>, psodagud@codeaurora.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-04-07 15:29, Bjorn Andersson wrote:
> On Wed 19 Feb 18:11 PST 2020, Siddharth Gupta wrote:
> 
>> Remoteproc recovery should be fast and any delay will have an impact 
>> on the
>> user-experience. Use power management APIs (pm_stay_awake and 
>> pm_relax) to
>> ensure that the system does not go to sleep.
>> 
>> Signed-off-by: Siddharth Gupta <sidgup@codeaurora.org>
>> ---
>>  drivers/remoteproc/remoteproc_core.c | 4 ++++
>>  1 file changed, 4 insertions(+)
>> 
>> diff --git a/drivers/remoteproc/remoteproc_core.c 
>> b/drivers/remoteproc/remoteproc_core.c
>> index 5ab65a4..52e318c 100644
>> --- a/drivers/remoteproc/remoteproc_core.c
>> +++ b/drivers/remoteproc/remoteproc_core.c
>> @@ -1712,6 +1712,8 @@ static void rproc_crash_handler_work(struct 
>> work_struct *work)
>> 
>>  	if (!rproc->recovery_disabled)
>>  		rproc_trigger_recovery(rproc);
>> +
>> +	pm_relax(&rproc->dev);
>>  }
>> 
>>  /**
>> @@ -2242,6 +2244,8 @@ void rproc_report_crash(struct rproc *rproc, 
>> enum rproc_crash_type type)
>>  		return;
>>  	}
>> 
>> +	pm_stay_awake(&rproc->dev);
> 
> Following Mathieu's question I was expecting you to do this on
> rproc->dev.parent.
> 
> But looking at the implementation of pm_stay_awake(), it ends up being 
> a
> nop if dev->power.wakeup isn't specified. This in turn seems to come
> from device_wakeup_enable(), which will bail if dev->power.can_wakeup 
> is
> not set. But I don't see where this would be set for either the 
> platform
> driver or the remoteproc's struct device - and neither one of them have
> a "wakeup" attribute in sysfs.
> 
> Is there some additional plumbing needed for this?
We should be able to create a standalone wakeup source using 
wakeup_source_init.
Then we can use _pm_stay_awake and _pm_relax on it.
> 
> Regards,
> Bjorn
> 
>> +
>>  	dev_err(&rproc->dev, "crash detected in %s: type %s\n",
>>  		rproc->name, rproc_crash_to_string(type));
>> 
>> --
>> Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
>> a Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
