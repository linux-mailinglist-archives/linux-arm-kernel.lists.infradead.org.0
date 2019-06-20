Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F15574D197
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 17:07:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=APer3pG8YCWE+9FXiVbikxxR7MlLm3YHqOUorPp5MRE=; b=akn59CqiRJ8R7U
	3o0aJRS3B3u27PvyN7Rz5V2ZBEjQFTzeuBnn5YlF6SfNO7Z9CrDxTYa2dnXgU3oyw5BoCuR+RsKJ8
	8iTgiwdZebetvCM7NEVjvqXKbbaFCJYdNBwAr4knNV+B7mv6aOLwLb2TMi58+B1GgXRSnis4ZzGt9
	uZA4K3WFO2rPOVJoWJSp3D+6ZkJ9wmZyEqNMsRquUWk3do1VGA92jJmTVPgj/EzvWvwDRAKIktVXP
	I7utxs1uo86dTFdN943jApESwxfTbTbgQyBlgCVTWKAAeQUbBSBT0I6f6MYuegTDkeO/meIBi1m/d
	SKmiIp+5WwaOtNeBpnfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdyea-00011M-Vf; Thu, 20 Jun 2019 15:07:09 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdyYg-0003PL-MR
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 15:01:04 +0000
Received: by mail-io1-xd43.google.com with SMTP id w25so276946ioc.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Jun 2019 08:01:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1bOE/P3cR1iycwMiIqmoK7G72wonhBhp5el0vtUYfgQ=;
 b=TXQKaoL8pKLtNAkT0fOzOfdeEFt9s87c1YYuQFVq64hOu6hXhfLX3DgKjoPWmqyn55
 k83HrB9XQJj9cvUpvvypi7UAPCeJLUD8+T+dzV3fuHt3dikJOt5fkxurSRM4NG9c+cTx
 mCkw1Bzzzc+ZVpFPpDSMmbfURFTgR7aR0nH7kpzr8ACxMDSQkpt7d/88A4Tj5qBeWvMH
 NkjziepywVGJTOQ0+H8wZ2HeB0upB7BWdklyto/tSM0UusvgQLnJMyC3rbbpH4f8vIlt
 3N1zfPBcsf8bennBvwBaOvqTqt6Z8n8X1yEFC4zIFfv8V9EYYGISX99ukj08GOx3jruO
 aEnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1bOE/P3cR1iycwMiIqmoK7G72wonhBhp5el0vtUYfgQ=;
 b=novixEJwKXuDFIzSFL6g/opFdrw4pExKeI3sHlhYX1OynRihfqn0vxo6kEBDlEFbgM
 UlhL1ZGNxVrvhjQCXdqRDV+7MkI9U68+Gpxw7whl8ZcsYghvcatzUJIZvB8Iec+knlWd
 FBTt/G3ihU6HsJ8z2UOfXRZjSvc6emimPpMBx6TgOhxxURQelrMtTEsQMjYRtuTiwROI
 v3rLrpjcXCeJIP1tfZvpEizX0yrw9+AA5enjS9NG1OR1jePcumx2WjJuMY6rtRAHxm1R
 gwaOWa0G+3ajkxCZ7VbM49tMlWNlja4oUfpMJrXJJR3/Sp7v+5Nid8OqqPmn+kPAw1Xl
 PTlQ==
X-Gm-Message-State: APjAAAWWvXFjCvqTl7ebk04YfSUWyC98mOcvEHhc4AsjRJ+LSbcY4+2I
 JA4UFum+rSBnm9mT3YA3IUOymI8oPoOUZ1RzXhKFW2NF988=
X-Google-Smtp-Source: APXvYqxBl7ft2Jnjk3WlAEqEHUw7bySVXYWz3ESyxcvXGgpNcgVFkuYDzBudJTnmM93unYZF+JNXxsIVZ/Rw816uLPM=
X-Received: by 2002:a02:b914:: with SMTP id v20mr82198963jan.83.1561042861577; 
 Thu, 20 Jun 2019 08:01:01 -0700 (PDT)
