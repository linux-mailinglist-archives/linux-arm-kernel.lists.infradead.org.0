Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B98292E330
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 19:25:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qUAhPCXZ6iqCGlENN2RCHNXZnUDSL2J+WtxAiIC3Mr4=; b=Bzt8MCYhdSs4q0
	UjweJtk1syhTwJEiU6LbrkB/+84G9AxVRjCIVBxd2dl+ZcYEs1zVI0nE+ToGuVV5UDWHTJikdAot0
	MRzhub5F1X3j8yJ+YiMIJ+O+wl9uo1LYJlJstg+p4AeVyeeGXyrAOU35Z0Ji1bqpqY0Esy1HQusiY
	DJPibXLbb1jjVC5+g2INV0pr0UIdpUwWMP1nLvcICHdQCotigBg1yLKxyBz1QxLHu/uQ2gtNw3vqV
	3hXw7DchIE4l860HcHzRhVunF8l4vmj6t2lwvQQdMvlCdqZ0LhtUZeumuP49exfpaBoQCzSqg5nwv
	FTUj4JpWmN/N9sgxvWCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW2Kp-0001OK-FH; Wed, 29 May 2019 17:25:55 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW2Kh-0001No-AG
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 17:25:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 74818341;
 Wed, 29 May 2019 10:25:46 -0700 (PDT)
