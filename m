Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72F606E3A8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jul 2019 11:46:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kRGP/zogPu/HWzXzogFoZXgMdrSWLYthDgGm1kh16Po=; b=sFUtKFJxuHGtJM
	jAN3oWdx7z4+SIlobIMGImqbNSs+yqn6BLXKfsK1h2iG2fdTYa1Qj62bDMdvTbj7wYDE1ALXe+Ypf
	7YTrMSbgmqJczpNc01U6xIMePBUDsnXr3rnQCW++QlZrvC1ARf5i6Z4ncc7j4I/1Ce5xj6C4l5rZ6
	MqskLrg7TkgpLNyLTI+7VpcMBVtV+ljvI+06pKoH7CGQIlhBRgK0To0MiDbC4AVhncgwahKhuRxG1
	eyMu3dLiX/bSPhnIKKpyuiWUqm8b2XEszRtDTaQ4afMbaBUit0MsoddaKu/K28/5YxN1JAbHJ/ZMy
	cs7x/VGUWpeO8n5D/4dQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoPT0-0005CZ-C7; Fri, 19 Jul 2019 09:46:18 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hoPSb-0005BL-Dy
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jul 2019 09:45:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 93A29337;
 Fri, 19 Jul 2019 02:45:49 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C7DE33F59C;
 Fri, 19 Jul 2019 02:45:46 -0700 (PDT)
Date: Fri, 19 Jul 2019 10:45:30 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Lina Iyer <ilina@codeaurora.org>
Subject: Re: [PATCH 09/18] drivers: firmware: psci: Add support for PM
 domains using genpd
Message-ID: <20190719094530.GA15248@e107155-lin>
References: <20190513192300.653-1-ulf.hansson@linaro.org>
 <20190513192300.653-10-ulf.hansson@linaro.org>
 <20190716150533.GD7250@e107155-lin>
 <CAPDyKFqaE2L419siFY=LGDsotAnpBt+H_vpmG62AqQw8UQJZJA@mail.gmail.com>
 <20190718131913.GB28633@e107155-lin>
 <20190718175746.GE25567@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190718175746.GE25567@codeaurora.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_024553_519994_AF465032 
X-CRM114-Status: GOOD (  17.99  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>, Tony Lindgren <tony@atomide.com>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Lina Iyer <lina.iyer@linaro.org>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Kevin Hilman <khilman@kernel.org>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Raju P . L . S . S . S . N" <rplsssn@codeaurora.org>,
 Souvik Chakravarty <souvik.chakravarty@arm.com>,
 Linux PM <linux-pm@vger.kernel.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Stephen Boyd <sboyd@kernel.org>, "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Amit Kucheria <amit.kucheria@linaro.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Niklas Cassel <niklas.cassel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 18, 2019 at 11:57:46AM -0600, Lina Iyer wrote:
> On Thu, Jul 18 2019 at 07:19 -0600, Sudeep Holla wrote:
[...]

> >
> > Yes 2 different issues here:
> > 1. The direct assignment overwriting the value is problem which you agree.
> > 2. The OR logic on it's own is bit not so clear from the specification.
> >   Since firmware authors need to be aware of this to make all these
> >   work. So it's not implicit, either we set this requirement in form
> >   of binding. We were also thinking of stating composite state in the
> >   DT, still just a thought, need to come up with examples/illustrations.
> >
> It is generally very obvious to firmware authors to map hardware
> definitions to specific bits in the state param. If a cluster component
> has more than on/off state, more bits are assigned to the define the
> idle states of the component.

While I completely agree that generally the firmware authors tend to
assign a bit(s) to indicate a state, it not so evident from the PSCI
specification. My worry is someone shouldn't come up with sequential
numbering and expect this to work.

I am fine with OR, but we need to document it somewhere so that we
can point people so that the driver in the kernel is not expected
to work with any other schema of numbering StateID that violates
the assumption.

> Addition is also an option, but there are enough bits compared to the
> hardware components that we have in each state, that it hasn't been a
> problem.
>
Yes, but with extended format, the StateType move to bit 30, and if
we represent each individual state to indicate that bit correctly(I
except everyone to so that and it shouldn't cause issue if we OR the
parameters to get composite states), addition may cause issues.

--
Regards,
Sudeep


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
