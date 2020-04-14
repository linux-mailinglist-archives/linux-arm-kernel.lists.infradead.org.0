Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC4E81A83B0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 17:47:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7jtpIgAUljx6+tEO9i0zwFs17PtiRMc3k0+z39RYHdc=; b=leJUFy/sBU80+ggVIFXU0zzWa
	Ew6a3362z5P9WHOTrMKCwih0hEJ7vF2IA4Q8kzK9uq971ZxmY/ZO/1SAEvdc8X584eIYyj2j3nq38
	j+HvVZ1wyeuamk0MYD+JHrQf/xFhHntzC9hQibDze+wyjmYDHBOaOUJrgK6A+LUncj5SWufSVuGs7
	gHSlq+GgGBXP9Gr9IhxRhhBP0joT2JWiWW4/ATek61FS88H3MkDF5gSR1nl9iBEisYhFotbXaU+wL
	FDRz+y3a8SMkRDOdEcO7Z6E91qF+1Cq9Ca5Vlm+x0rl09SmiCsmivLesNYvZnQCwXhiH82i/WS9IS
	HcZTWyooA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jONmR-0004CL-ML; Tue, 14 Apr 2020 15:47:19 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jONmI-0004Be-W2
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 15:47:12 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1586879230; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=Ev+tOWmh/spkiQzapjJsMT+Ybl+F09CQsdIN84fz7wM=;
 b=cyS7EelLK9xRx72StQRaRzg4kpx3Qvopx31peSNv8lAHIm8E1PtPlm1XmCY8+qxG6eOfzQWd
 73fsgndO6WuDMnFEdHgPHAzUY/qggCdAk0q4pIELRKDswv7ocm6gWSJbTE/oyIvWEqSPtr/v
 U7RHNIFF9LHd2NWShFyPY5BztrI=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e95dafb.7fea444e7e68-smtp-out-n03;
 Tue, 14 Apr 2020 15:47:07 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 8D80EC432C2; Tue, 14 Apr 2020 15:47:06 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id EC16DC433BA;
 Tue, 14 Apr 2020 15:47:05 +0000 (UTC)
MIME-Version: 1.0
Date: Tue, 14 Apr 2020 21:17:05 +0530
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH] coresight: tmc: Read TMC mode only when TMC hw is enabled
In-Reply-To: <20200413171418.GB28804@xps15>
References: <20200409113538.5008-1-saiprakash.ranjan@codeaurora.org>
 <9a792e3e-5a17-156d-4b59-4a3ec8f9993e@arm.com>
 <1751aeabd22bee18d2eef0f643883265@codeaurora.org>
 <20200413171418.GB28804@xps15>
Message-ID: <75ef334a7e2cc6d87deecadd12c74f59@codeaurora.org>
X-Sender: saiprakash.ranjan@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_084711_096066_C31C0125 
X-CRM114-Status: GOOD (  22.71  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, swboyd@chromium.org,
 linux-arm-msm-owner@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 mike.leach@linaro.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mathieu,

On 2020-04-13 22:44, Mathieu Poirier wrote:
> On Mon, Apr 13, 2020 at 01:55:30PM +0530, Sai Prakash Ranjan wrote:
>> Hi Suzuki,
>> 
>> On 2020-04-13 04:47, Suzuki K Poulose wrote:
>> > Hi Sai,
>> >
>> > On 04/09/2020 12:35 PM, Sai Prakash Ranjan wrote:
>> > > Reading TMC mode register in tmc_read_prepare_etb without
>> > > enabling the TMC hardware leads to async exceptions like
>> > > the one in the call trace below. This can happen if the
>> > > user tries to read the TMC etf data via device node without
>> > > setting up source and the sink first which enables the TMC
>> > > hardware in the path. So make sure that the TMC is enabled
>> > > before we try to read TMC data.
>> >
>> > So, one can trigger the same SError by simply :
>> >
>> > $ cat /sys/bus/coresight/device/tmc_etb0/mgmt/mode
>> >
>> 
>> I do not see any SError when I run the above command.
>> 
>> localhost ~ # cat /sys/bus/coresight/devices/tmc_etf0/mgmt/mode
>> 0x0
>> 
>> And this is most likely due to
>> 
>> commit cd9e3474bb793dc ("coresight: add PM runtime calls to
>> coresight_simple_func()")
> 
> Ok, so this is related to power management (you can ignore my question 
> in the
> previous email).
> 
> Regarding function tmc_read_prepare_etb(), the best way to deal with 
> this is
> probably make sure drvdata->mode != CS_MODE_DISABLED before reading 
> TMC_MODE.
> If there is a buffer to read it will have been copied when the ETB was 
> disabled
> and there won't be a need to access the HW.
> 

This works as well, thanks.

diff --git a/drivers/hwtracing/coresight/coresight-tmc-etf.c 
b/drivers/hwtracing/coresight/coresight-tmc-etf.c
index d0cc3985b72a..7ffe05930984 100644
--- a/drivers/hwtracing/coresight/coresight-tmc-etf.c
+++ b/drivers/hwtracing/coresight/coresight-tmc-etf.c
@@ -596,6 +596,11 @@ int tmc_read_prepare_etb(struct tmc_drvdata 
*drvdata)
                 goto out;
         }

+       if (drvdata->mode == CS_MODE_DISABLED) {
+               ret = -EINVAL;
+               goto out;
+       }
+
         /* There is no point in reading a TMC in HW FIFO mode */
         mode = readl_relaxed(drvdata->base + TMC_MODE);
         if (mode != TMC_MODE_CIRCULAR_BUFFER) {


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
