Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 212AB1EDE0D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 09:28:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Cpz1X6rFJC9wPTBck377ybYmKbBQUcAPNBmt1DfsgQ0=; b=J1+e7anvMRlVHGNny8fufFRVt
	/SdKi7Amvuv/xEjoQ8G0wRaz2Be76aIUmyF439lTNymWWTrkHeDSTLk4eSVR8y02D3cBx+ttobjCR
	8YdY4VwgfL9Mtf0ZGgIIaOYXOgN3maGxXtqmf3QxziouvOwZtjY1ceFGnTwsEfUGLkY+4xjTG2dRC
	Pi0tX1chulmrrvaVmvkyT6FsVXFpZ1dgCFYWujAT2t1yNi5Flz96R2Hx1XrhsnVMJKMIz5sQODv73
	1MuMEEIaeAb+Pfuaw8rWWeHyWCJqToVPf0AJ1UHoUSlIgMtjhQg8WTdXM5r+yBYrfDub1e4z32GW6
	b9cF2cdaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgkIe-0004Ef-Gu; Thu, 04 Jun 2020 07:28:28 +0000
Received: from m43-7.mailgun.net ([69.72.43.7])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgkIW-0004DU-H9
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 07:28:22 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1591255700; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=PIILDPNgCuNv1mqjXE6f0mhEhOgXKvJv2pfDeyjwOso=;
 b=Ge7Hi3jzdg2C56IKxacye8TnWTfKjy/wnJvGzyFF34oStu3XRxT18UJ9Va/gVKOvTUXZJcL5
 Yv9dMnu2u85BemldQ5Xb/pmCYLGt5BO11bFC68jTvERTaQh1tqelD1gXC6x7mUN/HvAttjvX
 /0OMvldmEHU5lLNxMVNBvaugX2k=
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n14.prod.us-east-1.postgun.com with SMTP id
 5ed8a27e44a25e0052781d48 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Thu, 04 Jun 2020 07:27:58
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 7600EC43391; Thu,  4 Jun 2020 07:27:57 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,URIBL_BLOCKED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 754E9C433C6;
 Thu,  4 Jun 2020 07:27:56 +0000 (UTC)
MIME-Version: 1.0
Date: Thu, 04 Jun 2020 12:57:56 +0530
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>, Robin Murphy
 <robin.murphy@arm.com>, Will Deacon <will@kernel.org>
Subject: Re: [PATCH 2/2] coresight: tmc: Add shutdown callback for TMC ETR/ETF
In-Reply-To: <20200603174426.GA23165@xps15>
References: <cover.1590947174.git.saiprakash.ranjan@codeaurora.org>
 <28123d1e19f235f97555ee36a5ed8b52d20cbdea.1590947174.git.saiprakash.ranjan@codeaurora.org>
 <20200601212858.GB24287@xps15>
 <6d759cc28628ea72767c1304883630eb@codeaurora.org>
 <CAJ9a7VhMbdqVBHxEXGYxFkgPnnQqNnDAz=wkHP3s7Ntw0iLmKA@mail.gmail.com>
 <f0357072de96970b641bbd0da98c1d61@codeaurora.org>
 <CAJ9a7Vj9STJw4jBxWU_9wHftj4Q7+k8o1nTc8tr21KjYi0RkpQ@mail.gmail.com>
 <4a09cd2e054836d85f2e024ca4435e91@codeaurora.org>
 <CAJ9a7VgCFeHNbY_9Gwvu6uT9MFBeY=_GCaN4N1dwmm+iNpfJOw@mail.gmail.com>
 <1a5a6a6d-b86d-df45-cf91-7081e70d88a3@arm.com>
 <20200603174426.GA23165@xps15>
Message-ID: <da1fdf765ea29cfe7a44145b17431721@codeaurora.org>
X-Sender: saiprakash.ranjan@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_002820_631860_8759D96D 
X-CRM114-Status: GOOD (  36.91  )
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>, linux-arm-msm@vger.kernel.org,
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

+Will

