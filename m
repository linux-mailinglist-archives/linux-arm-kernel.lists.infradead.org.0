Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CF931ED394
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 17:41:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EqVFC28Lcfo4lVcKPFV76Z30BsjLRpW4hPgx6UPeCVo=; b=AaoSVbwrHVQDnQ
	OGuEaMPR1YK/OL5lSsJkAZYpTMLL11v58eEetK+jXgP+BHZnChlAkF5Z09BoZtJMlZks0W6Hv0O7N
	0HA7BKUbVwfqFWT7rE/V5Ajuxcuqj5JABvtTcnEDUbSjrmr2HzNfeXB3ZG1xF43BHLsQjljWDuiwk
	1sAYwT4gNYvaMn/0+f/o40ggPiFejfd6SFwdA133cezx44KrANqJfS938xpiowpGAyOUQTWf5oVr5
	81As17uL8V80nUO6jbTeXDHPW4eOKPZzzcRRJePmhsJdznXI81voeUNDMaE+uNgiF9RWCDi0FEtuA
	Fqr6OTcgSEwJV37uP5Ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgVVc-0005J1-Uf; Wed, 03 Jun 2020 15:40:53 +0000
Received: from mail-oo1-f65.google.com ([209.85.161.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgVVW-0005Hw-D5; Wed, 03 Jun 2020 15:40:47 +0000
Received: by mail-oo1-f65.google.com with SMTP id n31so578184ooi.10;
 Wed, 03 Jun 2020 08:40:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gQWqAW70WULSPXL6R66gNUoUKlMeSi2n85p0Z0+6rh4=;
 b=fWXC+eWsxYRVwPhyw7+6gq3GWp/TuLse4zr0ePMpDfWFQT6csm0aV7aGmxaerlx+be
 zQvonYe7ZL6h0h09poabZ8geZze6TjxGyTcCCE4rJualHC1NHa0iFgxn2Nn7VcxmXH6Y
 +nR51FCV01mrHBjapEDTBbRtiLHJRDzEOTyAryINf5MP8S/rbG1tKEC164S7XY7mAkYL
 xzXcfvVWGpEXAoYlRCNO+FBc/A6DCWx2JYn6aJgnUMfBD8uD0xYORmQzJrMiEsNm7yyv
 TQus9ILP13m6AyyVm8znSpcRRbhhEk73DWvtbqiayneLDlLbsPC+E2CCAjEictSYHzVb
 rkMA==
X-Gm-Message-State: AOAM533JCzWxU8ivvC2u80RKEChTC2OQZ397V//xi6XyeGS1RGulDfvW
 xiTCBGUvi6qc8bD+B0djQu6+RnhpDuRyQzC+ir4=
X-Google-Smtp-Source: ABdhPJxyQL4/7lX5ojBduz1BjFkx1R8W9MgBo7UgkJxChgUo4OLloGbRpisaO4V6H9uhAzq0Sndl8BNlEoRE2cgPH1c=
X-Received: by 2002:a4a:96f1:: with SMTP id t46mr386851ooi.75.1591198845421;
 Wed, 03 Jun 2020 08:40:45 -0700 (PDT)
MIME-Version: 1.0
References: <20200527095854.21714-1-lukasz.luba@arm.com>
 <20200527095854.21714-5-lukasz.luba@arm.com>
 <d45e5592-8e11-858b-d3a3-2ec9ce1d1f54@linaro.org>
 <7201e161-6952-6e28-4036-bd0f0353ec30@arm.com>
 <CAJZ5v0jwoNSYOz3nGqNshd=5btsLxOp-di-Dot+cHqAQZEQVRw@mail.gmail.com>
 <d6a0d345-53ef-523c-836d-3bc4ea4c6e66@arm.com>
In-Reply-To: <d6a0d345-53ef-523c-836d-3bc4ea4c6e66@arm.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Wed, 3 Jun 2020 17:40:34 +0200
Message-ID: <CAJZ5v0iDNH7tZmKsYgW1xp-g3WmOod+Wo-AzJmszXuv_wztwwA@mail.gmail.com>
Subject: Re: [PATCH v8 4/8] PM / EM: add support for other devices than CPUs
 in Energy Model
To: Lukasz Luba <lukasz.luba@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_084046_444114_74F6ED58 
X-CRM114-Status: GOOD (  26.58  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.161.65 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.161.65 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rjwysocki[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 "Rafael J. Wysocki" <rafael@kernel.org>, Peter Zijlstra <peterz@infradead.org>,
 Viresh Kumar <viresh.kumar@linaro.org>, Liviu Dudau <liviu.dudau@arm.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 3, 2020 at 5:26 PM Lukasz Luba <lukasz.luba@arm.com> wrote:
>
>
>
> On 6/3/20 4:13 PM, Rafael J. Wysocki wrote:
> > On Tue, Jun 2, 2020 at 1:31 PM Lukasz Luba <lukasz.luba@arm.com> wrote:
> >>
> >> Hi Daniel,
> >>
> >> On 6/1/20 10:44 PM, Daniel Lezcano wrote:
> >>> On 27/05/2020 11:58, Lukasz Luba wrote:
> >>>> Add support for other devices than CPUs. The registration function
> >>>> does not require a valid cpumask pointer and is ready to handle new
> >>>> devices. Some of the internal structures has been reorganized in order to
> >>>> keep consistent view (like removing per_cpu pd pointers).
> >>>>
> >>>> Signed-off-by: Lukasz Luba <lukasz.luba@arm.com>
> >>>> ---
> >>>
> >>> [ ... ]
> >>>
> >>>>    }
> >>>>    EXPORT_SYMBOL_GPL(em_register_perf_domain);
> >>>> +
> >>>> +/**
> >>>> + * em_dev_unregister_perf_domain() - Unregister Energy Model (EM) for a device
> >>>> + * @dev             : Device for which the EM is registered
> >>>> + *
> >>>> + * Try to unregister the EM for the specified device (but not a CPU).
> >>>> + */
> >>>> +void em_dev_unregister_perf_domain(struct device *dev)
> >>>> +{
> >>>> +    if (IS_ERR_OR_NULL(dev) || !dev->em_pd)
> >>>> +            return;
> >>>> +
> >>>> +    if (_is_cpu_device(dev))
> >>>> +            return;
> >>>> +
> >>>> +    mutex_lock(&em_pd_mutex);
> >>>
> >>> Is the mutex really needed?
> >>
> >> I just wanted to align this unregister code with register. Since there
> >> is debugfs dir lookup and the device's EM existence checks I thought it
> >> wouldn't harm just to lock for a while and make sure the registration
> >> path is not used. These two paths shouldn't affect each other, but with
> >> modules loading/unloading I wanted to play safe.
> >>
> >> I can change it maybe to just dmb() and the end of the function if it's
> >> a big performance problem in this unloading path. What do you think?
> >
> > I would rather leave the mutex locking as is.
> >
> > However, the question to ask is what exactly may go wrong without that
> > locking in place?  Is there any specific race condition that you are
> > concerned about?
> >
>
> I tried to test this with module loading & unloading with panfrost
> driver and CPU hotplug (which should bail out quickly) and was OK.
> I don't see any particular race. I don't too much about the
> debugfs code, though. That's why I tried to protect from some
> scripts/services which try to re-load the driver.
>
> Apart from that, maybe just this dev->em = NULL to be populated to all
> CPUs, which mutex_unlock synchronizes for free here.

If it may run concurrently with the registration for the same device,
the locking is necessary, but in that case the !dev->em_pd check needs
to go under the mutex too IMO, or you may end up leaking the pd if the
registration can run between that check and the point at which the
mutex is taken.

Apart from this your kerneldoc comments might me improved IMO.

First of all, you can use @dev inside of a kerneldoc (if @dev
represents an argument of the documented function) and that will
produce the right output automatically.

Second, it is better to avoid saying things like "Try to unregister
..." in kerneldoc comments (the "Try to" part is redundant).  Simply
say "Unregister ..." instead.

Thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
