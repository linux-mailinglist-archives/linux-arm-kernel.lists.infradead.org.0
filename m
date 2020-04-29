Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D2F71BE0E3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 16:28:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4VDZIdK2XmyKvkYFAR3xLI5LdM/uhdG6KFp1fuIM2ag=; b=Ogrc1f31Bj3mN8
	n3eCu8FhOLiLarco/nuTgDi4syZYGwp2c93XXmok1qh3Bo9cIpAYsxhkcsL2jTn52EKC2wUhFWyp+
	IrQGZtryENUHeKhCyz7aWPRxoslBSFHF5wTGGtGZAp8rnPqtHyUOS0peopf8cBzR0lY3tc7fV2ubd
	EzWpUqZB6Uba5gYp2npwdWVx7y+dq9VmGnsj5QIaNC1gmeaLjQnkdFOx5mTzrKzGEszSLBmnyKc8p
	c5GjqbyQ4MTM6Sns6087ZFHb+ghPtWVILDwr+ubG23pRcb47yar2kKetegZsAcIDVbmAWuiGOl9GD
	PlPeUoHfq81P/XfW7CuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTnhB-00023i-MY; Wed, 29 Apr 2020 14:28:17 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTngz-00022e-8C
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 14:28:06 +0000
Received: by mail-ed1-x542.google.com with SMTP id r16so1694230edw.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 Apr 2020 07:28:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jxCJSi2qaE6pHW+qaOU1+jeFcV3itVDMkMm+cL1n/HQ=;
 b=UdLr+rSAd6qjL6cth2Qtbffbo7KM1EWqAbFeQvRT2RmSecF3XSo7FF40LzADOZMlWQ
 XvUwOP8l7huKc2JSQg0sMFGYJvdsfF4+1SmYsqxg3j/H2Z9fEFx4QP7Q3mb37LwZebv9
 qB2Akd5d5om510f7PO5KBS8pBaOx93AxLXVHLMni0xXrJg7iMblsEXOGZfh+zUaN8RAz
 I1A++wrRtyLPMPqrYnLQOlEMKXOnc8FlMztNFO8kiSgCS6g6R7MK7vLmWjn+nbpk+Y4i
 j9zuZgXKgaE5HWBa0waEoPzPwExzN/V9SwCdgeZ+OQU2Vv+7RAvSJXD02z12wV3TsXHJ
 Annw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jxCJSi2qaE6pHW+qaOU1+jeFcV3itVDMkMm+cL1n/HQ=;
 b=UzTt1nYcrJaaHdZMuDzvlwOxyh8nAlM0D3/bNK/ZdYB4Fi9CSnyEClNqrpFuWQc8U6
 aLuaokydZBaZxAxdIvFxGeQHX4xTdt4MFLOj9ol7PUtCqyymSqi24s5QfI/eI+8N75LO
 oubkLkou1ElKR1VX9PSq5eGGvvN8Q9OxeF1QaJW3CXdYaE7pwiUWcqbK3Wqlg00u8FcU
 +YUCfrR/DIqNiz3WP9O9Tg3Cg7mc0wH0Xs47wxlZ1nCwDtoHWaCi+/XXuOEc5bylrJs8
 V7YITp2hM9bA6tWmH5/YkO8HPAR73lw+A8Ndo3nQrAgf/YH7wAbf6sdbH42GmV1QDdqi
 hnUQ==
X-Gm-Message-State: AGi0PuYRBPuCglJTSsh7pLSmhFm7PuD09VWlZ7ggXQIFgtmslr1vYvq2
 iWxMhdheU3vZ3ubNcJoI7osNKQ+pW3ghP6LCL85CGCXWKfo=
X-Google-Smtp-Source: APiQypLtKxsLplhYLCkaCWBR5RVDn/QZobBjSZlgD0polvRMP0EvLrAo1i73QKt989GkOSI2PZtN6Le6EpcrLkYoeV0=
X-Received: by 2002:a05:6402:712:: with SMTP id
 w18mr2773101edx.386.1588170482943; 
 Wed, 29 Apr 2020 07:28:02 -0700 (PDT)
MIME-Version: 1.0
References: <20200426143725.18116-1-saiprakash.ranjan@codeaurora.org>
 <cf5852e9-c3c1-3d31-46f0-0370719947ab@arm.com>
 <CAJ9a7VgF3-Hdc7KSw9gVBeXSDHNguhqVhp60oK2XhCtr3DhDqg@mail.gmail.com>
 <84918e7d-c933-3fa1-a61e-0615d4b3cf2c@arm.com>
 <668ea1283a6dd6b34e701972f6f71034@codeaurora.org>
 <5b0f5d77c4eec22d8048bb0ffa078345@codeaurora.org>
 <759d47de-2101-39cf-2f1c-cfefebebd548@arm.com>
 <7d343e96cf0701d91152fd14c2fdec42@codeaurora.org>
