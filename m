Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25DAA32E7C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 13:19:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mulIkcWxnWjrZiKpZdSC8vcCXhGp00tQh+YIsD4nlIk=; b=T5rvQfTH12m0Av
	Vw63SjoRK3ly6aiI6fhymLZ63FSsLErQn1thL1fDkQvMWbIHEgFBudiXEo/aziyXBjXZA3J0rUo5j
	4vaEwpgHxTaNqCL5+UM9dAC+qAxBvTggwF+sIZHkZdaBol8nunkhPoq/3HDHmrt1Fjqe19919M1Ka
	3Iy1mqBapZkvch0S/B/TYKKIKbSG5Rf7yYmJ+Zdry0UX2AfDOsJ/53w/g8Y6zPfqjD4sJ88G/oxIB
	/gT2bqbNQ0TMn6AP24MkjUkh0Lk35mDaIt8zMJOXZvlwQhgvH+r+o7IAnl+Wwq9k0lbFMwcqPJkIN
	RR2s/pWaPDvIMTNYcsnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXkzt-0004s2-Ia; Mon, 03 Jun 2019 11:19:25 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXkzl-0004nc-RA
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 11:19:19 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 090C5A78;
 Mon,  3 Jun 2019 04:19:16 -0700 (PDT)
Received: from queper01-lin (queper01-lin.cambridge.arm.com [10.1.195.48])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7A4CF3F5AF;
 Mon,  3 Jun 2019 04:19:13 -0700 (PDT)
Date: Mon, 3 Jun 2019 12:19:11 +0100
From: Quentin Perret <quentin.perret@arm.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: Re: [PATCH v5 3/3] thermal: cpu_cooling: Migrate to using the EM
 framework
Message-ID: <20190603111909.ckrevvpkrhzecx6v@queper01-lin>
References: <20190530092038.12020-1-quentin.perret@arm.com>
 <20190530092038.12020-4-quentin.perret@arm.com>
 <2d1d5cda-63c3-07a9-ae5f-abbc300ed1fc@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2d1d5cda-63c3-07a9-ae5f-abbc300ed1fc@linaro.org>
User-Agent: NeoMutt/20171215
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_041917_882759_2CD0FB47 
X-CRM114-Status: GOOD (  21.85  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-pm@vger.kernel.org, viresh.kumar@linaro.org, amit.kachhap@gmail.com,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org, will.deacon@arm.com,
 edubezval@gmail.com, mka@chromium.org, catalin.marinas@arm.com,
 rui.zhang@intel.com, javi.merino@kernel.org, ionela.voinescu@arm.com,
 dietmar.eggemann@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Saturday 01 Jun 2019 at 12:37:06 (+0200), Daniel Lezcano wrote:
> On 30/05/2019 11:20, Quentin Perret wrote:
> > The newly introduced Energy Model framework manages power cost tables in
> > a generic way. Moreover, it supports several types of models since the
> > tables can come from DT or firmware (through SCMI) for example. On the
> > other hand, the cpu_cooling subsystem manages its own power cost tables
> > using only DT data.
> > 
> > In order to avoid the duplication of data in the kernel, and in order to
> > enable IPA with EMs coming from more than just DT, remove the private
> > tables from cpu_cooling.c and migrate it to using the centralized EM
> > framework. Doing so should have no visible functional impact for
> > existing users of IPA since:
> > 
> >  - recent extenstions to the the PM_OPP infrastructure enable the
> >    registration of EMs in PM_EM using the DT property used by IPA;
> > 
> >  - the existing upstream cpufreq drivers marked with the
> >    'CPUFREQ_IS_COOLING_DEV' flag all use the aforementioned PM_OPP
> >    infrastructure, which means they all support PM_EM. The only two
> >    exceptions are qoriq-cpufreq which doesn't in fact use an EM and
> >    scmi-cpufreq which doesn't use DT for power costs.
> > 
> > For existing users of cpu_cooling, PM_EM tables will contain the exact
> > same power values that IPA used to compute on its own until now. The
> > only new dependency for them is to compile in CONFIG_ENERGY_MODEL.
> > 
> > The case where the thermal subsystem is used without an Energy Model
> > (cpufreq_cooling_ops) is handled by looking directly at CPUFreq's
> > frequency table which is already a dependency for cpu_cooling.c anyway.
> > Since the thermal framework expects the cooling states in a particular
> > order, bail out whenever the CPUFreq table is unsorted, since that is
> > fairly uncommon in general, and there are currently no users of
> > cpu_cooling for this use-case.
> > 
> > Acked-by: Viresh Kumar <viresh.kumar@linaro.org>
> > Signed-off-by: Quentin Perret <quentin.perret@arm.com>
> 
> Acked-by: Daniel Lezcano <daniel.lezcano@linaro.org>

Thanks for this one and the other one :-)

Quentin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
