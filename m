Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A35E6D2F3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 19:41:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+9Wgi4gF9ytA2Z6UsRLTTeMCYKnP/I9OtM3pD5ipWxE=; b=U5nyypeRHhDim/yAYTyn/i3WK
	ia1Q2O1ZXGJ/hfwAmSh0t6VcCDx+51Nx0EGKdUZayhyRuNirbxrAzAad6Q86lCJyhxWEfaX4Af1I0
	acW+Cebs2FTtqHuM1VWCFKJNaabrF18dEq24g3a2Kc5oh7/7U13um3A+GiGgWgDroha+A4NvjJ3T2
	6EuY34ZNEIqmAvgT2iECwV93MTCUDY74Pdc8u5YhpayUpMhe0mdRZTMF0j+pc+gR4ylGGco00eTwk
	sjwps8whU06fbw28nKnPeGdQqe2Czj75o1imsEjNoW4DOn4LTY+A4OBfARIery6G6/gphBRa6S1ef
	s/pZzuyDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoAPe-0002t4-TE; Thu, 18 Jul 2019 17:41:51 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoAPL-0002rK-DF
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 17:41:33 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id B390D616D6; Thu, 18 Jul 2019 17:41:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1563471690;
 bh=lVFlEoflCmqI7DqZxWRv5iAXmSD3G5OYiXbXrkCxEFU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PYxxRPDK4Z3miqpju4uXMWGzUJNydtkHWhNUm5zLldM3BtpIUX392lI7WBvLlzjVs
 MCRxVJXtL+B58hnp7P90bb7tSnmnUUOtiK7+gkiggqfhGQp31I4ongnSyFwNTnS4ks
 qw2cI0jyF76DAC4qNncV+X/VC7F+OSPsp+dOUYHY=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from localhost (i-global254.qualcomm.com [199.106.103.254])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: ilina@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 6E4EA607EB;
 Thu, 18 Jul 2019 17:41:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1563471678;
 bh=lVFlEoflCmqI7DqZxWRv5iAXmSD3G5OYiXbXrkCxEFU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=UStSy+lE4QoOupgj89GwC6zwlpy9wpMu4KsRTMBxdS31Av8x+wNEx0G5CfGDBFqDd
 abivphmpwVS3fvrc0a4fxuustkhZ6mUiZLzl/83ejm12D93tZOOK1dXnF/XJt8UYdL
 tBKlVf1faL3xnetIEwsr6ynYGjkTdyry5G/wtLiU=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 6E4EA607EB
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=ilina@codeaurora.org
Date: Thu, 18 Jul 2019 11:41:16 -0600
From: Lina Iyer <ilina@codeaurora.org>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH 14/18] drivers: firmware: psci: Manage runtime PM in the
 idle path for CPUs
Message-ID: <20190718174116.GD25567@codeaurora.org>
References: <20190513192300.653-1-ulf.hansson@linaro.org>
 <20190513192300.653-15-ulf.hansson@linaro.org>
 <20190716155317.GB32490@e121166-lin.cambridge.arm.com>
 <CAPDyKFrJ75mo+s6GuUCTQ-nVv7C+9YJyTVmwuBZ2RKFOvOi3Nw@mail.gmail.com>
 <20190718133053.GA27222@e121166-lin.cambridge.arm.com>
 <CAPDyKFr4NmichQk4uf+Wgbanh=5idKYY=37WCb6U_hNFDVYg=w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPDyKFr4NmichQk4uf+Wgbanh=5idKYY=37WCb6U_hNFDVYg=w@mail.gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_104131_484841_B3B2A02C 
X-CRM114-Status: GOOD (  21.16  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Kevin Hilman <khilman@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>, Linux PM <linux-pm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Amit Kucheria <amit.kucheria@linaro.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Tony Lindgren <tony@atomide.com>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>, Niklas Cassel <niklas.cassel@linaro.org>,
 Souvik Chakravarty <souvik.chakravarty@arm.com>,
 "Raju P . L . S . S . S . N" <rplsssn@codeaurora.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 18 2019 at 10:55 -0600, Ulf Hansson wrote:
>On Thu, 18 Jul 2019 at 15:31, Lorenzo Pieralisi
><lorenzo.pieralisi@arm.com> wrote:
>>
>> On Thu, Jul 18, 2019 at 12:35:07PM +0200, Ulf Hansson wrote:
>> > On Tue, 16 Jul 2019 at 17:53, Lorenzo Pieralisi
>> > <lorenzo.pieralisi@arm.com> wrote:
>> > >
>> > > On Mon, May 13, 2019 at 09:22:56PM +0200, Ulf Hansson wrote:
>> > > > When the hierarchical CPU topology layout is used in DT, let's allow the
>> > > > CPU to be power managed through its PM domain, via deploying runtime PM
>> > > > support.
>> > > >
>> > > > To know for which idle states runtime PM reference counting is needed,
>> > > > let's store the index of deepest idle state for the CPU, in a per CPU
>> > > > variable. This allows psci_cpu_suspend_enter() to compare this index with
>> > > > the requested idle state index and then act accordingly.
>> > >
>> > > I do not see why a system with two CPU CPUidle states, say CPU retention
>> > > and CPU shutdown, should not be calling runtime PM on CPU retention
>> > > entry.
>> >
>> > If the CPU idle governor did select the CPU retention for the CPU, it
>> > was probably because the target residency for the CPU shutdown state
>> > could not be met.
>>
>> The kernel does not know what those cpu states represent, so, this is an
>> assumption you are making and it must be made clear that this code works
>> as long as your assumption is valid.
>>
>> If eg a "cluster" retention state has lower target_residency than
>> the deepest CPU idle state this assumption is wrong.
>
>Good point, you are right. I try to find a place to document this assumption.
>
>>
>> And CPUidle and genPD governor decisions are not synced anyway so,
>> again, this is an assumption, not a certainty.
>>
>> > In this case, there is no point in allowing any other deeper idle
>> > states for cluster/package/system, since those have even greater
>> > residencies, hence calling runtime PM doesn't make sense.
>>
>> On the systems you are testing on.
>
>So what you are saying typically means, that if all CPUs in the same
>cluster have entered the CPU retention state, on some system the
>cluster may also put into a cluster retention state (assuming the
>target residency is met)?
>
>Do you know of any systems that has these characteristics?
>
Many QCOM SoCs can do that. But with the hardware improving, the
power-performance benefits skew the results in favor of powering off
the cluster than keeping the CPU and cluster in retention.

Kevin H and I thought of this problem earlier on. But that is a second
level problem to solve and definitely to be thought of after we have the
support for the deepest states in the kernel. We left that out for a
later date. The idea would have been to setup the allowable state(s) in
the DT for CPU and cluster state definitions and have the genpd take
that into consideration when deciding the idle state for the domain.

Thanks,
Lina


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
