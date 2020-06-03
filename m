Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DA011ECF8B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 14:15:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dWlRirIrVnyrOTK9xTCgHOfRpvkuvrPsph/7WDexu54=; b=GbGrNuTH41DntseemiM6us15F
	dsVbmvIT1g14K7M+xUhGf/YHgJqmjsBIcn/EPMleWqg2wxS2HcgdHwjtcVkW7cuD1My4Q2fJvFyBA
	JHJudwZIqeFSRKVk5MNv15G6TCrI3baPHoRHONkbxiQ+zkDWirwJAF2IB5RlhjM6EObd1eOHzDjdD
	xB6VxxP69pjIgJ+6+gUeHC3Dxc5lXk1lffdJ5n4Az4K+CI7c3l0sQiW7/DRJ+BpZjZ1PBXpp5Gcc5
	VcsR+JPo046ivjUvt4fw5u6DuWDcDLu1VWwlYtlOV8mGlqnIu3ak2Gznox80W0pfIEHM/8i6U92QN
	CzLlIpxKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgSIN-0000sf-H4; Wed, 03 Jun 2020 12:14:59 +0000
Received: from m43-7.mailgun.net ([69.72.43.7])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgSIF-0000sH-4j
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 12:14:52 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1591186491; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=JbS524Cnw2NfPr05sWSsjesDpzR7nsPveFPmkLicFCE=;
 b=KtnEXaDkzv0bbXoUlMwPm5D0L4wv+IZgGWjLQgpQck68YR8lj7gF3uAxyUAjU1fn2FX2fzNA
 /clOweAX0AgmlrDivKUCuN+q9PtWfgeaTsYQvZeyddseGsDxyD3GmcpKVH9rfGVtmV+C+rg/
 yn33aJ7DuJxeVCBW1abj5VEn4s0=
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n12.prod.us-west-2.postgun.com with SMTP id
 5ed7943646d39fc0a20b4b10 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Wed, 03 Jun 2020 12:14:46
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 65953C433CB; Wed,  3 Jun 2020 12:14:46 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id A3729C433CA;
 Wed,  3 Jun 2020 12:14:45 +0000 (UTC)
MIME-Version: 1.0
Date: Wed, 03 Jun 2020 17:44:45 +0530
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Mike Leach <mike.leach@linaro.org>
Subject: Re: [PATCH 2/2] coresight: tmc: Add shutdown callback for TMC ETR/ETF
In-Reply-To: <CAJ9a7Vj9STJw4jBxWU_9wHftj4Q7+k8o1nTc8tr21KjYi0RkpQ@mail.gmail.com>
References: <cover.1590947174.git.saiprakash.ranjan@codeaurora.org>
 <28123d1e19f235f97555ee36a5ed8b52d20cbdea.1590947174.git.saiprakash.ranjan@codeaurora.org>
 <20200601212858.GB24287@xps15>
 <6d759cc28628ea72767c1304883630eb@codeaurora.org>
 <CAJ9a7VhMbdqVBHxEXGYxFkgPnnQqNnDAz=wkHP3s7Ntw0iLmKA@mail.gmail.com>
 <f0357072de96970b641bbd0da98c1d61@codeaurora.org>
 <CAJ9a7Vj9STJw4jBxWU_9wHftj4Q7+k8o1nTc8tr21KjYi0RkpQ@mail.gmail.com>
Message-ID: <4a09cd2e054836d85f2e024ca4435e91@codeaurora.org>
X-Sender: saiprakash.ranjan@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_051451_495368_09EC044D 
X-CRM114-Status: GOOD (  26.22  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [69.72.43.7 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [69.72.43.7 listed in wl.mailspike.net]
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

On 2020-06-03 16:57, Mike Leach wrote:
> Hi,
> 
> On Wed, 3 Jun 2020 at 11:24, Sai Prakash Ranjan
> <saiprakash.ranjan@codeaurora.org> wrote:
>> 
>> Hi Mike,
>> 
>> Thanks again for looking at this.
>> 
>> On 2020-06-03 03:42, Mike Leach wrote:
>> [...]
>> 
>> >>
>> >> SMMU/IOMMU won't be able to do much here as it is the client's
>> >> responsiblity to
>> >> properly shutdown and SMMU device link just makes sure that
>> >> SMMU(supplier) shutdown is
>> >> called only after its consumers shutdown callbacks are called.
>> >
>> > I think this use case can be handled slightly differently than the
>> > general requirements for modular CoreSight drivers.
>> >
>> > What is needed here is a way of stopping the underlying ETR hardware
>> > from issuing data to the SMMU, until the entire device has been shut
>> > down, in a way that does not remove the driver, breaking existing
>> > references and causing a system crash.
>> >
>> > We could introduce a new mode to the ETR driver - e.g.
>> > CS_MODE_SHUTDOWN.
>> >
>> > At the end of the block tmc_shutdown(struct amba_device *adev), set
>> > drvdata->mode to CS_MODE_SHUTDOWN & remove the coresight_unregister().
>> > This new mode can be used to  prevent the underlying hardware from
>> > being able to restart until the device is re-powered.
>> >
>> > This mode can be detected in the code that enables / disables the ETR
>> > and handled appropriately (updates to tmc_enable_etr_sink and
>> > tmc_disable_etr_sink).
>> > This mode will persist until the device is re-started - but because we
>> > are on the device shutdown path this is not an issue.
>> >
>> > This should leave the CoreSight infrastructure stable until the
>> > drivers are shut down normally as part of the device power down
>> > process.
>> >
>> 
>> Sounds good to me, but if the coresight_unregister() is the trouble
>> point
>> causing these crashes, then can't we just remove that from
>> tmc_shutdown()
>> callback? This would be like maintaining the same behaviour as now 
>> where
>> on reboot/shutdown we basically don't do anything except for disabling
>> ETR.
> 
> No - the new mode prevents race conditions where the thread shutting
> down the SMMU does the ETR shutdown, but then another thread happens
> to be trying to start trace and restarts the ETR.
> It also prevents the condition Mathieu discussed where a thread might
> be attempting to shutdown trace - this could try to disable the
> hardware again re-releasing resources/ re-flushing and waiting for
> stop.
> 

I do not think there will a race between SMMU shutdown and ETR shutdown.
Driver core takes care of calling SMMU shutdown after its consumer
shutdown callbacks via device link, otherwise there would already be
bugs in all other client drivers.

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
