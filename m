Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A7DA153278
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 15:06:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yvHKziqNEPXMoyNlDvbbHhwxvN8bvtjaURPn0FK+w3A=; b=VMRFrOiJr/kZ7W
	hcG/QxDfd0HO6TsltvAB2zm1wqOMqDF+9ztpPWX8uOM5Y7hC3fhMqBsJ12a2432lV84/2QqGTHvfB
	qaNN3uErP+3Leto0lUik8rJ1kxNduuEep+a17islu00BMq9V57ugypNCFslu0wNnWdEC9r2yQGv8o
	2ne1WDPMpdGa3vB9UJQYQRiTEpnLxfVms28iLDF5qZHCCrnW9hivZ5+qRlseg3RCHyh2HsNNNEuR2
	CY7m6d/QksMs/1kiaS5bqhuwi8jPo6wQVMzpxiQJlLstghcZEhW1Ob9cTQT2JoNkh+MhiNobsPqrI
	mv4D55OMC+mnDT9Mvk5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izLJq-0006sv-H3; Wed, 05 Feb 2020 14:06:18 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izLJh-0006sD-Ng
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Feb 2020 14:06:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 865C431B;
 Wed,  5 Feb 2020 06:06:07 -0800 (PST)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5626F3F68E;
 Wed,  5 Feb 2020 06:06:05 -0800 (PST)
Date: Wed, 5 Feb 2020 14:06:03 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Maulik Shah <mkshah@codeaurora.org>
Subject: Re: [PATCH v3 5/7] drivers: firmware: psci: Add hierarchical domain
 idle states converter
Message-ID: <20200205140603.GB38466@bogus>
References: <1580736940-6985-1-git-send-email-mkshah@codeaurora.org>
 <1580736940-6985-6-git-send-email-mkshah@codeaurora.org>
 <20200203170832.GA38466@bogus>
 <0d7f7ade-3a1e-5428-d851-f1a886f58712@codeaurora.org>
 <20200204152132.GA44858@bogus>
 <6ff7c82d-4204-a339-4070-0154ab4515f1@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6ff7c82d-4204-a339-4070-0154ab4515f1@codeaurora.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_060609_817433_08C91B14 
X-CRM114-Status: GOOD (  17.35  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: dianders@chromium.org, lsrao@codeaurora.org, Lorenzo.Pieralisi@arm.com,
 rnayak@codeaurora.org, linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org, evgreen@chromium.org,
 swboyd@chromium.org, david.brown@linaro.org, agross@kernel.org,
 ilina@codeaurora.org, Sudeep Holla <sudeep.holla@arm.com>,
 ulf.hansson@linaro.org, bjorn.andersson@linaro.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 05, 2020 at 05:53:00PM +0530, Maulik Shah wrote:
>
> On 2/4/2020 8:51 PM, Sudeep Holla wrote:
> > On Tue, Feb 04, 2020 at 10:22:42AM +0530, Maulik Shah wrote:
> > > On 2/3/2020 10:38 PM, Sudeep Holla wrote:
> > > > On Mon, Feb 03, 2020 at 07:05:38PM +0530, Maulik Shah wrote:
> > > > > From: Ulf Hansson <ulf.hansson@linaro.org>
> > > > >
> > > > > If the hierarchical CPU topology is used, but the OS initiated mode isn't
> > > > > supported, we need to rely solely on the regular cpuidle framework to
> > > > > manage the idle state selection, rather than using genpd and its
> > > > > governor.
> > > > >
> > > > > For this reason, introduce a new PSCI DT helper function,
> > > > > psci_dt_pm_domains_parse_states(), which parses and converts the
> > > > > hierarchically described domain idle states from DT, into regular flattened
> > > > > cpuidle states. The converted states are added to the existing cpuidle
> > > > > driver's array of idle states, which make them available for cpuidle.
> > > > >
> > > > And what's the main motivation for this if OSI is not supported in the
> > > > firmware ?
> > > Hi Sudeep,
> > >
> > > Main motivation is to do last-man activities before the CPU cluster can
> > > enter a deep idle state.
> > >
> > Details on those last-man activities will help the discussion. Basically
> > I am wondering what they are and why they need to done in OSPM ?
>
> Hi Sudeep,
>
> there are cases like,
>
> Last cpu going to deepest idle mode need to lower various resoruce
> requirements (for eg DDR freq).
>

In PC mode, only PSCI implementation knows the last man and there shouldn't
be any notion of it in OS. If you need it, you may need OSI. You are still
mixing up the things. NACK for any such approach, sorry.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
