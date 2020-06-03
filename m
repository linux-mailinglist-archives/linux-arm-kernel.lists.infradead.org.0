Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 672741ECACF
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 09:50:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yPm/a1ZCNGmZ4Z+b3NTHqLCrJDkUG1ZHLRFWIHLThtI=; b=cfMB5knddII9fD
	w+2TcUfp7DGTLByCpjkBxZRHnd+SrK8e9jCUJVg9GnTQ5Okub+CLZB7+PazmTOQhZgD0E8dModu/6
	Xi5rTgoEdSItG+9Ebb5DkT8j2f5pHQlve0r2IUgUgluh82cKayFX5h5Th+3oQbn3njt97AhlF6XMI
	L9UhNCyTFwjGf5d3THrNk/6vrHuUN78thnN2FTrGyQntXAThC4qqIwJ68evDwfQ6cd5ZcZ1h6S8ov
	eQvKdg98iTr8g5eA34onE0D9qal5zE8zhAyKG52Yvvc671X/KWPlEW8TiFk3Lv8DcAonmSgObnNRu
	aqndtLqKOxfwF/AWiorw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgOAQ-0002M8-HI; Wed, 03 Jun 2020 07:50:30 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgOAG-0002Lk-M1
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 07:50:22 +0000
Received: by mail-lf1-x144.google.com with SMTP id c21so706706lfb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jun 2020 00:50:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RI6iXB0qMqr3xlMnwnNSpUiS3SZYn3+NS4HUs4hvuFk=;
 b=Bv2NGZRkizy50GG012REDa+Ac6WD7Cdlhp9SBQUZne2ONByEmjbrF1ObuaG8BusUuc
 tT4fFF6bOT7sbpGB8srbSU8sAzLauoqfKgAnHEMe+Njoiq8cN8L4/OILOwpNPvXxVoRH
 Pnb1931Hl0DGZD17DmZWdVQg3OicSRvDhOV3hpc3knBMfWL7aYPz7QcGjsOC6+dIYy1Z
 BBA8Nzqwm/A2HE/lLI5xIt/BnG1w3KfdtF35Eoo4b/oIXYE9IQp3jdFlXdXmLTzZjFuK
 x6SKMLDcFQfsamwJtMSktvo/Ma8v/iZmfw/yQqiVXjsUKZjmCLRSvusNarN0vntWMQ8c
 P4bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RI6iXB0qMqr3xlMnwnNSpUiS3SZYn3+NS4HUs4hvuFk=;
 b=X4XsqtK2H/ho5dle/5zbp6I9G/q43XGFpZV4ajAcqg6cLznRwi91a92s8LzwB2YnDd
 O13RIK/Cm9eKaMAzpHRhq8GW7C1zKoV4HupGic09rCvtq8/UVJfYjBZWbL683u1Oei8k
 5zPO+jBO5J++bT6xPmoA7SDKN17qmwPhe43Fwd9bVsTBjE4sDmu4jGiYwFnVnGaKZ0vy
 Qw72STW58xfUVizuyukEgTLMBtTf8Hm/rmHRUlQZUmt10Fa/vm4u9A39bathMRPanfDY
 RD9fu123dkkIVJfVLk2WmZDX2CNTjheVS9ScM+4u4q/Tt1voHS3QRPuG9eD/slzwJI9P
 FwIg==
X-Gm-Message-State: AOAM533QTQItP2a9CZePRlCv6Kelx7WnYoYAp/rVUIQj0hx8max4vmG0
 c20/YqvBO+daFyTCQnXQ01r59WwU565cIGr2GwzKUA==
X-Google-Smtp-Source: ABdhPJwQ86B8yTe/9il9L6LnfiUJTL8erQbgj0KU1+oMuQ+QlImP1yxiL4f9rbdAdwNQf8DKbxDu0Dm6tMQQyCoUlhY=
X-Received: by 2002:a19:5013:: with SMTP id e19mr1725514lfb.95.1591170618304; 
 Wed, 03 Jun 2020 00:50:18 -0700 (PDT)
MIME-Version: 1.0
References: <20200527151613.16083-1-benjamin.gaignard@st.com>
 <jhjpnahizkm.mognet@arm.com> <f95ce45f-7a1c-0feb-afa8-203ddb500f2f@st.com>
 <jhjo8q1io9o.mognet@arm.com> <1b0ace18-e7f8-0b75-f6fe-968a269626b0@st.com>
