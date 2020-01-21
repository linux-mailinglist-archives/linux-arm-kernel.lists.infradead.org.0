Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA202143B66
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 11:49:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KbT2AQDn+jZt7lr7pcWg80n5JKdoEVJDWXlrJ+eEeyM=; b=Q4qa0JZOhsiM2PLUPUkmg2xae
	QccChyrYAEBTOpIuW9Bz2CaIBZeu1al52rL7Q4lVoBBvGGnhWC/tPxKXx3x3wW00PBJqS6dFEVONJ
	2eiWMNSIVjRrR51DZkk+HgqzuceZMBkNgWM4fMhBD6HYgYebpLMkvdASjO4XpD0lYWVVPGNftwE7n
	LguS1OXnlUL7UJpUc9TF1NAqC6us7SFGcZJ4HBACNm7yAPpRg5HDAFKyS86/2m7aiQsXJO7lTWIRD
	2PXOu3P1rwUnHHYKIISHz868apeO+zaAhVAUfE2x9B93+5aRObyfiR9Y/T8kS2bOkACUWThtpk9nK
	0WV4vGqWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itr6O-0006oX-OU; Tue, 21 Jan 2020 10:49:44 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itr6C-0006o9-Ln; Tue, 21 Jan 2020 10:49:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 553431FB;
 Tue, 21 Jan 2020 02:49:31 -0800 (PST)
Received: from [10.37.12.169] (unknown [10.37.12.169])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 61FC23F6C4;
 Tue, 21 Jan 2020 02:49:21 -0800 (PST)
Subject: Re: [PATCH 1/4] PM / EM: and devices to Energy Model
To: Quentin Perret <qperret@google.com>
References: <20200116152032.11301-1-lukasz.luba@arm.com>
 <20200116152032.11301-2-lukasz.luba@arm.com>
 <17b77e0c-9455-0479-d37b-c57717c784c7@arm.com>
 <20200120152804.GB164543@google.com>
 <453034e5-f7b9-20f7-4e26-5d0d7164edd1@arm.com>
 <20200121100854.GB157387@google.com>
From: Lukasz Luba <lukasz.luba@arm.com>
Message-ID: <5621c137-7057-1d5c-646a-95707105df25@arm.com>
Date: Tue, 21 Jan 2020 10:49:19 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200121100854.GB157387@google.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_024932_798008_9BEB2FF4 
X-CRM114-Status: GOOD (  17.14  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: nm@ti.com, juri.lelli@redhat.com, daniel.lezcano@linaro.org,
 peterz@infradead.org, viresh.kumar@linaro.org, dri-devel@lists.freedesktop.org,
 bjorn.andersson@linaro.org, bsegall@google.com,
 alyssa.rosenzweig@collabora.com, festevam@gmail.com, Morten.Rasmussen@arm.com,
 robh@kernel.org, amit.kucheria@verdurent.com, khilman@kernel.org,
 agross@kernel.org, b.zolnierkie@samsung.com, steven.price@arm.com,
 cw00.choi@samsung.com, mingo@redhat.com, linux-imx@nxp.com,
 rui.zhang@intel.com, mgorman@suse.de, daniel@ffwll.ch,
 linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 s.hauer@pengutronix.de, rostedt@goodmis.org,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 Chris.Redpath@arm.com, linux-omap@vger.kernel.org,
 Dietmar Eggemann <dietmar.eggemann@arm.com>,
 linux-arm-kernel@lists.infradead.org, airlied@linux.ie, javi.merino@arm.com,
 tomeu.vizoso@collabora.com, sboyd@kernel.org, shawnguo@kernel.org,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org, kernel@pengutronix.de,
 sudeep.holla@arm.com, patrick.bellasi@matbug.net, ionela.voinescu@arm.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 1/21/20 10:08 AM, Quentin Perret wrote:
> On Monday 20 Jan 2020 at 16:20:49 (+0000), Lukasz Luba wrote:
>> On 1/20/20 3:28 PM, Quentin Perret wrote:
>>> Agreed, this looks a bit confusing. It should be trivial to make
>>> em_dev_get() (or whatever we end up calling it) work for CPUs too,
>>> though. And we could always have a em_cpu_get(int cpu) API that is a
>>> basically a wrapper around em_dev_get() for convenience.
>>
>> The problem not only here is that we have a CPU index 'int cpu'
>> and if we ask for device like:
>>
>> struct device *dev = get_cpu_device(cpu);
>>
>> It might be not the same device that was used during the
>> registration, when we had i.e. 4 CPUs for the same policy:
>>
>> int cpu_id = cpumask_first(policy->cpus);
>> struct device *cpu_dev = get_cpu_device(cpu_id);
>> em_register_perf_domain(cpu_dev, nr_opp, &em_cb);
>>
>> That's why the em_cpu_get() is different than em_get_pd(), mainly by:
>> if (cpumask_test_cpu(cpu, em_span_cpus(em_pd)))
>>
>> It won't be simple wrapper, let me think how it could be handled
>> differently than it is now.
> 
> Right so I suppose the easiest solution would be to do the opposite of
> my first suggestion. That is, make em_get_pd() call em_cpu_get() if the
> device is a CPU device, or proceed to the PD list iteration for other
> devices. And em_cpu_get() can remain as you originally suggested (that
> is, iterate over the PDs and test the mask).

Exactly, something like:
---------------------------->8-------------------------
288 struct em_perf_domain *em_get_pd(struct device *dev)
289 {
290         struct em_device *em_dev;
291
292         if (IS_ERR_OR_NULL(dev))
293                 return NULL;
294
295         if (_is_cpu_device(dev))
296                 return em_cpu_get(dev->id);
....
------------------------8<-----------------------------

> 
> That should ensure em_get_pd() always works, em_cpu_get() is still there
> handy for the scheduler and such, and the two EM lookup functions (for
> CPUs or for devices) are kept cleanly separated.
> 
> Thoughts ?

Agree. Then we can have these two functions and em_get_pd() will also
work fine.

> 
> Thanks,
> Quentin
> 

Regards,
Lukasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
