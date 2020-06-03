Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E88861ECD75
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 12:24:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=k+Yc5TzTdpULITPGFio+WKMZrkqnCY4FLKVF6YCcVfw=; b=MkGnDhlIYT9Dk8w0D7vubWNps
	glJWf5eG8T4+Y26YSsAt/Y5ZxkJ1pbANJ9KOI2JvVKyQRAV3SCA6bAR3UYUsOmSGw4ah5B4BchGXX
	zuZdsvAGhEM30aiUxR5o85ZY3GIg09yKqb3RgRCE8Qk/GgHNApuCD4A+7Pu6hM4/0B3NTf0u+mLaM
	Z5PG/9bV1fcdhkw5HycPU96Qzm6cWmot2zUL7/Pc7jdhrUPnIITZw6tRmY0tDWb6VFwuTDh+23j7U
	cMAb0qHww8gQirLxlBknDAivVvmS7xWtF/pZKZgYn+AaBQSZUdS4HjW44HmRvYTO52V+UrUsVT4Kt
	/wUdH8G/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgQZm-0002W7-8C; Wed, 03 Jun 2020 10:24:50 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgQZf-0002V6-BB
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 10:24:45 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1591179883; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=Fb+tt2vSov7DVf31htcsTqiqyyJapmcyXoiOnQlcHbc=;
 b=JMmhP5yXz3sC1Qw5x3HheCgpXd9KbEBvHw8VWfBobMKIy2Ust65PjiKc4Y970IGPYP5HT7Dl
 kdk8MR297SfToVQJlubJmsLxxKqxQIjeo6pOFFekFvkEV1BJgbnK/Qxdk+8B1I9xGDKsY4lT
 3NiAsCmBepfYm4hdXs6cP5W5szY=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n10.prod.us-west-2.postgun.com with SMTP id
 5ed77a52e276c808def6f39c (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Wed, 03 Jun 2020 10:24:18
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 5010CC43391; Wed,  3 Jun 2020 10:24:18 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id A84B2C433CA;
 Wed,  3 Jun 2020 10:24:17 +0000 (UTC)
MIME-Version: 1.0
Date: Wed, 03 Jun 2020 15:54:17 +0530
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Mike Leach <mike.leach@linaro.org>
Subject: Re: [PATCH 2/2] coresight: tmc: Add shutdown callback for TMC ETR/ETF
In-Reply-To: <CAJ9a7VhMbdqVBHxEXGYxFkgPnnQqNnDAz=wkHP3s7Ntw0iLmKA@mail.gmail.com>
References: <cover.1590947174.git.saiprakash.ranjan@codeaurora.org>
 <28123d1e19f235f97555ee36a5ed8b52d20cbdea.1590947174.git.saiprakash.ranjan@codeaurora.org>
 <20200601212858.GB24287@xps15>
 <6d759cc28628ea72767c1304883630eb@codeaurora.org>
 <CAJ9a7VhMbdqVBHxEXGYxFkgPnnQqNnDAz=wkHP3s7Ntw0iLmKA@mail.gmail.com>
Message-ID: <f0357072de96970b641bbd0da98c1d61@codeaurora.org>
X-Sender: saiprakash.ranjan@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_032444_003003_6D689A6D 
X-CRM114-Status: GOOD (  23.01  )
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
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, linux-arm-msm@vger.kernel.org,
 Coresight ML <coresight@lists.linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Stephen Boyd <swboyd@chromium.org>, robin.murphy@arm.com,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mike,

Thanks again for looking at this.

On 2020-06-03 03:42, Mike Leach wrote:
[...]

>> 
>> SMMU/IOMMU won't be able to do much here as it is the client's
>> responsiblity to
>> properly shutdown and SMMU device link just makes sure that
>> SMMU(supplier) shutdown is
>> called only after its consumers shutdown callbacks are called.
> 
> I think this use case can be handled slightly differently than the
> general requirements for modular CoreSight drivers.
> 
> What is needed here is a way of stopping the underlying ETR hardware
> from issuing data to the SMMU, until the entire device has been shut
> down, in a way that does not remove the driver, breaking existing
> references and causing a system crash.
> 
> We could introduce a new mode to the ETR driver - e.g. 
> CS_MODE_SHUTDOWN.
> 
> At the end of the block tmc_shutdown(struct amba_device *adev), set
> drvdata->mode to CS_MODE_SHUTDOWN & remove the coresight_unregister().
> This new mode can be used to  prevent the underlying hardware from
> being able to restart until the device is re-powered.
> 
> This mode can be detected in the code that enables / disables the ETR
> and handled appropriately (updates to tmc_enable_etr_sink and
> tmc_disable_etr_sink).
> This mode will persist until the device is re-started - but because we
> are on the device shutdown path this is not an issue.
> 
> This should leave the CoreSight infrastructure stable until the
> drivers are shut down normally as part of the device power down
> process.
> 

Sounds good to me, but if the coresight_unregister() is the trouble 
point
causing these crashes, then can't we just remove that from 
tmc_shutdown()
callback? This would be like maintaining the same behaviour as now where
on reboot/shutdown we basically don't do anything except for disabling 
ETR.
This way, we do not have to introduce any new mode as well. To be exact, 
in
tmc_shutdown() we just disable ETR and then return without unregistering
which should not cause any issues since this is shutdown not the remove
callback which is a requirement for making coresight modular like below:

static void tmc_shutdown(struct amba_device *adev)
  {
          unsigned long flags;
          struct tmc_drvdata *drvdata = amba_get_drvdata(adev);

          spin_lock_irqsave(&drvdata->spinlock, flags);

          if (drvdata->mode == CS_MODE_DISABLED)
                  goto out;

          if (drvdata->config_type == TMC_CONFIG_TYPE_ETR)
                  tmc_etr_disable_hw(drvdata);

          /*
           * We do not care about coresight unregister here unlike remove
           * callback which is required for making coresight modular 
since
           * the system is going down after this.
           */
  out:
          spin_unlock_irqrestore(&drvdata->spinlock, flags);
  }


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
