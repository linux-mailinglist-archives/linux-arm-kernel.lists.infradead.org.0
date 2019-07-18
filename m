Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3A896CF00
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 15:38:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xaGVt+9RlTTiAopCDENkjE0Yvx8SQ0jMZaAHzXqRdGM=; b=p2XuPcar7h4T9J
	nhSWiarhNe5967ivNwovjdx0Tzrisu0vJIvSQs0RDVbUsQOLN/8TFoKHNDvExa6KQFOMoreT98axd
	g/wZ2mn9k5EhBuP491Ckaud4nCoFDGf8cBcJkaGJu/b8sZe+n1cSdcW/7t8sRVZ99wbNniuQn1OBp
	fR4dPAlek8dVVktXHie/R7ynJxZxX4EQW1XzkECBjSE4GvOJpOMzuGUVuzNHKq/vyXg6EAd1ZeR2G
	8/GZLnolEXZbQiRxJWgu/v0eL9VQYmAWTN70S9DOhv7KQYhZgwlS0Q4huTNDETze8WVuS0wxn2m2o
	L1VI9igRcCQKIh1dmXwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho6bc-0000ea-Mb; Thu, 18 Jul 2019 13:37:56 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1ho6aN-0000cw-VL
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 13:36:51 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0C67D344;
 Thu, 18 Jul 2019 06:36:39 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (unknown [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 754163F71F;
 Thu, 18 Jul 2019 06:36:36 -0700 (PDT)
Date: Thu, 18 Jul 2019 14:36:30 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH 10/18] drivers: firmware: psci: Add hierarchical domain
 idle states converter
Message-ID: <20190718133630.GB27222@e121166-lin.cambridge.arm.com>
References: <20190513192300.653-1-ulf.hansson@linaro.org>
 <20190513192300.653-11-ulf.hansson@linaro.org>
 <20190709153138.GA22871@e121166-lin.cambridge.arm.com>
 <CAPDyKFpd5Jip+ZDENXVC115JJgCReJa4G92aKa45Lna6BeV5-g@mail.gmail.com>
 <20190716145121.GA32490@e121166-lin.cambridge.arm.com>
 <CAPDyKFoBm9vWUcX5pjMMseYs7SAYr9v0Uc48YqsgaG9omA2MRQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPDyKFoBm9vWUcX5pjMMseYs7SAYr9v0Uc48YqsgaG9omA2MRQ@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_063643_202190_E2C83D63 
X-CRM114-Status: GOOD (  23.63  )
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
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Kevin Hilman <khilman@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>, Linux PM <linux-pm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Amit Kucheria <amit.kucheria@linaro.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Tony Lindgren <tony@atomide.com>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Lina Iyer <ilina@codeaurora.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Niklas Cassel <niklas.cassel@linaro.org>,
 Souvik Chakravarty <souvik.chakravarty@arm.com>,
 "Raju P . L . S . S . S . N" <rplsssn@codeaurora.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 18, 2019 at 01:43:44PM +0200, Ulf Hansson wrote:

[...]

> > > Anyway, as a suggestion to address your concern, how about this:
> > >
> > > 1. Move some things out to a PSCI cpuidle driver. We need to decide
> > > more exactly on what to move and find the right level for the
> > > interfaces.
> >
> > I will do it and post patches asap.
> 
> Okay, so I will wait for you to converting the cpuidle-arm driver into
> a cpuidle-psci driver (and all the changes that comes with it) and
> then base my re-base my series on top.
> 
> Then, would you mind sharing (even in an early phase) a
> branch/git-tree so I can start re-basing my series on top?

Sure, I should be able to post at -rc1 and will publish a branch
here [1].

> > > 2. Don't attach the CPU to the PM domain topology in case the PSCI PC
> > > mode is used. I think this makes it easier, at least as a first step,
> > > to understand when runtime PM needs to be used/enabled.
> >
> > In the PSCI CPUidle driver we can have two distinct struct
> > cpuidle_state->enter functions for PC and OSI, no overhead
> > for PC, runtime PM for OSI, decoupling done.
> 
> Good idea!
> 
> >
> > We can choose one or the other depending on whether:
> >
> > OSI iff:
> > - OSI is available
> > - hierarchical idle states are present in DT
> >
> > otherwise PC.
> >
> > That's what this patch does but we will do it in a unified file.
> 
> Sure, it makes sense.
> 
> >
> > > 3. Would it help if I volunteer to help you guys as a maintainer for
> > > PSCI. At least for the part of the new code that becomes introduced?
> >
> > We will do as described above if that makes sense.
> 
> Yep, I am okay with your suggestions, assuming I have understood them correctly.
> 
> BTW, have you considered to host a git tree for PSCI so we can have
> changes pre-integrated and tested in Stephen Rothwell's linux-next
> tree?

I will ask Stephen to pull when needed a branch in the tree below[1]

[1] https://git.kernel.org/pub/scm/linux/kernel/git/lpieralisi/linux.git/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
