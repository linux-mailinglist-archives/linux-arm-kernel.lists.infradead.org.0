Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 272B4126887
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 18:58:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O0ep4qZJ/OGfw6bsfkCHD7VWIKxuqXCugt/r8B/x5hA=; b=GD0e3SSa2j829R
	aPwV1Fev4I9rekTD6Nt98mVESsedyxP+ii/an78FcFzT/jECliHavXMqu+ClrC8cRsuMaTj7L/9Ke
	aL4lpYE6kM2IGeBE8ttdr68WSGu/Lhph/h75QfVfDzae0X0azTL+Qfg1+w/BtZqnQTJHPHpdLdwO8
	dtERgZ/iMea1BNH/B0LBR87+9llaH1F4OJLm0xvH0yRtfe4h+olAAo30XPRSuJeewEZ5c9TWy14oa
	zLrxBSr2+hbBRXIlxbcXTZCkk1rSmDYglDbqA4y2CPhGWPdT5ZCw6Y/O4xa/yUrptyNfRM6Un6uJf
	ENmpm9jh1M40Og9VzPpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii04N-0000Fn-7m; Thu, 19 Dec 2019 17:58:39 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii046-0000B7-J4
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 17:58:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6FAD81FB;
 Thu, 19 Dec 2019 09:58:21 -0800 (PST)
Received: from bogus (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7588F3F67D;
 Thu, 19 Dec 2019 09:58:19 -0800 (PST)
Date: Thu, 19 Dec 2019 17:58:14 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH v4 14/14] arm64: dts: Convert to the hierarchical CPU
 topology layout for MSM8916
Message-ID: <20191219175757.GA21846@bogus>
References: <20191211154343.29765-1-ulf.hansson@linaro.org>
 <20191211154343.29765-15-ulf.hansson@linaro.org>
 <20191219143446.GG20746@bogus>
 <CAPDyKFpkSjq5RzuxCvj8wawU6Q15qq3qiBcrGz=H2X+1Wf3t8w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPDyKFpkSjq5RzuxCvj8wawU6Q15qq3qiBcrGz=H2X+1Wf3t8w@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_095822_722141_03EFA80B 
X-CRM114-Status: GOOD (  19.21  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Linux PM <linux-pm@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Andy Gross <agross@kernel.org>,
 Lina Iyer <ilina@codeaurora.org>, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kevin Hilman <khilman@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 19, 2019 at 04:48:47PM +0100, Ulf Hansson wrote:
> On Thu, 19 Dec 2019 at 15:34, Sudeep Holla <sudeep.holla@arm.com> wrote:
> >
> > On Wed, Dec 11, 2019 at 04:43:43PM +0100, Ulf Hansson wrote:
> > > To enable the OS to better support PSCI OS initiated CPU suspend mode,
> > > let's convert from the flattened layout to the hierarchical layout.
> > >
> > > In the hierarchical layout, let's create a power domain provider per CPU
> > > and describe the idle states for each CPU inside the power domain provider
> > > node. To group the CPUs into a cluster, let's add another power domain
> > > provider and make it act as the master domain. Note that, the CPU's idle
> > > states remains compatible with "arm,idle-state", while the cluster's idle
> > > state becomes compatible with "domain-idle-state".
> > >
> > > Co-developed-by: Lina Iyer <lina.iyer@linaro.org>
> > > Signed-off-by: Lina Iyer <lina.iyer@linaro.org>
> > > Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> > > ---
> > >
> > > Changes in v4:
> > >       - None.
> > >
> > > ---
> > >  arch/arm64/boot/dts/qcom/msm8916.dtsi | 57 +++++++++++++++++++++++++--
> > >  1 file changed, 53 insertions(+), 4 deletions(-)
> > >
> > > diff --git a/arch/arm64/boot/dts/qcom/msm8916.dtsi b/arch/arm64/boot/dts/qcom/msm8916.dtsi
> > > index 8686e101905c..282c36c8fa3b 100644
> > > --- a/arch/arm64/boot/dts/qcom/msm8916.dtsi
> > > +++ b/arch/arm64/boot/dts/qcom/msm8916.dtsi
> > > @@ -102,10 +102,11 @@
> > >                       reg = <0x0>;
> > >                       next-level-cache = <&L2_0>;
> > >                       enable-method = "psci";
> > > -                     cpu-idle-states = <&CPU_SLEEP_0>;
> > >                       clocks = <&apcs>;
> > >                       operating-points-v2 = <&cpu_opp_table>;
> > >                       #cooling-cells = <2>;
> > > +                     power-domains = <&CPU_PD0>;
> > > +                     power-domain-names = "psci";
> > >               };
> > >
> > >               CPU1: cpu@1 {
> > > @@ -114,10 +115,11 @@
> > >                       reg = <0x1>;
> > >                       next-level-cache = <&L2_0>;
> > >                       enable-method = "psci";
> > > -                     cpu-idle-states = <&CPU_SLEEP_0>;
> > >                       clocks = <&apcs>;
> > >                       operating-points-v2 = <&cpu_opp_table>;
> > >                       #cooling-cells = <2>;
> > > +                     power-domains = <&CPU_PD1>;
> > > +                     power-domain-names = "psci";
> > >               };
> > >
> > >               CPU2: cpu@2 {
> > > @@ -126,10 +128,11 @@
> > >                       reg = <0x2>;
> > >                       next-level-cache = <&L2_0>;
> > >                       enable-method = "psci";
> > > -                     cpu-idle-states = <&CPU_SLEEP_0>;
> > >                       clocks = <&apcs>;
> > >                       operating-points-v2 = <&cpu_opp_table>;
> > >                       #cooling-cells = <2>;
> > > +                     power-domains = <&CPU_PD2>;
> > > +                     power-domain-names = "psci";
> > >               };
> > >
> > >               CPU3: cpu@3 {
> > > @@ -138,10 +141,11 @@
> > >                       reg = <0x3>;
> > >                       next-level-cache = <&L2_0>;
> > >                       enable-method = "psci";
> > > -                     cpu-idle-states = <&CPU_SLEEP_0>;
> > >                       clocks = <&apcs>;
> > >                       operating-points-v2 = <&cpu_opp_table>;
> > >                       #cooling-cells = <2>;
> > > +                     power-domains = <&CPU_PD3>;
> > > +                     power-domain-names = "psci";
> > >               };
> > >
> > >               L2_0: l2-cache {
> > > @@ -161,12 +165,57 @@
> > >                               min-residency-us = <2000>;
> > >                               local-timer-stop;
> > >                       };
> > > +
> > > +                     CLUSTER_RET: cluster-retention {
> > > +                             compatible = "domain-idle-state";
> > > +                             arm,psci-suspend-param = <0x41000012>;
> >
> > If I followed the thread correctly, we are now just using the param as is
> > without any extra logic like ORing like before. i.e. The domain state
> > parameter overrides the any param below it in the hierarchy.
> >
> > If that's correct, then
>
> That's correct!
>

Thanks for the confirmation.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
