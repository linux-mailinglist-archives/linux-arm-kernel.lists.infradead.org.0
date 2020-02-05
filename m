Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6F791534C5
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 16:56:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YyRag+lUqgSJyvNelgLB3RbPWYjgOwXUx1jYDct5nAk=; b=Eskugq1XlP39VD
	uuYg+8N00//AjfBP36izDgHAL/lzsH74OcUArevkNBpEO1vPprnBJXRS8tzSQfxoBY5Io15Z8AKhp
	4AcIoa3ACaDZGQyuSUIHhnaT7HnomGrpfN7EU5jTHzDXinnlpPG9WUcAra3X1EvFoI3rtj+uCEqdg
	44w7LCWENwIjdOUmyJWp1p/tBBpDQrqhxTjdbKVFpzu5YcxuYm/Yp+CmparWYUnZ/bydTIdfBlqAV
	cYkw28othGtM9Nh7S6sKJTeYSJcT0hQjC7cRx7pn1jxd/FkrxuOjwLzYK1NluUMnAG954ODfr1Yff
	s7cOK8PKK8QWbW6RCQ5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izN25-0007tj-2z; Wed, 05 Feb 2020 15:56:05 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izN1v-0007sj-GM
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Feb 2020 15:55:56 +0000
Received: by mail-vs1-xe41.google.com with SMTP id p6so1613285vsj.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Feb 2020 07:55:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ei9H45SV2oMs69C7hL0SyaAz256oxS6zCX5MjvjcWsU=;
 b=Nbq5QFkLGVrepL0kiN0uMOeJSiQzYs0SIsaGXzuFw02d55rgJXVER2UguTreuVRGJO
 Od4xBaxLrJDFSjE6bsj/+aUv9g+rYikRSWZyUQledbdk/qhAy29jK+vcs1DSM5HzxPuO
 c5BOqGKN/1CIxVjv2yrQJRe4hCvPMRT57oeV36R1VPLE01xb9GAo9MxqQEOTMXvDJNZk
 zkaFAQgOgMOYJxNPMgclviF2hmrn2Yfp6AO3+sQxJIajd3Ok/x+B0cgXXgWrzRXYHfKd
 fpR95zPsC6lrCVdelVsr4LatgdvMAc1Y+1iJx5DWEh/KAgqOL/zuXYPqb5PRsywUb1/s
 Ze9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ei9H45SV2oMs69C7hL0SyaAz256oxS6zCX5MjvjcWsU=;
 b=FI4xA6txEZHC9SPOI8TFd80dhyIhdvG4yJmAXhvHaVCcOY5k2pml/7X54lkfJ4z1PQ
 SYKhRh1BSsxhBOac94kPvRM4Crlzvc88twnprjssIKJB1NK4dU5FAk+27PW1jxT2r2wA
 NA+iZu4xJGrPthpLOqWTfKUzuRD+NuUPMxkuHEHsStEdjS4z5snL5BEAFpJiYskckm7r
 2loUOaZEeP5Acz+JfYByz+yiiSaNC71u+l4B+twRjZR9aE8Y+W9gC2O6Vc1g2EjiRMK9
 RSxDQqGa1FgyHaxeGKlUA1sBtGjQNh1MORY3TyWM1ArH9ypYp/nPUE/qvRj6VgmTMeFB
 oIlw==
X-Gm-Message-State: APjAAAXx6LVaSVI3F25QZOnk+uvE6YzZqD7irIJUHL5HqfY4DzkA1DL/
 kz3bhCvXWfQoxH+CLbpYQYWCJHDHTgVfzsO39Imq7w==
X-Google-Smtp-Source: APXvYqwSSPQAZY6rLGXHvigKNLyKPELRR7aaS7nR0axlfGQtU2mVxCkKTFTO+6ddkXy//tB9BMu4/9jHYzXyjFWuYuM=
X-Received: by 2002:a05:6102:757:: with SMTP id
 v23mr22937800vsg.35.1580918153583; 
 Wed, 05 Feb 2020 07:55:53 -0800 (PST)
