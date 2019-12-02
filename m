Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3CF410E95B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 12:11:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wq2a6ORmMvs6SzIMW2t5NNg83rOVoi1+B7jtf8WVYOE=; b=tKhvfkrpFT7ZDn
	H/rY5pDn5caAOtSv1gImOe2ASpmxnc0oRMdUynrswtiDqOZQgc4x6rLoCbSLgk33GkvgD8O3S/KwS
	BiOKEyxAi+2dkjwTU8T/+7mXv7zpjiqLasIlCHU+FkcU2M1jJ0isRf1Xrhz7taEmgMVepWSoovmtO
	zR6D9eHBB/i22OsKCRcSOw/2Wfc28LUP/2es5KbrWotmCnqF/p81kZ+5PQTdfRxfh4qOqHZnHPQUT
	Z0FSQE6ekFZf2RSNyHQmVxUgSJ5q6B8nQw7Yj4cNIqUjffy6trsJPNCNf7RiyimtHhmKuyKgwkeIk
	7LX0Hp9IkaVGdbmqxuzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibjc3-0006sZ-01; Mon, 02 Dec 2019 11:11:31 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibjbw-0006ra-4P
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 11:11:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9783A328;
 Mon,  2 Dec 2019 03:11:20 -0800 (PST)
Received: from bogus (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2A53E3F68E;
 Mon,  2 Dec 2019 03:11:19 -0800 (PST)
Date: Mon, 2 Dec 2019 11:11:14 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [PATCH 2/2] cpufreq: vexpress-spc: Switch cpumask from topology
 core to OPP sharing
Message-ID: <20191202111055.GA16058@bogus>
References: <20191128101547.519-1-sudeep.holla@arm.com>
 <20191128101547.519-2-sudeep.holla@arm.com>
 <20191129114926.GA24793@bogus>
 <20191202020146.pzjq2gtgo7rzzorx@vireshk-i7>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191202020146.pzjq2gtgo7rzzorx@vireshk-i7>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_031124_221162_D68C3C90 
X-CRM114-Status: GOOD (  15.59  )
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, linux-pm@vger.kernel.org,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Liviu Dudau <liviu.dudau@arm.com>,
 linux-kernel@vger.kernel.org, Morten Rasmussen <morten.rasmussen@arm.com>,
 Lukasz Luba <lukasz.luba@arm.com>, Sudeep Holla <sudeep.holla@arm.com>,
 Dietmar Eggemann <dietmar.eggemann@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 02, 2019 at 07:31:46AM +0530, Viresh Kumar wrote:
> On 29-11-19, 11:49, Sudeep Holla wrote:
> > Hi Viresh, Rafael,
> >
> > On Thu, Nov 28, 2019 at 10:15:47AM +0000, Sudeep Holla wrote:
> > > Since commit ca74b316df96 ("arm: Use common cpu_topology structure and
> > > functions.") the core cpumask has to be modified during cpu hotplug
> > > operations. So using them to set up cpufreq policy cpumask may be
> > > incorrect as it may contain only cpus that are online at that instance.
> > >
> > > Instead, we can use the cpumask setup by OPP library that contains all
> > > the cpus sharing OPP table using dev_pm_opp_get_sharing_cpus.
> > >
> > > Cc: Viresh Kumar <viresh.kumar@linaro.org>
> >
> > This can go independently via PM tree and I can take 1/2 via SoC tree
> > (as the file is being moved). The problem will be fixed only after both
> > lands, but this alone won't break the build.
>
> Yes, but it will break cpufreq for sure as shared-cpus won't be set by anyone.
>

It's already broke on hotplug :) but yes works on boot at-least.

> > Or if you guys provide
> > Ack, I can take both together via ARM SoC team. Let me know.
>
> I was planning to take them through cpufreq tree, but that fine if you can do
> that.
>

Arnd moved and compressed few folders in arch/arm/mach-*, and vexpress
was merged into versatile. Not sure if it's planned for v5.5, so to be
cautious, I preferred to take it via ARM SoC.

> Acked-by: Viresh Kumar <viresh.kumar@linaro.org>

Thanks, I will take them together via ARM SoC

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
