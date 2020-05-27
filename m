Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1397A1E41F8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 14:23:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3bKaiW9xp2A21FdZWhM/jrwp/Qp4OiNOdVRP7kto1zI=; b=NjwpbXCGMhz3lP
	vgiciIqR6D0uTQsDZjF2ivn0p27SB04Wum7IKqFNk3g3PYqYZtPe//jYQBq/bWb4D3cRo3u7r1Zez
	gXg/1tDAM4IP6/iCbMNYNEsHIska1XJfefwrTbYKwB90483bRasF9ZE6tSsUqaZvVc7RFRj9n1+oa
	x4kyJUaIPSTlSNL+SqyK+VqyJb5Xp/2+zHnmEWZ8cZ5fEB2eOQySeqX07YcSyXxPD4m/hKjctj0Kd
	3MIbyKwwudmGfF6ZkruovvVjpd8QIdtefoh0qfM1WWoS3Ifg+j3RhfbrJucYGG6UkQX54fYxGEQoH
	FrpesUFcsP8jK/RnYGcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdv5B-00073R-4v; Wed, 27 May 2020 12:22:53 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdv4z-00072n-1f
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 12:22:42 +0000
Received: by mail-lj1-x241.google.com with SMTP id z13so18968425ljn.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 05:22:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9b4AFKGw4ZZqotl5s77CmzWTjWCoCCtFECSbH9IYsSA=;
 b=m/5Y8vGmTNwpX4AY/6YSPBzyxbV9CKofpxuLOV0rT4OW1WUwRQh+L2hmPkrR89JHho
 mp29JMpeTbkjSCFWI18PSTIgrgmgOjy6tersXf5zegumqtO4wPcztIOrlczKxAfBaip/
 dkflMMQCcfol0dxbIx4Vta1k0hWUb/ffJAZUrQBY2F7BSIYH4RLzFuT9RagreGHhUs+E
 3L0R+LudxVmrH/FaiNK0F4I8Vh+kXtqFQu+TEGgkAFqZTdN1Sg6Gr7h26V9rvn/PGWT1
 Ny2xAtgPKwRyY+mbbM43KJUc8HGCnx2gqGjVEeQgynYclzEh+vg+qkDRfKBwTGMzbIHG
 +zqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9b4AFKGw4ZZqotl5s77CmzWTjWCoCCtFECSbH9IYsSA=;
 b=SvgcjGuSGQXhAJ+2SSiaF/OIKrAKBZ/udYmSKB67T80RTjIArsXITNexOpMiGCc4zQ
 FGob+Uu37MGYZN34k3/0tFovIq+JzHXvJ4UPoy2ebRxtFM5eXM1cHKXrh2umtgFTMGLa
 CbsHk44jnVuC+t2TlGNvjmr8kqwfdPg7E2RAncJgcwbzZFBNM128Z9tylmLtA8OXtmzi
 dv/5UMjpvuuGolGNlyn4sUXKaNMQp4QYxBjYYoemMbZ7A/9X609vTJOEhuqD8XJMLn2E
 fntj9U5/1pXp4xLWm9CUcfK6r3ladzvC4+5otNMEj7Lws1p10F9v/qd19o7b2V2/xK7B
 VUsA==
X-Gm-Message-State: AOAM532W24H2lbVt1QfN5HwuG23O3JiTa58Y5yoPT79NReJT7sD2LqG1
 Zj18Z/7YgEkiqsH9yE1ZbyKglIeCOveoU7xzzz7aEA==
X-Google-Smtp-Source: ABdhPJxTsWDgeOe5Djkxbz5Vhm5vLbaAAlGQFkDtkkPWtJUSrez+RPSqeMSp1e9eKl58SCBsVQ5ilU3q78cT0eLqwnc=
X-Received: by 2002:a2e:9510:: with SMTP id f16mr3179414ljh.111.1590582158421; 
 Wed, 27 May 2020 05:22:38 -0700 (PDT)
