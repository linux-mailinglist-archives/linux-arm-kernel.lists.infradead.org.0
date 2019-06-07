Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78C4F38E46
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 17:01:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Msr79Dwzy11CHvU9jTsIaq8664ZFfVPt10Q1pCvmNiQ=; b=AOMFXYI8CpwV2Z
	f//3lQvlhis9fSdwkPi8//sF0MPlkYGFOyRhBf2dMUmmlbUJUJTPNqC8VYDnaQWccQwggQOFTvYWb
	ZU/4XyVSVGUDRHX+0qF1ojE8BgApT5p7joiKavu+Q6uW54vLzgn6pdcaEE5bGd8PzJ5sZamuWGV54
	c+gJjJH46Fd85O9Ce9Pn9imt2e7gjfdSILLs44AN6Pf5zCF0ovq6UpNVIqCw8htxyX3ggTID2aFfe
	sG7mHVzVYJTO82rRsMvIBOwNdCIOWtA4lV6tR7M7NcHOZC/wTLXhMQkE/Hh4fKCeVWRp5DXn46tQb
	Hi+69woT4uMbLL2muGIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZGMv-0003rG-SF; Fri, 07 Jun 2019 15:01:25 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hZGMV-0003os-RZ
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 15:01:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 01FD6337;
 Fri,  7 Jun 2019 08:00:58 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B7EB93F71A;
 Fri,  7 Jun 2019 08:00:54 -0700 (PDT)
Date: Fri, 7 Jun 2019 16:00:52 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH 04/18] ARM/ARM64: cpuidle: Let back-end init ops take the
 driver as input
Message-ID: <20190607150052.GC15577@e107155-lin>
References: <20190513192300.653-1-ulf.hansson@linaro.org>
 <20190513192300.653-5-ulf.hansson@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190513192300.653-5-ulf.hansson@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_080059_942633_63F557FA 
X-CRM114-Status: GOOD (  12.06  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>, Tony Lindgren <tony@atomide.com>,
 Viresh Kumar <viresh.kumar@linaro.org>, Will Deacon <will.deacon@arm.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 David Brown <david.brown@linaro.org>, Lina Iyer <ilina@codeaurora.org>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Kevin Hilman <khilman@kernel.org>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Russell King <linux@armlinux.org.uk>,
 Catalin Marinas <catalin.marinas@arm.com>, Andy Gross <andy.gross@linaro.org>,
 "Raju P . L . S . S . S . N" <rplsssn@codeaurora.org>,
 Souvik Chakravarty <souvik.chakravarty@arm.com>, linux-pm@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Stephen Boyd <sboyd@kernel.org>, "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 linux-kernel@vger.kernel.org, Amit Kucheria <amit.kucheria@linaro.org>,
 Sudeep Holla <sudeep.holla@arm.com>, Niklas Cassel <niklas.cassel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 13, 2019 at 09:22:46PM +0200, Ulf Hansson wrote:
> To allow arch back-end init ops to operate on the cpuidle driver for the
> corresponding CPU, let's pass along a pointer to the struct cpuidle_driver*
> and forward it the relevant layers of callbacks for ARM/ARM64.
>

I may be wrong, but I see drv is just used to get state_count mostly.
It's also used in flattening part, but that should not be here either.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
