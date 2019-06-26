Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F130656571
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 11:12:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h1R6a3IbfqPzpmt6HDnRWJChm3plpg8KqhCKNq2+eC0=; b=gPtcszbjrqkOpa
	skK6pyRiCM5MJoeZOafUdzNdgKlMUn/zWVMOLFzeQUA3l2pjvab1Bg7FKOzThk4N1duK+JX+2A7sy
	K9wKMuJ0XkZ1cuZRrjZgcVrA1tZ7B8wGqpqiKR0tN2qfs/3ulQe/GhhSCEbjYgaK8KDnDXQ24YmlN
	IuyQq9EZ6IM2ob5QRU0KhtxaBPAGGOmRjEiGp0qGS02rQ/eoaEZQWGG+jK6wfajYZOLzj4wjWbNzP
	g32W11EgAui3DLaLie9qIERm3UlxVUOcbYwJSsiubdHYXSnqG1ZFkIeH6QYbxvqCMQRq8KWBmnB05
	Zs193ZY30xSZdtk9UdZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg3yh-00086O-V1; Wed, 26 Jun 2019 09:12:31 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg3tC-0002hA-Ln
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 09:06:54 +0000
Received: by mail-ot1-f66.google.com with SMTP id i4so1824642otk.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 02:06:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nXcB2j55vLYg6MDB7LwJc9ADk0v2xKnaarUFg29mB3U=;
 b=UwMDKw0eeCxfRoh7qxa+/leIdW8CpRxLx3zXcuEl6e0WL91QxVCbNneZDkS8ZTIqc5
 r2LKhsK0Qro0QJinN9+e8nsflFSa5WMjYIQpac35Sebe+7BBqe54DOAFqM9jlwULmA/W
 9nMyvajRVTUgrpgEhHuGrn7hz9/QgM5P8FjS/9Tg8MDNE4h7TpAGL968dazjjYyy394M
 pl1vnjCD7GgkeWHrV1t7w5CgElZIHs3uJuFuL5IFq/y08cKDQGvKdQy732ssUtyrkZ0M
 gxLbGY28/1CbmXn3N6/xLgoABc93QEVLbn+4AQxe+xorbqPbRy0uh/njpSimzRdGpAfm
 dTTg==
X-Gm-Message-State: APjAAAW30pg07IpnFInCoKsMovi330xWRgfwkxfsK7nFsucb0JMaRMyN
 r7/+MohfaHiE8JZxuhlLYAzGW8ypVx0N0kcJrgg=
X-Google-Smtp-Source: APXvYqxAMlqMGoLtV/QmBAgMoUUA9cBy7sBIjE9vyQtzL3Kn6zZnoAHCV0Kt+poYGG0SYlg4n+WaG0SHkySo/zYgcng=
X-Received: by 2002:a05:6830:1516:: with SMTP id
 k22mr2300310otp.189.1561540009295; 
 Wed, 26 Jun 2019 02:06:49 -0700 (PDT)
MIME-Version: 1.0
References: <20190625113244.18146-1-daniel.lezcano@linaro.org>
 <20190625113244.18146-2-daniel.lezcano@linaro.org>
 <20190626025831.jmyzyypxr6ezpbtu@vireshk-i7>
 <da1d2603-e30a-d877-54c3-1fad218f9d57@linaro.org>
 <20190626063716.cechnzsb75q5lclr@vireshk-i7>
In-Reply-To: <20190626063716.cechnzsb75q5lclr@vireshk-i7>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Wed, 26 Jun 2019 11:06:38 +0200
Message-ID: <CAJZ5v0jFXmJ3ikEPQUp-cLv3+ZSnp1kP8CxdkZVofV1BS3+UwQ@mail.gmail.com>
Subject: Re: [PATCH V3 2/3] thermal/drivers/cpu_cooling: Unregister with the
 policy
To: Viresh Kumar <viresh.kumar@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_020651_426348_1CE91D07 
X-CRM114-Status: GOOD (  15.26  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rjwysocki[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Keerthy <j-keerthy@ti.com>,
 "open list:CPU FREQUENCY DRIVERS - ARM BIG LITTLE"
 <linux-pm@vger.kernel.org>, Fabio Estevam <festevam@gmail.com>,
 Amit Daniel Kachhap <amit.kachhap@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Eduardo Valentin <edubezval@gmail.com>,
 "open list:TI BANDGAP AND THERMAL DRIVER" <linux-omap@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
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

On Wed, Jun 26, 2019 at 8:37 AM Viresh Kumar <viresh.kumar@linaro.org> wrote:
>
> On 26-06-19, 08:02, Daniel Lezcano wrote:
> > On 26/06/2019 04:58, Viresh Kumar wrote:
> > > On 25-06-19, 13:32, Daniel Lezcano wrote:
> > >> diff --git a/drivers/cpufreq/cpufreq.c b/drivers/cpufreq/cpufreq.c
> > >> index aee024e42618..f07454249fbc 100644
> > >> --- a/drivers/cpufreq/cpufreq.c
> > >> +++ b/drivers/cpufreq/cpufreq.c
> > >> @@ -1379,8 +1379,8 @@ static int cpufreq_online(unsigned int cpu)
> > >>            cpufreq_driver->ready(policy);
> > >>
> > >>    if (cpufreq_thermal_control_enabled(cpufreq_driver))
> > >> -          policy->cdev = of_cpufreq_cooling_register(policy);
> > >> -
> > >> +          of_cpufreq_cooling_register(policy);
> > >> +
> > >
> > > We don't need any error checking here anymore ?
> >
> > There was no error checking initially. This comment and the others below
> > are for an additional patch IMO, not a change in this one.
>
> right, but ...
>
> > >> -void cpufreq_cooling_unregister(struct thermal_cooling_device *cdev)
> > >> +void cpufreq_cooling_unregister(struct cpufreq_policy *policy)
> > >>  {
> > >>    struct cpufreq_cooling_device *cpufreq_cdev;
> > >>    bool last;
> > >>
> > >> -  if (!cdev)
> > >> -          return;
>
> we used to return without any errors from here. Now we will have
> problems if regsitering fails for some reason.

Specifically, the last cpufreq_cdev in the list will be unregistered
AFAICS, and without removing it from the list for that matter, which
isn't what the caller wants.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
