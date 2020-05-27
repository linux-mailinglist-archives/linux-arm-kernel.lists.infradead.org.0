Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80F9C1E3EAF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 12:09:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7acqRJxmdAAoq+X4AMWE7iq/D7BbfLmr9ttAcz5/dy4=; b=ik+Q58xHM9ik/m2E6wvmNRqFmL
	9kfB0IRhMeXc8wwBEMVr/O2W421U1VC4sT/YqQac3CeENxO5ax2gtPO4PooSTj8gQVMixLE1bTN7w
	lskujL12k7e2WF6Lk5YW0SeVC59qDaMc8VBW2ixyzgTkhs1VXJNd23RzPcDttVtYO1f1ROFSq6XLI
	XUqhRynYKqt3laFVvSAF3cldKshLFh3BwVmUtX/ta2v1ekZN2Fd6Kl5gRr2Nb2bKcFNmF7d41io2C
	GvO0RArZfnn2UHJ4RfiNNEXUABaGzPaXVdNA+4BFtZM71yB++yd4BN09BrRyggc/NXwr7d1Jx6hVC
	suPnjUig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdt01-00042Y-22; Wed, 27 May 2020 10:09:25 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdszr-00041l-Fd
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 10:09:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D58AB55D;
 Wed, 27 May 2020 03:09:12 -0700 (PDT)
Received: from e113632-lin (e113632-lin.cambridge.arm.com [10.1.194.46])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BEC213F6C4;
 Wed, 27 May 2020 03:09:10 -0700 (PDT)
References: <20200526151619.8779-1-benjamin.gaignard@st.com>
User-agent: mu4e 0.9.17; emacs 26.3
From: Valentin Schneider <valentin.schneider@arm.com>
To: Benjamin Gaignard <benjamin.gaignard@st.com>
Subject: Re: [RFC RESEND 0/3] Introduce cpufreq minimum load QoS
In-reply-to: <20200526151619.8779-1-benjamin.gaignard@st.com>
Date: Wed, 27 May 2020 11:09:05 +0100
Message-ID: <jhjk10xu1tq.mognet@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_030915_564813_D3F6633F 
X-CRM114-Status: GOOD (  13.87  )
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
Cc: len.brown@intel.com, alexandre.torgue@st.com, linux-pm@vger.kernel.org,
 viresh.kumar@linaro.org, pavel@ucw.cz, rjw@rjwysocki.net,
 linux-kernel@vger.kernel.org, mcoquelin.stm32@gmail.com, hugues.fruchet@st.com,
 mchehab@kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Hi Benjamin,

On 26/05/20 16:16, Benjamin Gaignard wrote:
> A first round [1] of discussions and suggestions have already be done on
> this series but without found a solution to the problem. I resend it to
> progress on this topic.
>

Apologies for sleeping on that previous thread.

So what had been suggested over there was to use uclamp to boost the
frequency of the handling thread; however if you use threaded IRQs you
get RT threads, which already get the max frequency by default (at least
with schedutil).

Does that not work for you, and if so, why?

> When start streaming from the sensor the CPU load could remain very low
> because almost all the capture pipeline is done in hardware (i.e. without
> using the CPU) and let believe to cpufreq governor that it could use lower
> frequencies. If the governor decides to use a too low frequency that
> becomes a problem when we need to acknowledge the interrupt during the
> blanking time.
> The delay to ack the interrupt and perform all the other actions before
> the next frame is very short and doesn't allow to the cpufreq governor to
> provide the required burst of power. That led to drop the half of the frames.
>
> To avoid this problem, DCMI driver informs the cpufreq governors by adding
> a cpufreq minimum load QoS resquest.
>
> Benjamin
>
> [1] https://lkml.org/lkml/2020/4/24/360
>
> Benjamin Gaignard (3):
>   PM: QoS: Introduce cpufreq minimum load QoS
>   cpufreq: governor: Use minimum load QoS
>   media: stm32-dcmi: Inform cpufreq governors about cpu load needs
>
>  drivers/cpufreq/cpufreq_governor.c        |   5 +
>  drivers/media/platform/stm32/stm32-dcmi.c |   8 ++
>  include/linux/pm_qos.h                    |  12 ++
>  kernel/power/qos.c                        | 213 ++++++++++++++++++++++++++++++
>  4 files changed, 238 insertions(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
