Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DACB51BA044
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 11:46:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R20RNyKzWbf8zCMAuGNyHTUdcyU5tbX6IwVFhAUxcPw=; b=bQrRuXFRpm3oeH
	EH+ugysL9cys3l+qg+1DDINyl84HNHRdeWBzafIoDSUrcCyEJ1l+awOeQAckJn0VD5yIAWUycJFrR
	bIajijSJwM9posXYdoO6Tlz00GdNorv7gK2hEEBdBXBqiHRyWPF9tUxE6W560Bi+UljysIuBFp3VF
	rhXyoiq4GIEp+uiDVQvNEF5GvBwLRInmpl306SXlvHUyUcs7tmhWFU1swIbKSQkLDiYvthbivyR56
	lKk2sWsE7mAwiZ7eTOVEuuf+nkc8b895anE2Ec9mX0u6ZeT4iWd4F5MGMueJGADX+kVoia/tHwZgW
	xm+qlkNLTMXcXi1xDYbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT0LJ-0003uE-9Z; Mon, 27 Apr 2020 09:46:25 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT0L5-0003s8-UC
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 09:46:13 +0000
Received: by mail-ed1-x541.google.com with SMTP id a8so12960682edv.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Apr 2020 02:46:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bFV9sBvatl6AXHhG7wp/COKK9les57X1hK35qsxV5xk=;
 b=EbUlbJf3tuX+YZtYtlMf7Y7xTfiT73UT00bsSnbqg6l7Smat0W+qEtS60TSsYooNaH
 aJUIKABFZJf91k3lrw0txfMc1941zkEqWEdcbFJ3Y19653c5eXJTR7s+V/A1X6w44cPV
 2+sKwwae9hp4/Jl/VEUV0bPTFqn++exYrTAelPQuWNfg50ZN9B9fKlDpliHaA7zU18x1
 v05ZM3pfsEuy3Q6vskAC6td2ghjnQh2Kl8YaWd5G+0rsy0i7MZSxP0daoIwPsjxA8Nyt
 7g0sZ1Ya1zFmul+BQjffOTcoSUfV/p2RkUgq3n6W0snyN7N3cfgJcfmLfsQIWwXEngdB
 jTlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bFV9sBvatl6AXHhG7wp/COKK9les57X1hK35qsxV5xk=;
 b=c1KghWF/h3gE4AkEm6dsshTyuvozW7yCtMN+xDl/alcGWJ1Vp3WQpkEeJKVfWYQadj
 SumF5muye3gfFeeKvIh+Yp0gH3Yna6v1k1ffgvAuV8aRhgHIL0kqgyxjwj5jj6QIaVSS
 NiL3Aeq462FXIN6BndZsAhcvmCCInAssnlvQm2qQP1/Y2ruf/WhO6IIQxwr3VWlvPoNp
 xal4XBNweVOrVHpTh39hE+ncHNpumJdnbaGghavfutl6lyIr2oaAeZ6ECpVdS/mNvuKD
 uZIIAtZKKDQbwtVHFxiY5pvnf5YxK3EzmUwFSXsrlNnGmjE1Cc4gBQEQPWjvEzdB5i/x
 GWYw==
X-Gm-Message-State: AGi0PuYMLKz5Crz0qf4kJPiS5TNjyGe32Zai5vPtgsI4lUqHU8WCzY/h
 YUM92bMHEgeyWQFjq0zgmvyYR+evBAIyxDL/SIp0EA==
X-Google-Smtp-Source: APiQypKBJ1TjgztIav5Ztn3182KcUXk9E605M/lf85I3kerNto/5dGXA2llc0FTVncqtJrOobc7MLFiNojywC1oRs+M=
X-Received: by 2002:aa7:d0d8:: with SMTP id u24mr18345837edo.138.1587980765556; 
 Mon, 27 Apr 2020 02:46:05 -0700 (PDT)
MIME-Version: 1.0
References: <20200426143725.18116-1-saiprakash.ranjan@codeaurora.org>
 <cf5852e9-c3c1-3d31-46f0-0370719947ab@arm.com>
In-Reply-To: <cf5852e9-c3c1-3d31-46f0-0370719947ab@arm.com>
From: Mike Leach <mike.leach@linaro.org>
Date: Mon, 27 Apr 2020 10:45:54 +0100
Message-ID: <CAJ9a7VgF3-Hdc7KSw9gVBeXSDHNguhqVhp60oK2XhCtr3DhDqg@mail.gmail.com>
Subject: Re: [PATCH] coresight: dynamic-replicator: Fix handling of multiple
 connections
