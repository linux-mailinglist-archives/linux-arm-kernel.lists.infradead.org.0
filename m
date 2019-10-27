Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC0FEE603B
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 27 Oct 2019 03:21:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EKQNgeLDf1Q4dGWXoqtFKvMqhV8eotBviVpdXLC5/o4=; b=HHyPimdn7LfBBZ
	ijllOEh3H0RTkd5NUhSd4yguBmLArH2KvDdABSrDP3K1Uu8whog4aMdBLwTKs0I0qQ5yzOMlijv5q
	Ja+3muDhS6DXVJVr7zOvX2aTQtm2OdronOzBETEYVeJCDqa4q7jPkaKQa87K13GRDILC1+nivZ8jW
	W9kNotD2+ZGZELYjDJWMdb58kIbgmo/s5wW+i4TY5o4qyN9jV/3bP/TfoUgxP2D8IycJooiliScY7
	/QWb1u7+A8SJaG0X83V5ZtGMi8vgDY1RZjOLZvtq0dYhf1xsWXzSxV3ByJpJ9hgtSsZY4XXa5ulg9
	XDoJ6ERxcqoLGASc5Avg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOYBR-0001e4-DX; Sun, 27 Oct 2019 02:21:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOYBI-0001dX-8z
 for linux-arm-kernel@lists.infradead.org; Sun, 27 Oct 2019 02:21:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7A7DE1FB;
 Sat, 26 Oct 2019 19:21:18 -0700 (PDT)
Received: from e107533-lin.cambridge.arm.com (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9BA263F6C4;
 Sat, 26 Oct 2019 19:21:13 -0700 (PDT)
Date: Sun, 27 Oct 2019 02:20:56 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH] cpuidle: psci: Align psci_power_state count with idle
 state count
Message-ID: <20191027022056.GA18111@e107533-lin.cambridge.arm.com>
References: <20191010113937.15962-2-ulf.hansson@linaro.org>
 <20191024151834.17036-1-sudeep.holla@arm.com>
 <CAPDyKFqOTpwZ_o0Z6hAFDXf9wJM82a_P8fcKkZY-ZfW-d9LFVQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPDyKFqOTpwZ_o0Z6hAFDXf9wJM82a_P8fcKkZY-ZfW-d9LFVQ@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191026_192124_361409_CA3524D4 
X-CRM114-Status: GOOD (  17.79  )
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
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Kevin Hilman <khilman@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Linux PM <linux-pm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, Lina Iyer <ilina@codeaurora.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 24, 2019 at 06:10:09PM +0200, Ulf Hansson wrote:
> On Thu, 24 Oct 2019 at 17:18, Sudeep Holla <sudeep.holla@arm.com> wrote:
> >
> > Instead of allocating 'n-1' states in psci_power_state to manage 'n'
> > idle states which include "ARM WFI" state, it would be simpler to have
> > 1:1 mapping between psci_power_state and cpuidle driver states.
> >
> > ARM WFI state(i.e. idx == 0) is handled specially in the generic macro
> > CPU_PM_CPU_IDLE_ENTER_PARAM and hence state[-1] is not possible. However
> > for sake of code readability, it is better to have 1:1 mapping and not
> > use [idx - 1] to access psci_power_state corresponding to driver cpuidle
> > state for idx.
> >
> > psci_power_state[0] is default initialised to 0 and is never accessed
> > while entering WFI state.
> >
> > Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
>
> Reported-by: Ulf Hansson <ulf.hansson@linaro.org>
> Reviewed-by: Ulf Hansson <ulf.hansson@linaro.org>
>
> > ---
> >  drivers/cpuidle/cpuidle-psci.c | 8 +++++---
> >  1 file changed, 5 insertions(+), 3 deletions(-)
> >
> > Hi Ulf, Lorenzo,
> >
> > Just to avoid confusion, I thought I will just write this patch as I was
> > about to make reference to this in my review.
>
> As discussed with Lorenzo, I said I was going to adopt his review
> comments, which means I already have a patch for this locally.
>
> Nevermind this time, but I would appreciate if this kind of
> bikeshedding can been avoided future wise.
>

That's one of the reason I just wrote the patch as I felt describing it
it words was difficult compared to patch :). Sorry if you felt this was
bikeshedding.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
