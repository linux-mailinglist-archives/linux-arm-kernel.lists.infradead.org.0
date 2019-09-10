Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37C53AEE07
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 17:01:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bettcQ6/fjFAJFGcJvmMq+57c1eQL1/4p6GSDZ89ikI=; b=kJ33NJUA6lwvhfEYfFMRqqBfG
	PuFw11mN13A+J05A9cLv/5+UfJ6g9Wpj1STdzkvlmcBwmPSBH1elgIdjw1jF1Gc806nRMohmVg1Ll
	Aslf6f6W+9uh5G4cT3P01osPxKlCfmKKoBHhbjDptxrwYLRxYwXMgHG6M9GxXCiIOYUX0MQrMhCE7
	dtgYAvDhQDRlb/EUH+s2uNQvoYL3EiqjecBfwB9LBRN8r6mkDjVOxZzE29ciy9JB6MqBDHHMJLbIp
	CA5KZ3CwqATfEqqn60wl5yCfvBGSt2KO5Qh/zJ/Q9O5dsvhxwqI+D9W1eZcg0DO3uMK9uGgmmsstZ
	0AI2vggHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7heR-0004Ui-7y; Tue, 10 Sep 2019 15:01:51 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i7heH-0004UK-4g
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 15:01:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 65DD228;
 Tue, 10 Sep 2019 08:01:40 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C724B3F71F;
 Tue, 10 Sep 2019 08:01:38 -0700 (PDT)
Subject: Re: [PATCH] iommu/arm-smmu: fix "hang" when games exit
To: Rob Clark <robdclark@gmail.com>, iommu@lists.linux-foundation.org
References: <20190907175013.24246-1-robdclark@gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <418d8426-f299-1269-2b2e-f86677cf22c2@arm.com>
Date: Tue, 10 Sep 2019 16:01:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190907175013.24246-1-robdclark@gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_080141_271224_7A14DE4D 
X-CRM114-Status: GOOD (  28.42  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Rob Clark <robdclark@chromium.org>, Will Deacon <will@kernel.org>,
 linux-arm-msm@vger.kernel.org, Joerg Roedel <joro@8bytes.org>,
 open list <linux-kernel@vger.kernel.org>, freedreno@lists.freedesktop.org,
 "moderated list:ARM SMMU DRIVERS" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 07/09/2019 18:50, Rob Clark wrote:
> From: Rob Clark <robdclark@chromium.org>
> 
> When games, browser, or anything using a lot of GPU buffers exits, there
> can be many hundreds or thousands of buffers to unmap and free.  If the
> GPU is otherwise suspended, this can cause arm-smmu to resume/suspend
> for each buffer, resulting 5-10 seconds worth of reprogramming the
> context bank (arm_smmu_write_context_bank()/arm_smmu_write_s2cr()/etc).
> To the user it would appear that the system is locked up.
> 
> A simple solution is to use pm_runtime_put_autosuspend() instead, so we
> don't immediately suspend the SMMU device.
> 
> Signed-off-by: Rob Clark <robdclark@chromium.org>
> ---
> Note: I've tied the autosuspend enable/delay to the consumer device,
> based on the reasoning that if the consumer device benefits from using
> an autosuspend delay, then it's corresponding SMMU probably does too.
> Maybe that is overkill and we should just unconditionally enable
> autosuspend.

I'm not sure there's really any reason to expect that a supplier's usage 
model when doing things for itself bears any relation to that of its 
consumer(s), so I'd certainly lean towards the "unconditional" argument 
myself.

Of course ideally we'd skip resuming altogether in the map/unmap paths 
(since resume implies a full TLB reset anyway), but IIRC that approach 
started to get messy in the context of the initial RPM patchset. I'm 
planning to fiddle around a bit more to clean up the implementation of 
the new iommu_flush_ops stuff, so I've made a note to myself to revisit 
RPM to see if there's a sufficiently clean way to do better. In the 
meantime, though, I don't have any real objection to using some 
reasonable autosuspend delay on the principle that if we've been woken 
up to map/unmap one page, there's a high likelihood that more will 
follow in short order (and in the configuration slow-paths it won't have 
much impact either way).

Robin.

>   drivers/iommu/arm-smmu.c | 11 ++++++++++-
>   1 file changed, 10 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
> index c2733b447d9c..73a0dd53c8a3 100644
> --- a/drivers/iommu/arm-smmu.c
> +++ b/drivers/iommu/arm-smmu.c
> @@ -289,7 +289,7 @@ static inline int arm_smmu_rpm_get(struct arm_smmu_device *smmu)
>   static inline void arm_smmu_rpm_put(struct arm_smmu_device *smmu)
>   {
>   	if (pm_runtime_enabled(smmu->dev))
> -		pm_runtime_put(smmu->dev);
> +		pm_runtime_put_autosuspend(smmu->dev);
>   }
>   
>   static struct arm_smmu_domain *to_smmu_domain(struct iommu_domain *dom)
> @@ -1445,6 +1445,15 @@ static int arm_smmu_attach_dev(struct iommu_domain *domain, struct device *dev)
>   	/* Looks ok, so add the device to the domain */
>   	ret = arm_smmu_domain_add_master(smmu_domain, fwspec);
>   
> +#ifdef CONFIG_PM
> +	/* TODO maybe device_link_add() should do this for us? */
> +	if (dev->power.use_autosuspend) {
> +		pm_runtime_set_autosuspend_delay(smmu->dev,
> +			dev->power.autosuspend_delay);
> +		pm_runtime_use_autosuspend(smmu->dev);
> +	}
> +#endif
> +
>   rpm_put:
>   	arm_smmu_rpm_put(smmu);
>   	return ret;
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