MIME-Version: 1.0
References: <1580736940-6985-1-git-send-email-mkshah@codeaurora.org>
 <1580736940-6985-6-git-send-email-mkshah@codeaurora.org>
 <20200203170832.GA38466@bogus>
 <0d7f7ade-3a1e-5428-d851-f1a886f58712@codeaurora.org>
 <20200204152132.GA44858@bogus>
 <6ff7c82d-4204-a339-4070-0154ab4515f1@codeaurora.org>
 <20200205140603.GB38466@bogus>
In-Reply-To: <20200205140603.GB38466@bogus>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 5 Feb 2020 16:55:17 +0100
Message-ID: <CAPDyKFoyepN2VX4COMomp1e9dXPozzrgCdcy0paee2jp8Wm3YA@mail.gmail.com>
Subject: Re: [PATCH v3 5/7] drivers: firmware: psci: Add hierarchical domain
 idle states converter
To: Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_075555_556271_DB1A77DD 
X-CRM114-Status: GOOD (  21.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On Wed, 5 Feb 2020 at 15:06, Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> On Wed, Feb 05, 2020 at 05:53:00PM +0530, Maulik Shah wrote:
> >
> > On 2/4/2020 8:51 PM, Sudeep Holla wrote:
> > > On Tue, Feb 04, 2020 at 10:22:42AM +0530, Maulik Shah wrote:
> > > > On 2/3/2020 10:38 PM, Sudeep Holla wrote:
> > > > > On Mon, Feb 03, 2020 at 07:05:38PM +0530, Maulik Shah wrote:
> > > > > > From: Ulf Hansson <ulf.hansson@linaro.org>
> > > > > >
> > > > > > If the hierarchical CPU topology is used, but the OS initiated mode isn't
> > > > > > supported, we need to rely solely on the regular cpuidle framework to
> > > > > > manage the idle state selection, rather than using genpd and its
> > > > > > governor.
> > > > > >
> > > > > > For this reason, introduce a new PSCI DT helper function,
> > > > > > psci_dt_pm_domains_parse_states(), which parses and converts the
> > > > > > hierarchically described domain idle states from DT, into regular flattened
> > > > > > cpuidle states. The converted states are added to the existing cpuidle
> > > > > > driver's array of idle states, which make them available for cpuidle.
> > > > > >
> > > > > And what's the main motivation for this if OSI is not supported in the
> > > > > firmware ?
> > > > Hi Sudeep,
> > > >
> > > > Main motivation is to do last-man activities before the CPU cluster can
> > > > enter a deep idle state.
> > > >
> > > Details on those last-man activities will help the discussion. Basically
> > > I am wondering what they are and why they need to done in OSPM ?
> >
> > Hi Sudeep,
> >
> > there are cases like,
> >
> > Last cpu going to deepest idle mode need to lower various resoruce
> > requirements (for eg DDR freq).
> >
>
> In PC mode, only PSCI implementation knows the last man and there shouldn't
> be any notion of it in OS. If you need it, you may need OSI. You are still
> mixing up the things. NACK for any such approach, sorry.

Sudeep, I don't quite agree with your NACK to this. At least not yet. :-)

I do agree that the best suited solution seems to be OSI, as to
support this kind of SoC requirements.

However, if for some reason the PC mode is being used, we could still
allow Linux to control "last-man activities" as it knows what each CPU
has voted for when going idle. Yes, the PSCI FW decides in the end,
but that doesn't really matter. Or is there another technical reason
to why you object?

As a matter of fact, if we allow support for PC mode with
"last-man-activities", it would allow us to make a fair
performance/energy comparison between the two PSCI CPU suspend modes,
for the same SoC. I would be thrilled about looking into doing such
tests, I bet you are as well!?

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
