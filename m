Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4773B14316F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 19:27:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C9QebpR5ebgUAtvJQ62LKk+wwGp6x3qqIGH/3gG5GZ0=; b=Oc8bGlGPDfwVtb
	qs3Yr3sfmQvvDK32Pf7C5sCF4h3Dy8XARIPjjsZ6OM01kqmHuAskZqqg2GM5ACJpNbBeqX84l7O8W
	qKHZFuYNc16kasbh+WpR4jBSyugw89Gli2n0Oz82IObFNNAK86QAoU8GXqJL9Ib/rTwr18Rq9lAS7
	FkrV6VdTqih/PYukCdBav2P3SXiIdUWpRPJTN9Q8eF+Xkni0bZS/RnuI+fPRiu/6SfZ66cCjyEXff
	aEOeocnr7txJKUppC0EMWlD2CXmTPs9dagcr8uuSHsPrCkbSdOFC0GEy93AJp6kp5dvjTjtVZIQ1b
	ecedx5PBwQJRhhn/1GjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itbm7-0003TA-Q2; Mon, 20 Jan 2020 18:27:47 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itblw-0003SV-LO; Mon, 20 Jan 2020 18:27:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A249731B;
 Mon, 20 Jan 2020 10:27:34 -0800 (PST)
Received: from [192.168.0.7] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2843F3F68E;
 Mon, 20 Jan 2020 10:27:28 -0800 (PST)
Subject: Re: [PATCH 1/4] PM / EM: and devices to Energy Model
To: Quentin Perret <qperret@google.com>, Lukasz Luba <lukasz.luba@arm.com>
References: <20200116152032.11301-1-lukasz.luba@arm.com>
 <20200116152032.11301-2-lukasz.luba@arm.com>
 <20200117105437.GA211774@google.com>
 <40587d98-0e8d-cbac-dbf5-d26501d47a8c@arm.com>
 <20200120150918.GA164543@google.com>
From: Dietmar Eggemann <dietmar.eggemann@arm.com>
Message-ID: <8332c4ac-2a7d-1e2d-76e9-7c979a666257@arm.com>
Date: Mon, 20 Jan 2020 19:27:26 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200120150918.GA164543@google.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_102736_787294_0AAF2E00 
X-CRM114-Status: GOOD (  15.28  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
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
 viresh.kumar@linaro.org, dri-devel@lists.freedesktop.org,
 bjorn.andersson@linaro.org, bsegall@google.com,
 alyssa.rosenzweig@collabora.com, festevam@gmail.com, Morten.Rasmussen@arm.com,
 robh@kernel.org, amit.kucheria@verdurent.com, khilman@kernel.org,
 agross@kernel.org, daniel.lezcano@linaro.org, steven.price@arm.com,
 cw00.choi@samsung.com, mingo@redhat.com, linux-imx@nxp.com,
 rui.zhang@intel.com, kernel-team@android.com, mgorman@suse.de, daniel@ffwll.ch,
 linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 s.hauer@pengutronix.de, rostedt@goodmis.org,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 Chris.Redpath@arm.com, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, airlied@linux.ie, javi.merino@arm.com,
 tomeu.vizoso@collabora.com, sboyd@kernel.org, shawnguo@kernel.org,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org, b.zolnierkie@samsung.com,
 kernel@pengutronix.de, sudeep.holla@arm.com, ionela.voinescu@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 20/01/2020 16:09, Quentin Perret wrote:
> Hey Lukasz,
> 
> On Monday 20 Jan 2020 at 14:52:07 (+0000), Lukasz Luba wrote:
>> On 1/17/20 10:54 AM, Quentin Perret wrote:
>>> Suggested alternative: have two registration functions like so:
>>>
>>> 	int em_register_dev_pd(struct device *dev, unsigned int nr_states,
>>> 			       struct em_data_callback *cb);
>>> 	int em_register_cpu_pd(cpumask_t *span, unsigned int nr_states,
>>> 			       struct em_data_callback *cb);
>>
>> Interesting, in the internal review Dietmar asked me to remove these two
>> functions. I had the same idea, which would simplify a bit the
>> registration and it does not need to check the dev->bus if it is CPU.
>>
>> Unfortunately, we would need also two function in drivers/opp/of.c:
>> dev_pm_opp_of_register_cpu_em(policy->cpus);
>> and
>> dev_pm_opp_of_register_dev_em(dev);
>>
>> Thus, I have created only one registration function, which you can see
>> in this patch set.
> 
> Right, I can see how having a unified API would be appealing, but the
> OPP dependency is a nono, so we'll need to work around one way or
> another.
> 
> FWIW, I don't think having separate APIs for CPUs and other devices is
> that bad given that we already have entirely different frameworks to
> drive their respective frequencies. And the _cpu variants are basically
> just wrappers around the _dev ones, so not too bad either IMO :).

It's true that we need the policy->cpus cpumask only for cpu devices and
we have it available when we call em_register_perf_domain()
[scmi-cpufreq.c driver] or the OPP wrapper dev_pm_opp_of_register_em()
[e.g. cpufreq-dt.c driver].

And we shouldn't make EM code dependent on OPP.

But can't we add 'struct cpumask *mask' as an additional argument to
both which can be set to NULL for (devfreq) devices?

We can check in em_register_perf_domain() that we got a valid cpumask
for a cpu device and ignore it for (devfreq) devices.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
