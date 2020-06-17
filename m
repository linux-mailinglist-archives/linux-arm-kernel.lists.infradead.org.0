Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 432571FC9A8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 11:18:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LwgR2WCYOv5JoZ2730FcmK6zElzrcTZBEkNjHSDA8rE=; b=Vx5lojWPzU62sG6Ud+lgXPSeC
	tW4oDYlcHuP7Unv3blyY4jIZieldUQUKSatRkNM5IFSd15y6DiWI2/Bwf+2KfGXgpMnqqvvJDnMbB
	fY+qTnheR4HlYn9Fvt0rNqDNLOnp+pYc3pCpIpxgc/Zu8nV+8pog84NO9WkVJWs+wOwL8NKSABeys
	3hgcN2g01Au8TFz3vWp2Zh5dRQ437Er8w2pvpDJl5X7H/1RMB19QLwxFU0miRwctG7bHJdCN7aidg
	is+OQ64157ate5RwtRDHxwGc2Wg1H6GYANBsSIaRT+e/mwuYSW3Xevx3kKYH5Of0iWber8TvnbdTD
	s7hnq1EcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlUCl-0005FU-8h; Wed, 17 Jun 2020 09:17:59 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlUCS-0005Aa-5S; Wed, 17 Jun 2020 09:17:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C70BF31B;
 Wed, 17 Jun 2020 02:17:37 -0700 (PDT)
Received: from [10.37.12.67] (unknown [10.37.12.67])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CFD4A3F6CF;
 Wed, 17 Jun 2020 02:17:27 -0700 (PDT)
Subject: Re: [PATCH v8 0/8] Add support for devices in the Energy Model
To: "Rafael J. Wysocki" <rafael@kernel.org>
References: <20200527095854.21714-1-lukasz.luba@arm.com>
 <8fca24a1-93f7-f859-bd1f-b7bf484737f4@arm.com>
 <CAJZ5v0g5whSUMkd4majCGj0j9TMeO+fCfhxB6FNWoaLpPsi6UA@mail.gmail.com>
From: Lukasz Luba <lukasz.luba@arm.com>
Message-ID: <b5811d8d-b658-40b9-acaf-6afe3cf167b7@arm.com>
Date: Wed, 17 Jun 2020 10:17:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAJZ5v0g5whSUMkd4majCGj0j9TMeO+fCfhxB6FNWoaLpPsi6UA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_021740_317608_D93283DD 
X-CRM114-Status: GOOD (  19.89  )
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

Hi Rafael,

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

Gentle ping.
I've resend the patch 4/8 [1] which addresses your comments and
a comment regarding static analyzes conducted by Dan [2].

Do you need more time for this patch set? Maybe you would like
me to help you with rebasing this series? Then please point me
to the desired branch, I am happy to do this.

Regards,
Lukasz

[1] https://lore.kernel.org/lkml/20200610101223.7152-1-lukasz.luba@arm.com/
[2] 
https://lore.kernel.org/lkml/da0debe1-73da-33f1-c24e-154c2123c522@arm.com/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
