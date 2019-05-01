Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7400F10714
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 12:42:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a72I7UgTLQiacoBbmKfcMzLFoiAYItiNjbit/00tTiA=; b=jdUrZYMq2pAecq
	6K8HZFllp/fuJ+IB8BjPPL/GAbAfJi+6UnwEzBuCZ2nskQLP6jp1EAUBk0g/Z6eelYD0OaUqboueT
	Vk/gfVqgyTCcZxMqImitPqtP0ivuDRTQBuWt0HUIYflpJ+gtAyrBatVvNjaQOwTzIDXhNlmm9tBUv
	+PEL6Dh89eeIfBijAbNYrHJtjrrvbGXMX9AWLgaEl1zHN87LPi75TeYwfRrr0Kg20ybHhZr2hbLOi
	tjg9Dp92REG7UELIua1PyuwGu5mxQ0CZW994R2DdqlI/aEwsRDq9he6O4SmCCYncVyvdKmpD4AgfE
	P6/wzGwGXvWNdwmB4+rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLmgu-0006fp-Hm; Wed, 01 May 2019 10:42:20 +0000
Received: from cloudserver094114.home.pl ([79.96.170.134])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLmgo-0006fR-4S
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 10:42:15 +0000
Received: from 79.184.254.69.ipv4.supernova.orange.pl (79.184.254.69) (HELO
 kreacher.localnet)
 by serwer1319399.home.pl (79.96.170.134) with SMTP (IdeaSmtpServer 0.83.213)
 id 399cf859464cc529; Wed, 1 May 2019 12:42:12 +0200
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: "Rafael J. Wysocki" <rafael@kernel.org>
Subject: Re: [PATCH 0/4] PM / Domains: Improve support for CPUs in genpd
Date: Wed, 01 May 2019 12:42:11 +0200
Message-ID: <1669333.3pGjfQS6y6@kreacher>
In-Reply-To: <CAJZ5v0iK03ajPVE2LdkJHKBQzeeS+dkkaYfvUuVYAcZKStU-EQ@mail.gmail.com>
References: <20190425090413.10700-1-ulf.hansson@linaro.org>
 <CAPDyKFq3QTjX5m9HoNYFTd-e-p_BXsqPH8s+P_yQ5YEJvHBoag@mail.gmail.com>
 <CAJZ5v0iK03ajPVE2LdkJHKBQzeeS+dkkaYfvUuVYAcZKStU-EQ@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_034214_337870_B43838D6 
X-CRM114-Status: GOOD (  16.49  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
 Rajendra Nayak <rnayak@codeaurora.org>, Linux PM <linux-pm@vger.kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Kevin Hilman <khilman@kernel.org>,
 Lina Iyer <ilina@codeaurora.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Tony Lindgren <tony@atomide.com>, Niklas Cassel <niklas.cassel@linaro.org>,
 "Raju P . L . S . S . S . N" <rplsssn@codeaurora.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thursday, April 25, 2019 12:32:24 PM CEST Rafael J. Wysocki wrote:
> On Thu, Apr 25, 2019 at 12:17 PM Ulf Hansson <ulf.hansson@linaro.org> wrote:
> >
> > On Thu, 25 Apr 2019 at 12:14, Rafael J. Wysocki <rafael@kernel.org> wrote:
> > >
> > > On Thu, Apr 25, 2019 at 12:11 PM Ulf Hansson <ulf.hansson@linaro.org> wrote:
> > > >
> > > > On Thu, 25 Apr 2019 at 11:56, Rafael J. Wysocki <rafael@kernel.org> wrote:
> > > > >
> > > > > On Thu, Apr 25, 2019 at 11:04 AM Ulf Hansson <ulf.hansson@linaro.org> wrote:
> > > > > >
> > > > > > Recently genpd was extended to cope with devices belonging to CPUs. However,
> > > > > > attaching CPU devices via genpd_dev_pm_attach_by_id|name() doesn't work,
> > > > > > because of the virtual device that genpd allocates in this path.
> > > > > >
> > > > > > In this series, this limitation is addressed, together with a few other related
> > > > > > fixes/cleanups.
> > > > > >
> > > > > > Ulf Hansson (4):
> > > > > >   PM / Domains: Use the base device for
> > > > > >     driver_deferred_probe_check_state()
> > > > > >   PM / Domains: Drop unused in-parameter to some genpd functions
> > > > > >   PM / Domains: Search for the CPU device outside the genpd lock
> > > > > >   PM / Domains: Allow to attach a CPU via
> > > > > >     genpd_dev_pm_attach_by_id|name()
> > > > > >
> > > > > >  drivers/base/power/domain.c | 73 ++++++++++++++++++-------------------
> > > > > >  include/linux/pm_domain.h   |  1 +
> > > > > >  2 files changed, 36 insertions(+), 38 deletions(-)
> > > > >
> > > > > Are there any dependencies between this and the series you've recently posted?
> > > >
> > > > Yep. I should have stated that, sorry. This should be applied on top.
> > >
> > > On top of which series?
> >
> > [PATCH 0/3] PM / Domains: Improve support for multi PM domains
> >
> > and
> >
> > [PATCH v13 0/4] PM / Domains: Support hierarchical CPU arrangement (PSCI/ARM)
> 
> OK, thanks!
> 

This series has been applied, thanks!





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
