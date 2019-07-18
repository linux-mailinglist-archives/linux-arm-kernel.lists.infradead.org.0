Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96E306CEA3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 15:12:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XPbmkBBWQYlxXgC361/9P8aFJgz+QH0p4USPcED0v9U=; b=QlW0RDNmvmpg00
	0ACJB1uU/HeNpJNB2ueqX6dF4fowG9ApPmjz9GTWajMLkSjzoFQZ+nBEMb/kizw6OKvfKX9LLhshO
	Dhah7NBfXSe7jtBd4np8i8BQ7u7Fgjq4hqgoLrsmhXPtsTTPDFU7G3kIFxRVdz4dhhwRtQRrPTZqV
	77h30Pi1wUmkpqBnWnWRxnfbG24W44FDLP4lWYwHwVFzZ4SdGOqYI6q2avstIDRTGifsBzfb35nop
	lP4953GKXwq3tJgztLeX/QxBfvKDyDpKq6AWVQrjIwFYIlQ/oBmjnGwI2/ff0AxndLcWcLVbeuo8E
	qwqZwwF5jLV9QTvhdDOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho6Cw-0006Sr-MJ; Thu, 18 Jul 2019 13:12:26 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1ho6Ch-0006Rv-Fr
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 13:12:12 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AF528344;
 Thu, 18 Jul 2019 06:12:09 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 09D7C3F71F;
 Thu, 18 Jul 2019 06:12:06 -0700 (PDT)
Date: Thu, 18 Jul 2019 14:11:42 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH 18/18] arm64: dts: hikey: Convert to the hierarchical CPU
 topology layout
Message-ID: <20190718131142.GA28633@e107155-lin>
References: <20190513192300.653-1-ulf.hansson@linaro.org>
 <20190513192300.653-19-ulf.hansson@linaro.org>
 <20190716144744.GB7250@e107155-lin>
 <CAPDyKFpc26yL6rOnfwawL=eL649NsgTMrF1WrMHZv7AVd=3PCA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPDyKFpc26yL6rOnfwawL=eL649NsgTMrF1WrMHZv7AVd=3PCA@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_061211_623275_1B8EA0A6 
X-CRM114-Status: GOOD (  21.50  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Kevin Hilman <khilman@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>, Linux PM <linux-pm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Amit Kucheria <amit.kucheria@linaro.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Tony Lindgren <tony@atomide.com>,
 Lina Iyer <ilina@codeaurora.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Niklas Cassel <niklas.cassel@linaro.org>,
 Souvik Chakravarty <souvik.chakravarty@arm.com>, Wei Xu <xuwei5@hisilicon.com>,
 "Raju P . L . S . S . S . N" <rplsssn@codeaurora.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 18, 2019 at 12:48:14PM +0200, Ulf Hansson wrote:
> On Tue, 16 Jul 2019 at 16:47, Sudeep Holla <sudeep.holla@arm.com> wrote:
> >
> > On Mon, May 13, 2019 at 09:23:00PM +0200, Ulf Hansson wrote:
> > > To enable the OS to manage last-man standing activities for a CPU, while an
> > > idle state for a group of CPUs is selected, let's convert the Hikey
> > > platform into using the hierarchical CPU topology layout.
> > >
> > > Cc: Wei Xu <xuwei5@hisilicon.com>
> > > Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> > > ---
> > >
> > > Changes:
> > >       - None.
> > >
> > > ---
> > >  arch/arm64/boot/dts/hisilicon/hi6220.dtsi | 87 ++++++++++++++++++++---
> > >  1 file changed, 76 insertions(+), 11 deletions(-)
> > >
> > > diff --git a/arch/arm64/boot/dts/hisilicon/hi6220.dtsi b/arch/arm64/boot/dts/hisilicon/hi6220.dtsi
> > > index 108e2a4227f6..36ff460f428f 100644
> > > --- a/arch/arm64/boot/dts/hisilicon/hi6220.dtsi
> > > +++ b/arch/arm64/boot/dts/hisilicon/hi6220.dtsi
> > >       cpus {
> >
> > [...]
> >
> > > @@ -70,9 +128,8 @@
> > >                       };
> > >
> > >                       CLUSTER_SLEEP: cluster-sleep {
> > > -                             compatible = "arm,idle-state";
> > > -                             local-timer-stop;
> > > -                             arm,psci-suspend-param = <0x1010000>;
> > > +                             compatible = "domain-idle-state";
> > > +                             arm,psci-suspend-param = <0x1000000>;
> > >                               entry-latency-us = <1000>;
> > >                               exit-latency-us = <700>;
> > >                               min-residency-us = <2700>;
> >
> > Again this must be original format and as per PSCI spec, your patch
> > changes this cluster sleep state into cluster retention state which I
> > think is not what you intended.
>
> If the hierarchical topology is used, the parameter for cluster states
> are ORed with the deepest idle state for the CPU.
>
> CPU_SLEEP: 0x0010000
> CLUSTER_SLEEP: 0x1000000
>
> After the ORed operation
> CLUSTER_SLEEP: 0x1010000
>
> So, this indeed works as expected.
>

Yes, it works. But we are not XOR-ing so what's wrong in keeping the
StateType as required and be compliant to specification. Why do we need
to make the state param on it's own non-complaint.

What's wrong in retaining CLUSTER_SLEEP as 0x1010000 so that it reflects
the state level and type correctly on it's own ?

> However, are you saying that ORing the state parameters like above has
> other problems? I am reading your other replies...
>

Yes OR-ing may have other problems but the point I made here was more on
PSCI spec compliance for each suspend parameter values independently.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
