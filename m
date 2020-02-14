Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C1C715CF1B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 01:36:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IeutOxld1/1BBemAtBc1JVcUmeBEW7iIXZONCNrIxxs=; b=tMBO67oqBnf4Uu
	ySBa+b+r7FiBsv0S3RB66F/pMdfo6sIyGvPWPqJy97BcdWVjYSAD1h3Z+D6PwDxqkL79+B4JEDHRD
	3V+NMV6hhUYdGVal2RpRj4+BwUtn1n9vZAIXNku90YzGVX/1Mt2dkGr7iNM+TqgL/Xll1UGTAR0B7
	1xfacQJ83/eZ0d6f8HHTzAhg6kWs3qgsKkGtO/pTqcm8LiWYh+GE4fZ6lDOXUQ5/DSTAjYa6pCW7a
	E7RyCru5yWTZdw6yZTSpvirdogVwnZ2oGbfnhMbSeKLuTAJWU03/UYWuaDnyY2h3bQ6N2LTFI2xAT
	WkN06dyVk0zwFR0Mo46Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2Oxq-0007oy-7N; Fri, 14 Feb 2020 00:36:14 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Oxh-0007oG-Ul
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 00:36:07 +0000
Received: from p5b06da22.dip0.t-ipconnect.de ([91.6.218.34]
 helo=nanos.tec.linutronix.de)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1j2Oxa-0005sT-OQ; Fri, 14 Feb 2020 01:35:58 +0100
Received: by nanos.tec.linutronix.de (Postfix, from userid 1000)
 id 39163101115; Fri, 14 Feb 2020 01:35:58 +0100 (CET)
From: Thomas Gleixner <tglx@linutronix.de>
To: Ionela Voinescu <ionela.voinescu@arm.com>, catalin.marinas@arm.com,
 will@kernel.org, mark.rutland@arm.com, maz@kernel.org, suzuki.poulose@arm.com,
 sudeep.holla@arm.com, lukasz.luba@arm.com, valentin.schneider@arm.com,
 rjw@rjwysocki.net, ionela.voinescu@arm.com
Subject: Re: [PATCH v3 7/7] clocksource/drivers/arm_arch_timer: validate
 arch_timer_rate
In-Reply-To: <20200211184542.29585-8-ionela.voinescu@arm.com>
References: <20200211184542.29585-1-ionela.voinescu@arm.com>
 <20200211184542.29585-8-ionela.voinescu@arm.com>
Date: Fri, 14 Feb 2020 01:35:58 +0100
Message-ID: <87mu9mgg41.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_163606_132787_383CA207 
X-CRM114-Status: GOOD (  14.30  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a0a:51c0:0:12e:550:0:0:1 listed in] [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-doc@vger.kernel.org, peterz@infradead.org, viresh.kumar@linaro.org,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org, mingo@redhat.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ionela Voinescu <ionela.voinescu@arm.com> writes:

> From: Valentin Schneider <valentin.schneider@arm.com>
>
> Using an arch timer with a frequency of less than 1MHz can result in an
> incorrect functionality of the system which assumes a reasonable rate.
>
> One example is the use of activity monitors for frequency invariance
> which uses the rate of the arch timer as the known rate of the constant
> cycle counter in computing its ratio compared to the maximum frequency
> of a CPU. For arch timer frequencies less than 1MHz this ratio could
> end up being 0 which is an invalid value for its use.
>
> Therefore, warn if the arch timer rate is below 1MHz which contravenes
> the recommended architecture interval of 1 to 50MHz.
>
> Signed-off-by: Ionela Voinescu <ionela.voinescu@arm.com>

So this patch is from Valentin. Where is his Signed-off-by?

>  
> +static int validate_timer_rate(void)
> +{
> +	if (!arch_timer_rate)
> +		return -EINVAL;
> +
> +	/* Arch timer frequency < 1MHz can cause trouble */
> +	WARN_ON(arch_timer_rate < 1000000);

This does not make sense to me. If the rate is out of bounds then why
warn an just continue instead of making it fail?

Thanks,

        tglx

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
