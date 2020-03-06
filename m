Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AC1F17B9C9
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 11:05:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VQhJZlVwtO4QqHixsi9NKyR9xpjYuQDhxYG58+m6iDc=; b=E9vMte75heNVcI
	+MIIfghRzufdC/XV4Legmy/H5S34hqQL5MSYHx9ZGf/ywfogB998FS+hDIEENFRcxqpIthBCvLsTJ
	9Fr2LAvmDZ5Qowa0Gb9xSiq0wXTmIk9ecSJJUYi4Bv6ATHDjUejIp1ToCvQV52gsPXPXowbpArnEa
	zWdRZihscKey672eRmVld7PWn75eYD3m8PMaU/nIBZ3bS+dsCSlEJQk6T3T0JYbqUGr4flrr5EdLB
	e18LkoNeB+hgo3HIdBWd0NiK/7GyzP24H+5hf4LTzmDsEa3P9QrIJabe/XKRIFsrk9YwfICsAl5bs
	87ubBEIfWy/JUcaOov0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jA9qr-00027G-4A; Fri, 06 Mar 2020 10:05:05 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jA9qW-00026b-63
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 10:04:45 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5298C31B;
 Fri,  6 Mar 2020 02:04:40 -0800 (PST)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C16CB3F6C4;
 Fri,  6 Mar 2020 02:04:38 -0800 (PST)
Date: Fri, 6 Mar 2020 10:04:31 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH v2 4/4] cpuidle: psci: Allow WFI to be the only state for
 the hierarchical topology
Message-ID: <20200306100431.GA16541@bogus>
References: <20200303203559.23995-1-ulf.hansson@linaro.org>
 <20200303203559.23995-5-ulf.hansson@linaro.org>
 <20200304122312.GE25004@bogus>
 <CAPDyKFpcN-p6sKqB0ujHAY29qPSg7qpSjYGymPaJ4W8jgCKGcg@mail.gmail.com>
 <20200305162321.GB53631@bogus>
 <CAPDyKFogjPG+mRsfPaxN7RjB7TQL9=qHNzA=K_t0F6M6Q9-TuA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPDyKFogjPG+mRsfPaxN7RjB7TQL9=qHNzA=K_t0F6M6Q9-TuA@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_020444_272948_D43F9567 
X-CRM114-Status: GOOD (  19.13  )
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
Cc: Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Benjamin Gaignard <benjamin.gaignard@st.com>,
 Linux PM <linux-pm@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Lina Iyer <ilina@codeaurora.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 06, 2020 at 10:28:10AM +0100, Ulf Hansson wrote:
> On Thu, 5 Mar 2020 at 17:23, Sudeep Holla <sudeep.holla@arm.com> wrote:
> >

[...]

> > OK. The only state that cluster can enter when CPUs are in WFI are
> > cluster WFI and most hardware can handle it automatically. I don't see
> > the need to do any extra work for that.
>
> This isn't about cluster WFI, but about deeper cluster states, such as
> a cluster-clock-gated-state and a cluster-power-off-state. It's an ST
> platform, which Benjamin is working on.
>

Then definitely something is completely wrong. You can't enter deeper
cluster states(clock-gated and power-off to be specific) with CPU in
just WFI state. So, if the attempt here is to enter those states, I
disagree with the change.

Benjamin, please share the complete hierarchical topology for your platform.

> >
> > > Then, after we have called pm_runtime_put_sync_suspend() a few lines
> > > above, we may potentially have a "domain state" to use, instead of the
> > > WFI state.
> > >
> >
> > Are they any platforms with this potential "domain state" to use with
> > CPU WFI. I want to understand this better.
> >
> > > In this case, if we would have called psci_enter_state(), that would
> > > lead us to calling cpu_do_idle() from the __CPU_PM_CPU_IDLE_ENTER()
> > > macro, becuase idx is zero. In other words, the domain state would
> > > become unused.
> > >
> >
> > For a domain state to become unused with WFI, it needs to be available
> > and I am not 100% sure of that.
>
> With these changes from the series, we can fully conform to the
> hierarchical DT bindings for PSCI.
>

Theoretically may be, but may not confirm to the hardware states.

> I am not sure I understand your concern, is there a cost involved by
> applying this?
>

Yes as mentioned above.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
