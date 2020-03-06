Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5632517BC4D
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 13:07:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UqM2zCj9sb9dgmde+sLKnz2iiIe8zWSxnZCseRrS8Nw=; b=UQlCBKryBpXz0a
	FpotSEc4D6ci1QjBvRICv+u0KWLeGy/4N4qUdsW/C0fkCC6kyfkHHpv8DL3O5mqPDYpivfeh8QpPG
	CR5zzAAZ5wgyAK832lIgAjTVUdBfyfbbSIloijVTBkMUJlHHpD6chNcc3LymlvZnMSbYUZfv6Qdkz
	F8O6zRTwS0TAaEcuFxxKo1Jp7Z8i5mwawFF6iG5WXHSx8g6zxlTNKVpVdvcX4kDchWCEcooxctUbD
	WW0xUpkiqXSQQxOxdz7OTtJUDvXrDfeoWfqYanMGdoZsDcCzQ3Pt5vxQhZH9rIL6cWNpu+UfJkt4S
	1Dbnq0/ESvsskSPnLteA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jABkp-0007AK-NO; Fri, 06 Mar 2020 12:06:59 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jABkg-00079q-SP
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 12:06:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DF38D31B;
 Fri,  6 Mar 2020 04:06:49 -0800 (PST)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5A8CC3F6C4;
 Fri,  6 Mar 2020 04:06:48 -0800 (PST)
Date: Fri, 6 Mar 2020 12:06:46 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Benjamin Gaignard <benjamin.gaignard@linaro.org>
Subject: Re: [PATCH v2 4/4] cpuidle: psci: Allow WFI to be the only state for
 the hierarchical topology
Message-ID: <20200306120646.GB44221@bogus>
References: <20200303203559.23995-1-ulf.hansson@linaro.org>
 <20200303203559.23995-5-ulf.hansson@linaro.org>
 <20200304122312.GE25004@bogus>
 <CAPDyKFpcN-p6sKqB0ujHAY29qPSg7qpSjYGymPaJ4W8jgCKGcg@mail.gmail.com>
 <20200305162321.GB53631@bogus>
 <CAPDyKFogjPG+mRsfPaxN7RjB7TQL9=qHNzA=K_t0F6M6Q9-TuA@mail.gmail.com>
 <20200306100431.GA16541@bogus>
 <CA+M3ks764moVU2h9iZJuN6B-e4wBUMymBfPnob_zraf50xqezA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+M3ks764moVU2h9iZJuN6B-e4wBUMymBfPnob_zraf50xqezA@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_040650_963091_29234368 
X-CRM114-Status: GOOD (  19.87  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Benjamin Gaignard <benjamin.gaignard@st.com>,
 Linux PM <linux-pm@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Lina Iyer <ilina@codeaurora.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 06, 2020 at 11:47:40AM +0100, Benjamin Gaignard wrote:
> Le ven. 6 mars 2020 =E0 11:04, Sudeep Holla <sudeep.holla@arm.com> a =E9c=
rit :
> >
> > On Fri, Mar 06, 2020 at 10:28:10AM +0100, Ulf Hansson wrote:
> > > On Thu, 5 Mar 2020 at 17:23, Sudeep Holla <sudeep.holla@arm.com> wrot=
e:
> > > >
> >
> > [...]
> >
> > > > OK. The only state that cluster can enter when CPUs are in WFI are
> > > > cluster WFI and most hardware can handle it automatically. I don't =
see
> > > > the need to do any extra work for that.
> > >
> > > This isn't about cluster WFI, but about deeper cluster states, such as
> > > a cluster-clock-gated-state and a cluster-power-off-state. It's an ST
> > > platform, which Benjamin is working on.
> > >
> >
> > Then definitely something is completely wrong. You can't enter deeper
> > cluster states(clock-gated and power-off to be specific) with CPU in
> > just WFI state. So, if the attempt here is to enter those states, I
> > disagree with the change.
> >
> > Benjamin, please share the complete hierarchical topology for your plat=
form.
>
> The platform is stm32mp157 SoC which embedded two Cortex A7 in one cluste=
r.

Hang on a minute, is this the same platform where you wanted high
resolution timer and were hacking moving dirty tricks around[1]. Now I think
you have landed here.

> I would like to be able to put the system in a state where clocks of CPUs=
 and
> hardware blocks are gated. In this state local timer are off.

Sure, please create a deeper CPU state than WFI and enter so that the CPU
state is saved and restored correctly. What is the problem doing that ?

> The platform should be allowed to go in this state when the devices
> within the power domain are pm_runtime_suspend and the CPUs in WFI.

Nope, we don't save and restore state when we enter/exit WFI. And hence
we can't allow deeper idle states in the hierarchy. No more discussion
on that.

> In DT I have one system power domain where the hardware blocks (i2,
> uart; spi, etc..) are attached + a power per CPU.

You really need a CPU idle state here.

--
Regards,
Sudeep

[1] https://lore.kernel.org/linux-arm-kernel/a42dd20677cddd8d09ea91a369a4e1=
0b@www.loen.fr/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