On 2020-06-03 23:14, Mathieu Poirier wrote:
> On Wed, Jun 03, 2020 at 02:34:10PM +0100, Robin Murphy wrote:
>> On 2020-06-03 14:22, Mike Leach wrote:
>> > Hi Sai,
>> >
>> > On Wed, 3 Jun 2020 at 13:14, Sai Prakash Ranjan
>> > <saiprakash.ranjan@codeaurora.org> wrote:
>> > >
>> > > Hi Mike,
>> > >
>> > > On 2020-06-03 16:57, Mike Leach wrote:
>> > > > Hi,
>> > > >
>> > > > On Wed, 3 Jun 2020 at 11:24, Sai Prakash Ranjan
>> > > > <saiprakash.ranjan@codeaurora.org> wrote:
>> > > > >
>> > > > > Hi Mike,
>> > > > >
>> > > > > Thanks again for looking at this.
>> > > > >
>> > > > > On 2020-06-03 03:42, Mike Leach wrote:
>> > > > > [...]
>> > > > >
>> > > > > > >
>> > > > > > > SMMU/IOMMU won't be able to do much here as it is the client's
>> > > > > > > responsiblity to
>> > > > > > > properly shutdown and SMMU device link just makes sure that
>> > > > > > > SMMU(supplier) shutdown is
>> > > > > > > called only after its consumers shutdown callbacks are called.
>> > > > > >
>> > > > > > I think this use case can be handled slightly differently than the
>> > > > > > general requirements for modular CoreSight drivers.
>> > > > > >
>> > > > > > What is needed here is a way of stopping the underlying ETR hardware
>> > > > > > from issuing data to the SMMU, until the entire device has been shut
>> > > > > > down, in a way that does not remove the driver, breaking existing
>> > > > > > references and causing a system crash.
>> > > > > >
>> > > > > > We could introduce a new mode to the ETR driver - e.g.
>> > > > > > CS_MODE_SHUTDOWN.
>> > > > > >
>> > > > > > At the end of the block tmc_shutdown(struct amba_device *adev), set
>> > > > > > drvdata->mode to CS_MODE_SHUTDOWN & remove the coresight_unregister().
>> > > > > > This new mode can be used to  prevent the underlying hardware from
>> > > > > > being able to restart until the device is re-powered.
>> > > > > >
>> > > > > > This mode can be detected in the code that enables / disables the ETR
>> > > > > > and handled appropriately (updates to tmc_enable_etr_sink and
>> > > > > > tmc_disable_etr_sink).
>> > > > > > This mode will persist until the device is re-started - but because we
>> > > > > > are on the device shutdown path this is not an issue.
>> > > > > >
>> > > > > > This should leave the CoreSight infrastructure stable until the
>> > > > > > drivers are shut down normally as part of the device power down
>> > > > > > process.
>> > > > > >
>> > > > >
>> > > > > Sounds good to me, but if the coresight_unregister() is the trouble
>> > > > > point
>> > > > > causing these crashes, then can't we just remove that from
>> > > > > tmc_shutdown()
>> > > > > callback? This would be like maintaining the same behaviour as now
>> > > > > where
>> > > > > on reboot/shutdown we basically don't do anything except for disabling
>> > > > > ETR.
>> > > >
>> > > > No - the new mode prevents race conditions where the thread shutting
>> > > > down the SMMU does the ETR shutdown, but then another thread happens
>> > > > to be trying to start trace and restarts the ETR.
>> > > > It also prevents the condition Mathieu discussed where a thread might
>> > > > be attempting to shutdown trace - this could try to disable the
>> > > > hardware again re-releasing resources/ re-flushing and waiting for
>> > > > stop.
>> > > >
>> > >
>> > > I do not think there will a race between SMMU shutdown and ETR shutdown.
>> > > Driver core takes care of calling SMMU shutdown after its consumer
>> > > shutdown callbacks via device link, otherwise there would already be
>> > > bugs in all other client drivers.
>> > >
>> >
>> > I am not saying there could be a race between tmc_shutdowm and
>> > Smmu_shutdown - there may be a case if the coresight_disable_path
>> > sequence is running and gets to the point of disabling the ETR after
>> > the SMMU callback has disabled it.
>> 
>> I'm confused now - there is no "SMMU callback", we're talking about 
>> the
>> system-wide cleanup from kernel_shutdown_prepare() or
>> kernel_restart_prepare(). As far as I'm aware userspace should be long 
>> gone
>> by that point, so although trace may have been left running, the 
>> chance of
>> racing against other driver operations seems pretty unlikely.
> 
> Robin has a point - user space is long gone at this time.  As such the 
> first
> question to ask is what kind of CS session was running at the time the 
> system
> was shutting down.  Was it a perf session of a sysfs session?
> 
> I'm guessing it was a sysfs session because user space has been blown 
> away a
> while back and part of that process should have killed all perf 
> sessions.

I was enabling trace via sysfs.

> 
> If I am correct then simply switching off the ETR HW in the shutdown() 
> amba bus
> callback should be fine - otherwise Mike's approach is mandatory.  
> There is
> also the exchange between Robin and Sai about removing the SMMU 
> shutdown
> callback, but that thread is still incomplete.
> 

If Robin is hinting at removing SMMU shutdown callback, then I think 
adding
all these shutdown callbacks to all clients of SMMU can be avoided. Git 
blaming
the thing shows it was added to avoid some kexec memory corruption.

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
