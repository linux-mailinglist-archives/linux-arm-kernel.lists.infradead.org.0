Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4623D1CE062
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 18:27:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IYI1438S0tYSiU8evht5Psoj97+2DvlbI2TlGLf3tgY=; b=a0uOK6raG59tc2E/E3wXCrQzS
	2687uQnI4hUtesEKAteTYvSuXB/SqI2Mm1917DC4XnAEOKtzAWvt998c6cruP/GfbUauGCkVphs55
	5I4Z4rWX2PjF7Zofxao1Zf+Ouf6kKVtdTOOb9d1qYM/LvjOHtMypF5aLOZNL0jdv/Y3WUoVzHsCLS
	DfwfL8ysjTOVVQEi5ad4J1cj4bSOw5tGvxucFKKeBVQ3gvGUj1dPoAxvioeFnw6UASfORioFKNHa3
	c8t5qBI+tB2DMjn3wonNBwuxxOZTWeYoMCdNhztpujusq/BVAGu0cc3BaF34hG63yyUudc/dToBO2
	9eHS0Py4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYBGi-0001HH-UG; Mon, 11 May 2020 16:27:04 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYBGX-0001Ct-DJ
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 16:26:57 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1589214410; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=iB/2//54kD8Pat8R5JhkF2wDuD+zsA6Mpo5lwlEZfZ0=;
 b=D6eNzeR6ewbrlzNdKFYMAjjvCcgocy8pfn7WOeBt8puazS4ElSgZJ32o2H069jrXKMOv6S2v
 TYZOjDnA2aTrxeuL0v2m1mYHNqS4JMkL6VjO8Fww7ptD+mvCruFsa/iv/7dQdlPhpl9DMyJb
 /c2ib4Ruks/yPdHYuTJ2UOtmQKQ=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5eb97cc5.7f27681718f0-smtp-out-n04;
 Mon, 11 May 2020 16:26:45 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id C8EA6C44791; Mon, 11 May 2020 16:26:44 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 07A1CC43636;
 Mon, 11 May 2020 16:26:44 +0000 (UTC)
MIME-Version: 1.0
Date: Mon, 11 May 2020 21:56:43 +0530
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH] coresight: replicator: Reset replicator if context is lost
In-Reply-To: <CANLsYkx640pjt_crfHMUQt25w-xOfoVteYVpocYgPHRw-y-WeQ@mail.gmail.com>
References: <20200511083400.26554-1-saiprakash.ranjan@codeaurora.org>
 <CANLsYkx640pjt_crfHMUQt25w-xOfoVteYVpocYgPHRw-y-WeQ@mail.gmail.com>
Message-ID: <c9a303e97a567e417ee897e59f571d64@codeaurora.org>
X-Sender: saiprakash.ranjan@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_092653_521591_78036744 
X-CRM114-Status: GOOD (  17.43  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [104.130.122.27 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Coresight ML <coresight@lists.linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Stephen Boyd <swboyd@chromium.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Mike Leach <mike.leach@linaro.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mathieu,

On 2020-05-11 21:49, Mathieu Poirier wrote:
> Hi Sai,
> 
> On Mon, 11 May 2020 at 02:34, Sai Prakash Ranjan
> <saiprakash.ranjan@codeaurora.org> wrote:
>> 
>> On some QCOM SoCs, replicators in Always-On domain loses its
>> context as soon as the clock is disabled. Currently as a part
>> of pm_runtime workqueue, clock is disabled after the replicator
>> is initialized by amba_pm_runtime_suspend assuming that context
>> is not lost which is not true for replicators with such
>> limitations. Hence check the replicator idfilter registers
>> in dynamic_replicator_enable() and reset again.
>> 
>> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
>> ---
>> 
>> More info here - https://lore.kernel.org/patchwork/patch/1231182/
>> 
>> ---
>>  drivers/hwtracing/coresight/coresight-replicator.c | 11 +++++++++++
>>  1 file changed, 11 insertions(+)
>> 
>> diff --git a/drivers/hwtracing/coresight/coresight-replicator.c 
>> b/drivers/hwtracing/coresight/coresight-replicator.c
>> index e7dc1c31d20d..11df63f51071 100644
>> --- a/drivers/hwtracing/coresight/coresight-replicator.c
>> +++ b/drivers/hwtracing/coresight/coresight-replicator.c
>> @@ -68,6 +68,17 @@ static int dynamic_replicator_enable(struct 
>> replicator_drvdata *drvdata,
>>         int rc = 0;
>>         u32 reg;
>> 
>> +       /*
>> +        * On some QCOM SoCs with replicators in Always-On domain, 
>> disabling
>> +        * clock will result in replicator losing its context. 
>> Currently
>> +        * as a part of pm_runtime workqueue, amba_pm_runtime_suspend 
>> disables
>> +        * clock assuming the context is not lost which is not true 
>> for cases
>> +        * with hardware limitations as the above.
>> +        */
>> +       if ((readl_relaxed(drvdata->base + REPLICATOR_IDFILTER0) == 0) 
>> &&
>> +           (readl_relaxed(drvdata->base + REPLICATOR_IDFILTER1) == 
>> 0))
>> +               dynamic_replicator_reset(drvdata);
>> +
> 
> Based on your comment here[1] and the ongoing conversation, I will
> wait for a V2.
> 
> Thanks,
> Mathieu
> 
> [1]. https://lkml.org/lkml/2020/5/11/650
> 

Yes, I will post a v2 once we have consensus regarding which way we need 
to
add a workaround for such QCOM SoCs.

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
