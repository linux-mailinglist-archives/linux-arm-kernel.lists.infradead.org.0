Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 619C51EA83C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 19:13:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=24rTeZhsTWTSnPoHubYykePO2PPvugwUXeu77ltf+Cg=; b=lPLI/k/TbcdB8fd46q4v36aW1
	gF1VxNaAZ0J0RZwxB9J9bo+iOkGiaYgd7Jo391tlJHuWzvyWgQaTQJLdtnGMfJyYm6I3IsMRU1ZV5
	TlsfOJ5sfgb/8xhBsYTBTDfZTw1pVFWxm/eI5A4mZSioYuLeQwUw1jqqmWkpwfY7HQP+RVYlK7lVU
	FpZoyvjWYuCQy8FkQejigmkLPCUVurL3pijLhEOKW5+D5GPlnuYMPz9bORHU9zeBS26VTkorJyztd
	u1tTM+zV9ZDinCwwyHFqP7najBMzb5P9x4wpkSDU00K23l4VNupIxlF7bCPPYdzFMK2NNDgpI8H9+
	QMrwEP2Gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfo06-0008OC-3f; Mon, 01 Jun 2020 17:13:26 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfnzu-0008MF-L1
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 17:13:18 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1591031596; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=39+zL4ynTaUECjgLVW6qMRBSs3K/KmYk/5G/8M7YXUM=;
 b=NJ1AZQGi7UqgcXFobin0lALyTmUxjlyGWkpnLqnOLlf0IkTpq0z6sVA0ejmtdt21Cyydc/9L
 lF7DX7gQ2rwhe0mOkDmEK3eV7ilyeiiEh2Rk8llJ/p7gWwLStRWT5kddFeOed/c/N9GIOl2H
 6ghZbpM6nprMH53w6EjmMaoF6hg=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n11.prod.us-west-2.postgun.com with SMTP id
 5ed5371d4db551abde261760 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Mon, 01 Jun 2020 17:13:01
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 213FFC4339C; Mon,  1 Jun 2020 17:13:01 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 71EA2C433C6;
 Mon,  1 Jun 2020 17:13:00 +0000 (UTC)
MIME-Version: 1.0
Date: Mon, 01 Jun 2020 22:43:00 +0530
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Mike Leach <mike.leach@linaro.org>
Subject: Re: [PATCH 1/2] coresight: tmc: Add enable flag to indicate the
 status of ETR/ETF
In-Reply-To: <CAJ9a7Vh=GPKdYcX3aiJfaAVQ3j8rEmoSvP0CDeF-mfPpV4DMaw@mail.gmail.com>
References: <cover.1590947174.git.saiprakash.ranjan@codeaurora.org>
 <6e62147c36c76b9485d14960dced4f6acda17591.1590947174.git.saiprakash.ranjan@codeaurora.org>
 <CAJ9a7Vh=GPKdYcX3aiJfaAVQ3j8rEmoSvP0CDeF-mfPpV4DMaw@mail.gmail.com>
Message-ID: <0b1ce383d9df84af3c23efad7eae21ae@codeaurora.org>
X-Sender: saiprakash.ranjan@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_101316_873330_F112E77F 
X-CRM114-Status: GOOD (  15.72  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [104.130.122.27 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 Coresight ML <coresight@lists.linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Stephen Boyd <swboyd@chromium.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mike,

Thanks for the review.

On 2020-06-01 18:57, Mike Leach wrote:
> Hi,
> 
> On Mon, 1 Jun 2020 at 09:02, Sai Prakash Ranjan
> <saiprakash.ranjan@codeaurora.org> wrote:
>> 
>> Add a flag to check whether TMC ETR/ETF is enabled or not.
>> This is later used in shutdown callback to determine if
>> we require to disable ETR/ETF.
>> 
>> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
>> ---
>>  drivers/hwtracing/coresight/coresight-tmc.c | 2 ++
>>  drivers/hwtracing/coresight/coresight-tmc.h | 2 ++
>>  2 files changed, 4 insertions(+)
>> 
>> diff --git a/drivers/hwtracing/coresight/coresight-tmc.c 
>> b/drivers/hwtracing/coresight/coresight-tmc.c
>> index 39fba1d16e6e..5a271ebc4585 100644
>> --- a/drivers/hwtracing/coresight/coresight-tmc.c
>> +++ b/drivers/hwtracing/coresight/coresight-tmc.c
>> @@ -62,11 +62,13 @@ void tmc_flush_and_stop(struct tmc_drvdata 
>> *drvdata)
>> 
>>  void tmc_enable_hw(struct tmc_drvdata *drvdata)
>>  {
>> +       drvdata->enable = true;
>>         writel_relaxed(TMC_CTL_CAPT_EN, drvdata->base + TMC_CTL);
>>  }
>> 
>>  void tmc_disable_hw(struct tmc_drvdata *drvdata)
>>  {
>> +       drvdata->enable = false;
>>         writel_relaxed(0x0, drvdata->base + TMC_CTL);
>>  }
>> 
>> diff --git a/drivers/hwtracing/coresight/coresight-tmc.h 
>> b/drivers/hwtracing/coresight/coresight-tmc.h
>> index 71de978575f3..d156860495c7 100644
>> --- a/drivers/hwtracing/coresight/coresight-tmc.h
>> +++ b/drivers/hwtracing/coresight/coresight-tmc.h
>> @@ -184,6 +184,7 @@ struct etr_buf {
>>   * @idr_mutex: Access serialisation for idr.
>>   * @sysfs_buf: SYSFS buffer for ETR.
>>   * @perf_buf:  PERF buffer for ETR.
>> + * @enable:    Indicates whether ETR/ETF is enabled.
>>   */
>>  struct tmc_drvdata {
>>         void __iomem            *base;
>> @@ -207,6 +208,7 @@ struct tmc_drvdata {
>>         struct mutex            idr_mutex;
>>         struct etr_buf          *sysfs_buf;
>>         struct etr_buf          *perf_buf;
>> +       bool                    enable;
> 
> Is this flag needed?
> For TMC, drvdata->mode indicates if the device is in use.
> 

Yes we can use mode flag, will make this change in the next version.

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