Received: from redmoon (e121166-lin.cambridge.arm.com [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3D1533F5AF;
 Wed, 29 May 2019 10:25:44 -0700 (PDT)
Date: Wed, 29 May 2019 18:25:41 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Marc Gonzalez <marc.w.gonzalez@free.fr>
Subject: Re: [PATCH v4] arm64: dts: qcom: msm8998: Add PSCI cpuidle low power
 states
Message-ID: <20190529172541.GB25642@redmoon>
References: <346cd9f0-583d-f467-83d0-e73768bf5aac@free.fr>
 <20190523214619.GB25133@centauri>
 <f9aa108f-cb0a-2cee-7fce-e2803dcadb24@free.fr>
 <c41508c7-35b2-aa40-c468-384e51d3d7b6@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c41508c7-35b2-aa40-c468-384e51d3d7b6@free.fr>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_102547_362446_C8EDBB05 
X-CRM114-Status: GOOD (  20.51  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: PM <linux-pm@vger.kernel.org>, Jeffrey Hugo <jhugo@codeaurora.org>,
 MSM <linux-arm-msm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Rafael Wysocki <rjw@rjwysocki.net>,
 Amit Kucheria <amit.kucheria@linaro.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Andy Gross <agross@kernel.org>,
 Sibi Sankar <sibis@codeaurora.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Niklas Cassel <niklas.cassel@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 29, 2019 at 01:08:44PM +0200, Marc Gonzalez wrote:
> + linux-pm
> 
> On 24/05/2019 14:32, Marc Gonzalez wrote:
> 
> > From: Amit Kucheria <amit.kucheria@linaro.org>
> > 
> > Add device bindings for cpuidle states for cpu devices.
> > 
> > [marc: rebase, fix arm,psci-suspend-param, fix entry-latency-us]
> > Acked-by: Daniel Lezcano <daniel.lezcano@linaro.org>
> > Signed-off-by: Amit Kucheria <amit.kucheria@linaro.org>
> > Signed-off-by: Marc Gonzalez <marc.w.gonzalez@free.fr>
> > ---
> > Changes from v3:
> > - Fixup all 4 entry-latency-us (Niklas)
> > Changes from v2:
> > - Rebase
> > - Fixup arm,psci-suspend-param for power-collapse states (otherwise: reboot)
> > ---
> >  arch/arm64/boot/dts/qcom/msm8998.dtsi | 50 +++++++++++++++++++++++++++
> >  1 file changed, 50 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/msm8998.dtsi b/arch/arm64/boot/dts/qcom/msm8998.dtsi
> > index 412195b9794c..ac6bd32c0e7d 100644
> > --- a/arch/arm64/boot/dts/qcom/msm8998.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/msm8998.dtsi
> > @@ -78,6 +78,7 @@
> >  			compatible = "arm,armv8";
> >  			reg = <0x0 0x0>;
> >  			enable-method = "psci";
> > +			cpu-idle-states = <&LITTLE_CPU_SLEEP_0 &LITTLE_CPU_SLEEP_1>;
> >  			next-level-cache = <&L2_0>;
> >  			L2_0: l2-cache {
> >  				compatible = "arm,arch-cache";
> > @@ -96,6 +97,7 @@
> >  			compatible = "arm,armv8";
> >  			reg = <0x0 0x1>;
> >  			enable-method = "psci";
> > +			cpu-idle-states = <&LITTLE_CPU_SLEEP_0 &LITTLE_CPU_SLEEP_1>;
> >  			next-level-cache = <&L2_0>;
> >  			L1_I_1: l1-icache {
> >  				compatible = "arm,arch-cache";
> > @@ -110,6 +112,7 @@
> >  			compatible = "arm,armv8";
> >  			reg = <0x0 0x2>;
> >  			enable-method = "psci";
> > +			cpu-idle-states = <&LITTLE_CPU_SLEEP_0 &LITTLE_CPU_SLEEP_1>;
> >  			next-level-cache = <&L2_0>;
> >  			L1_I_2: l1-icache {
> >  				compatible = "arm,arch-cache";
> > @@ -124,6 +127,7 @@
> >  			compatible = "arm,armv8";
> >  			reg = <0x0 0x3>;
> >  			enable-method = "psci";
> > +			cpu-idle-states = <&LITTLE_CPU_SLEEP_0 &LITTLE_CPU_SLEEP_1>;
> >  			next-level-cache = <&L2_0>;
> >  			L1_I_3: l1-icache {
> >  				compatible = "arm,arch-cache";
> > @@ -138,6 +142,7 @@
> >  			compatible = "arm,armv8";
> >  			reg = <0x0 0x100>;
> >  			enable-method = "psci";
> > +			cpu-idle-states = <&BIG_CPU_SLEEP_0 &BIG_CPU_SLEEP_1>;
> >  			next-level-cache = <&L2_1>;
> >  			L2_1: l2-cache {
> >  				compatible = "arm,arch-cache";
> > @@ -156,6 +161,7 @@
> >  			compatible = "arm,armv8";
> >  			reg = <0x0 0x101>;
> >  			enable-method = "psci";
> > +			cpu-idle-states = <&BIG_CPU_SLEEP_0 &BIG_CPU_SLEEP_1>;
> >  			next-level-cache = <&L2_1>;
> >  			L1_I_101: l1-icache {
> >  				compatible = "arm,arch-cache";
> > @@ -170,6 +176,7 @@
> >  			compatible = "arm,armv8";
> >  			reg = <0x0 0x102>;
> >  			enable-method = "psci";
> > +			cpu-idle-states = <&BIG_CPU_SLEEP_0 &BIG_CPU_SLEEP_1>;
> >  			next-level-cache = <&L2_1>;
> >  			L1_I_102: l1-icache {
> >  				compatible = "arm,arch-cache";
> > @@ -184,6 +191,7 @@
> >  			compatible = "arm,armv8";
> >  			reg = <0x0 0x103>;
> >  			enable-method = "psci";
> > +			cpu-idle-states = <&BIG_CPU_SLEEP_0 &BIG_CPU_SLEEP_1>;
> >  			next-level-cache = <&L2_1>;
> >  			L1_I_103: l1-icache {
> >  				compatible = "arm,arch-cache";
> > @@ -230,6 +238,48 @@
> >  				};
> >  			};
> >  		};
> > +
> > +		idle-states {
> > +			entry-method = "psci";
> > +
> > +			LITTLE_CPU_SLEEP_0: cpu-sleep-0-0 {
> > +				compatible = "arm,idle-state";
> > +				idle-state-name = "little-retention";
> > +				arm,psci-suspend-param = <0x00000002>;
> > +				entry-latency-us = <81>;
> > +				exit-latency-us = <86>;
> > +				min-residency-us = <200>;
> > +			};
> > +
> > +			LITTLE_CPU_SLEEP_1: cpu-sleep-0-1 {
> > +				compatible = "arm,idle-state";
> > +				idle-state-name = "little-power-collapse";
> > +				arm,psci-suspend-param = <0x40000003>;
> > +				entry-latency-us = <273>;
> > +				exit-latency-us = <612>;
> > +				min-residency-us = <1000>;
> > +				local-timer-stop;
> > +			};
> > +
> > +			BIG_CPU_SLEEP_0: cpu-sleep-1-0 {
> > +				compatible = "arm,idle-state";
> > +				idle-state-name = "big-retention";
> > +				arm,psci-suspend-param = <0x00000002>;
> > +				entry-latency-us = <79>;
> > +				exit-latency-us = <82>;
> > +				min-residency-us = <200>;
> > +			};
> > +
> > +			BIG_CPU_SLEEP_1: cpu-sleep-1-1 {
> > +				compatible = "arm,idle-state";
> > +				idle-state-name = "big-power-collapse";
> > +				arm,psci-suspend-param = <0x40000003>;
> > +				entry-latency-us = <336>;
> > +				exit-latency-us = <525>;
> > +				min-residency-us = <1000>;
> > +				local-timer-stop;
> > +			};
> > +		};
> 
> Niklas and I have been discussing the min-residency-us prop.
> 
> https://elixir.bootlin.com/linux/latest/source/Documentation/devicetree/bindings/arm/idle-states.txt
> 
> I thought a requirement would be
> 
> 	min-residency > entry-latency + exit-latency
> 
> but it doesn't seem to be the case.
> 
> Do the values proposed here look kosher?

As the document describes the right values should be computed by
plotting energy consumption.

min-residency is a worst case scenario because the energy consumed to
enter an idle state depends on the system state (eg cache state), so the
worst case value should be added there.

Lorenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