MIME-Version: 1.0
References: <20190618202623.GA53651@gerhold.net>
 <a51f117f-c48d-d3f4-c3d1-9b584e3a055f@arm.com>
 <20190619183904.GB937@gerhold.net>
 <0dcea9a1-999d-7d85-267e-c3bfcfcfa95a@codeaurora.org>
 <6589bf4d-5b39-c95e-0ee5-aaf35a87b40e@arm.com>
In-Reply-To: <6589bf4d-5b39-c95e-0ee5-aaf35a87b40e@arm.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Thu, 20 Jun 2019 09:00:50 -0600
Message-ID: <CANLsYkyX3x_mmkJ2=f6C+7iSMhO+1NzNmkKqN-oUEjNPCUiAJg@mail.gmail.com>
Subject: Re: Coresight causes synchronous external abort on msm8916
To: Suzuki K Poulose <suzuki.poulose@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_080102_740288_73A44CB3 
X-CRM114-Status: GOOD (  38.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Rajendra Nayak <rnayak@codeaurora.org>, Stephan Gerhold <stephan@gerhold.net>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 David Brown <david.brown@linaro.org>, Andy Gross <agross@kernel.org>,
 Sibi Sankar <sibis@codeaurora.org>, Vivek Gautam <vivek.gautam@codeaurora.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 20 Jun 2019 at 03:06, Suzuki K Poulose <suzuki.poulose@arm.com> wrote:
>
>
>
> On 20/06/2019 07:29, Sai Prakash Ranjan wrote:
> > Hi Stephan,
> >
> > On 6/20/2019 12:09 AM, Stephan Gerhold wrote:
> >> Hi,
> >>
> >> On Wed, Jun 19, 2019 at 09:49:03AM +0100, Suzuki K Poulose wrote:
> >>> Hi Stephan,
> >>>
> >>> On 18/06/2019 21:26, Stephan Gerhold wrote:
> >>>> Hi,
> >>>>
> >>>> I'm trying to run mainline Linux on a smartphone with MSM8916 SoC.
> >>>> It works surprisingly well, but the coresight devices seem to cause the
> >>>> following crash shortly after userspace starts:
> >>>>
> >>>>        Internal error: synchronous external abort: 96000010 [#1] PREEMPT SMP
> >>>
> >>> ...
> >>>
> >>>
> >>>>
> >>>> In this case I'm using a simple device tree similar to apq8016-sbc,
> >>>> but it also happens using something as simple as msm8916-mtp.dts
> >>>> on this particular device.
> >>>>      (Attached: dmesg log with msm8916-mtp.dts and arm64 defconfig)
> >>>>
> >>>> I can avoid the crash and boot without any further problems by disabling
> >>>> every coresight device defined in msm8916.dtsi, e.g.:
> >>>>
> >>>>    tpiu@820000 { status = "disabled"; };
> >>>
> >>> ...
> >>>
> >>>>
> >>>> I don't have any use for coresight at the moment,
> >>>> but it seems somewhat odd to put this in the device specific dts.
> >>>>
> >>>> Any idea what could be causing this crash?
> >>>
> >>> This is mostly due to the missing power domain support. The CoreSight
> >>> components are usually in a debug power domain. So unless that is turned on,
> >>> (either by specifying proper power domain ids for power management protocol
> >>> supported by the firmware OR via other hacks - e.g, connecting a DS-5 to
> >>> keep the debug power domain turned on , this works on Juno -).
> >>
> >> Interesting, thanks a lot!
> >>
> >> In this case I'm wondering how it works on the Dragonboard 410c.
> >> Does it enable these power domains in the firmware?
> >>     (Assuming it boots without this error...)
> >>
> >> If coresight is not working properly on all/most msm8916 devices,
> >> shouldn't coresight be disabled by default in msm8916.dtsi?
> >> At least until those power domains can be set up by the kernel.
> >>
> >> If this is a device-specific issue, what would be an acceptable solution
> >> for mainline?
> >> Can I turn on these power domains from the kernel?
> >> Or is it fine to disable coresight for this device with the snippet above?
> >>
> >> I'm not actually trying to use coresight, I just want the device to boot :)
> >> And since I am considering submitting my device tree for inclusion in
> >> mainline, I want to ask in advance how I should tackle this problem.
> >>
> >> Thanks!
> >> Stephan
> >>
> >
> > This doesn't seem like cpuidle or debug power domain issue, but looks
>
> We are not yet there in the Coresight driver and we crash at AMBA bus layer
> trying to read the PID of the CoreSight device. So I doubt if this is an
> issue your patch trying to address. I still think this is a debug power domain
> issue. More your patch below.
>
> > like cpu affinity issue. Can you please try out this patch and let us
> > know?
>
> In general I am for the patch, breaking the "assumption" that a missing CPU
> phandle gives you the affinity of "0".
>
> >
> > diff --git a/drivers/hwtracing/coresight/coresight-cpu-debug.c
> > b/drivers/hwtracing/coresight/coresight-cpu-debug.c
> > index e8819d750938..9acf9f190d42 100644
> > --- a/drivers/hwtracing/coresight/coresight-cpu-debug.c
> > +++ b/drivers/hwtracing/coresight/coresight-cpu-debug.c
> > @@ -579,7 +579,11 @@ static int debug_probe(struct amba_device *adev,
> > const struct amba_id *id)
> >       if (!drvdata)
> >               return -ENOMEM;
> >
> > -     drvdata->cpu = np ? of_coresight_get_cpu(np) : 0;
> > +     drvdata->cpu = np ? of_coresight_get_cpu(np) : -ENODEV;
>
>
> of_coresight_get_cpu() must be modified to return -ENODEV, rather than
> defaulting to 0. This is something that is required by the CTI driver too.
> And lets not bring up something and assume it belongs to CPU0.
>
> > +     if (drvdata->cpu == -ENODEV) {
> > +             return -ENODEV;
> > +     }
> > +
> >       if (per_cpu(debug_drvdata, drvdata->cpu)) {
> >               dev_err(dev, "CPU%d drvdata has already been initialized\n",
> >                       drvdata->cpu);
> > diff --git a/drivers/hwtracing/coresight/coresight-etm4x.c
> > b/drivers/hwtracing/coresight/coresight-etm4x.c
> > index 8bb0092c7ec2..660432acbac0 100644
> > --- a/drivers/hwtracing/coresight/coresight-etm4x.c
> > +++ b/drivers/hwtracing/coresight/coresight-etm4x.c
> > @@ -1107,7 +1107,10 @@ static int etm4_probe(struct amba_device *adev,
> > const struct amba_id *id)
> >
> >       spin_lock_init(&drvdata->spinlock);
> >
> > -     drvdata->cpu = pdata ? pdata->cpu : 0;
>
> I believe, we should simply abort when we don't have pdata. There is no point
> in registering this ETM unless we know where this is connected to.
>
> > +     drvdata->cpu = pdata ? pdata->cpu : -ENODEV;
> > +     if (drvdata->cpu == -ENODEV) {
> > +             return -ENODEV;
> > +       }
>
> >
> >       cpus_read_lock();
> >       etmdrvdata[drvdata->cpu] = drvdata;
> > diff --git a/drivers/hwtracing/coresight/of_coresight.c
> > b/drivers/hwtracing/coresight/of_coresight.c
> > index 7045930fc958..8c1b90ba233c 100644
> > --- a/drivers/hwtracing/coresight/of_coresight.c
> > +++ b/drivers/hwtracing/coresight/of_coresight.c
> > @@ -153,14 +153,14 @@ int of_coresight_get_cpu(const struct device_node
> > *node)
> >       struct device_node *dn;
> >
> >       dn = of_parse_phandle(node, "cpu", 0);
> > -     /* Affinity defaults to CPU0 */
> > +     /* Affinity defaults to invalid */
> >       if (!dn)
> > -             return 0;
> > +             return -ENODEV;
> >       cpu = of_cpu_node_to_id(dn);
> >       of_node_put(dn);
> >
> > -     /* Affinity to CPU0 if no cpu nodes are found */
> > -     return (cpu < 0) ? 0 : cpu;
> > +     /* Affinity to invalid if no cpu nodes are found */
> > +     return (cpu < 0) ? -ENODEV : cpu;
>
>         return cpu ?
>
> If you split this into 3 different patches, I would be happy to Ack them.
>
> Mathieu,
>
> What do you think ?

I'm all for it.  Defaulting to '0' was valid in an era that is long
gone and needs to be fixed.

>
>
> Cheers
> Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