MIME-Version: 1.0
References: <20200526151619.8779-1-benjamin.gaignard@st.com>
 <jhjk10xu1tq.mognet@arm.com> <ab4340c0-bda3-e752-9073-e162e6325bb1@st.com>
In-Reply-To: <ab4340c0-bda3-e752-9073-e162e6325bb1@st.com>
From: Vincent Guittot <vincent.guittot@linaro.org>
Date: Wed, 27 May 2020 14:22:27 +0200
Message-ID: <CAKfTPtBt6Ju-CnETnn6_FkgR0CAJ+jYnySz9OHP9X2hmxWHM7w@mail.gmail.com>
Subject: Re: [RFC RESEND 0/3] Introduce cpufreq minimum load QoS
To: Benjamin GAIGNARD <benjamin.gaignard@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_052241_095874_A7D13DD6 
X-CRM114-Status: GOOD (  21.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
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
Cc: "len.brown@intel.com" <len.brown@intel.com>,
 Alexandre TORGUE <alexandre.torgue@st.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "viresh.kumar@linaro.org" <viresh.kumar@linaro.org>,
 "pavel@ucw.cz" <pavel@ucw.cz>, "rjw@rjwysocki.net" <rjw@rjwysocki.net>,
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

On Wed, 27 May 2020 at 13:17, Benjamin GAIGNARD
<benjamin.gaignard@st.com> wrote:
>
>
>
> On 5/27/20 12:09 PM, Valentin Schneider wrote:
> > Hi Benjamin,
> >
> > On 26/05/20 16:16, Benjamin Gaignard wrote:
> >> A first round [1] of discussions and suggestions have already be done on
> >> this series but without found a solution to the problem. I resend it to
> >> progress on this topic.
> >>
> > Apologies for sleeping on that previous thread.
> >
> > So what had been suggested over there was to use uclamp to boost the
> > frequency of the handling thread; however if you use threaded IRQs you
> > get RT threads, which already get the max frequency by default (at least
> > with schedutil).
> >
> > Does that not work for you, and if so, why?
> That doesn't work because almost everything is done by the hardware blocks
> without charge the CPU so the thread isn't running. I have done the
> tests with schedutil
> and ondemand scheduler (which is the one I'm targeting). I have no
> issues when using
> performance scheduler because it always keep the highest frequencies.

IMHO, the only way to ensure a min frequency for anything else than a
thread is to use freq_qos_add_request() just like cpufreq cooling
device but for the opposite QoS. This can be applied only on the
frequency domain of the CPU which handles the interrupt.
Have you also checked the wakeup latency of your idle state ?

>
>
> >
> >> When start streaming from the sensor the CPU load could remain very low
> >> because almost all the capture pipeline is done in hardware (i.e. without
> >> using the CPU) and let believe to cpufreq governor that it could use lower
> >> frequencies. If the governor decides to use a too low frequency that
> >> becomes a problem when we need to acknowledge the interrupt during the
> >> blanking time.
> >> The delay to ack the interrupt and perform all the other actions before
> >> the next frame is very short and doesn't allow to the cpufreq governor to
> >> provide the required burst of power. That led to drop the half of the frames.
> >>
> >> To avoid this problem, DCMI driver informs the cpufreq governors by adding
> >> a cpufreq minimum load QoS resquest.
> >>
> >> Benjamin
> >>
> >> [1] https://lkml.org/lkml/2020/4/24/360
> >>
> >> Benjamin Gaignard (3):
> >>    PM: QoS: Introduce cpufreq minimum load QoS
> >>    cpufreq: governor: Use minimum load QoS
> >>    media: stm32-dcmi: Inform cpufreq governors about cpu load needs
> >>
> >>   drivers/cpufreq/cpufreq_governor.c        |   5 +
> >>   drivers/media/platform/stm32/stm32-dcmi.c |   8 ++
> >>   include/linux/pm_qos.h                    |  12 ++
> >>   kernel/power/qos.c                        | 213 ++++++++++++++++++++++++++++++
> >>   4 files changed, 238 insertions(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
