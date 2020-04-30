Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F8BA1BFE68
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 16:34:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=lAGhK9hDxOi+gig5RCt8w4gw+AxAD6XOZwuE+MGpJZI=; b=fKynlh2kIQLs/QhG00MkFkgeeF
	cUnhQmEtlp7+jKEP0GxgwZeEISbtrD5hcCGpeYiZp34CrNRwpl2GaV6nMyNutyQwk1+pM94TU+pfG
	YvfC/8wiR7QUR6IPAg13oXDG8X6eebbWThVGuWko2wSgRa1jBn6L7iJBiB+i0FQLm2bJ+L6SluuFB
	QYKZF3Kd082febHTP5Aa5IVM+nd8q9d5RoJw2yMPHVu/vvDgvKu+4FeDcP4jOF0cf5MAlhb+38vcM
	NndZ3bIZ08zJMZk/OcXqhdWQdfV7q32UI3HDMfnLsHTOcTRlbRbUFnqAwleN/qrq/NqzsdROLUXRt
	SLQPODuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUAGA-0003yl-7z; Thu, 30 Apr 2020 14:33:56 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUAFw-0003xk-PJ
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 14:33:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D8BAD1063;
 Thu, 30 Apr 2020 07:33:39 -0700 (PDT)
Received: from e113632-lin (e113632-lin.cambridge.arm.com [10.1.194.46])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DA72A3F68F;
 Thu, 30 Apr 2020 07:33:37 -0700 (PDT)
References: <20200424114058.21199-1-benjamin.gaignard@st.com>
 <7657495.QyJl4BcWH5@kreacher> <30cdecf9-703a-eb2b-7c2b-f1e21c805add@st.com>
 <70e743cf-b88e-346a-5114-939b8724c83d@arm.com>
 <6b5cde14-58b3-045d-9413-223e66b87bf0@st.com>
 <CAJZ5v0h6t6perZiibCWhEh1_V0pSXqFe-z22TFqH7KTFXYmqpQ@mail.gmail.com>
 <a234e123-6c15-8e58-8921-614b58ca24ca@st.com>
User-agent: mu4e 0.9.17; emacs 26.3
From: Valentin Schneider <valentin.schneider@arm.com>
To: Benjamin GAIGNARD <benjamin.gaignard@st.com>
Subject: Re: [RFC 0/3] Introduce cpufreq minimum load QoS
In-reply-to: <a234e123-6c15-8e58-8921-614b58ca24ca@st.com>
Date: Thu, 30 Apr 2020 15:33:35 +0100
Message-ID: <jhjtv11cabk.mognet@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_073340_863326_8CC24561 
X-CRM114-Status: GOOD (  10.85  )
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
 "Rafael J. Wysocki" <rafael@kernel.org>,
 "viresh.kumar@linaro.org" <viresh.kumar@linaro.org>,
 "pavel@ucw.cz" <pavel@ucw.cz>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Patrick Bellasi <patrick.bellasi@arm.com>,
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


On 30/04/20 14:46, Benjamin GAIGNARD wrote:
>> That's not what I meant.
>>
>> I suppose that the interrupt processing in question takes place in
>> process context and so you may set the lower clamp on the utilization
>> of the task carrying that out.
>
> I have try to add this code when starting streaming (before the first
> interrupt) the frames from the sensor:
> const struct sched_attr sched_attr = {
>    .sched_util_min = 10000, /* 100% of usage */

Unless you play with SCHED_CAPACITY_SHIFT, the max should be 1024 -
i.e. SCHED_CAPACITY_SCALE. That's a really big boost, but that's for you to
benchmark.

>    .sched_flags = SCHED_FLAG_UTIL_CLAMP_MIN,
>   };
>
> sched_setattr(current, &sched_attr);
>
> I don't see any benefices maybe there is some configuration flags to set.
>
> How changing sched_util_min could impact cpufreq ondemand governor ?
> Does it change the value returned when the governor check the idle time ?
>

You'll have to use the schedutil governor for uclamp to have an effect. And
arguably that's what you should be using, unless something explicitly
prevents you from doing that.

>>
>> Alternatively, that task may be a deadline one.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
