Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D1761ED42F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 18:23:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7V/JGYegCm62S8fGGfWPEIWuy4BODVpuFa+NaZPLMmU=; b=njFXw0XYOMxGER
	0T/JBwnxShdyyvq40oBM/j6uTdzx5prHUZCqLOeRRODjO5dtZzmqO63qify/BWdTO8dxHtKj1thob
	LmlHVQlFNttUUaFoMpbhST+0eP4W04VsEWCl7lj7IQ8GzIe/u28QmF1UCscmjyKoAZ8I+X5diP5v9
	tdMW7wbua/bhbSuXQEbwZUf/wQqMjQuxpPsuViXCeIu+hU4ZSu4OcqoVjW3K6hX/OefKNc4nxfmgN
	mY9dzvZFirTq4CR61DbuzZNfb1zyffxHeOKBOfSq6A30ZUzsB+PkcwIUS5dETAnVR3r+i2JWqkqh1
	nTpkk6BONwslDj/qj+zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgWAk-0005SG-PW; Wed, 03 Jun 2020 16:23:22 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgWAZ-0005RY-OR; Wed, 03 Jun 2020 16:23:13 +0000
Received: by mail-oi1-f195.google.com with SMTP id t25so2319734oij.7;
 Wed, 03 Jun 2020 09:23:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=G0tH0k+NKmqZwrk0o/ce4PRCneuv7ifovr1S3MHnzdQ=;
 b=sxi3mLaSPaNbcVWV2I1dYbX3aZPUiLYS+wojd/d9euvBuL3/3WOLCoj0d6DdRJ7F6L
 NI6byXxoZ978VgnHuw5ZRFM3pWcOON/BByhwsuGxQ5b11NMPonu6eSIuYU9yldcj5qFQ
 pbSfhqDsGYUpcD7A21INCuLDjmyfv237eGoxI47KoL6dJgBz8HP+MAT+7eAssSTiVOtQ
 7sXgefpPAfJUJKQX2au0GIwJAFz1YWv50NNoH/O+oEHMpLhjc7sQ8+LWlcQIFC1ayoIw
 U3RtQJ5jRuS4S3lHRrGKgmg7dcg5+ia4ehyLTQ22SZIlDBnncUnN0sNBq5r/wy7sby81
 dRzg==
X-Gm-Message-State: AOAM533GDjwEWzRLWDB9tzNuteXiUm5MqVeBp0Fjs1eVOTDnlY+m083S
 pjW4xvB0ep4vTWSA4hWzE4d44hl+2QRLNdonHBg=
X-Google-Smtp-Source: ABdhPJwGbhBzu2/wV2PpRFGG9a3o5D1jEOyqXTkeaU16FlI8R1zzrfIL9oCIBz6eYF1bVRMcOc+uDVd0IGSSSo86mNA=
X-Received: by 2002:aca:eb56:: with SMTP id j83mr383303oih.110.1591201390749; 
 Wed, 03 Jun 2020 09:23:10 -0700 (PDT)
MIME-Version: 1.0
References: <20200527095854.21714-1-lukasz.luba@arm.com>
 <20200527095854.21714-5-lukasz.luba@arm.com>
 <d45e5592-8e11-858b-d3a3-2ec9ce1d1f54@linaro.org>
 <7201e161-6952-6e28-4036-bd0f0353ec30@arm.com>
 <CAJZ5v0jwoNSYOz3nGqNshd=5btsLxOp-di-Dot+cHqAQZEQVRw@mail.gmail.com>
 <d6a0d345-53ef-523c-836d-3bc4ea4c6e66@arm.com>
 <CAJZ5v0iDNH7tZmKsYgW1xp-g3WmOod+Wo-AzJmszXuv_wztwwA@mail.gmail.com>
 <d0894383-1362-fdea-f74c-7dd8ecdc33ca@arm.com>
In-Reply-To: <d0894383-1362-fdea-f74c-7dd8ecdc33ca@arm.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Wed, 3 Jun 2020 18:22:59 +0200
Message-ID: <CAJZ5v0jL0+TXDGXaO=WfYg6QM3=B83LLZ90xtc2HtX70jdoiYQ@mail.gmail.com>
Subject: Re: [PATCH v8 4/8] PM / EM: add support for other devices than CPUs
 in Energy Model
