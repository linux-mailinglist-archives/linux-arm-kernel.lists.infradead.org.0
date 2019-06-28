Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 500DD5982D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 12:07:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jooG2lNGG0ssRaelQsfkQjD49bn7T6HlflThxNuxByA=; b=cqCZqya65j4Neo
	bDifmitY8902lhe2fme6tT6yGZ4ifYr1MTuHFm6GRECCbBp+ZDVte8lpjA82gb3LsRWQeVtwMbjZr
	Kvxdvs4rp7MB16t6kyQVIHBOvEatYxDF0HQJM+91AA4+qCV/CIWSOg7Cpx9YrWEJ/gpvmLiJ9xoGK
	fFU5nodxzHU8fPCuax3ks6T0hh9LAI05qyjNc/TZPf2ZrOxQvloLXgYd+d/Z57iJk+VtGwIbx/bwB
	scjk59KAvjFYjBXJBxMHvs+ExAXjkhB5FKeFjubJ/ue+nDfmjz39To6/HMst3AwQP+IEJDkxrpqHK
	x0zO9HKvTVai7Mb8EgWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgnnM-00077d-R3; Fri, 28 Jun 2019 10:07:53 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgnn5-0006qC-Tx
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 10:07:37 +0000
Received: by mail-ot1-f68.google.com with SMTP id j19so5455214otq.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Jun 2019 03:07:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ocXOJmtDpqphEs1B9xw0PIyGZkcOvVuYC3+naZrdwsU=;
 b=KknY2TytvmHdzdG0M7AQbTE5TFVQn0fuKNbzqH+4hQ1Bw9hWIReSJDFtdX6/NbGdd8
 Cfapq/hePTBSG+s9cQ4xExoTgtKQ4sYDBMYg6Z7AMpELeqlVrrElZupL5XE3LbaYDffT
 8FLnVJC2QgelqczavJOVeeaN55++N7xHj7ElEwPNcKCydcT1hz9lC3bDGZi4J6AD8m3Z
 LPyGp9JJ//9nRHkR68rHT7COmkjFVFmR9yQl07FeSPgzAAxE6kVpaQ+jUc0aeMcFnz9h
 83w5CQydL8ohX+4QPVeBvlg2fUlCsP8uKbNPmDc8XqH0+vvc4vcRz3/yXPo977QWx7b7
 wBsA==
X-Gm-Message-State: APjAAAUPulog3oYV/KB2L/QBK0I8q8NlBFyTpyplYjqSLsvtlLWJaJAb
 6eQkKFWz4KFJKs5R0Xln6D/Q9v/XTSEiYJKwy2c=
X-Google-Smtp-Source: APXvYqyKVE/rmMylB7hYkaFCDJvXdkH4u/jLDmj0EBsdPcQEotwn9XSKQlm3w/rHS1Xip9gVXvy9uMocPeF2FkUmknI=
X-Received: by 2002:a9d:6a4b:: with SMTP id h11mr7618584otn.266.1561716454690; 
 Fri, 28 Jun 2019 03:07:34 -0700 (PDT)
MIME-Version: 1.0
References: <20190627210209.32600-1-daniel.lezcano@linaro.org>
 <20190627210209.32600-2-daniel.lezcano@linaro.org>
 <CAJZ5v0jJzCGfQFqi-S3vqs74D73MaE4f7WYF_NVnDKawNV4Wzw@mail.gmail.com>
In-Reply-To: <CAJZ5v0jJzCGfQFqi-S3vqs74D73MaE4f7WYF_NVnDKawNV4Wzw@mail.gmail.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Fri, 28 Jun 2019 12:07:23 +0200
Message-ID: <CAJZ5v0iFk=M=0MQMb-XxR_1Vkh9J=TOG3TFBWREYLSNHFTnH-w@mail.gmail.com>
Subject: Re: [PATCH V4 2/3] thermal/drivers/cpu_cooling: Unregister with the
 policy
