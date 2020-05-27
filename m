Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C24BF1E46C8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 17:03:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=bm5izDAP1pv3/+vVlCs7DmpE6R9+fy0/lZqsri/7kWs=; b=DvOj6Ay8ElP5oWc+lH1P9o75Ru
	qyLeIgP2NUPdXrwbyjvZm0A68CaqkltdbS3zNLT0EmDOCnjZPEQVNPBAr1sy1y1kyUi9u6Bdz9A/E
	nErm18LOKDJVEcxmxzGOjOSRaj3x886tABPTLtqpXuMZJ3n52GRd6QkRoaM/7IChSKB46GAZ998Sz
	Gy9BcyHxiyqhiVngCevXeaokfXbJPZBYWS9JN5NOqmJQrKt9c6Am3uSP8FFJVXFB5nlx9feghVRXU
	h+8w0WP6iM3PaGbc7sTKkJCwBNGThZnTYN3N1oZi3bzRDP+ta8iLlN36fynOdu8GT/CLpbxs5fwZx
	vP4YMx3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdxaY-0007tP-A3; Wed, 27 May 2020 15:03:26 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdxZu-0007g8-37
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 15:02:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BC9AB30E;
 Wed, 27 May 2020 08:02:44 -0700 (PDT)
Received: from e113632-lin (e113632-lin.cambridge.arm.com [10.1.194.46])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A25323F52E;
 Wed, 27 May 2020 08:02:42 -0700 (PDT)
References: <20200526151619.8779-1-benjamin.gaignard@st.com>
 <jhjk10xu1tq.mognet@arm.com> <ab4340c0-bda3-e752-9073-e162e6325bb1@st.com>
 <jhjwo4xinhb.mognet@arm.com> <099f5b6c-aa81-be4a-19bf-52a2fff7b3db@st.com>
User-agent: mu4e 0.9.17; emacs 26.3
From: Valentin Schneider <valentin.schneider@arm.com>
To: Benjamin GAIGNARD <benjamin.gaignard@st.com>
Subject: Re: [RFC RESEND 0/3] Introduce cpufreq minimum load QoS
In-reply-to: <099f5b6c-aa81-be4a-19bf-52a2fff7b3db@st.com>
Date: Wed, 27 May 2020 16:02:37 +0100
Message-ID: <jhjv9khifoy.mognet@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_080246_215746_4ED1E304 
X-CRM114-Status: GOOD (  16.97  )
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


On 27/05/20 14:11, Benjamin GAIGNARD wrote:
> On 5/27/20 2:14 PM, Valentin Schneider wrote:
>> On 27/05/20 12:17, Benjamin GAIGNARD wrote:
>>> On 5/27/20 12:09 PM, Valentin Schneider wrote:
>>>> Hi Benjamin,
>>>>
>>>> On 26/05/20 16:16, Benjamin Gaignard wrote:
>>>>> A first round [1] of discussions and suggestions have already be done on
>>>>> this series but without found a solution to the problem. I resend it to
>>>>> progress on this topic.
>>>>>
>>>> Apologies for sleeping on that previous thread.
>>>>
>>>> So what had been suggested over there was to use uclamp to boost the
>>>> frequency of the handling thread; however if you use threaded IRQs you
>>>> get RT threads, which already get the max frequency by default (at least
>>>> with schedutil).
>>>>
>>>> Does that not work for you, and if so, why?
>>> That doesn't work because almost everything is done by the hardware blocks
>>> without charge the CPU so the thread isn't running.
>> I'm not sure I follow; the frequency of the CPU doesn't matter while
>> your hardware blocks are spinning, right? AIUI what matters is running
>> your interrupt handler / action at max freq, which you get if you use
>> threaded IRQs and schedutil.
> Yes but not limited to schedutil.
> Given the latency needed to change of frequencies I think it could
> already too late
> to change the CPU frequency when handling the threaded interrupt.

Right, on my Juno the transition latency (i.e. worse case) is about
1.2ms; I can see that eating into your time budget, depending on the
framerate you're going for.

Vincent's got a point, if you can limit that max-freq-hold to a single
frequency domain, that would probably be a tad better.

Thanks for persisting through my questioning :-)

>>
>> I think it would help if you could clarify which tasks / parts of your
>> pipeline you need running at high frequencies. The point is that setting
>> a QoS request affects all tasks, whereas we could be smarter and only
>> boost the required tasks.
> What make us drop frames is that the threaded IRQ is scheduled too late.
> The not thread part of the interrupt handler where we clear the
> interrupt flags
> is going fine but the thread part not.
>>
>>> I have done the
>>> tests with schedutil
>>> and ondemand scheduler (which is the one I'm targeting). I have no
>>> issues when using
>>> performance scheduler because it always keep the highest frequencies.
>>>
>>>
>>>>> When start streaming from the sensor the CPU load could remain very low
>>>>> because almost all the capture pipeline is done in hardware (i.e. without
>>>>> using the CPU) and let believe to cpufreq governor that it could use lower
>>>>> frequencies. If the governor decides to use a too low frequency that
>>>>> becomes a problem when we need to acknowledge the interrupt during the
>>>>> blanking time.
>>>>> The delay to ack the interrupt and perform all the other actions before
>>>>> the next frame is very short and doesn't allow to the cpufreq governor to
>>>>> provide the required burst of power. That led to drop the half of the frames.
>>>>>
>>>>> To avoid this problem, DCMI driver informs the cpufreq governors by adding
>>>>> a cpufreq minimum load QoS resquest.
>>>>>
>>>>> Benjamin
>>>>>
>>>>> [1] https://lkml.org/lkml/2020/4/24/360
>>>>>
>>>>> Benjamin Gaignard (3):
>>>>>     PM: QoS: Introduce cpufreq minimum load QoS
>>>>>     cpufreq: governor: Use minimum load QoS
>>>>>     media: stm32-dcmi: Inform cpufreq governors about cpu load needs
>>>>>
>>>>>    drivers/cpufreq/cpufreq_governor.c        |   5 +
>>>>>    drivers/media/platform/stm32/stm32-dcmi.c |   8 ++
>>>>>    include/linux/pm_qos.h                    |  12 ++
>>>>>    kernel/power/qos.c                        | 213 ++++++++++++++++++++++++++++++
>>>>>    4 files changed, 238 insertions(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
