Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7435A15A4CC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 10:30:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fwbEYqlVScqRypyxZCKOm4yViKjC/xm0cmwREsEMHoI=; b=m4twcuGVghVhJU
	hF3ir9rKezRt4+DqyN8IE9bJMJBaDsnITqR5Pg7yAqMNOTi0TPCogrLRrS7UeiXD/agLTkIUO85NS
	R9ws3VSa0ps5eQW9LKMYQVpWEWpjOGwvB8+sXxScjYzUWeib3t48glFLFm1ke7zID3GfiU/0iZkGk
	kXYY5pJqGl8NaHqbjH3f+TVLGVfNRgZrZZHMNdbVLal37t8jYQx5ASANPnCw8Ie3OMgFb66iKYii+
	Ah1vhNzT81LTX32jwWBL3Lis1IWPw7guKWHsjBTwPg7Aq7cTW36Nq+IikxpnVeKzYf0frrkkU0y10
	hGqeyTRznr76EjLCKYSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1oM5-0002rf-8W; Wed, 12 Feb 2020 09:30:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1oLy-0002qf-6H
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 09:30:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D521130E;
 Wed, 12 Feb 2020 01:30:38 -0800 (PST)
Received: from [10.1.194.46] (e113632-lin.cambridge.arm.com [10.1.194.46])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D400A3F6CF;
 Wed, 12 Feb 2020 01:30:36 -0800 (PST)
Subject: Re: [PATCH v3 7/7] clocksource/drivers/arm_arch_timer: validate
 arch_timer_rate
To: Ionela Voinescu <ionela.voinescu@arm.com>, catalin.marinas@arm.com,
 will@kernel.org, mark.rutland@arm.com, maz@kernel.org,
 suzuki.poulose@arm.com, sudeep.holla@arm.com, lukasz.luba@arm.com,
 rjw@rjwysocki.net
References: <20200211184542.29585-1-ionela.voinescu@arm.com>
 <20200211184542.29585-8-ionela.voinescu@arm.com>
From: Valentin Schneider <valentin.schneider@arm.com>
Message-ID: <05e257b6-0a39-135d-8117-7883739538c3@arm.com>
Date: Wed, 12 Feb 2020 09:30:34 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200211184542.29585-8-ionela.voinescu@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_013042_278927_94AE59A7 
X-CRM114-Status: GOOD (  13.41  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: linux-doc@vger.kernel.org, peterz@infradead.org, viresh.kumar@linaro.org,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org, mingo@redhat.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/02/2020 18:45, Ionela Voinescu wrote:
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

I'm being pedantic here (as usual), but I'd contrast this a bit more. The
activity monitor code checks by itself that the ratio doesn't end up being
0, which is why we don't slam the brakes if the arch timer freq is < 1MHz.

It's just a CNTFRQ sanity check that goes a bit beyond the 0 value check,
IMO.

> Therefore, warn if the arch timer rate is below 1MHz which contravenes
> the recommended architecture interval of 1 to 50MHz.
> 
> Signed-off-by: Ionela Voinescu <ionela.voinescu@arm.com>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Marc Zyngier <maz@kernel.org>

ISTR something somewhere that says the first signoff should be that of the
author of the patch, and seeing as I just provided an untested diff that
ought to be you :)


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
