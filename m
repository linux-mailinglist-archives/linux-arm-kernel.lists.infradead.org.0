Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0D1A142F7B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 17:21:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tTQjJ0TOsOZU195vHLcTmmhFC2RdADI9/hxehIoNCHw=; b=YjNHHRFpQKPCggKRkCT8Qa6zw
	4IycVb+8aaJ0L3s26vm+pZiFcmxp+bH4FrW3VXwFIVEpsN//etPDge7C3V2W9nMSnz77Ez1siVx5C
	Pl/6LFthvlpbursD60XN3A81HI12vrF2Na7dhESel+N+THMx9FTPCQgqKpRLt48QB1NttMAFxTw3Z
	3ECWs7o9/roHht3dqGIDingDI7WVlWuukbQHQjN7fbgJ5sxRBPW186pu9y+p07tqoBnVr9sxknrNM
	+tKUU107TPOAFXrPWfWxjl3x5c3XThidcH0qGKVRgeQC1jdYuS4MNWNawftWeOGwI9A+BQ2H6nfKc
	6hDbAXVGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itZni-0008Nn-4e; Mon, 20 Jan 2020 16:21:18 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itZnR-0008M2-S0; Mon, 20 Jan 2020 16:21:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4EDB731B;
 Mon, 20 Jan 2020 08:21:01 -0800 (PST)
Received: from [10.37.12.169] (unknown [10.37.12.169])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5C2703F6C4;
 Mon, 20 Jan 2020 08:20:51 -0800 (PST)
Subject: Re: [PATCH 1/4] PM / EM: and devices to Energy Model
To: Quentin Perret <qperret@google.com>,
 Dietmar Eggemann <dietmar.eggemann@arm.com>
References: <20200116152032.11301-1-lukasz.luba@arm.com>
 <20200116152032.11301-2-lukasz.luba@arm.com>
 <17b77e0c-9455-0479-d37b-c57717c784c7@arm.com>
 <20200120152804.GB164543@google.com>
From: Lukasz Luba <lukasz.luba@arm.com>
Message-ID: <453034e5-f7b9-20f7-4e26-5d0d7164edd1@arm.com>
Date: Mon, 20 Jan 2020 16:20:49 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200120152804.GB164543@google.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_082101_946080_7440FE31 
X-CRM114-Status: GOOD (  14.95  )
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
 rui.zhang@intel.com, mgorman@suse.de, daniel@ffwll.ch,
 linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 s.hauer@pengutronix.de, rostedt@goodmis.org,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 Chris.Redpath@arm.com, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, airlied@linux.ie, javi.merino@arm.com,
 tomeu.vizoso@collabora.com, sboyd@kernel.org, shawnguo@kernel.org,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org, b.zolnierkie@samsung.com,
 kernel@pengutronix.de, sudeep.holla@arm.com, patrick.bellasi@matbug.net,
 ionela.voinescu@arm.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 1/20/20 3:28 PM, Quentin Perret wrote:
> On Monday 20 Jan 2020 at 15:53:35 (+0100), Dietmar Eggemann wrote:
>> Would be really nice if this wouldn't be required. We should really aim
>> for 1 framework == 1 set of interfaces.
>>
>> What happens if someone calls em_get_pd() on a CPU EM?
>>
>> E.g:
>>
>>   static struct perf_domain *pd_init(int cpu)
>>   {
>> -       struct em_perf_domain *obj = em_cpu_get(cpu);
>> +       struct device *dev = get_cpu_device(cpu);
>> +       struct em_perf_domain *obj = em_pd_get(dev);
>>          struct perf_domain *pd;
>>
>> Two versions of one functionality will confuse API user from the
>> beginning ...
> 
> Agreed, this looks a bit confusing. It should be trivial to make
> em_dev_get() (or whatever we end up calling it) work for CPUs too,
> though. And we could always have a em_cpu_get(int cpu) API that is a
> basically a wrapper around em_dev_get() for convenience.

The problem not only here is that we have a CPU index 'int cpu'
and if we ask for device like:

struct device *dev = get_cpu_device(cpu);

It might be not the same device that was used during the
registration, when we had i.e. 4 CPUs for the same policy:

int cpu_id = cpumask_first(policy->cpus);
struct device *cpu_dev = get_cpu_device(cpu_id);
em_register_perf_domain(cpu_dev, nr_opp, &em_cb);

That's why the em_cpu_get() is different than em_get_pd(), mainly by:
if (cpumask_test_cpu(cpu, em_span_cpus(em_pd)))

It won't be simple wrapper, let me think how it could be handled
differently than it is now.

Regards,
Lukasz

> 
> Thanks,
> Quentin
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
