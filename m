Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B2B586699
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 18:04:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9+EkAL/JS1L8fLMXVWjIsvYSLermcLrw383hc43qbOU=; b=iiYJ7Pttgy3TQw
	a+ykzp1bIw0zJ6g36HZv/4Jhf1iuA03FtFptHb+FIdt3Leiba5x6+a0H+VzcpJkwnHI0J7MzvB8lV
	GCQs3UsQAReUD2RUOnGwtMWYHSgM/Tr6LlPAJvBhlOgpWMUFMHLMa0FU3931RxfmEqxV1ZNgkSGrF
	68gr3edc2xtkwhcJXb9Gqb2NFFGsqPfInVmwkQghhW8PHE6lCQGDWYymD97m3qBqgWirhtiaX2dUy
	hn7Z8hUibeFmVUSv+OHyldL2pYf9Ev0viYQP9lEcpaoZgEjzG15A8HHwRvfdk8sZs/iju03JlwRTX
	mOOIBxENVNWEu923rSXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvku1-0000Rz-Ey; Thu, 08 Aug 2019 16:04:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hvktr-0000RV-Bj
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 16:04:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6ACEB1684;
 Thu,  8 Aug 2019 09:04:22 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 169B13F706;
 Thu,  8 Aug 2019 09:04:20 -0700 (PDT)
Date: Thu, 8 Aug 2019 17:04:14 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH 6/6] PSCI: cpuidle: Refactor CPU suspend power_state
 parameter handling
Message-ID: <20190808160414.GA19233@e107155-lin>
References: <20190722153745.32446-1-lorenzo.pieralisi@arm.com>
 <20190722153745.32446-7-lorenzo.pieralisi@arm.com>
 <20190808125516.GA2246@e107155-lin>
 <CAPDyKFqHHwq=3XhSH_=uu5QoFkP3VYJ+2h7ENG5DNs-YzM6bNQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPDyKFqHHwq=3XhSH_=uu5QoFkP3VYJ+2h7ENG5DNs-YzM6bNQ@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_090423_487935_2C481255 
X-CRM114-Status: GOOD (  24.51  )
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
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Linux PM <linux-pm@vger.kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, LKML <linux-kernel@vger.kernel.org>,
 Will Deacon <will@kernel.org>, LAKML <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 08, 2019 at 05:29:24PM +0200, Ulf Hansson wrote:
> On Thu, 8 Aug 2019 at 14:55, Sudeep Holla <sudeep.holla@arm.com> wrote:
> >
> > On Mon, Jul 22, 2019 at 04:37:45PM +0100, Lorenzo Pieralisi wrote:
> > > Current PSCI code handles idle state entry through the
> > > psci_cpu_suspend_enter() API, that takes an idle state index as a
> > > parameter and convert the index into a previously initialized
> > > power_state parameter before calling the PSCI.CPU_SUSPEND() with it.
> > >
> > > This is unwieldly, since it forces the PSCI firmware layer to keep track
> > > of power_state parameter for every idle state so that the
> > > index->power_state conversion can be made in the PSCI firmware layer
> > > instead of the CPUidle driver implementations.
> > >
> > > Move the power_state handling out of drivers/firmware/psci
> > > into the respective ACPI/DT PSCI CPUidle backends and convert
> > > the psci_cpu_suspend_enter() API to get the power_state
> > > parameter as input, which makes it closer to its firmware
> > > interface PSCI.CPU_SUSPEND() API.
> > >
> > > A notable side effect is that the PSCI ACPI/DT CPUidle backends
> > > now can directly handle (and if needed update) power_state
> > > parameters before handing them over to the PSCI firmware
> > > interface to trigger PSCI.CPU_SUSPEND() calls.
> > >
> > > Signed-off-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> > > Cc: Will Deacon <will@kernel.org>
> > > Cc: Ulf Hansson <ulf.hansson@linaro.org>
> > > Cc: Sudeep Holla <sudeep.holla@arm.com>
> >
> > Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>
> >
> > > +static __init int psci_cpu_init_idle(unsigned int cpu)
> > > +{
> > > +     struct device_node *cpu_node;
> > > +     int ret;
> > > +
> > > +     /*
> > > +      * If the PSCI cpu_suspend function hook has not been initialized
> > > +      * idle states must not be enabled, so bail out
> > > +      */
> > > +     if (!psci_ops.cpu_suspend)
> > > +             return -EOPNOTSUPP;
> > > +
> > > +     cpu_node = of_get_cpu_node(cpu, NULL);
> >
> > [nit] You could use of_cpu_device_node_get in linux/of_device.h as
> > it may avoid parsing if used later during the boot(i.e. after
> > cpu->of_node is populated). I think there's another instance in
> > psci_idle_init_cpu
>
> Good idea!
>
> However, as $subject patch more or less just moves code from the
> current psci firmware directory into cpuidle, perhaps it's better to
> defer improvements to be made on top?
>

I am fine either way. But since cpuidle-psci.c is new file introduced
in this series, we can have it as part of the original patch. I leave it
to Lorenzo to decide :)

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
