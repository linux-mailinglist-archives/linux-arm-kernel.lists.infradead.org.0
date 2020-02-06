Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BFF21540A2
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 09:46:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FqIxgyXJkEb0w1b7kfRNkFDV3JWWC+PsSg+AT2bmP78=; b=kfL3OasghbL6Fr
	lzo0f34xokK6XwtqmXBN1mBQ9yVY+DiMzf97Nipm4LaVGNn7sxO/Ct1nL+CO4tjLgdbklrc37W67K
	L7oktELqkju9j454+n56irXKWsg8l8SsLUAz1jG4+QiOWOqhzJuNLrJry+jNhW3vSMm0blR9pG8Nf
	hoWzQd7pkd05912zrXlPZEj7Z93ic13EE6lN2h+4x/9aIvE7Ao8LUziB8+edWQbR6MPCi6T3vjStC
	2D+LH3RIxt/XYB+lFpYxchu4ocfRCQL8NUPZyDD+v9aqy8cZWvYyfXc15T8ffFNv7GAfWRd3BRUMX
	3zdVYKx/Impkyeq8peJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izcnj-0004pf-4Y; Thu, 06 Feb 2020 08:46:19 +0000
Received: from mail-vk1-xa41.google.com ([2607:f8b0:4864:20::a41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izcnb-0004pD-Ix
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 08:46:13 +0000
Received: by mail-vk1-xa41.google.com with SMTP id b69so1391219vke.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Feb 2020 00:46:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8SHAgobSEb546iBt5cNLjHLEI9u6dAs7lm7+/SJg7Jk=;
 b=pbRhghe/7yBE+QvA+2niPDdMyXYY6Uxi+o3Wd1l4gPLoxZLbexr+qrjM5w3ZoBCt71
 uNDS8Nkfc/dCOTAbqlK5ZmkYXagP5tP0mwoqBLCpzy5mw3Zrd6Yszfho47x35dVGJIMF
 T7lfuzUC2HyXaoiJSSCiTovaSnpG0sTVbJUOkRbDo6wjoeJTjoRdEv6O4dISSBEqm4k/
 7eaw08U4iH2SVIe8cr/3jE7QnA7VEoatzdj2wy7igjBZ0nMLOHbzwuwkmSJR/pev96bN
 UTINzh3dw4ubVF2YD3m7ZZecM9W0CbXKJHw3zXH5OC5JyhUNglK1iD7WsOafjQms2sux
 jR2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8SHAgobSEb546iBt5cNLjHLEI9u6dAs7lm7+/SJg7Jk=;
 b=jXfMKDzvAgEmOCI2+md9ysD3bvysvu4Mkm22x33aHKKWn4dOhHzwxjh04sXvYQ2YQE
 jJcVaSnG+CSl4KUhcFXhWA2lXeVHdvRdCJAtaIqaHcjnFJ+UoGJb+fI4+RcC5+UPBA3e
 1Zn7xgnq+WpJWenfwBYXSI8sF0TIC5JmGMIP1x0OZQLLtoTaWGAMvc4bfqv6uWe0qK3w
 yggAUBRXKGPaIViQ5LWShZPxcL9/nY4HdsqaEF4ndf6jU/EOyEqL0fHzG38RYIXNiJxn
 406J+1nfYeoRIak4gfaVCvUfrPXzm5jo3A8spmIcyYqvXeXjFVjlVd7SxDBuEzPkX63p
 QEMA==
X-Gm-Message-State: APjAAAUzTPbsxJIPbgVQFv1fGadz6PFN8qhysZt5piA789IwvXrzMsxJ
 sS2xYj8yagge1H0uoRjiX1IQAuUG+fn4jtCq7NxJVg==
X-Google-Smtp-Source: APXvYqyhaBupFPdxR9GuF8DCLqL3bWPkA59GP7Uflc2DvigCdd8wZzZQzSTTp4q1qRVGG3M64NLke2IWZ0RBxoBZK38=
X-Received: by 2002:ac5:c844:: with SMTP id g4mr1195612vkm.25.1580978770270;
 Thu, 06 Feb 2020 00:46:10 -0800 (PST)
MIME-Version: 1.0
References: <1580736940-6985-1-git-send-email-mkshah@codeaurora.org>
 <1580736940-6985-6-git-send-email-mkshah@codeaurora.org>
 <20200203170832.GA38466@bogus>
 <0d7f7ade-3a1e-5428-d851-f1a886f58712@codeaurora.org>
 <20200204152132.GA44858@bogus>
 <6ff7c82d-4204-a339-4070-0154ab4515f1@codeaurora.org>
 <20200205140603.GB38466@bogus>
 <CAPDyKFoyepN2VX4COMomp1e9dXPozzrgCdcy0paee2jp8Wm3YA@mail.gmail.com>
 <20200205161816.GD38466@bogus>
In-Reply-To: <20200205161816.GD38466@bogus>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 6 Feb 2020 09:45:34 +0100
Message-ID: <CAPDyKFqaA7oN2+oLS=Puw+jQXke_ErGQAWYuTuU-6PS7mo5YbQ@mail.gmail.com>
Subject: Re: [PATCH v3 5/7] drivers: firmware: psci: Add hierarchical domain
 idle states converter
To: Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_004611_688420_0B579E42 
X-CRM114-Status: GOOD (  33.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Maulik Shah <mkshah@codeaurora.org>, lsrao@codeaurora.org,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Rajendra Nayak <rnayak@codeaurora.org>, Linux PM <linux-pm@vger.kernel.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Evan Green <evgreen@chromium.org>, Stephen Boyd <swboyd@chromium.org>,
 David Brown <david.brown@linaro.org>, Andy Gross <agross@kernel.org>,
 Lina Iyer <ilina@codeaurora.org>, Doug Anderson <dianders@chromium.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 5 Feb 2020 at 17:18, Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> On Wed, Feb 05, 2020 at 04:55:17PM +0100, Ulf Hansson wrote:
> > On Wed, 5 Feb 2020 at 15:06, Sudeep Holla <sudeep.holla@arm.com> wrote:
> > >
> > > On Wed, Feb 05, 2020 at 05:53:00PM +0530, Maulik Shah wrote:
> > > >
> > > > On 2/4/2020 8:51 PM, Sudeep Holla wrote:
> > > > > On Tue, Feb 04, 2020 at 10:22:42AM +0530, Maulik Shah wrote:
> > > > > > On 2/3/2020 10:38 PM, Sudeep Holla wrote:
> > > > > > > On Mon, Feb 03, 2020 at 07:05:38PM +0530, Maulik Shah wrote:
> > > > > > > > From: Ulf Hansson <ulf.hansson@linaro.org>
> > > > > > > >
> > > > > > > > If the hierarchical CPU topology is used, but the OS initiated mode isn't
> > > > > > > > supported, we need to rely solely on the regular cpuidle framework to
> > > > > > > > manage the idle state selection, rather than using genpd and its
> > > > > > > > governor.
> > > > > > > >
> > > > > > > > For this reason, introduce a new PSCI DT helper function,
> > > > > > > > psci_dt_pm_domains_parse_states(), which parses and converts the
> > > > > > > > hierarchically described domain idle states from DT, into regular flattened
> > > > > > > > cpuidle states. The converted states are added to the existing cpuidle
> > > > > > > > driver's array of idle states, which make them available for cpuidle.
> > > > > > > >
> > > > > > > And what's the main motivation for this if OSI is not supported in the
> > > > > > > firmware ?
> > > > > > Hi Sudeep,
> > > > > >
> > > > > > Main motivation is to do last-man activities before the CPU cluster can
> > > > > > enter a deep idle state.
> > > > > >
> > > > > Details on those last-man activities will help the discussion. Basically
> > > > > I am wondering what they are and why they need to done in OSPM ?
> > > >
> > > > Hi Sudeep,
> > > >
> > > > there are cases like,
> > > >
> > > > Last cpu going to deepest idle mode need to lower various resoruce
> > > > requirements (for eg DDR freq).
> > > >
> > >
> > > In PC mode, only PSCI implementation knows the last man and there shouldn't
> > > be any notion of it in OS. If you need it, you may need OSI. You are still
> > > mixing up the things. NACK for any such approach, sorry.
> >
> > Sudeep, I don't quite agree with your NACK to this. At least not yet. :-)
> >
>
> OK, I am not surprised :-)

Apologize for troubling you again. :-)

>
> > I do agree that the best suited solution seems to be OSI, as to
> > support this kind of SoC requirements.
> >
>
> That's the main point. We need to draw some line as what we want to do
> with PC and OSI mode. If we plan to take up all last man responsibility
> in the kernel, what's the point in not supporting OSI in the firmware
> then ? I can't buy it yet.
>
> > However, if for some reason the PC mode is being used, we could still
> > allow Linux to control "last-man activities" as it knows what each CPU
> > has voted for when going idle. Yes, the PSCI FW decides in the end,
> > but that doesn't really matter. Or is there another technical reason
> > to why you object?
> >
>
> Precisely, FW decides and let it. Just because we can do in the kernel
> doesn't mean we must do it. It's clear in the spec and doing it in the
> kernel will be sub-optimal if PSCI f/w aborted entering the deeper
> state that required some action in the first place.

Yes, it may be suboptimal for PC-mode.

On the other hand, we already fire CPU PM notifiers while exit/enter
idle states (except for WFI). Those may also be suboptimal for kind of
the similar reasons.

Maybe it's not the best argument, but it sounds like allowing us to
control cluster power on/off notifications for last-man activities,
would just conform to the similar behaviour we already have. No?

>
> > As a matter of fact, if we allow support for PC mode with
> > "last-man-activities", it would allow us to make a fair
> > performance/energy comparison between the two PSCI CPU suspend modes,
> > for the same SoC. I would be thrilled about looking into doing such
> > tests, I bet you are as well!?
> >
>
> I was, but not anymore, especially if we want such changes in the kernel
> to do so.
>
> Just use OSI as that was the point of adding all these after years of
> discussion claiming it's more optimal compared to PC. Now telling that
> you need more changes to compare it with PC just doesn't make any sense
> at all to me.

Fair enough.

I was just pondering over if there are other reasons to why we may want this.

One other thing that could be problematic to support, is when are
other resources, I/O controllers for example, sharing the same power
rail as a cluster. When such controller is in use, idle states of the
cluster must be prevented. Without using genpd to model the CPU
topology, it may be difficult to deal with this.

Of course, using PC mode when trying to deal with this
platform/board-requirement would also be suboptimal. In other words,
your argument about when using OSI vs PC mode, still stands.

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
