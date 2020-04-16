Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46CD41ACD6D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 18:18:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MHdrdysvE50UyYz16eOD/6nJBLQquRNrqT9jLqkayk4=; b=LuQK6ndix0nvf2u1HOvkZ2iJA
	xD8zNWM+3Zie6h39P8AC/7HpmKkWC8EN4WTVjZr1/OfZ9T1j5yrISUBSGtbPHA57VQE2ycIOr38JZ
	Lgv30ixtMJ3J0F4uRaj4eTPJGoq54YcvWq/l8PRtQI5Oge9GdhfjZ94ucMbqOonoVND65ymWnwB41
	Xyd8PTauye9cF3i4UDNXjCRnoWPSgNRuRSjtJlL1PYD6KDIGb/Q1Tx3CKhn5jrDl0Rz05OLOUlYZv
	2QgfOfi33yxtyTDdUTSm0/qh5grWH/xCxiAd2h8HESAmwHyTePRnx4C8wwOro6yCx3vnraoMKgfB4
	5tuHjQ5DQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP7DP-0002Iv-6w; Thu, 16 Apr 2020 16:18:11 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP7D2-00028Y-4j
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 16:17:51 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1587053867; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=Y2xEDbxocGucjO0qTn7DS340t5u6GBbJbGfyXI59M4M=;
 b=s4SvdtIfV9VLxrZCR33DH0RrndS8xq4VAKoeXUBiPk9Tr/jKeW8kGtiPgWSR7H0q8sN47lE4
 j1Q2LpdoFP+SeG/3n1uYzolD9FJIalzLB3m5HwCIfl6Np/wIl/O+IMV2CnuZFDhgrImnjkmT
 EwopLdlGndB51LXYyqY7DUWi9Hw=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e988520.7f8fb79fcae8-smtp-out-n05;
 Thu, 16 Apr 2020 16:17:36 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 9E08DC4478C; Thu, 16 Apr 2020 16:17:35 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 4130BC433F2;
 Thu, 16 Apr 2020 16:17:34 +0000 (UTC)
MIME-Version: 1.0
Date: Thu, 16 Apr 2020 21:47:34 +0530
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH] coresight: tmc: Read TMC mode only when TMC hw is enabled
In-Reply-To: <CANLsYkxVFMrAOtZhNgQ+uPE5mgt1z8RNa_yAxX2ju7DYrbvBZw@mail.gmail.com>
References: <20200409113538.5008-1-saiprakash.ranjan@codeaurora.org>
 <9a792e3e-5a17-156d-4b59-4a3ec8f9993e@arm.com>
 <1751aeabd22bee18d2eef0f643883265@codeaurora.org>
 <20200413171418.GB28804@xps15>
 <75ef334a7e2cc6d87deecadd12c74f59@codeaurora.org>
 <CANLsYkxVFMrAOtZhNgQ+uPE5mgt1z8RNa_yAxX2ju7DYrbvBZw@mail.gmail.com>
Message-ID: <00cd8a8e124ada16f36937c4a1b173b9@codeaurora.org>
X-Sender: saiprakash.ranjan@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_091748_266181_B1E06AE4 
X-CRM114-Status: GOOD (  24.55  )
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Stephen Boyd <swboyd@chromium.org>, linux-arm-msm-owner@vger.kernel.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Mike Leach <mike.leach@linaro.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mathieu,

On 2020-04-15 21:26, Mathieu Poirier wrote:
> On Tue, 14 Apr 2020 at 09:47, Sai Prakash Ranjan
> <saiprakash.ranjan@codeaurora.org> wrote:
>> 
>> Hi Mathieu,
>> 
>> On 2020-04-13 22:44, Mathieu Poirier wrote:
>> > On Mon, Apr 13, 2020 at 01:55:30PM +0530, Sai Prakash Ranjan wrote:
>> >> Hi Suzuki,
>> >>
>> >> On 2020-04-13 04:47, Suzuki K Poulose wrote:
>> >> > Hi Sai,
>> >> >
>> >> > On 04/09/2020 12:35 PM, Sai Prakash Ranjan wrote:
>> >> > > Reading TMC mode register in tmc_read_prepare_etb without
>> >> > > enabling the TMC hardware leads to async exceptions like
>> >> > > the one in the call trace below. This can happen if the
>> >> > > user tries to read the TMC etf data via device node without
>> >> > > setting up source and the sink first which enables the TMC
>> >> > > hardware in the path. So make sure that the TMC is enabled
>> >> > > before we try to read TMC data.
>> >> >
>> >> > So, one can trigger the same SError by simply :
>> >> >
>> >> > $ cat /sys/bus/coresight/device/tmc_etb0/mgmt/mode
>> >> >
>> >>
>> >> I do not see any SError when I run the above command.
>> >>
>> >> localhost ~ # cat /sys/bus/coresight/devices/tmc_etf0/mgmt/mode
>> >> 0x0
>> >>
>> >> And this is most likely due to
>> >>
>> >> commit cd9e3474bb793dc ("coresight: add PM runtime calls to
>> >> coresight_simple_func()")
>> >
>> > Ok, so this is related to power management (you can ignore my question
>> > in the
>> > previous email).
>> >
>> > Regarding function tmc_read_prepare_etb(), the best way to deal with
>> > this is
>> > probably make sure drvdata->mode != CS_MODE_DISABLED before reading
>> > TMC_MODE.
>> > If there is a buffer to read it will have been copied when the ETB was
>> > disabled
>> > and there won't be a need to access the HW.
>> >
>> 
>> This works as well, thanks.
>> 
>> diff --git a/drivers/hwtracing/coresight/coresight-tmc-etf.c
>> b/drivers/hwtracing/coresight/coresight-tmc-etf.c
>> index d0cc3985b72a..7ffe05930984 100644
>> --- a/drivers/hwtracing/coresight/coresight-tmc-etf.c
>> +++ b/drivers/hwtracing/coresight/coresight-tmc-etf.c
>> @@ -596,6 +596,11 @@ int tmc_read_prepare_etb(struct tmc_drvdata
>> *drvdata)
>>                  goto out;
>>          }
>> 
>> +       if (drvdata->mode == CS_MODE_DISABLED) {
>> +               ret = -EINVAL;
>> +               goto out;
>> +       }
>> +
> 
> We are back to your original solution where the ETB buffer can't be
> read if the ETB itself is not enabled.  It _is_ possible to read the
> buffer of an ETB that has been disabled.
> 
> To fix this consider the following [1].  Take the block at line 607
> and move it to line 598.  As part of the if() condition at line 619,
> read the value of the TMC_MODE register and exit if not in circular
> mode.  If it is in circular mode continue with disabling the hardware.
> 
> [1].
> https://elixir.bootlin.com/linux/v5.7-rc1/source/drivers/hwtracing/coresight/coresight-tmc-etf.c
> 

Thanks, got it now. Posted v2 - 
https://lore.kernel.org/patchwork/patch/1226022/

-Sai

-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a 
member
of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
