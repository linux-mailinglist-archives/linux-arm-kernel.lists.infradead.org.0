Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC10319F707
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 15:35:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dmRiI3PLAfxqzOr3YzHl8KaAz9uyFRXmer0g8IcnC8I=; b=AUbKTT+S6pPAc1rhazC6gPd2P
	7/vtrcTPP1oBGj0Ikwy5Nw335YYr5aaOmyXO1ixl1EPJMjqskso1wX2LRuc3fV8vzE5nlpQFvbtSB
	b8vbGBI8NkIxhA21Rk8HLCoJc7PA0kntvjHHqBTzUfqv00wxJc4vNoR055vWvYyljuB22mDSkRxbK
	WimWUT0Qaao0Q6zVxLAYfRw9MG9FqH1LBjjeuVmdKbAsyqtWQJ0j0dgNqzzAu8l6Y3nxBjAHVeFHo
	MTLH0T+f3N2Bpg73Jc+8aHXKSJKvRglzbUsGixKrdROTgOe0MNkg/RUk2YoIBCUIKKludp/4yDWui
	0X/LbE79w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLRuQ-0005vL-Fo; Mon, 06 Apr 2020 13:35:26 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLRuI-0005ui-Qc; Mon, 06 Apr 2020 13:35:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BEA2F7FA;
 Mon,  6 Apr 2020 06:35:17 -0700 (PDT)
Received: from [10.37.12.4] (unknown [10.37.12.4])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8230E3F52E;
 Mon,  6 Apr 2020 06:35:07 -0700 (PDT)
Subject: Re: [PATCH v5 4/5] thermal: devfreq_cooling: Refactor code and switch
 to use Energy Model
To: Daniel Lezcano <daniel.lezcano@linaro.org>, linux-kernel@vger.kernel.org, 
 linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 dri-devel@lists.freedesktop.org, linux-omap@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-imx@nxp.com
References: <20200318114548.19916-1-lukasz.luba@arm.com>
 <20200318114548.19916-5-lukasz.luba@arm.com>
 <f3e9f127-47b1-9f30-2148-3c95a5933a92@linaro.org>
From: Lukasz Luba <lukasz.luba@arm.com>
Message-ID: <4bf6cc66-8df4-3224-418d-0549026a3672@arm.com>
Date: Mon, 6 Apr 2020 14:35:05 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <f3e9f127-47b1-9f30-2148-3c95a5933a92@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_063519_204498_C7B2173C 
X-CRM114-Status: GOOD (  18.14  )
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
Cc: nm@ti.com, juri.lelli@redhat.com, peterz@infradead.org,
 viresh.kumar@linaro.org, liviu.dudau@arm.com, bjorn.andersson@linaro.org,
 bsegall@google.com, festevam@gmail.com, Morten.Rasmussen@arm.com,
 robh@kernel.org, amit.kucheria@verdurent.com, lorenzo.pieralisi@arm.com,
 khilman@kernel.org, steven.price@arm.com, cw00.choi@samsung.com,
 mingo@redhat.com, mgorman@suse.de, rui.zhang@intel.com,
 alyssa.rosenzweig@collabora.com, orjan.eide@arm.com, daniel@ffwll.ch,
 b.zolnierkie@samsung.com, s.hauer@pengutronix.de, rostedt@goodmis.org,
 matthias.bgg@gmail.com, Dietmar.Eggemann@arm.com, airlied@linux.ie,
 javi.merino@arm.com, tomeu.vizoso@collabora.com, qperret@google.com,
 sboyd@kernel.org, mka@chromium.org, rdunlap@infradead.org, rjw@rjwysocki.net,
 agross@kernel.org, kernel@pengutronix.de, sudeep.holla@arm.com,
 patrick.bellasi@matbug.net, shawnguo@kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 4/3/20 6:44 PM, Daniel Lezcano wrote:
> On 18/03/2020 12:45, Lukasz Luba wrote:
>> The overhauled Energy Model (EM) framework support also devfreq devices.
>> The unified API interface of the EM can be used in the thermal subsystem to
>> not duplicate code. The power table now is taken from EM structure and
>> there is no need to maintain calculation for it locally. In case when the
>> EM is not provided by the device a simple interface for cooling device is
>> used.
>>
>> There is also an improvement in code related to enabling/disabling OPPs,
>> which prevents from race condition with devfreq governors.
>>
>> [lkp: Reported the build warning]
>> Reported-by: kbuild test robot <lkp@intel.com>
>> Reviewed-by: Steven Rostedt (VMware) <rostedt@goodmis.org> # for tracing code
>> Signed-off-by: Lukasz Luba <lukasz.luba@arm.com>
> 
> The changes are too big, please split this patch into smaller chunks.

OK, I will split it and re-base on top of thermal testing.

> 
>> ---
>>   drivers/thermal/devfreq_cooling.c | 474 ++++++++++++++++--------------
>>   include/linux/devfreq_cooling.h   |  39 +--
>>   include/trace/events/thermal.h    |  19 +-
>>   3 files changed, 277 insertions(+), 255 deletions(-)
>>
>> diff --git a/drivers/thermal/devfreq_cooling.c b/drivers/thermal/devfreq_cooling.c
> 
> [ ... ]
> 
>>   struct devfreq_cooling_device {
>>   	int id;
>>   	struct thermal_cooling_device *cdev;
>>   	struct devfreq *devfreq;
>>   	unsigned long cooling_state;
>> -	u32 *power_table;
>>   	u32 *freq_table;
>> -	size_t freq_table_size;
>> +	size_t max_level;
> 
> Could you rename it to 'max_state' ?

Yes.

Thank you for your comments.

Regards,
Lukasz


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
