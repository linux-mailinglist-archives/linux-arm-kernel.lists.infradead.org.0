Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D277124CED
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 17:16:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YmvCVwxQ037teLuikctpD/rdcqgUTnVBhZzAowVywS0=; b=JQL8tY+1cjdwLU
	hoKGAJAM3hMxmxLTcLtvOJo+dxJ1uBMXHPEBZ6E3R8C880y/TTq940evetlCpMWafyqgzbqIVIcwE
	3krhctLOK1IcoyvKfLI7ftVG96NYbiuq0Yb9uBC8kpkHocc2R5wiQKk67H3JAZpM3U56AY1UuK55n
	ZmeK5EIMHIFFXEweLTaF8Dj5mWN/2X4QKZj4UYG2ThLOIKxws8GIL5TIJN4SfM8KS+vU9HbY8h3RW
	nz+xbZRuBs7Y1AVQoB2WFCc7nlwDe3Ax2pQv5/+GGGwbqvBCI/RdDCRUcRVbGC+XU1/WtIJgLO/Ba
	bi3B+hAGp6i4PiWZ187Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihbzh-00043N-VC; Wed, 18 Dec 2019 16:16:13 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihbzW-00042M-1c
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 16:16:03 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E8E4530E;
 Wed, 18 Dec 2019 08:16:00 -0800 (PST)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.197.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 E94723F719; Wed, 18 Dec 2019 08:15:59 -0800 (PST)
Date: Wed, 18 Dec 2019 16:15:57 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v2] perf/smmuv3: Remove the leftover put_cpu() in error
 path
Message-ID: <20191218161557.GE50582@arrakis.emea.arm.com>
References: <1576046586-59145-1-git-send-email-guohanjun@huawei.com>
 <20191216122057.GB12947@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191216122057.GB12947@willie-the-truck>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_081602_133563_34F72D19 
X-CRM114-Status: GOOD (  19.52  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-kernel@vger.kernel.org,
 Shameer Kolothum <shameerali.kolothum.thodi@huawei.com>,
 Hanjun Guo <guohanjun@huawei.com>, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 16, 2019 at 12:20:57PM +0000, Will Deacon wrote:
> On Wed, Dec 11, 2019 at 02:43:06PM +0800, Hanjun Guo wrote:
> > In smmu_pmu_probe(), there is put_cpu() in the error path,
> > which is wrong because we use raw_smp_processor_id() to
> > get the cpu ID, not get_cpu(), remove it.
> > 
> > While we are at it, kill 'out_cpuhp_err' altogether and
> > just return err if we fail to add the hotplug instance.
> > 
> > Acked-by: Robin Murphy <robin.murphy@arm.com>
> > Signed-off-by: Hanjun Guo <guohanjun@huawei.com>
> > ---
> >  drivers/perf/arm_smmuv3_pmu.c | 4 +---
> >  1 file changed, 1 insertion(+), 3 deletions(-)
> > 
> > diff --git a/drivers/perf/arm_smmuv3_pmu.c b/drivers/perf/arm_smmuv3_pmu.c
> > index 773128f..d704ecc 100644
> > --- a/drivers/perf/arm_smmuv3_pmu.c
> > +++ b/drivers/perf/arm_smmuv3_pmu.c
> > @@ -814,7 +814,7 @@ static int smmu_pmu_probe(struct platform_device *pdev)
> >  	if (err) {
> >  		dev_err(dev, "Error %d registering hotplug, PMU @%pa\n",
> >  			err, &res_0->start);
> > -		goto out_cpuhp_err;
> > +		return err;
> >  	}
> >  
> >  	err = perf_pmu_register(&smmu_pmu->pmu, name, -1);
> > @@ -833,8 +833,6 @@ static int smmu_pmu_probe(struct platform_device *pdev)
> >  
> >  out_unregister:
> >  	cpuhp_state_remove_instance_nocalls(cpuhp_state_num, &smmu_pmu->node);
> > -out_cpuhp_err:
> > -	put_cpu();
> >  	return err;
> >  }
> 
> Acked-by: Will Deacon <will@kernel.org>
> 
> Catalin -- please can you take this as a fix via the arm64 tree? I don't
> have any other perf patches pending at the moment.

Queued.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
