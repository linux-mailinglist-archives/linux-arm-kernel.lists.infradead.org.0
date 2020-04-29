Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 527EE1BE4EE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 19:11:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oG89r2BZh0F8Lsqcy3LZxc09IBbBiIyG8AVnuy/FzuY=; b=FQKyOTCcu7l7BBhTgS5ZJ5Mkn
	G4Jn4OizbFb5bb4Mk2y2rKLDTPTARKZ+5POXrIk0eLo5EpTGfatNworg1BNkjz2+4I1kEI/hx2ocP
	xnhwKISY5Hn4/kzRDOczclZc7xzxZ6Mgmk92ds9IoMPeRsWko1hWeJzoJKxWEnQm50rthr+2NTmne
	G8K7UTTZ7nF/GLOHtcuKSi6Koc31dri3wzVRnqU9HDnttVjZgq744NkleOsDF4JNdz4cadqTUgB0d
	fVqFlYZR6Z/WDqtXEbjgN3UfAKg7gpw6h/xJ73GYywudZXNtY1GQPxnyKlyPUx4fERZFwwrhuIsNR
	jMNdW/Nzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTqFA-000487-QJ; Wed, 29 Apr 2020 17:11:32 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTqEy-00047T-O1
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 17:11:23 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1588180282; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=2H/grRhp1qnjOIul3MbQSy7YNYNUS9RRvwG048+TsJY=;
 b=F+IUXWmXU4b6uiVU4tVxkqbqc6ePvHf4N4qLNzRMthBYgpoIYhXV5T/kfjXILkJr/Op3bnTn
 KCyv3X3A87HdZkT+A7mvvPDkXjakoFIBn1sJqACcZI9+4uxODbiSlLt1aXT42VsMf31SCqXg
 fmYdn+dsZxa/6fx5l9h4CAouWsk=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5ea9b52c.7f0d18f4a848-smtp-out-n03;
 Wed, 29 Apr 2020 17:11:08 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 23D1AC433BA; Wed, 29 Apr 2020 17:11:07 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 834D7C433D2;
 Wed, 29 Apr 2020 17:11:06 +0000 (UTC)
MIME-Version: 1.0
Date: Wed, 29 Apr 2020 22:41:06 +0530
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Mike Leach <mike.leach@linaro.org>
Subject: Re: [PATCH] coresight: dynamic-replicator: Fix handling of multiple
 connections
In-Reply-To: <CAJ9a7Vj4eyv1n=RxuqfV=pdBN3SDG+ShYS5J4s40KJtqOnR7vw@mail.gmail.com>
References: <20200426143725.18116-1-saiprakash.ranjan@codeaurora.org>
 <cf5852e9-c3c1-3d31-46f0-0370719947ab@arm.com>
 <CAJ9a7VgF3-Hdc7KSw9gVBeXSDHNguhqVhp60oK2XhCtr3DhDqg@mail.gmail.com>
 <84918e7d-c933-3fa1-a61e-0615d4b3cf2c@arm.com>
 <668ea1283a6dd6b34e701972f6f71034@codeaurora.org>
 <5b0f5d77c4eec22d8048bb0ffa078345@codeaurora.org>
 <759d47de-2101-39cf-2f1c-cfefebebd548@arm.com>
 <7d343e96cf0701d91152fd14c2fdec42@codeaurora.org>
 <CAJ9a7VgEiX19ukjwakNHBHDeZJ05f5Z7pAYG9iEnpXCuuDfBqg@mail.gmail.com>
 <a4bba03d41a2b0145b3c6c19d48698eb@codeaurora.org>
 <CAJ9a7Vj4eyv1n=RxuqfV=pdBN3SDG+ShYS5J4s40KJtqOnR7vw@mail.gmail.com>
Message-ID: <ae0fe2050be01cc1403c7d53a0da8cb8@codeaurora.org>
X-Sender: saiprakash.ranjan@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_101122_636924_47A4B080 
X-CRM114-Status: GOOD (  24.62  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
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
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, linux-arm-msm@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Stephen Boyd <swboyd@chromium.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mike,

On 2020-04-29 22:28, Mike Leach wrote:
> Hi,
> 

[...]

>> >> > You need to find what is resetting the IDFILTERs to 0 for replicator1.
>> >> >
>> >>
>> >> That is right.
>> >>
>> >
>> > By default all replicators have the IDFILTER registers set to 0 out of
>> > hardware reset. This ensures that programmable replicators behave in
>> > the same way as non-programmable replicators out of reset.
>> >
>> > The  dynamic_replicator_reset() is of course a driver state reset -
>> > which filters out all trace on the output ports. The trace is then
>> > enabled when we set the trace path from source to sink.
>> >
>> 
>> Thanks for these explanations.
>> 
>> > It seems to me that you have 2 problems that need solving here:
>> >
>> > 1) Why does the reset_replicator() called from probe() _not_ work
>> > correctly on replicator 1? It seems to work later if you introduce a
>> > reset after more of the system has powered and booted. This is
>> > startiing to look a little like a PM / clocking issue.
>> 
>> reset_replicator() does work in probe correctly for both replicators,
>> below logs is collected before and after reset in probe. It is later
>> that it's set back to 0x0 and hence the suggestion to look at firmware
>> using this replicator1.
>> 
> OK - sorry I read your statement saying that replicator1 was 0 after
> the reset in probe(), rather than look at the logs.
> 
> From the logs it is working at the time probe() occurs, but by the
> time we come to enable the replicator later, something has reset these
> registers / hardware outside the control of the replicator driver.
> 

Yes, I will try to get some more information from the firmware side if 
there is anything messing up.

> 
>> [    8.477669] func replicator_probe before reset replicator 
>> replicator1
>> REPLICATOR_IDFILTER0=0x0 REPLICATOR_IDFILTER1=0x0
>> [    8.489470] func replicator_probe after reset replicator 
>> replicator1
>> REPLICATOR_IDFILTER0=0xff REPLICATOR_IDFILTER1=0xff
>> 
>> >
>> > This failure is causing the state when we are trying to set an output
>> > port that both branches of this replicator are enabled for output.
>> > In effect for this replicator, setting the output port has no effect
>> > as it is already enabled.
>> >
>> > 2) Why does having both ports of this repilicator enabled cause a hard
>> > lockup? This is a separate hardware  / system issue.
>> >
>> > The worst that should happen if both branches of a replicator are
>> > enabled is that you get undesirable back pressure. (e.g. there is a
>> > system we have seen - I think it is Juno - where there is a static
>> > replicator feeding the TPIU and ETR - we need to disable the TPIU to
>> > prevent undesired back pressure).
>> >
>> 
>> Ok so hardlockup is not expected because of this backpressure.
>> 
> 
> Hardlockup is not expected, but this is not related to any possible
> backpressure.
> 
> Ordinarily having both legs of a replicator enabled should not cause
> system failure.
> 

Ok got it, thanks.

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
