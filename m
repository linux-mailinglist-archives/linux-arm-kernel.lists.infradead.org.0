Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C05E61BDAFC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 13:48:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UCQ9CYsrP7sDD10j/Nc2qwyytB0+zLw+8AykNAL8NrI=; b=E8WRyzEKrXskbtp716RtHvWeM
	2GrhjgqakcK7deBw0+HiwqZjscxiH8Kq+kkel6oGRET1mr59klz1h59hjqKCIMXvxa26FBZ0ZhgAG
	sFeEaeeX0bIbvKHO7lMjPZGuOiJ7TuEzloeWWTZDVa4EQevF7zKmelz4O0upNdlbkKdT55eFco5+u
	RZMmiwlFnHgDmLBm8Pz0d6y8hU1dEBZdeH2Fd1jg9QwMMv7wKKY3uv5esumeVLYiYQyXYgTs35AO+
	IIsSNtf4IIMSfDpwgL8UtD4WANJ+3jNuNAU1Zn5k+7jRPsjchyLJqJdc48y0UiMXLNVnqlK/mW2Yv
	qsQH175AA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTlBy-0006dk-P4; Wed, 29 Apr 2020 11:47:54 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTlBn-0006ct-Lf
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 11:47:45 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1588160862; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=79lO4foXlw6J8ugqTXZwErfGUb0sv/L3QrDS4q0L9l4=;
 b=DGd1kzdK3mKrJUVOpECE0vqTOsMaUEFxjU4P7qaU8S8RgljrcXd4OAloT4R1VMtV0d99dras
 JiHrLCnNBiD7GEvrTJhbuLW8mgfk2zM/6x0uPr0FoaqjFLioFs5hy78BZmuGe/99oEJyuw32
 hdvWWJsMfRZ0Ej2vBAPiK2omd2I=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5ea9695d.7f3d26fdac70-smtp-out-n03;
 Wed, 29 Apr 2020 11:47:41 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 7887AC43637; Wed, 29 Apr 2020 11:47:41 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED autolearn=ham
 autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 16C3BC433D2;
 Wed, 29 Apr 2020 11:47:41 +0000 (UTC)
MIME-Version: 1.0
Date: Wed, 29 Apr 2020 17:17:41 +0530
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Suzuki K Poulose <suzuki.poulose@arm.com>, mike.leach@linaro.org
Subject: Re: [PATCH] coresight: dynamic-replicator: Fix handling of multiple
 connections
In-Reply-To: <668ea1283a6dd6b34e701972f6f71034@codeaurora.org>
References: <20200426143725.18116-1-saiprakash.ranjan@codeaurora.org>
 <cf5852e9-c3c1-3d31-46f0-0370719947ab@arm.com>
 <CAJ9a7VgF3-Hdc7KSw9gVBeXSDHNguhqVhp60oK2XhCtr3DhDqg@mail.gmail.com>
 <84918e7d-c933-3fa1-a61e-0615d4b3cf2c@arm.com>
 <668ea1283a6dd6b34e701972f6f71034@codeaurora.org>
