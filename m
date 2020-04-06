Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45D7219F788
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 16:06:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=O/h1+Nl0kkV+dWAS8ShrZ6gTyHYzgn79c6Dd/iD9Hss=; b=KQKLOVhDHp52xB1CtVt+QZSrS
	1D0gkq2ShBize2DqO6dasbqd2ppI31tssvjE95K+6W3+2t8kxjKkVkmDHA/UP2zOWj6PDqXBOgGR6
	t3yWy6iZ1qZm0HvkJo1hPok/GukmVe9e15D1hpP61MP1XEcwb1TE6kHbeXhfxhlj+MHcM8PmwEXIT
	On/43YtkzFpPZZg2zzTtZLJGBNY3UV6ML20r5pov8nn5VawmgtQDaTXdQXB6R4RhTChua27Dllk/6
	R4wE9KP8FyrKRI97h2VM+uyLxuIfiRhiaoQ0MmxrJDRlh8c+uiZFVZRwtuT87ZT1P3311NucmwM8j
	Bo9MgmCQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLSO2-0000k2-Oy; Mon, 06 Apr 2020 14:06:02 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLSNu-0000jH-PF; Mon, 06 Apr 2020 14:05:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1F809106F;
 Mon,  6 Apr 2020 07:05:53 -0700 (PDT)
Received: from [10.37.12.4] (unknown [10.37.12.4])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EA1043F73D;
 Mon,  6 Apr 2020 07:05:42 -0700 (PDT)
Subject: Re: [PATCH v5 2/5] OPP: refactor dev_pm_opp_of_register_em() and
 update related drivers
To: Daniel Lezcano <daniel.lezcano@linaro.org>, linux-kernel@vger.kernel.org, 
 linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 dri-devel@lists.freedesktop.org, linux-omap@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-imx@nxp.com
References: <20200318114548.19916-1-lukasz.luba@arm.com>
 <20200318114548.19916-3-lukasz.luba@arm.com>
 <3ee5dc1a-fdfe-da17-9a62-a5182c1f4d3e@linaro.org>
From: Lukasz Luba <lukasz.luba@arm.com>
Message-ID: <00c839d1-2f03-2d3b-5746-95deae30bee3@arm.com>
Date: Mon, 6 Apr 2020 15:05:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <3ee5dc1a-fdfe-da17-9a62-a5182c1f4d3e@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_070554_865608_A266B20A 
X-CRM114-Status: GOOD (  15.28  )
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

Hi Daniel,

Thank you for your comments.

On 4/3/20 5:21 PM, Daniel Lezcano wrote:
> On 18/03/2020 12:45, Lukasz Luba wrote:
>> The Energy Model framework supports both: CPUs and devfreq devices. Drop
>> the CPU specific interface with cpumask and add struct device. Add also a
>> return value. This new interface provides easy way to create a simple
>> Energy Model, which then might be used in i.e. thermal subsystem.
> 
> This patch contains too many different changes.

OK, I will create 4 patches:
1) change with new argument in API function:
    void dev_pm_opp_of_register_em(dev, cpumask)
   and updated drivers
2) changes with _get_cpu_power --> _get_power
3) changes adding int return in dev_pm_opp_of_register_em()
    and updating error handling path inside
4) header changes with new dev_pm_opp_of_unregister_em()

> 
> There are fixes and traces added in addition to a function prototype change. >
> Please provide patches separated by logical changes.

I will try to make this API change in a safe way, which
won't break cpufreq drivers compilation.

> 
> If the cpumask is extracted in the underlying function
> em_register_perf_domain() as suggested in the previous patch 1/5,
> dev_pm_opp_of_register_em() can be struct device centric only.

That would be ideal situation but unfortunately not possible to
implement (as responded in 1/5).

Regards,
Lukasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