In-Reply-To: <7d343e96cf0701d91152fd14c2fdec42@codeaurora.org>
From: Mike Leach <mike.leach@linaro.org>
Date: Wed, 29 Apr 2020 15:27:52 +0100
Message-ID: <CAJ9a7VgEiX19ukjwakNHBHDeZJ05f5Z7pAYG9iEnpXCuuDfBqg@mail.gmail.com>
Subject: Re: [PATCH] coresight: dynamic-replicator: Fix handling of multiple
 connections
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_072805_292738_E5CF358E 
X-CRM114-Status: GOOD (  34.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, linux-arm-msm@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Stephen Boyd <swboyd@chromium.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Wed, 29 Apr 2020 at 14:59, Sai Prakash Ranjan
<saiprakash.ranjan@codeaurora.org> wrote:
>
> On 2020-04-29 19:19, Suzuki K Poulose wrote:
> > On 04/29/2020 12:47 PM, Sai Prakash Ranjan wrote:
> >> On 2020-04-28 17:53, Sai Prakash Ranjan wrote:
> >>> On 2020-04-27 19:23, Suzuki K Poulose wrote:
> >>>> On 04/27/2020 10:45 AM, Mike Leach wrote:
> >>> [...]
> >>>>>>
> >>>>>> This is not sufficient. You must prevent another session trying to
> >>>>>> enable the other port of the replicator as this could silently
> >>>>>> fail
> >>>>>> the "on-going" session. Not ideal. Fail the attempt to enable a
> >>>>>> port
> >>>>>> if the other port is active. You could track this in software and
> >>>>>> fail early.
> >>>>>>
> >>>>>> Suzuki
> >>>>>
> >>>>> While I have no issue in principle with not enabling a path to a
> >>>>> sink
> >>>>> that is not in use - indeed in some cases attaching to unused sinks
> >>>>> can cause back-pressure that slows throughput (cf TPIU) - I am
> >>>>> concerned that this modification is masking an underlying issue
> >>>>> with
> >>>>> the platform in question.
> >>>>>
> >>>>> Should we decide to enable the diversion of different IDs to
> >>>>> different
> >>>>> sinks or allow different sessions go to different sinks, then this
> >>>>> has
> >>>>> potential to fail on the SC7180 SoC - and it will be difficult in
> >>>>> future to associate a problem with this discussion.
> >>>>
> >>>> Mike,
> >>>>
> >>>> I think thats a good point.
> >>>> Sai, please could we narrow down this to the real problem and may be
> >>>> work around it for the "device" ? Do we know which sink is causing
> >>>> the
> >>>> back pressure ? We could then push the "work around" to the
> >>>> replicator
> >>>> it is connected to.
> >>>>
> >>>> Suzuki
> >>>
> >>> Hi Suzuki, Mike,
> >>>
> >>> To add some more to the information provided earlier,
> >>> swao_replicator(6b06000) and etf are
> >>> in AOSS (Always-On-SubSystem) group. Also TPIU(connected to
> >>> qdss_replicator) and EUD(connected
> >>> to swao_replicator) sinks are unused.
> >>>
> >>> Please ignore the id filter values provided earlier.
> >>> Here are ID filter values after boot and before enabling replicator.
> >>> As per
> >>> these idfilter values, we should not try to enable replicator if its
> >>> already
> >>> enabled (in this case for swao_replicator) right?
> >>>
> >>> localhost ~ # cat
> >>> /sys/bus/amba/devices/6b06000.replicator/replicator1/mgmt/idfilter0
> >>> 0x0
> >>> localhost ~ # cat
> >>> /sys/bus/amba/devices/6b06000.replicator/replicator1/mgmt/idfilter1
> >>> 0x0
> >>>
> >>> localhost ~ # cat
> >>> /sys/bus/amba/devices/6046000.replicator/replicator0/mgmt/idfilter0
> >>> 0xff
> >>> localhost ~ # cat
> >>> /sys/bus/amba/devices/6046000.replicator/replicator0/mgmt/idfilter1
> >>> 0xff
> >>>
> >>
> >> Looking more into replicator1(swao_replicator) values as 0x0 even
> >> after replicator_reset()
> >> in replicator probe, I added dynamic_replicator_reset in
> >> dynamic_replicator_enable()
> >> and am not seeing any hardlockup. Also I added some prints to check
> >> the idfilter
> >> values before and after reset and found that its not set to 0xff even
> >> after replicator_reset()
> >> in replicator probe, I don't see any other path setting it to 0x0.
> >>
> >> After probe:
> >>
> >> [    8.477669] func replicator_probe before reset replicator
> >> replicator1 REPLICATOR_IDFILTER0=0x0 REPLICATOR_IDFILTER1=0x0
> >> [    8.489470] func replicator_probe after reset replicator
> >> replicator1 REPLICATOR_IDFILTER0=0xff REPLICATOR_IDFILTER1=0xff
> >
> > AFAICS, after the reset both of them are set to 0xff.
>
> Yes I see this too as we call replicator_reset() in probe. What I wanted
> to highlight was the below part where it is set to 0x0 before enabling
> dynamic replicator.
>
> >
> >> [    8.502738] func replicator_probe before reset replicator
> >> replicator0 REPLICATOR_IDFILTER0=0x0 REPLICATOR_IDFILTER1=0x0
> >> [    8.515214] func replicator_probe after reset replicator
> >> replicator0 REPLICATOR_IDFILTER0=0xff REPLICATOR_IDFILTER1=0xff
> >
> >
> >
> >> localhost ~ #
> >> localhost ~ #
> >> localhost ~ # echo 1 > /sys/bus/coresight/devices/tmc_etr0/enable_sink
> >> localhost ~ #
> >> localhost ~ # echo 1 > /sys/bus/coresight/devices/etm0/enable_source
> >> [   58.490485] func dynamic_replicator_enable before reset replicator
> >> replicator0 REPLICATOR_IDFILTER0=0xff REPLICATOR_IDFILTER1=0xff
> >> [   58.503246] func dynamic_replicator_enable after reset replicator
> >> replicator0 REPLICATOR_IDFILTER0=0xff REPLICATOR_IDFILTER1=0xff
> >> [   58.520902] func dynamic_replicator_enable before reset replicator
> >> replicator1 REPLICATOR_IDFILTER0=0x0 REPLICATOR_IDFILTER1=0x0
> >
> > You need to find what is resetting the IDFILTERs to 0 for replicator1.
> >
>
> That is right.
>

By default all replicators have the IDFILTER registers set to 0 out of
hardware reset. This ensures that programmable replicators behave in
the same way as non-programmable replicators out of reset.

The  dynamic_replicator_reset() is of course a driver state reset -
which filters out all trace on the output ports. The trace is then
enabled when we set the trace path from source to sink.

It seems to me that you have 2 problems that need solving here:

1) Why does the reset_replicator() called from probe() _not_ work
correctly on replicator 1? It seems to work later if you introduce a
reset after more of the system has powered and booted. This is
startiing to look a little like a PM / clocking issue.

