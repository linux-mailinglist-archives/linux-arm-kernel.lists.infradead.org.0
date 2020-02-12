Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CD0215A674
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 11:33:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5lUJBoxU/J7dcNt+pC0IZoWKVAzzQILQvqZdqcFtNIc=; b=cHjxwiFd7Ml7K6
	SdYrNihS4P+F3pPXxnV16E6gRJGrHbeb7ErO559So4WCeBMFA0vowfYWndvvGjpqbGR1CHh+sT6mv
	dLs5ZCKyEZCZZP/AKMoyV88wA9/Aq2DpDF6PTAVXDGLftJsCScle1kEbDZFC/c9zAFw6l0ZJ4tqF/
	VEtjcWvriRf9lyZiaAHofGuBGl89ScBy4+xFDKwjYvCV7epex9yDRe8hn7VSOVZWeu3DSXDmwgEXt
	k3YoxR/RjxCf8eSVU+2bG6ZdxJMsqoggqTL7UNZxkxz4MXBtfeqIgScIsFOO3a7WOHL7uMbI76V9h
	Xui6orrkaFMygI9BfA7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1pKJ-0001zR-JE; Wed, 12 Feb 2020 10:33:03 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1pK9-0001y5-Nj
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 10:32:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C589330E;
 Wed, 12 Feb 2020 02:32:51 -0800 (PST)
Received: from localhost (unknown [10.1.198.52])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 61A953F68F;
 Wed, 12 Feb 2020 02:32:51 -0800 (PST)
Date: Wed, 12 Feb 2020 10:32:49 +0000
From: Ionela Voinescu <ionela.voinescu@arm.com>
To: Valentin Schneider <valentin.schneider@arm.com>
Subject: Re: [PATCH v3 7/7] clocksource/drivers/arm_arch_timer: validate
 arch_timer_rate
Message-ID: <20200212103249.GA19041@arm.com>
References: <20200211184542.29585-1-ionela.voinescu@arm.com>
 <20200211184542.29585-8-ionela.voinescu@arm.com>
 <05e257b6-0a39-135d-8117-7883739538c3@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <05e257b6-0a39-135d-8117-7883739538c3@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_023253_827758_0FE91145 
X-CRM114-Status: GOOD (  18.55  )
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
Cc: mark.rutland@arm.com, maz@kernel.org, suzuki.poulose@arm.com,
 peterz@infradead.org, catalin.marinas@arm.com, linux-pm@vger.kernel.org,
 linux-doc@vger.kernel.org, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 mingo@redhat.com, viresh.kumar@linaro.org,
 linux-arm-kernel@lists.infradead.org, sudeep.holla@arm.com, will@kernel.org,
 lukasz.luba@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Valentin,

On Wednesday 12 Feb 2020 at 09:30:34 (+0000), Valentin Schneider wrote:
> On 11/02/2020 18:45, Ionela Voinescu wrote:
> > From: Valentin Schneider <valentin.schneider@arm.com>
> > 
> > Using an arch timer with a frequency of less than 1MHz can result in an
> > incorrect functionality of the system which assumes a reasonable rate.
> > 
> > One example is the use of activity monitors for frequency invariance
> > which uses the rate of the arch timer as the known rate of the constant
> > cycle counter in computing its ratio compared to the maximum frequency
> > of a CPU. For arch timer frequencies less than 1MHz this ratio could
> > end up being 0 which is an invalid value for its use.
> > 
> 
> I'm being pedantic here (as usual), but I'd contrast this a bit more. The
> activity monitor code checks by itself that the ratio doesn't end up being
> 0, which is why we don't slam the brakes if the arch timer freq is < 1MHz.
> 
> It's just a CNTFRQ sanity check that goes a bit beyond the 0 value check,
> IMO.
> 

I agree, but this part was just given as an example of functionality
that relies on a reasonable arch timer rate. The AMU code checks for the
ratio not to be 0 so it does not end up breaking frequency invariance.
But if the ratio does end up being 0 due to the value of arch_time_rate,
we bypass the use of activity monitors which I'd argue it's incorrect
functionality by disabling a potential better source of information for
frequency invariance.

But I can rewrite this part for more clarity.

> > Therefore, warn if the arch timer rate is below 1MHz which contravenes
> > the recommended architecture interval of 1 to 50MHz.
> > 
> > Signed-off-by: Ionela Voinescu <ionela.voinescu@arm.com>
> > Cc: Mark Rutland <mark.rutland@arm.com>
> > Cc: Marc Zyngier <maz@kernel.org>
> 
> ISTR something somewhere that says the first signoff should be that of the
> author of the patch, and seeing as I just provided an untested diff that
> ought to be you :)

Will do!

Thanks,
Ionela.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
