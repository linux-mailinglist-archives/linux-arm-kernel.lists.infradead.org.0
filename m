Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C96A3A5958
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 16:28:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7O+Yjd+F4Acex1nh7XNUFFq57a1yCzzYhDs4GeaJfCw=; b=DN9YeG6bnYbGLO
	JQ3XpSdhl0sBruP9YO9FtlxMDzK0rMUt6e+LXFefUMrmtwe4qzEBqFtL2+FNeU0aG90IHe1m/xYM1
	esTcJy53CML9aeaVkxyJhhrE0u9DfGm9Bs6i9V/gofgVmUpajQVMxaaCJ69f1HdIvILYjspCmy3Kp
	+UNkDIdHmZgnub7tf2STu1ebST8yr8MnAVTnm33dbKUrI6IoAMfShLg85IX0jtRoiZl+yKrToUW5x
	KU22PFV2Ah8hXGJJ+IlMkrPFxtjCnVb3JSztXbSBMHQwOAWPgBbrVCIMJ+2BiiPL7kDySihOLUAUb
	0AAoFWBt5q5Et5Q/rOkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4nJG-0001vw-Sr; Mon, 02 Sep 2019 14:27:58 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i4nJ4-0001vb-8J
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 14:27:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C67A4344;
 Mon,  2 Sep 2019 07:27:45 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 724073F59C;
 Mon,  2 Sep 2019 07:27:44 -0700 (PDT)
Date: Mon, 2 Sep 2019 15:27:42 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [PATCH ARM64 v4.4 V3 12/44] arm64: cpufeature: Test 'matches'
 pointer to find the end of the list
Message-ID: <20190902142741.GB9922@lakrids.cambridge.arm.com>
References: <cover.1567077734.git.viresh.kumar@linaro.org>
 <617ad445043f040c5ab986b9620b2ba7847b561e.1567077734.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <617ad445043f040c5ab986b9620b2ba7847b561e.1567077734.git.viresh.kumar@linaro.org>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_072748_336717_0200132C 
X-CRM114-Status: GOOD (  20.06  )
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

On Thu, Aug 29, 2019 at 05:03:57PM +0530, Viresh Kumar wrote:
> From: James Morse <james.morse@arm.com>
> 
> commit 644c2ae198412c956700e55a2acf80b2541f6aa5 upstream.
> 
> CPU feature code uses the desc field as a test to find the end of the list,
> this means every entry must have a description. This generates noise for
> entries in the list that aren't really features, but combinations of them.
> e.g.
> > CPU features: detected feature: Privileged Access Never
> > CPU features: detected feature: PAN and not UAO
> 
> These combination features are needed for corner cases with alternatives,
> where cpu features interact.
> 
> Change all walkers of the arm64_features[] and arm64_hwcaps[] lists to test
> 'matches' not 'desc', and only print 'desc' if it is non-NULL.
> 
> Signed-off-by: James Morse <james.morse@arm.com>
> Reviewed-by : Suzuki K Poulose <suzuki.poulose@arm.com>
> Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
> Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
> ---
>  arch/arm64/kernel/cpufeature.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)

From looking at my 4.9.y/{meltdown,spectre} banches on kernel.org [1,2],
and chasing the history v4.4..v4.9, there are a number of patches I'd
expect to have alongside this that I don't spot in this series:

* e3661b128e53ee281e1e7c589a5b647890bd6d7c ("arm64: Allow a capability to be checked on a single CPU")
* 8f4137588261d7504f4aa022dc9d1a1fd1940e8e ("arm64: Allow checking of a CPU-local erratum")
* 67948af41f2e6818edeeba5182811c704d484949 ("arm64: capabilities: Handle duplicate entries for a capability")
* edf298cfce47ab7279d03b5203ae2ef3a58e49db ("arm64: cpufeature: __this_cpu_has_cap() shouldn't stop early")

... which IIUC are necessary for big.LITTLE to work correctly.

Have you verified this for big.LITTLE?

Thanks,
Mark.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/mark/linux.git/log/?h=stable/4.9.y/meltdown
[2] https://git.kernel.org/pub/scm/linux/kernel/git/mark/linux.git/log/?h=stable/4.9.y/spectre

> 
> diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
> index c1eddc07d996..bdb4cd9ffccf 100644
> --- a/arch/arm64/kernel/cpufeature.c
> +++ b/arch/arm64/kernel/cpufeature.c
> @@ -744,7 +744,7 @@ static void setup_cpu_hwcaps(void)
>  	int i;
>  	const struct arm64_cpu_capabilities *hwcaps = arm64_hwcaps;
>  
> -	for (i = 0; hwcaps[i].desc; i++)
> +	for (i = 0; hwcaps[i].matches; i++)
>  		if (hwcaps[i].matches(&hwcaps[i]))
>  			cap_set_hwcap(&hwcaps[i]);
>  }
> @@ -754,11 +754,11 @@ void update_cpu_capabilities(const struct arm64_cpu_capabilities *caps,
>  {
>  	int i;
>  
> -	for (i = 0; caps[i].desc; i++) {
> +	for (i = 0; caps[i].matches; i++) {
>  		if (!caps[i].matches(&caps[i]))
>  			continue;
>  
> -		if (!cpus_have_cap(caps[i].capability))
> +		if (!cpus_have_cap(caps[i].capability) && caps[i].desc)
>  			pr_info("%s %s\n", info, caps[i].desc);
>  		cpus_set_cap(caps[i].capability);
>  	}
> @@ -772,7 +772,7 @@ static void enable_cpu_capabilities(const struct arm64_cpu_capabilities *caps)
>  {
>  	int i;
>  
> -	for (i = 0; caps[i].desc; i++)
> +	for (i = 0; caps[i].matches; i++)
>  		if (caps[i].enable && cpus_have_cap(caps[i].capability))
>  			/*
>  			 * Use stop_machine() as it schedules the work allowing
> @@ -884,7 +884,7 @@ void verify_local_cpu_capabilities(void)
>  		return;
>  
>  	caps = arm64_features;
> -	for (i = 0; caps[i].desc; i++) {
> +	for (i = 0; caps[i].matches; i++) {
>  		if (!cpus_have_cap(caps[i].capability) || !caps[i].sys_reg)
>  			continue;
>  		/*
> @@ -897,7 +897,7 @@ void verify_local_cpu_capabilities(void)
>  			caps[i].enable(NULL);
>  	}
>  
> -	for (i = 0, caps = arm64_hwcaps; caps[i].desc; i++) {
> +	for (i = 0, caps = arm64_hwcaps; caps[i].matches; i++) {
>  		if (!cpus_have_hwcap(&caps[i]))
>  			continue;
>  		if (!feature_matches(__raw_read_system_reg(caps[i].sys_reg), &caps[i]))
> -- 
> 2.21.0.rc0.269.g1a574e7a288b
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
