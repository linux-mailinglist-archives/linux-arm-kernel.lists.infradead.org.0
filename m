Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B223AB9BC
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 15:50:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CFF1SuaI0j5s7/P4uwZMwcjmagjXLpVdI51gtmNKIQs=; b=j6g2XDbugjM5Gp
	cuHxsKkcMkWLpT/3U1yKRI9+AlZ3wmIngaxiTUns65e0+SYiwK1aAicFSyj7Evg9x3jz6ANOZlbp3
	/v8uoGB/zmo9Y7rfhXHM2GHT90TvhQtA1ShGfP+nHN3O8zPYEA67rFjghFIs8Gj22HAS+LBsj60Ji
	zQ+aK7BuYpdCxqXVw3cmcWTlQmYO2Cig6+7QmwqeDiup0r5mmP1nR2XRoVJFGeXC7BF4yPH73zT6n
	uORh6uTRVkgkJ0Byh4fQECjgh8hKQ4pNxNoSVhjib8d6XZRjhku0NZc+dnMdkU2XCVxAGgeslKc+X
	jxNRUN2jBLT6jUbh+FNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6Ecb-00056M-Mm; Fri, 06 Sep 2019 13:49:53 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i6EcT-00055v-LX
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 13:49:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8C02B28;
 Fri,  6 Sep 2019 06:49:43 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3846B3F718;
 Fri,  6 Sep 2019 06:49:42 -0700 (PDT)
Date: Fri, 6 Sep 2019 14:49:35 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [PATCH ARM64 v4.4 V3 12/44] arm64: cpufeature: Test 'matches'
 pointer to find the end of the list
Message-ID: <20190906134935.GA17375@lakrids.cambridge.arm.com>
References: <cover.1567077734.git.viresh.kumar@linaro.org>
 <617ad445043f040c5ab986b9620b2ba7847b561e.1567077734.git.viresh.kumar@linaro.org>
 <20190902142741.GB9922@lakrids.cambridge.arm.com>
 <20190905074506.oxsw24xoex7gcfgm@vireshk-i7>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190905074506.oxsw24xoex7gcfgm@vireshk-i7>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_064945_794791_A9CD7995 
X-CRM114-Status: GOOD (  33.06  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Julien Thierry <Julien.Thierry@arm.com>,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, stable@vger.kernel.org, mark.brown@arm.com,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 05, 2019 at 01:15:06PM +0530, Viresh Kumar wrote:
> On 02-09-19, 15:27, Mark Rutland wrote:
> > On Thu, Aug 29, 2019 at 05:03:57PM +0530, Viresh Kumar wrote:
> > > From: James Morse <james.morse@arm.com>
> > > 
> > > commit 644c2ae198412c956700e55a2acf80b2541f6aa5 upstream.
> > > 
> > > CPU feature code uses the desc field as a test to find the end of the list,
> > > this means every entry must have a description. This generates noise for
> > > entries in the list that aren't really features, but combinations of them.
> > > e.g.
> > > > CPU features: detected feature: Privileged Access Never
> > > > CPU features: detected feature: PAN and not UAO
> > > 
> > > These combination features are needed for corner cases with alternatives,
> > > where cpu features interact.
> > > 
> > > Change all walkers of the arm64_features[] and arm64_hwcaps[] lists to test
> > > 'matches' not 'desc', and only print 'desc' if it is non-NULL.
> > > 
> > > Signed-off-by: James Morse <james.morse@arm.com>
> > > Reviewed-by : Suzuki K Poulose <suzuki.poulose@arm.com>
> > > Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
> > > Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
> > > ---
> > >  arch/arm64/kernel/cpufeature.c | 12 ++++++------
> > >  1 file changed, 6 insertions(+), 6 deletions(-)
> > 
> > >From looking at my 4.9.y/{meltdown,spectre} banches on kernel.org [1,2],
> > and chasing the history v4.4..v4.9, there are a number of patches I'd
> > expect to have alongside this that I don't spot in this series:
> > 
> > * e3661b128e53ee281e1e7c589a5b647890bd6d7c ("arm64: Allow a capability to be checked on a single CPU")
> > * 8f4137588261d7504f4aa022dc9d1a1fd1940e8e ("arm64: Allow checking of a CPU-local erratum")
> > * 67948af41f2e6818edeeba5182811c704d484949 ("arm64: capabilities: Handle duplicate entries for a capability")
> > * edf298cfce47ab7279d03b5203ae2ef3a58e49db ("arm64: cpufeature: __this_cpu_has_cap() shouldn't stop early")
> 
> I also had to pick this one for cleaner rebase:
> 
> 752835019c15 arm64: HWCAP: Split COMPAT HWCAP table entries
> 
> > 
> > ... which IIUC are necessary for big.LITTLE to work correctly.
> 
> I have pushed the changes to my branch again with above 5 patches and
> some more reordering to match 4.9 log.

Thanks for this!

> > Have you verified this for big.LITTLE?
> 
> Not sure if we ever talked about this earlier, but here is the
> situation which I explained to Julien earlier.
> 
> I don't have access to the test-suite to verify that these patches
> indeed fix the spectre mitigations and I was asked to backport these
> and then ask for help from ARM to get these tested through the
> test-suite. I was expecting Julien to do that earlier.

Ok, thanks for providing this context.

As a heads-up, I'll be at LPC next week. While I'm there I won't be able
to test things, and I'm unlikely to find time to review, but I'll try to
do so ASAP once I return.

> Julien did ask me to verify few things earlier, which can be done
> without the test suite and was about checking that the new code paths
> are getting hit now or not, which I did.
> 
> I haven't tested these on big LITTLE, though I can get the branch
> through LAVA to get it tested on big LITTLE but I have no clue on what
> I should be looking for in results :)

I think it would be worthwhile to do that ASAP to make sure there are no
boot-time or run-time regressions. We can look at the logs later (or
re-run with some additional logging) to verify things are working as
expected.

> If there is some testing that can be done on my side for this, I sure
> can do it. But I would need help from you on that to know what exactly
> I need to check.

Sure. I'll have to take another look over the series to figure that out,
and as above I might not be able to do so until after LPC -- sorry!

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
