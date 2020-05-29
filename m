Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 852591E8446
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 19:06:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UWd5G2TGHWhbt81AZbV8CVDsp7hFZGPhFnapKroa8qY=; b=TOHI2NjYvUC+GicYL4w7aqq8h
	WPcV1Oj0DWIo5eHx34EfFhwHr9nudJ9FxQBMAW9QeIFOVakEJMo4gTBmlbmRsVxD4uy3NyUvnAbAZ
	l6xnU/ttZq72uHXKZix2JiG88sCswHqmMwAWAsGir7fShSZXM2ELlVlVgMDUlaMvyA9XjvQ4WHdLA
	2I1usR9tRjhNliEhRYjyeqo2GKF8DgSXvHYYWWGilo5QW1KnKe5s+fYqd1AUmMvJsuGoNhYbMxhfT
	OH9r1pbx/ymNYoJpaGWhExkcy0Jm0CqXuqu/4QQko1aWXkCM1gFHSTUdeRuyssFZVo4NhkF35KGsw
	70HdvpNAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeiSa-0001Q6-VV; Fri, 29 May 2020 17:06:21 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeiSR-0001PM-G5; Fri, 29 May 2020 17:06:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6E3A61045;
 Fri, 29 May 2020 10:06:10 -0700 (PDT)
Received: from [10.37.12.52] (unknown [10.37.12.52])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2CC243F52E;
 Fri, 29 May 2020 10:05:59 -0700 (PDT)
Subject: Re: [PATCH v8 0/8] Add support for devices in the Energy Model
To: "Rafael J. Wysocki" <rafael@kernel.org>
References: <20200527095854.21714-1-lukasz.luba@arm.com>
 <8fca24a1-93f7-f859-bd1f-b7bf484737f4@arm.com>
 <CAJZ5v0g5whSUMkd4majCGj0j9TMeO+fCfhxB6FNWoaLpPsi6UA@mail.gmail.com>
From: Lukasz Luba <lukasz.luba@arm.com>
Message-ID: <5237e339-62f5-2e1c-50e2-6f391e863032@arm.com>
Date: Fri, 29 May 2020 18:05:57 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAJZ5v0g5whSUMkd4majCGj0j9TMeO+fCfhxB6FNWoaLpPsi6UA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_100611_630357_89CDFB2B 
X-CRM114-Status: GOOD (  20.40  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Nishanth Menon <nm@ti.com>, Juri Lelli <juri.lelli@redhat.com>,
 Peter Zijlstra <peterz@infradead.org>, Viresh Kumar <viresh.kumar@linaro.org>,
 Liviu Dudau <liviu.dudau@arm.com>, dri-devel <dri-devel@lists.freedesktop.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Benjamin Segall <bsegall@google.com>, alyssa.rosenzweig@collabora.com,
 Fabio Estevam <festevam@gmail.com>, Matthias Kaehlcke <mka@chromium.org>,
 Rob Herring <robh@kernel.org>, Amit Kucheria <amit.kucheria@verdurent.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Kevin Hilman <khilman@kernel.org>, Andy Gross <agross@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, steven.price@arm.com,
 Chanwoo Choi <cw00.choi@samsung.com>, Ingo Molnar <mingo@redhat.com>,
 dl-linux-imx <linux-imx@nxp.com>, "Zhang, Rui" <rui.zhang@intel.com>,
 Mel Gorman <mgorman@suse.de>, orjan.eide@arm.com,
 Daniel Vetter <daniel@ffwll.ch>, Linux PM <linux-pm@vger.kernel.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Steven Rostedt <rostedt@goodmis.org>,
 "moderated list:ARM/Mediatek SoC..." <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Linux OMAP Mailing List <linux-omap@vger.kernel.org>,
 Dietmar Eggemann <Dietmar.Eggemann@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 David Airlie <airlied@linux.ie>, Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Quentin Perret <qperret@google.com>, Stephen Boyd <sboyd@kernel.org>,
 Randy Dunlap <rdunlap@infradead.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Sascha Hauer <kernel@pengutronix.de>, Sudeep Holla <sudeep.holla@arm.com>,
 patrick.bellasi@matbug.net, Shawn Guo <shawnguo@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 5/29/20 5:18 PM, Rafael J. Wysocki wrote:
> On Fri, May 29, 2020 at 5:01 PM Lukasz Luba <lukasz.luba@arm.com> wrote:
>>
>> Hi Rafael,
>>
>>
>> On 5/27/20 10:58 AM, Lukasz Luba wrote:
>>> Hi all,
>>>
>>> Background of this version:
>>> This is the v8 of the patch set and is has smaller scope. I had to split
>>> the series into two: EM changes and thermal changes due to devfreq
>>> dependencies. The patches from v7 9-14 which change devfreq cooling are
>>> going to be sent in separate patch series, just after this set get merged
>>> into mainline. These patches related to EM got acks and hopefully can go
>>> through linux-pm tree. The later thermal patches will go through thermal
>>> tree.
>>>
>>> The idea and purpose of the Energy Model framework changes:
>>> This patch set introduces support for devices in the Energy Model (EM)
>>> framework. It will unify the power model for thermal subsystem. It will
>>> make simpler to add support for new devices willing to use more
>>> advanced features (like Intelligent Power Allocation). Now it should
>>> require less knowledge and effort for driver developer to add e.g.
>>> GPU driver with simple energy model. A more sophisticated energy model
>>> in the thermal framework is also possible, driver needs to provide
>>> a dedicated callback function. More information can be found in the
>>> updated documentation file.
>>>
>>> First 7 patches are refactoring Energy Model framework to add support
>>> of other devices that CPUs. They change:
>>> - naming convention from 'capacity' to 'performance' state,
>>> - API arguments adding device pointer and not rely only on cpumask,
>>> - change naming when 'cpu' was used, now it's a 'device'
>>> - internal structure to maintain registered devices
>>> - update users to the new API
>>> Patch 8 updates OPP framework helper function to be more generic, not
>>> CPU specific.
>>>
>>> The patch set is based on linux-pm branch linux-next 813946019dfd.
>>>
>>
>> Could you take the patch set via your linux-pm?
> 
> I can do that, but I didn't realize that it was targeted at me, so I
> need some more time to review the patches.
> 
> Thanks!
> 

No worries. Thank you for your time!

Regards,
Lukasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
