Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E58BE6C044
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 19:19:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jn/rlScOq8O6/z0PDe6V4kfb9CBQmttkCtQc1GqSExo=; b=GXI0yq4SykuWEp
	s0gcIwjxZceehoW+ab4qtvg0ge3tGSn06k3I/RpW42/z8DvPQZDFl9wRGRCPSnz0Dg3p6wID2GcAg
	3J9nNtWIOR33cgHSbw4VuELam7HrSOigVXYxH9CzA0uToHyV96UpEVVjZQvT30JjRaqlnJ8oh5fUw
	XIFS6yqPWGsbkytABgOEYLWTVxdMvzX0yt589gCvR7Iu87Au1Lec7hMLwNg7cEbaBEUZHx4jI5AhU
	sdTDmvkoMqUpW8p7q43HOVutvkHCrrwRy6SQBCnzitkSExID0tfFsMSv4cJTkZ/dSslmjcJog+qHe
	lNNfdII8gzXxJjQxywuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnnaJ-0004Ps-Ne; Wed, 17 Jul 2019 17:19:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hnna5-0004PU-8l
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 17:19:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id ACFB728;
 Wed, 17 Jul 2019 10:19:01 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C30D73F71F;
 Wed, 17 Jul 2019 10:18:58 -0700 (PDT)
Date: Wed, 17 Jul 2019 18:18:56 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Lina Iyer <ilina@codeaurora.org>
Subject: Re: [PATCH 17/18] arm64: dts: Convert to the hierarchical CPU
 topology layout for MSM8916
Message-ID: <20190717171856.GF18370@e107155-lin>
References: <20190513192300.653-1-ulf.hansson@linaro.org>
 <20190513192300.653-18-ulf.hansson@linaro.org>
 <20190716144730.GA7250@e107155-lin>
 <20190716203631.GC25567@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190716203631.GC25567@codeaurora.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_101905_404653_EF6BEBFB 
X-CRM114-Status: GOOD (  20.54  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>, Tony Lindgren <tony@atomide.com>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 David Brown <david.brown@linaro.org>, Lina Iyer <lina.iyer@linaro.org>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Kevin Hilman <khilman@kernel.org>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Andy Gross <andy.gross@linaro.org>,
 "Raju P . L . S . S . S . N" <rplsssn@codeaurora.org>,
 Souvik Chakravarty <souvik.chakravarty@arm.com>, linux-pm@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Stephen Boyd <sboyd@kernel.org>, "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 linux-kernel@vger.kernel.org, Amit Kucheria <amit.kucheria@linaro.org>,
 Niklas Cassel <niklas.cassel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 16, 2019 at 02:36:31PM -0600, Lina Iyer wrote:
> On Tue, Jul 16 2019 at 08:47 -0600, Sudeep Holla wrote:
> > On Mon, May 13, 2019 at 09:22:59PM +0200, Ulf Hansson wrote:
> > > From: Lina Iyer <lina.iyer@linaro.org>
> > >
> > > In the hierarchical layout, we are creating power domains around each CPU
> > > and describes the idle states for them inside the power domain provider
> > > node. Note that, the CPU's idle states still needs to be compatible with
> > > "arm,idle-state".
> > >
> > > Furthermore, represent the CPU cluster as a separate master power domain,
> > > powering the CPU's power domains. The cluster node, contains the idle
> > > states for the cluster and each idle state needs to be compatible with the
> > > "domain-idle-state".
> > >
> > > If the running platform is using a PSCI FW that supports the OS initiated
> > > CPU suspend mode, which likely should be the case unless the PSCI FW is
> > > very old, this change triggers the PSCI driver to enable it.
> > >
> > > Cc: Andy Gross <andy.gross@linaro.org>
> > > Cc: David Brown <david.brown@linaro.org>
> > > Signed-off-by: Lina Iyer <lina.iyer@linaro.org>
> > > Co-developed-by: Ulf Hansson <ulf.hansson@linaro.org>
> > > Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> > > ---
> >
> > [...]
> >
> > > @@ -166,12 +170,57 @@
> > >  				min-residency-us = <2000>;
> > >  				local-timer-stop;
> > >  			};
> > > +
> > > +			CLUSTER_RET: cluster-retention {
> > > +				compatible = "domain-idle-state";
> > > +				arm,psci-suspend-param = <0x1000010>;
> > > +				entry-latency-us = <500>;
> > > +				exit-latency-us = <500>;
> > > +				min-residency-us = <2000>;
> > > +			};
> > > +
> > > +			CLUSTER_PWRDN: cluster-gdhs {
> > > +				compatible = "domain-idle-state";
> > > +				arm,psci-suspend-param = <0x1000030>;
> > > +				entry-latency-us = <2000>;
> > > +				exit-latency-us = <2000>;
> > > +				min-residency-us = <6000>;
> > > +			};
> > >  		};
> > >  	};
> >
> > I was trying to understand the composition of composite state parameters
> > in this series and that made me look at these DT examples.
> >
> This was meant to depict a hierarchical state format for OSI.
>

Hmm, I am more confused. We have 2 formats: original and extended.

1. Original:
	31:26 Reserved. Must be zero.
	25:24 PowerLevel
	23:17 Reserved. Must be zero.
	16 StateType
	15:0 StateID
2. Extended
	31 Reserved. Must be zero.
	30 StateType
	29:28 Reserved. Must be zero.
	27:0 StateID

I was trying to match them to that. I think I commented on other patches.
I think simple OR logic breaks with extended format easily if StateIDs
are not carefully crafted which is not mandated and hence the trouble.
The same holds to original format but with PowerLevel, it slightly
relaxing things a bit but still it needs to be crafted when firmware
decides these parameters. E.g.: what is done with HiKey platform is
completely wrong.

It's helpful if we want to avoid save/restore for retention states.
CPU_PM_CPU_IDLE_ENTER_RETENTION vs CPU_PM_CPU_IDLE_ENTER

> > What format does the above platform use ? I tried matching them to
> > both original as well as extended format and I fail to understand.
> > Assuming original format:
> > 	State         power_state PowerLevel  StateType     StateID
> > 	SPC           0x40000002   0(core)    0(Retention)  0x2 (Res0 b[29]=1?)
> > 	CLUSTER_RET   0x1000010   1(clusters) 0(Retention)  0x10
> > 	CLUSTER_PWRDN 0x1000030   1(clusters) 0(Retention?) 0x30
> > Now extended format:
> > 	State         power_state StateType     StateID
> > 	SPC           0x40000002  0(Retention)  0x40000002 (Res0 b[29]=1?)
> > 	CLUSTER_RET   0x1000010   0(Retention)  0x1000010
> The composite state would comprise of CPU state and  Cluster state.
> So for the last CPU entering idle -
> (CLUSTER_RET | SPC)
> 0x41000012
> > 	CLUSTER_PWRDN 0x1000030   0(Retention?) 0x1000030
> >
> (CLUSTER_PWRDN | SPC)
> 0x41000032
>
> Hope this helps.
>

I just follow OR logic. I have made wrong reference to bit 29 above(I
can't read simple 32 bit number anymore :(), it should bit 30 and if
this platform follow extended state, then it makes some sense. But
I expect CLUSTER_PWRDN also to have bit 30 set. I tried to match to both
formats and failed to understand which it follows, so thought of asking.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