Message-ID: <5b0f5d77c4eec22d8048bb0ffa078345@codeaurora.org>
X-Sender: saiprakash.ranjan@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_044743_768621_AAE05877 
X-CRM114-Status: GOOD (  20.59  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, mathieu.poirier@linaro.org, swboyd@chromium.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-04-28 17:53, Sai Prakash Ranjan wrote:
> On 2020-04-27 19:23, Suzuki K Poulose wrote:
>> On 04/27/2020 10:45 AM, Mike Leach wrote:
> [...]
>>>> 
>>>> This is not sufficient. You must prevent another session trying to
>>>> enable the other port of the replicator as this could silently fail
>>>> the "on-going" session. Not ideal. Fail the attempt to enable a port
>>>> if the other port is active. You could track this in software and
>>>> fail early.
>>>> 
>>>> Suzuki
>>> 
>>> While I have no issue in principle with not enabling a path to a sink
>>> that is not in use - indeed in some cases attaching to unused sinks
>>> can cause back-pressure that slows throughput (cf TPIU) - I am
>>> concerned that this modification is masking an underlying issue with
>>> the platform in question.
>>> 
>>> Should we decide to enable the diversion of different IDs to 
>>> different
>>> sinks or allow different sessions go to different sinks, then this 
>>> has
>>> potential to fail on the SC7180 SoC - and it will be difficult in
>>> future to associate a problem with this discussion.
>> 
>> Mike,
>> 
>> I think thats a good point.
>> Sai, please could we narrow down this to the real problem and may be
>> work around it for the "device" ? Do we know which sink is causing the
>> back pressure ? We could then push the "work around" to the replicator
>> it is connected to.
>> 
>> Suzuki
> 
> Hi Suzuki, Mike,
> 
> To add some more to the information provided earlier,
> swao_replicator(6b06000) and etf are
> in AOSS (Always-On-SubSystem) group. Also TPIU(connected to
> qdss_replicator) and EUD(connected
> to swao_replicator) sinks are unused.
> 
> Please ignore the id filter values provided earlier.
> Here are ID filter values after boot and before enabling replicator. As 
> per
> these idfilter values, we should not try to enable replicator if its 
> already
> enabled (in this case for swao_replicator) right?
> 
> localhost ~ # cat
> /sys/bus/amba/devices/6b06000.replicator/replicator1/mgmt/idfilter0
> 0x0
> localhost ~ # cat
> /sys/bus/amba/devices/6b06000.replicator/replicator1/mgmt/idfilter1
> 0x0
> 
> localhost ~ # cat
> /sys/bus/amba/devices/6046000.replicator/replicator0/mgmt/idfilter0
> 0xff
> localhost ~ # cat
> /sys/bus/amba/devices/6046000.replicator/replicator0/mgmt/idfilter1
> 0xff
> 

Looking more into replicator1(swao_replicator) values as 0x0 even after 
replicator_reset()
in replicator probe, I added dynamic_replicator_reset in 
dynamic_replicator_enable()
and am not seeing any hardlockup. Also I added some prints to check the 
idfilter
values before and after reset and found that its not set to 0xff even 
after replicator_reset()
in replicator probe, I don't see any other path setting it to 0x0.

After probe:

[    8.477669] func replicator_probe before reset replicator replicator1 
REPLICATOR_IDFILTER0=0x0 REPLICATOR_IDFILTER1=0x0
[    8.489470] func replicator_probe after reset replicator replicator1 
REPLICATOR_IDFILTER0=0xff REPLICATOR_IDFILTER1=0xff
[    8.502738] func replicator_probe before reset replicator replicator0 
REPLICATOR_IDFILTER0=0x0 REPLICATOR_IDFILTER1=0x0
[    8.515214] func replicator_probe after reset replicator replicator0 
REPLICATOR_IDFILTER0=0xff REPLICATOR_IDFILTER1=0xff
localhost ~ #
localhost ~ #
localhost ~ # echo 1 > /sys/bus/coresight/devices/tmc_etr0/enable_sink
localhost ~ #
localhost ~ # echo 1 > /sys/bus/coresight/devices/etm0/enable_source
[   58.490485] func dynamic_replicator_enable before reset replicator 
replicator0 REPLICATOR_IDFILTER0=0xff REPLICATOR_IDFILTER1=0xff
[   58.503246] func dynamic_replicator_enable after reset replicator 
replicator0 REPLICATOR_IDFILTER0=0xff REPLICATOR_IDFILTER1=0xff
[   58.520902] func dynamic_replicator_enable before reset replicator 
replicator1 REPLICATOR_IDFILTER0=0x0 REPLICATOR_IDFILTER1=0x0
[   58.533500] func dynamic_replicator_enable after reset replicator 
replicator1 REPLICATOR_IDFILTER0=0xff REPLICATOR_IDFILTER1=0xff
localhost ~ #

Can we have a replicator_reset in dynamic_replicator_enable?

diff --git a/drivers/hwtracing/coresight/coresight-replicator.c 
b/drivers/hwtracing/coresight/coresight-replicator.c
index e7dc1c31d20d..794f8e4c049f 100644
--- a/drivers/hwtracing/coresight/coresight-replicator.c
+++ b/drivers/hwtracing/coresight/coresight-replicator.c
@@ -68,6 +68,8 @@ static int dynamic_replicator_enable(struct 
replicator_drvdata *drvdata,
         int rc = 0;
         u32 reg;

+       dynamic_replicator_reset(drvdata);
+
         switch (outport) {
         case 0:
                 reg = REPLICATOR_IDFILTER0;

Thanks,
Sai
-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a 
member
of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
