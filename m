Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DF161B6173
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 18:59:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qRfIbFhkUiOhfqb+W2oJkxlDuYqJHsMD8Rvzzq1ND6I=; b=d3jSX5vYcgTgJbTWoug9kaCMK
	omuac2Rmj7O1LCKDLxZN3mVKlyjdXor9FBWrFDfkz1iQ13N574FeymwWplD5htehzPz6rK72vh4lx
	6AS26vTrUeB9qRDbHA/jDT/Qin1vSIHiy2XzV3R4Zw8O2b4Sj6+ShcxZkRhkDY9spTeoosPO6eaNA
	rXghXHJN4Dv/4q9ltK/EoKvHn4RRR3ptyWRjgYV1bEgXIkehYHHA51ZmmkIpe3P4SBGd89DlU9QIZ
	tp7qx09aWbSYVO6kW3notdbXs21IJmiGr9rmeCw68NJTc19OUs+hD5ZX+UuH8rkvtwuDtBKKSY2YR
	G3GCKrPHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRfBZ-00066Z-AZ; Thu, 23 Apr 2020 16:58:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRfB9-00063b-Su; Thu, 23 Apr 2020 16:58:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 85EE330E;
 Thu, 23 Apr 2020 09:58:22 -0700 (PDT)
Received: from [10.37.12.89] (unknown [10.37.12.89])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8B9B73F68F;
 Thu, 23 Apr 2020 09:57:48 -0700 (PDT)
Subject: Re: [PATCH v6 04/10] PM / EM: add support for other devices than CPUs
 in Energy Model
To: Daniel Lezcano <daniel.lezcano@linaro.org>
References: <20200410084210.24932-1-lukasz.luba@arm.com>
 <20200410084210.24932-5-lukasz.luba@arm.com>
 <20200423151250.GB65632@linaro.org>
From: Lukasz Luba <lukasz.luba@arm.com>
Message-ID: <ff1c8cc5-f64d-6156-7d30-97b8426c6f99@arm.com>
Date: Thu, 23 Apr 2020 17:57:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200423151250.GB65632@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_095823_996280_1582ACBD 
X-CRM114-Status: GOOD (  17.58  )
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
 viresh.kumar@linaro.org, liviu.dudau@arm.com, dri-devel@lists.freedesktop.org,
 bjorn.andersson@linaro.org, bsegall@google.com,
 alyssa.rosenzweig@collabora.com, festevam@gmail.com, mka@chromium.org,
 robh@kernel.org, amit.kucheria@verdurent.com, lorenzo.pieralisi@arm.com,
 khilman@kernel.org, agross@kernel.org, b.zolnierkie@samsung.com,
 steven.price@arm.com, cw00.choi@samsung.com, mingo@redhat.com,
 linux-imx@nxp.com, rui.zhang@intel.com, mgorman@suse.de, orjan.eide@arm.com,
 daniel@ffwll.ch, linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 s.hauer@pengutronix.de, rostedt@goodmis.org,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 linux-omap@vger.kernel.org, Dietmar.Eggemann@arm.com,
 linux-arm-kernel@lists.infradead.org, airlied@linux.ie,
 tomeu.vizoso@collabora.com, qperret@google.com, sboyd@kernel.org,
 rdunlap@infradead.org, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 kernel@pengutronix.de, sudeep.holla@arm.com, patrick.bellasi@matbug.net,
 shawnguo@kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 4/23/20 4:12 PM, Daniel Lezcano wrote:
> On Fri, Apr 10, 2020 at 09:42:04AM +0100, Lukasz Luba wrote:
>> Add support for other devices that CPUs. The registration function
>> does not require a valid cpumask pointer and is ready to handle new
>> devices. Some of the internal structures has been reorganized in order to
>> keep consistent view (like removing per_cpu pd pointers). To track usage
>> of the Energy Model structures, they are protected with kref.
> 
> Why not add the energy model structure in the struct device directly?

Do you mean this structure?
https://elixir.bootlin.com/linux/latest/source/include/linux/device.h#L537

and to put something like:
struct device {
...
	struct dev_pm_domain	*pm_domain;
#ifdef CONFIG_ENERGY_MODEL
	struct em_perf_domain	*em_pd;
#endif
...
};

> 
> For instance for the em_cpu_get() function, the cpu id allows to retrieve the
> cpu device and then from there, the energy model instead of browsing another
> list. The em_device life cycle will be tied to the struct device.

That would be perfect.

> 
> Then when the struct device and the em_device are connected, add the debugfs
> with a struct device list for those which are energy aware, so you end up with
> a structure:
> 
> struct em_device {
> 	struct device *dev;
> 	struct list_head em_dev_list;
> };
> 
> (a global single dentry for debugfs to do a recursive delete is enough).
> 
> Locks when inspecting and add/removal called from the struct device release
> function. So no need of an extra refcounting.
> 
> Does it make sense?
> 

Indeed it looks much cleaner/simpler.

I will try to address this idea and get rid of refcounting.

This should be doable in this patch (4/10). In the v7 I will keep your
ACKs for other patches that you have already commented.

Thank you for your suggestions and review.

Regards,
Lukasz


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