To: Lukasz Luba <lukasz.luba@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_092311_794351_98BB82F7 
X-CRM114-Status: GOOD (  35.25  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rjwysocki[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
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

On Wed, Jun 3, 2020 at 6:12 PM Lukasz Luba <lukasz.luba@arm.com> wrote:
>
>
>
> On 6/3/20 4:40 PM, Rafael J. Wysocki wrote:
> > On Wed, Jun 3, 2020 at 5:26 PM Lukasz Luba <lukasz.luba@arm.com> wrote:
> >>
> >>
> >>
> >> On 6/3/20 4:13 PM, Rafael J. Wysocki wrote:
> >>> On Tue, Jun 2, 2020 at 1:31 PM Lukasz Luba <lukasz.luba@arm.com> wrote:
> >>>>
> >>>> Hi Daniel,
> >>>>
> >>>> On 6/1/20 10:44 PM, Daniel Lezcano wrote:
> >>>>> On 27/05/2020 11:58, Lukasz Luba wrote:
> >>>>>> Add support for other devices than CPUs. The registration function
> >>>>>> does not require a valid cpumask pointer and is ready to handle new
> >>>>>> devices. Some of the internal structures has been reorganized in order to
> >>>>>> keep consistent view (like removing per_cpu pd pointers).
> >>>>>>
> >>>>>> Signed-off-by: Lukasz Luba <lukasz.luba@arm.com>
> >>>>>> ---
> >>>>>
> >>>>> [ ... ]
> >>>>>
> >>>>>>     }
> >>>>>>     EXPORT_SYMBOL_GPL(em_register_perf_domain);
> >>>>>> +
> >>>>>> +/**
> >>>>>> + * em_dev_unregister_perf_domain() - Unregister Energy Model (EM) for a device
> >>>>>> + * @dev             : Device for which the EM is registered
> >>>>>> + *
> >>>>>> + * Try to unregister the EM for the specified device (but not a CPU).
> >>>>>> + */
> >>>>>> +void em_dev_unregister_perf_domain(struct device *dev)
> >>>>>> +{
> >>>>>> +    if (IS_ERR_OR_NULL(dev) || !dev->em_pd)
> >>>>>> +            return;
> >>>>>> +
> >>>>>> +    if (_is_cpu_device(dev))
> >>>>>> +            return;
> >>>>>> +
> >>>>>> +    mutex_lock(&em_pd_mutex);
> >>>>>
> >>>>> Is the mutex really needed?
> >>>>
> >>>> I just wanted to align this unregister code with register. Since there
> >>>> is debugfs dir lookup and the device's EM existence checks I thought it
> >>>> wouldn't harm just to lock for a while and make sure the registration
> >>>> path is not used. These two paths shouldn't affect each other, but with
> >>>> modules loading/unloading I wanted to play safe.
> >>>>
> >>>> I can change it maybe to just dmb() and the end of the function if it's
> >>>> a big performance problem in this unloading path. What do you think?
> >>>
> >>> I would rather leave the mutex locking as is.
> >>>
> >>> However, the question to ask is what exactly may go wrong without that
> >>> locking in place?  Is there any specific race condition that you are
> >>> concerned about?
> >>>
> >>
> >> I tried to test this with module loading & unloading with panfrost
> >> driver and CPU hotplug (which should bail out quickly) and was OK.
> >> I don't see any particular race. I don't too much about the
> >> debugfs code, though. That's why I tried to protect from some
> >> scripts/services which try to re-load the driver.
> >>
> >> Apart from that, maybe just this dev->em = NULL to be populated to all
> >> CPUs, which mutex_unlock synchronizes for free here.
> >
> > If it may run concurrently with the registration for the same device,
> > the locking is necessary, but in that case the !dev->em_pd check needs
> > to go under the mutex too IMO, or you may end up leaking the pd if the
> > registration can run between that check and the point at which the
> > mutex is taken.
>
> They don't run concurrently for the same device and users of that EM are
> already gone.
> I just wanted to be sure that everything is cleaned and synced properly.
> Here is some example of the directories under
> /sys/kernel/debug/energy_model
> cpu0, cpu4, gpu, dsp, etc
>
> The only worry that I had was the debugfs dir name, which is a
> string from dev_name() and will be the same for the next registration
> if module is re-loaded.

OK, so that needs to be explained in a comment.

> So the 'name' is reused and debugfs_create_dir()
> and debugfs_remove_recursive() uses this fsnotify, but they are
> operating under inode_lock/unlock() on the parent dir 'energy_model'.
> Then there is also this debugfs_lookup() which is slightly different.
>
> That's why I put a mutex to separate all registration and unregistration
> for all devices.
> It should work without the mutex in unregister path, but I think it does
> not harm to take

Well, fair enough, but I still think that the !dev->em_pd check should
be done under the mutex or it will be confusing.

> it just in case and also have the CPU variable sync for free.

I'm not sure what you mean by the last part here?

> >
> > Apart from this your kerneldoc comments might me improved IMO.
> >
> > First of all, you can use @dev inside of a kerneldoc (if @dev
> > represents an argument of the documented function) and that will
> > produce the right output automatically.
>
> OK
>
> >
> > Second, it is better to avoid saying things like "Try to unregister
> > ..." in kerneldoc comments (the "Try to" part is redundant).  Simply
> > say "Unregister ..." instead.
>
> Good point, thanks, I will use "Unregister ..." then.
>
> >
> > Thanks!
> >
>
> Shell I send a 'resend patch' which changes these @dev and
> 'unregister' comments?

Yes, please, but see the comments above too.

> Or wait for you to finish reviewing the other patches and send v9?

That is not necessary, unless you want to make kerneldoc improvements
in the other patches.

Thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