To: Suzuki K Poulose <suzuki.poulose@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_024611_975466_7C84C4C3 
X-CRM114-Status: GOOD (  25.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>, linux-arm-msm@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Stephen Boyd <swboyd@chromium.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

HI,

On Mon, 27 Apr 2020 at 10:15, Suzuki K Poulose <suzuki.poulose@arm.com> wrote:
>
> On 04/26/2020 03:37 PM, Sai Prakash Ranjan wrote:
> > Since commit 30af4fb619e5 ("coresight: dynamic-replicator:
> > Handle multiple connections"), we do not make sure that
> > the other port is disabled when the dynamic replicator is
> > enabled. This is seen to cause the CPU hardlockup atleast
> > on SC7180 SoC with the following topology when enabling ETM
> > with ETR as the sink via sysfs. Since there is no trace id
> > logic in coresight yet to make use of multiple sinks in
> > parallel for different trace sessions, disable the other
> > port when one port is turned on.
> >
> >         etm0_out
> >         |
> >     apss_funnel_in0
> >            |
> >    apss_merge_funnel_in
> >            |
> >        funnel1_in4
> >         |
> >     merge_funnel_in1
> >         |
> >      swao_funnel_in
> >            |
> >          etf_in
> >         |
> >    swao_replicator_in
> >            |
> >     replicator_in
> >         |
> >          etr_in
> >
> >    Kernel panic - not syncing: Watchdog detected hard LOCKUP on cpu 0
> >    CPU: 7 PID: 0 Comm: swapper/7 Tainted: G S  B             5.4.25 #100
> >    Hardware name: Qualcomm Technologies, Inc. SC7180 IDP (DT)
> >    Call trace:
> >     dump_backtrace+0x0/0x188
> >     show_stack+0x20/0x2c
> >     dump_stack+0xdc/0x144
> >     panic+0x168/0x370
> >     arch_seccomp_spec_mitigate+0x0/0x14
> >     watchdog_timer_fn+0x68/0x290
> >     __hrtimer_run_queues+0x264/0x498
> >     hrtimer_interrupt+0xf0/0x22c
> >     arch_timer_handler_phys+0x40/0x50
> >     handle_percpu_devid_irq+0x8c/0x158
> >     __handle_domain_irq+0x84/0xc4
> >     gic_handle_irq+0x100/0x1c4
> >     el1_irq+0xbc/0x180
> >     arch_cpu_idle+0x3c/0x5c
> >     default_idle_call+0x1c/0x38
> >     do_idle+0x100/0x280
> >     cpu_startup_entry+0x24/0x28
> >     secondary_start_kernel+0x15c/0x170
> >    SMP: stopping secondary CPUs
> >
> > Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> > Tested-by: Stephen Boyd <swboyd@chromium.org>
> > ---
> > Changes since RFC:
> >   * Reworded commit text and included the topology on SC7180.
>
>
> > ---
> >   .../hwtracing/coresight/coresight-replicator.c    | 15 ++++++++++-----
> >   1 file changed, 10 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/hwtracing/coresight/coresight-replicator.c b/drivers/hwtracing/coresight/coresight-replicator.c
> > index e7dc1c31d20d..f4eaa38f8f43 100644
> > --- a/drivers/hwtracing/coresight/coresight-replicator.c
> > +++ b/drivers/hwtracing/coresight/coresight-replicator.c
> > @@ -66,14 +66,16 @@ static int dynamic_replicator_enable(struct replicator_drvdata *drvdata,
> >                                    int inport, int outport)
> >   {
> >       int rc = 0;
> > -     u32 reg;
> > +     u32 reg0, reg1;
> >
> >       switch (outport) {
> >       case 0:
> > -             reg = REPLICATOR_IDFILTER0;
> > +             reg0 = REPLICATOR_IDFILTER0;
> > +             reg1 = REPLICATOR_IDFILTER1;
> >               break;
> >       case 1:
> > -             reg = REPLICATOR_IDFILTER1;
> > +             reg0 = REPLICATOR_IDFILTER1;
> > +             reg1 = REPLICATOR_IDFILTER0;
> >               break;
> >       default:
> >               WARN_ON(1);
> > @@ -87,8 +89,11 @@ static int dynamic_replicator_enable(struct replicator_drvdata *drvdata,
> >               rc = coresight_claim_device_unlocked(drvdata->base);
> >
> >       /* Ensure that the outport is enabled. */
> > -     if (!rc)
> > -             writel_relaxed(0x00, drvdata->base + reg);
> > +     if (!rc) {
> > +             writel_relaxed(0x00, drvdata->base + reg0);
> > +             writel_relaxed(0xff, drvdata->base + reg1);
> > +     }
> > +
>
> This is not sufficient. You must prevent another session trying to
> enable the other port of the replicator as this could silently fail
> the "on-going" session. Not ideal. Fail the attempt to enable a port
> if the other port is active. You could track this in software and
> fail early.
>
> Suzuki

While I have no issue in principle with not enabling a path to a sink
that is not in use - indeed in some cases attaching to unused sinks
can cause back-pressure that slows throughput (cf TPIU) - I am
concerned that this modification is masking an underlying issue with
the platform in question.

Should we decide to enable the diversion of different IDs to different
sinks or allow different sessions go to different sinks, then this has
potential to fail on the SC7180 SoC - and it will be difficult in
future to associate a problem with this discussion.

Regards

Mike




-- 
Mike Leach
Principal Engineer, ARM Ltd.
Manchester Design Centre. UK

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