In-Reply-To: <1b0ace18-e7f8-0b75-f6fe-968a269626b0@st.com>
From: Vincent Guittot <vincent.guittot@linaro.org>
Date: Wed, 3 Jun 2020 09:50:06 +0200
Message-ID: <CAKfTPtCbM-w_0VrTB5tsSM5PKRtC44f3sSmAR=U=P3e3KQ+cMw@mail.gmail.com>
Subject: Re: [PATCH] media: stm32-dcmi: Set minimum cpufreq requirement
To: Benjamin GAIGNARD <benjamin.gaignard@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_005020_728711_55897646 
X-CRM114-Status: GOOD (  24.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Alexandre TORGUE <alexandre.torgue@st.com>,
 "rjw@rjwysocki.net" <rjw@rjwysocki.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 Hugues FRUCHET <hugues.fruchet@st.com>,
 "mchehab@kernel.org" <mchehab@kernel.org>,
 Valentin Schneider <valentin.schneider@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 3 Jun 2020 at 09:34, Benjamin GAIGNARD <benjamin.gaignard@st.com> wrote:
>
>
>
> On 6/2/20 3:35 PM, Valentin Schneider wrote:
> > On 02/06/20 12:37, Benjamin GAIGNARD wrote:
> >> On 6/2/20 11:31 AM, Valentin Schneider wrote:
> >>>> @@ -99,6 +100,8 @@ enum state {
> >>>>
> >>>>    #define OVERRUN_ERROR_THRESHOLD 3
> >>>>
> >>>> +#define DCMI_MIN_FREQ     650000 /* in KHz */
> >>>> +
> >>> This assumes the handling part is guaranteed to always run on the same CPU
> >>> with the same performance profile (regardless of the platform). If that's
> >>> not guaranteed, it feels like you'd want this to be configurable in some
> >>> way.
> >> Yes I could add a st,stm32-dcmi-min-frequency (in KHz) parameter the
> >> device tree node.
> >>
> > Something like that - I'm not sure how well this fits with the DT
> > landscape, as you could argue it isn't really a description of the
> > hardware, more of a description of the performance expectations of the
> > software. I won't really argue here.
> >
> >>>>    struct dcmi_graph_entity {
> >>>>         struct v4l2_async_subdev asd;
> >>>>
> >>> [...]
> >>>> @@ -2020,6 +2042,8 @@ static int dcmi_probe(struct platform_device *pdev)
> >>>>                 goto err_cleanup;
> >>>>         }
> >>>>
> >>>> +  dcmi->policy = cpufreq_cpu_get(0);
> >>>> +
> >>> Ideally you'd want to fetch the policy of the CPU your IRQ (and handling
> >>> thread) is affined to; The only compatible DTS I found describes a single
> >>> A7, which is somewhat limited in the affinity area...
> >> If I move this code just before start streaming and use get_cpu(), would
> >> it works ?
> >>
> > AFAIA streaming_start() is not necessarily executing on the same CPU as the
> > one that will handle the interrupt. I was thinking you could use the IRQ's
> > effective affinity as a hint of which CPU(s) to boost, i.e. something like:
> >
> > ---
> >      struct cpumask_var_t visited;
> >      struct irq_data *d = irq_get_irq_data(irq);
> >
> >      err = alloc_cpumask_var(visited, GFP_KERNEL);
> >      /* ... */
> >      for_each_cpu(cpu, irq_data_get_effective_affinity_mask(d)) {
> >              /* check if not already spanned */
> >              if (cpumask_test_cpu(cpu, visited))
> >                      continue;
> >
> >              policy = cpufreq_cpu_get(cpu);
> >              cpumask_or(visited, visited, policy->cpus);
> >              /* do the boost for that policy here */
> >              /* ... */
> >              cpufreq_cpu_put(policy);
> >      }
> > ---
> >
> > That of course falls apart when hotplug gets involved, and the effective
> > affinity changes... There's irq_set_affinity_notifier() out there, but it
> > seems it's only about the affinity, not the effective_affinity, I'm not
> > sure how valid it would be to query the effective_affinity in that
> > notifier.
> If I wait to be in the irq it will be too late so I think I will do a
> loop over all possible CPUs
> before start the streaming to change the policies.

Can't you use irq_get_affinity_mask  and loop over it ?

Also You should better use freq_qos_add/remove_request during probe
and remove of the driver and use freq_qos_update_request in
dcmi_start/stop_streaming to set/unset your constraint.

>
> >
> >> Benjamin
> >>>>         dev_info(&pdev->dev, "Probe done\n");
> >>>>
> >>>>         platform_set_drvdata(pdev, dcmi);
> >>>> @@ -2049,6 +2073,9 @@ static int dcmi_remove(struct platform_device *pdev)
> >>>>
> >>>>         pm_runtime_disable(&pdev->dev);
> >>>>
> >>>> +  if (dcmi->policy)
> >>>> +          cpufreq_cpu_put(dcmi->policy);
> >>>> +
> >>>>         v4l2_async_notifier_unregister(&dcmi->notifier);
> >>>>         v4l2_async_notifier_cleanup(&dcmi->notifier);
> >>>>         media_entity_cleanup(&dcmi->vdev->entity);

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
