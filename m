Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7360155B5D
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Feb 2020 17:05:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gFSLz0uIroRyj42tyysC3BlmObZjW/9Gcu0nyHeVn70=; b=htooYq5SxOXJxQ
	9nVSN0/xmaX/iYDJsimiQw9pZIiOSBm5K/lX0SthJANO+6hVm+WFiPTkGGclKwVBg3qL14+nw47bZ
	NmJISH77qbrbPy0crMItB2dIK6qVoIXGb+KawkKxd3LECPHq5+0815vHQO2MChIoV93JHHDcArm+5
	RJRGzXZGw33+E/G5sAxB/BvRfuuZPyZ67IYVqSrWzLfAfXLxGB5NGAl+EpSjaxw853fp15YANq5DR
	Prkl1hOJLk5S89E+4HtnhYXemxX9Yray/9x1o5xiIprsykgHpYbCWZrKLy7O9NVTOi9Bjyl8sRLj6
	GzaaCDa5K4qLyMxZmoAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j068L-0007gf-2N; Fri, 07 Feb 2020 16:05:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j068D-0007g7-JJ
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Feb 2020 16:05:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EDECE1FB;
 Fri,  7 Feb 2020 08:05:24 -0800 (PST)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BD1DA3F68E;
 Fri,  7 Feb 2020 08:05:22 -0800 (PST)
Date: Fri, 7 Feb 2020 16:05:13 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH v3 5/7] drivers: firmware: psci: Add hierarchical domain
 idle states converter
Message-ID: <20200207160504.GA8342@bogus>
References: <0d7f7ade-3a1e-5428-d851-f1a886f58712@codeaurora.org>
 <20200204152132.GA44858@bogus>
 <6ff7c82d-4204-a339-4070-0154ab4515f1@codeaurora.org>
 <20200205140603.GB38466@bogus>
 <CAPDyKFoyepN2VX4COMomp1e9dXPozzrgCdcy0paee2jp8Wm3YA@mail.gmail.com>
 <20200205161816.GD38466@bogus>
 <CAPDyKFqaA7oN2+oLS=Puw+jQXke_ErGQAWYuTuU-6PS7mo5YbQ@mail.gmail.com>
 <20200206204514.GB8107@codeaurora.org>
 <20200207111955.GA40103@bogus>
 <CAPDyKFp-zvD1iFcpRaTFiuazxYmLEx0Czf3=TZJxjSCDmmPsvA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPDyKFp-zvD1iFcpRaTFiuazxYmLEx0Czf3=TZJxjSCDmmPsvA@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_080525_724492_0EB77110 
X-CRM114-Status: GOOD (  20.48  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Maulik Shah <mkshah@codeaurora.org>, lsrao@codeaurora.org,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Rajendra Nayak <rnayak@codeaurora.org>, Linux PM <linux-pm@vger.kernel.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Lina Iyer <ilina@codeaurora.org>, Stephen Boyd <swboyd@chromium.org>,
 David Brown <david.brown@linaro.org>, Andy Gross <agross@kernel.org>,
 Evan Green <evgreen@chromium.org>, Doug Anderson <dianders@chromium.org>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 07, 2020 at 01:32:28PM +0100, Ulf Hansson wrote:
> [...]
>
> > > I understand the arguments for using PC vs OSI and agree with it. But
> > > what in PSCI is against Linux knowing when the last core is powering
> > > down when the PSCI is configured to do only Platform Cordinated.
> >
> > Nothing :D. But knowing the evolution and reasons for adding OSI in the
> > PSCI specification and having argued about benefits of OSI over PC for
> > years and finally when we have it in mainline, this argument of using
> > PC for exact reasons why OSI evolved is something I can't understand
> > and I am confused.
> >
> > > There should not be any objection to drivers knowing when all the cores
> > > are powered down, be it reference counting CPU PM notifications or using
> > > a cleaner approach like this where GendPD framwork does everything
> > > cleanly and gives a nice callback. ARM architecture allows for different
> > > aspects of CPU access be handled at different levels. I see this as an
> > > extension of that approach.
> > >
> >
> > One thing that was repeatedly pointed out during OSI patch review was no
> > extra overhead for PC mode where firmware can make decisions. So, just
> > use OSI now and let us be done with this discussion of OSI vs PC. If PC
> > is what you think you need for future, we can revert all OSI changes and
> > start discussing again :-)
>
> Just to make it clear, I fully agree with you in regards to overhead
> for PC-mode. This is especially critical for ARM SoCs with lots of
> cores, I assume.
>
> However, the overhead you refer to, is *only* going to be present in
> case when the DTS has the hierarchical CPU topology description with
> "power-domains". Because, that is *optional* to use, I am expecting
> only those SoC/platforms that needs to manage last-man activities to
> use this layout, the others will remain unaffected.
>
> That said, does that address your concern?
>

I have already expressed my view and concerns in response to Lina and
Bjorn's emails.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
