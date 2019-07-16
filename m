Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D89A56AAD3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 16:48:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=flSy8uyB9C0akyfqNOCB4B9ULVFSU1txmgAEgHDC2Mk=; b=LG4jwVWl0HRCs2
	Z7lN32VpXFx5mlvG57o3V5vgDA+kkEIdJ9moNGlN/nYQda4LFi2+wlel5AYrL98AGhtturmJfMIBJ
	yJSp3VassH65brcStP3YD3jRvJ9oEqybo4AqpRATP27RF4H1Tt1d2k5UhqEEd20NTOlCpCQTixsXD
	iZsMHKsAtbVOB4v9qrvzaUhHWYg1pbegoSxzvPhehxB+pqrm7MShnoviqcDjDDx+fMW2RCK7VOyGa
	XgVGfhzg24UDiXGpDPyszskxV9gS07oNtcxYY1bQ2gOrGT012v56UgptVbvXqGkjJv3hps9K2nOEH
	QAcs7IAX68DshGg61aNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnOkW-0007HN-Ak; Tue, 16 Jul 2019 14:48:12 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hnOkA-0007Bu-E1
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 14:47:51 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 846E0344;
 Tue, 16 Jul 2019 07:47:49 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B51AF3F59C;
 Tue, 16 Jul 2019 07:47:46 -0700 (PDT)
Date: Tue, 16 Jul 2019 15:47:44 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH 18/18] arm64: dts: hikey: Convert to the hierarchical CPU
 topology layout
Message-ID: <20190716144744.GB7250@e107155-lin>
References: <20190513192300.653-1-ulf.hansson@linaro.org>
 <20190513192300.653-19-ulf.hansson@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190513192300.653-19-ulf.hansson@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_074750_556275_28390D8E 
X-CRM114-Status: GOOD (  14.01  )
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
 Geert Uytterhoeven <geert+renesas@glider.be>, Tony Lindgren <tony@atomide.com>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Lina Iyer <ilina@codeaurora.org>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Kevin Hilman <khilman@kernel.org>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Wei Xu <xuwei5@hisilicon.com>,
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

On Mon, May 13, 2019 at 09:23:00PM +0200, Ulf Hansson wrote:
> To enable the OS to manage last-man standing activities for a CPU, while an
> idle state for a group of CPUs is selected, let's convert the Hikey
> platform into using the hierarchical CPU topology layout.
>
> Cc: Wei Xu <xuwei5@hisilicon.com>
> Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> ---
>
> Changes:
> 	- None.
>
> ---
>  arch/arm64/boot/dts/hisilicon/hi6220.dtsi | 87 ++++++++++++++++++++---
>  1 file changed, 76 insertions(+), 11 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/hisilicon/hi6220.dtsi b/arch/arm64/boot/dts/hisilicon/hi6220.dtsi
> index 108e2a4227f6..36ff460f428f 100644
> --- a/arch/arm64/boot/dts/hisilicon/hi6220.dtsi
> +++ b/arch/arm64/boot/dts/hisilicon/hi6220.dtsi
>  	cpus {

[...]

> @@ -70,9 +128,8 @@
>  			};
>
>  			CLUSTER_SLEEP: cluster-sleep {
> -				compatible = "arm,idle-state";
> -				local-timer-stop;
> -				arm,psci-suspend-param = <0x1010000>;
> +				compatible = "domain-idle-state";
> +				arm,psci-suspend-param = <0x1000000>;
>  				entry-latency-us = <1000>;
>  				exit-latency-us = <700>;
>  				min-residency-us = <2700>;

Again this must be original format and as per PSCI spec, your patch
changes this cluster sleep state into cluster retention state which I
think is not what you intended.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
