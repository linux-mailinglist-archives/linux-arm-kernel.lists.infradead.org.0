Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C3E81ED0E2
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 15:34:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=H8I4EPbXCF6aWW7LzBSieKeQ/WXmvgDVCt5lnGSU1Rw=; b=cnv0GGAtZHa/oDtZnVmVUgDNy
	X8cawUse8lDvFEDFZQhmaIvPWOuDFny3aYAg4fhVmSgWzCkKP+y/cQsW3ZVrv3dj5DmA73P78wh9L
	bLXwnrWzQc7TjhQ/w7OzrJo1OXLh9+0REc4sW6pboMVfXeo9zw2CKKvNm41GHJoXOoaWekz+c38Zq
	MCDy9Flo6gY4CL3ye3kuw5gxxIhG9D8SVcuwlwFSF/WJYSu/YSUSs6yq6+8FeI1SWDBDCOuoGXSfz
	bVatAvNtSphD8Yus43AUVo9OMSWBbAI+PsRg+n+micRAJ3KFtR/3pfgsa28ZmjSDomqAdgWx4D0Fv
	1pRt4iWCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgTXE-0000IQ-5t; Wed, 03 Jun 2020 13:34:24 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgTX6-0000Hu-Fi
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 13:34:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3E2C355D;
 Wed,  3 Jun 2020 06:34:15 -0700 (PDT)
Received: from [10.57.0.45] (unknown [10.57.0.45])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 828073F52E;
 Wed,  3 Jun 2020 06:34:13 -0700 (PDT)
Subject: Re: [PATCH 2/2] coresight: tmc: Add shutdown callback for TMC ETR/ETF
To: Mike Leach <mike.leach@linaro.org>,
 Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
References: <cover.1590947174.git.saiprakash.ranjan@codeaurora.org>
 <28123d1e19f235f97555ee36a5ed8b52d20cbdea.1590947174.git.saiprakash.ranjan@codeaurora.org>
 <20200601212858.GB24287@xps15>
 <6d759cc28628ea72767c1304883630eb@codeaurora.org>
 <CAJ9a7VhMbdqVBHxEXGYxFkgPnnQqNnDAz=wkHP3s7Ntw0iLmKA@mail.gmail.com>
 <f0357072de96970b641bbd0da98c1d61@codeaurora.org>
 <CAJ9a7Vj9STJw4jBxWU_9wHftj4Q7+k8o1nTc8tr21KjYi0RkpQ@mail.gmail.com>
 <4a09cd2e054836d85f2e024ca4435e91@codeaurora.org>
 <CAJ9a7VgCFeHNbY_9Gwvu6uT9MFBeY=_GCaN4N1dwmm+iNpfJOw@mail.gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <1a5a6a6d-b86d-df45-cf91-7081e70d88a3@arm.com>
Date: Wed, 3 Jun 2020 14:34:10 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <CAJ9a7VgCFeHNbY_9Gwvu6uT9MFBeY=_GCaN4N1dwmm+iNpfJOw@mail.gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_063416_610635_9D830E9D 
X-CRM114-Status: GOOD (  25.60  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On 2020-06-03 14:22, Mike Leach wrote:
> Hi Sai,
> 
> On Wed, 3 Jun 2020 at 13:14, Sai Prakash Ranjan
> <saiprakash.ranjan@codeaurora.org> wrote:
>>
>> Hi Mike,
>>
>> On 2020-06-03 16:57, Mike Leach wrote:
>>> Hi,
>>>
>>> On Wed, 3 Jun 2020 at 11:24, Sai Prakash Ranjan
>>> <saiprakash.ranjan@codeaurora.org> wrote:
>>>>
>>>> Hi Mike,
>>>>
>>>> Thanks again for looking at this.
>>>>
>>>> On 2020-06-03 03:42, Mike Leach wrote:
>>>> [...]
>>>>
>>>>>>
>>>>>> SMMU/IOMMU won't be able to do much here as it is the client's
>>>>>> responsiblity to
>>>>>> properly shutdown and SMMU device link just makes sure that
>>>>>> SMMU(supplier) shutdown is
>>>>>> called only after its consumers shutdown callbacks are called.
>>>>>
>>>>> I think this use case can be handled slightly differently than the
>>>>> general requirements for modular CoreSight drivers.
>>>>>
>>>>> What is needed here is a way of stopping the underlying ETR hardware
>>>>> from issuing data to the SMMU, until the entire device has been shut
>>>>> down, in a way that does not remove the driver, breaking existing
>>>>> references and causing a system crash.
>>>>>
>>>>> We could introduce a new mode to the ETR driver - e.g.
>>>>> CS_MODE_SHUTDOWN.
>>>>>
>>>>> At the end of the block tmc_shutdown(struct amba_device *adev), set
>>>>> drvdata->mode to CS_MODE_SHUTDOWN & remove the coresight_unregister().
>>>>> This new mode can be used to  prevent the underlying hardware from
>>>>> being able to restart until the device is re-powered.
>>>>>
>>>>> This mode can be detected in the code that enables / disables the ETR
>>>>> and handled appropriately (updates to tmc_enable_etr_sink and
>>>>> tmc_disable_etr_sink).
>>>>> This mode will persist until the device is re-started - but because we
>>>>> are on the device shutdown path this is not an issue.
>>>>>
>>>>> This should leave the CoreSight infrastructure stable until the
>>>>> drivers are shut down normally as part of the device power down
>>>>> process.
>>>>>
>>>>
>>>> Sounds good to me, but if the coresight_unregister() is the trouble
>>>> point
>>>> causing these crashes, then can't we just remove that from
>>>> tmc_shutdown()
>>>> callback? This would be like maintaining the same behaviour as now
>>>> where
>>>> on reboot/shutdown we basically don't do anything except for disabling
>>>> ETR.
>>>
>>> No - the new mode prevents race conditions where the thread shutting
>>> down the SMMU does the ETR shutdown, but then another thread happens
>>> to be trying to start trace and restarts the ETR.
>>> It also prevents the condition Mathieu discussed where a thread might
>>> be attempting to shutdown trace - this could try to disable the
>>> hardware again re-releasing resources/ re-flushing and waiting for
>>> stop.
>>>
>>
>> I do not think there will a race between SMMU shutdown and ETR shutdown.
>> Driver core takes care of calling SMMU shutdown after its consumer
>> shutdown callbacks via device link, otherwise there would already be
>> bugs in all other client drivers.
>>
> 
> I am not saying there could be a race between tmc_shutdowm and
> Smmu_shutdown - there may be a case if the coresight_disable_path
> sequence is running and gets to the point of disabling the ETR after
> the SMMU callback has disabled it.

I'm confused now - there is no "SMMU callback", we're talking about the 
system-wide cleanup from kernel_shutdown_prepare() or 
kernel_restart_prepare(). As far as I'm aware userspace should be long 
gone by that point, so although trace may have been left running, the 
chance of racing against other driver operations seems pretty unlikely.

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