To: Daniel Lezcano <daniel.lezcano@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_030736_016853_77A99B28 
X-CRM114-Status: GOOD (  21.55  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rjwysocki[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
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
Cc: Fabio Estevam <festevam@gmail.com>,
 "open list:CPU FREQUENCY DRIVERS - ARM BIG LITTLE"
 <linux-pm@vger.kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>,
 Amit Daniel Kachhap <amit.kachhap@gmail.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Eduardo Valentin <edubezval@gmail.com>,
 "open list:TI BANDGAP AND THERMAL DRIVER" <linux-omap@vger.kernel.org>,
 Keerthy <j-keerthy@ti.com>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Sudeep Holla <sudeep.holla@arm.com>, Zhang Rui <rui.zhang@intel.com>,
 Javi Merino <javi.merino@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 28, 2019 at 11:12 AM Rafael J. Wysocki <rafael@kernel.org> wrote:
>
> On Thu, Jun 27, 2019 at 11:02 PM Daniel Lezcano
> <daniel.lezcano@linaro.org> wrote:
> >
> > Currently the function cpufreq_cooling_register() returns a cooling
> > device pointer which is used back as a pointer to call the function
> > cpufreq_cooling_unregister(). Even if it is correct, it would make
> > sense to not leak the structure inside a cpufreq driver and keep the
> > code thermal code self-encapsulate. Moreover, that forces to add an
> > extra variable in each driver using this function.
> >
> > Instead of passing the cooling device to unregister, pass the policy.
> >
> > Because the cpufreq_cooling_unregister() function uses the policy to
> > unregister itself. The only purpose of the cooling device pointer is
> > to unregister the cpu cooling device.
> >
> > As there is no more need of this pointer, remove it.
> >
> > Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
> > Acked-by: Viresh Kumar <viresh.kumar@linaro.org>

[cut]

> > -void cpufreq_cooling_unregister(struct thermal_cooling_device *cdev)
> > +void cpufreq_cooling_unregister(struct cpufreq_policy *policy)
> >  {
> >         struct cpufreq_cooling_device *cpufreq_cdev;
>
> I would do
>
>         struct cpufreq_cooling_device *ccd, *cpufreq_cdev = NULL;
>
> and then ->

Not even that. ->

>
> >         bool last;
> >
> > -       if (!cdev)
> > -               return;
> > -
> > -       cpufreq_cdev = cdev->devdata;
> > -
> >         mutex_lock(&cooling_list_lock);
> > -       list_del(&cpufreq_cdev->node);
> > -       /* Unregister the notifier for the last cpufreq cooling device */
> > -       last = list_empty(&cpufreq_cdev_list);
> > +       list_for_each_entry(cpufreq_cdev, &cpufreq_cdev_list, node) {
>
> -> list_for_each_entry(ccd, &cpufreq_cdev_list, node) {
>                 if (ccd->policy == policy) {
>
> > +               if (cpufreq_cdev->policy == policy) {
>
>                            cpufreq_cdev = ccd;
>
> > +                       list_del(&cpufreq_cdev->node);
> > +                       last = list_empty(&cpufreq_cdev_list);
> > +                       break;
> > +               }
> > +       }
> >         mutex_unlock(&cooling_list_lock);
>
> And here
>
> if (!cpufreq_cdev)
>         return;

-> It would be sufficient to simply do:

if (cpufreq_cdev->policy != policy)
        return;

here AFAICS.

>
> And that's it.  No new functions needed.
>
> > -       if (last)
> > -               cpufreq_unregister_notifier(&thermal_cpufreq_notifier_block,
> > -                                           CPUFREQ_POLICY_NOTIFIER);
> > -
>
> And I don't that the above needs to be changed at all in any case.
>
>
> > -       thermal_cooling_device_unregister(cdev);
> > -       ida_simple_remove(&cpufreq_ida, cpufreq_cdev->id);
> > -       kfree(cpufreq_cdev->idle_time);
> > -       kfree(cpufreq_cdev);
> > +       if (cpufreq_cdev->policy == policy)
> > +               __cpufreq_cooling_unregister(cpufreq_cdev, last);
> >  }

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