This failure is causing the state when we are trying to set an output
port that both branches of this replicator are enabled for output.
In effect for this replicator, setting the output port has no effect
as it is already enabled.

2) Why does having both ports of this repilicator enabled cause a hard
lockup? This is a separate hardware  / system issue.

The worst that should happen if both branches of a replicator are
enabled is that you get undesirable back pressure. (e.g. there is a
system we have seen - I think it is Juno - where there is a static
replicator feeding the TPIU and ETR - we need to disable the TPIU to
prevent undesired back pressure).

Regards

Mike


> >> [   58.533500] func dynamic_replicator_enable after reset replicator
> >> replicator1 REPLICATOR_IDFILTER0=0xff REPLICATOR_IDFILTER1=0xff
> >> localhost ~ #
> >>
> >> Can we have a replicator_reset in dynamic_replicator_enable?
> >>
> >> diff --git a/drivers/hwtracing/coresight/coresight-replicator.c
> >> b/drivers/hwtracing/coresight/coresight-replicator.c
> >> index e7dc1c31d20d..794f8e4c049f 100644
> >> --- a/drivers/hwtracing/coresight/coresight-replicator.c
> >> +++ b/drivers/hwtracing/coresight/coresight-replicator.c
> >> @@ -68,6 +68,8 @@ static int dynamic_replicator_enable(struct
> >> replicator_drvdata *drvdata,
> >>          int rc = 0;
> >>          u32 reg;
> >>
> >> +       dynamic_replicator_reset(drvdata);
> >> +
> >
> > Again you are trying to mask an issue with this. Is the firmware
> > using the replicator for anything ? If so, this needs to be claimed
> > to prevent us from using it.
> >
>
> I was trying to narrow down further as you suggested. There are other
> ETMs like AOP ETM which use this replicator, will need to check with the
> firmware team for details.
>
> Thanks,
> Sai
>
> --
> QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a
> member
> of Code Aurora Forum, hosted by The Linux Foundation



-- 
Mike Leach
Principal Engineer, ARM Ltd.
Manchester Design Centre. UK

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
