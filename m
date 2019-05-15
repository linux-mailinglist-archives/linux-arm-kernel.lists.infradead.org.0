Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE19C1ECD3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 13:02:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bgc4yhFw+Z6U9Y7gNz/jGH+VbYzzhMIPrRcWNJEeqck=; b=mTGgH4PfjYhnhd
	/NJ9DkcNU4KRWpAyIegGWvPcShgZODIokWQdzQaKpqbT2qDVxEGevxygvmeXpDoi8r5JhHcyV1hje
	VLu/vEjAyBXzbzjnRC3s7lfsTTw0MBAIHhewaSIo3aHuVlmfY++C2zum74EOz9BHTBUYTOkC6OKa0
	SvpH/hJlgZUzbErVKkVGYtzHrnekVSScFcT4tONQmO13v/snXjzBfm2Iw+YGg5VxRb+Gh1vMhOrAK
	Bh0RcIxBr5THTSZSmrM3t0asFe0VEARrDkrWTxq8ttRqIu+xa6Rb73GBPjaO+TwkLCEy8GUKOK5P0
	Zi7gmdjoDubHWYWK/RfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQrfm-0001ak-5E; Wed, 15 May 2019 11:02:10 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQrff-0001a1-6r
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 11:02:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DF55080D;
 Wed, 15 May 2019 04:02:02 -0700 (PDT)
Received: from queper01-lin (queper01-lin.cambridge.arm.com [10.1.195.48])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 60A463F703;
 Wed, 15 May 2019 04:02:00 -0700 (PDT)
Date: Wed, 15 May 2019 12:01:58 +0100
From: Quentin Perret <quentin.perret@arm.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: Re: [PATCH v4 2/3] PM / EM: Expose perf domain struct
Message-ID: <20190515110156.ru2wxqvwffqgq3t3@queper01-lin>
References: <20190515082318.7993-3-quentin.perret@arm.com>
 <0ced18eb-e424-fe6b-b11e-165a3c108170@linaro.org>
 <20190515091658.sbpg6qiovhtblqyr@queper01-lin>
 <698400c0-e0a4-4a86-b9df-cdb9bd683c0f@linaro.org>
 <20190515100748.q3t4kt72h2akdpcs@queper01-lin>
 <cf1474cb-7e31-7070-b988-a0c4d3f6f081@linaro.org>
 <20190515102200.s6uq63qnwea6xtpl@vireshk-i7>
 <20190515104043.vogspxgkapp6qsny@queper01-lin>
 <20190515104651.tv5odug7ce4zlupc@queper01-lin>
 <5b55e432-f8b0-91ae-a7de-fe02e0cad322@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5b55e432-f8b0-91ae-a7de-fe02e0cad322@linaro.org>
User-Agent: NeoMutt/20171215
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_040203_265932_FECBA25C 
X-CRM114-Status: GOOD (  16.79  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-pm@vger.kernel.org, Viresh Kumar <viresh.kumar@linaro.org>,
 amit.kachhap@gmail.com, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 will.deacon@arm.com, edubezval@gmail.com, mka@chromium.org,
 catalin.marinas@arm.com, rui.zhang@intel.com, javi.merino@kernel.org,
 ionela.voinescu@arm.com, dietmar.eggemann@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wednesday 15 May 2019 at 12:51:57 (+0200), Daniel Lezcano wrote:
> On 15/05/2019 12:46, Quentin Perret wrote:
> > On Wednesday 15 May 2019 at 11:40:44 (+0100), Quentin Perret wrote:
> 
> [ ... ]
> 
> >> +#ifdef CONFIG_THERMAL_GOV_POWER_ALLOCATOR
> >>         if (capacitance) {
> >>                 ret = update_freq_table(cpufreq_cdev, capacitance);
> >>                 if (ret) {
> >>                         cdev = ERR_PTR(ret);
> >>                         goto remove_ida;
> >>                 }
> >> -
> >> -               cooling_ops = &cpufreq_power_cooling_ops;
> >> -       } else {
> >> -               cooling_ops = &cpufreq_cooling_ops;
> >>         }
> >> +#endif
> >> +       cooling_ops = &cpufreq_cooling_ops;
> > 
> > Argh, that is actually broken with !capacitance and
> > THERMAL_GOV_POWER_ALLOCATOR=y ... Perhaps it's best to keep the two
> > thermal_cooling_device_ops struct separated in the end.
> 
> Or alternatively you can keep one structure but instead of filling the
> state2power,power2state and getrequestedpower fields in the declaration,
> you fill them in the if (capacitance) block, no?

Something like the below ? Yes, that works too. I'll write a proper
patch and send that next week or so.

Thanks,
Quentin

--->8---

 /* Bind cpufreq callbacks to thermal cooling device ops */

 static struct thermal_cooling_device_ops cpufreq_cooling_ops = {
-       .get_max_state = cpufreq_get_max_state,
-       .get_cur_state = cpufreq_get_cur_state,
-       .set_cur_state = cpufreq_set_cur_state,
-};
-
-static struct thermal_cooling_device_ops cpufreq_power_cooling_ops = {
        .get_max_state          = cpufreq_get_max_state,
        .get_cur_state          = cpufreq_get_cur_state,
        .set_cur_state          = cpufreq_set_cur_state,
-       .get_requested_power    = cpufreq_get_requested_power,
-       .state2power            = cpufreq_state2power,
-       .power2state            = cpufreq_power2state,
 };

 /* Notifier for cpufreq policy change */
@@ -674,18 +667,19 @@ __cpufreq_cooling_register(struct device_node *np,
                        pr_debug("%s: freq:%u KHz\n", __func__, freq);
        }

+       cooling_ops = &cpufreq_cooling_ops;
+#ifdef CONFIG_THERMAL_GOV_POWER_ALLOCATOR
        if (capacitance) {
                ret = update_freq_table(cpufreq_cdev, capacitance);
                if (ret) {
                        cdev = ERR_PTR(ret);
                        goto remove_ida;
                }
-
-               cooling_ops = &cpufreq_power_cooling_ops;
-       } else {
-               cooling_ops = &cpufreq_cooling_ops;
+               cooling_ops->get_requested_power = cpufreq_get_requested_power;
+               cooling_ops->state2power = cpufreq_state2power;
+               cooling_ops->power2state = cpufreq_power2state;
        }
-
+#endif
        cdev = thermal_of_cooling_device_register(np, dev_name, cpufreq_cdev,
                                                  cooling_ops);
        if (IS_ERR(cdev))

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
