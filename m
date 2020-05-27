Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E98961E41E6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 14:17:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=eLFtZu7ILs2E+IeD0GNt5j5zKiznVIN6TrYyB0VvmmA=; b=Y4HEf8//NRmfWd/zUGYkYg1K36
	HPzxAf0LJPEYEEEXVHpsJKiFLm/uYM/mQTYa9pR3VKFKx2yXHpQmIvrjBYeFq1OzBBnC6fw6Esh8r
	v7e2eYJcPIO6cm7hknJ3EjDpyNXK6UUFRmo5iJf/EicqZ4ZqM1SVIWSpmdj8PdRQmGBaezWv2HQt2
	3GyrJ8SySgZ5PRrpYCurpU9RtECyZ+OkWpub4w6gzjr1o9FCC8HAwo8QmGzF1rHA9ter3zWVBhY8g
	0rDVCCzA4deFZisuBZDphYT6LieW+qEoLf8XpYPJWVSbo/k1A6seGgT4o/WI/8dEnDs+0iiRjr4vd
	woZ2HGIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdv06-0003yv-L7; Wed, 27 May 2020 12:17:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdux9-000810-4O
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 12:14:45 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 52F8755D;
 Wed, 27 May 2020 05:14:33 -0700 (PDT)
Received: from e113632-lin (e113632-lin.cambridge.arm.com [10.1.194.46])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3B21C3F305;
 Wed, 27 May 2020 05:14:31 -0700 (PDT)
References: <20200526151619.8779-1-benjamin.gaignard@st.com>
 <jhjk10xu1tq.mognet@arm.com> <ab4340c0-bda3-e752-9073-e162e6325bb1@st.com>
User-agent: mu4e 0.9.17; emacs 26.3
From: Valentin Schneider <valentin.schneider@arm.com>
To: Benjamin GAIGNARD <benjamin.gaignard@st.com>
Subject: Re: [RFC RESEND 0/3] Introduce cpufreq minimum load QoS
In-reply-to: <ab4340c0-bda3-e752-9073-e162e6325bb1@st.com>
Date: Wed, 27 May 2020 13:14:24 +0100
Message-ID: <jhjwo4xinhb.mognet@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_051435_328172_45189D99 
X-CRM114-Status: GOOD (  16.13  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 Hugues FRUCHET <hugues.fruchet@st.com>,
 "mchehab@kernel.org" <mchehab@kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 27/05/20 12:17, Benjamin GAIGNARD wrote:
> On 5/27/20 12:09 PM, Valentin Schneider wrote:
>> Hi Benjamin,
>>
>> On 26/05/20 16:16, Benjamin Gaignard wrote:
>>> A first round [1] of discussions and suggestions have already be done on
>>> this series but without found a solution to the problem. I resend it to
>>> progress on this topic.
>>>
>> Apologies for sleeping on that previous thread.
>>
>> So what had been suggested over there was to use uclamp to boost the
>> frequency of the handling thread; however if you use threaded IRQs you
>> get RT threads, which already get the max frequency by default (at least
>> with schedutil).
>>
>> Does that not work for you, and if so, why?
>
> That doesn't work because almost everything is done by the hardware blocks
> without charge the CPU so the thread isn't running.

I'm not sure I follow; the frequency of the CPU doesn't matter while
your hardware blocks are spinning, right? AIUI what matters is running
your interrupt handler / action at max freq, which you get if you use
threaded IRQs and schedutil.

I think it would help if you could clarify which tasks / parts of your
pipeline you need running at high frequencies. The point is that setting
a QoS request affects all tasks, whereas we could be smarter and only
boost the required tasks.

> I have done the
> tests with schedutil
> and ondemand scheduler (which is the one I'm targeting). I have no
> issues when using
> performance scheduler because it always keep the highest frequencies.
>
>
>>
>>> When start streaming from the sensor the CPU load could remain very low
>>> because almost all the capture pipeline is done in hardware (i.e. without
>>> using the CPU) and let believe to cpufreq governor that it could use lower
>>> frequencies. If the governor decides to use a too low frequency that
>>> becomes a problem when we need to acknowledge the interrupt during the
>>> blanking time.
>>> The delay to ack the interrupt and perform all the other actions before
>>> the next frame is very short and doesn't allow to the cpufreq governor to
>>> provide the required burst of power. That led to drop the half of the frames.
>>>
>>> To avoid this problem, DCMI driver informs the cpufreq governors by adding
>>> a cpufreq minimum load QoS resquest.
>>>
>>> Benjamin
>>>
>>> [1] https://lkml.org/lkml/2020/4/24/360
>>>
>>> Benjamin Gaignard (3):
>>>    PM: QoS: Introduce cpufreq minimum load QoS
>>>    cpufreq: governor: Use minimum load QoS
>>>    media: stm32-dcmi: Inform cpufreq governors about cpu load needs
>>>
>>>   drivers/cpufreq/cpufreq_governor.c        |   5 +
>>>   drivers/media/platform/stm32/stm32-dcmi.c |   8 ++
>>>   include/linux/pm_qos.h                    |  12 ++
>>>   kernel/power/qos.c                        | 213 ++++++++++++++++++++++++++++++
>>>   4 files changed, 238 insertions(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
