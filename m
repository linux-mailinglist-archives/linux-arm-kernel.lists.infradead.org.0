Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BDED6D6A4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 23:50:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SMsh2geoI1mYmbKyBdMiSaaL9wbs2u0fuI40bXT1ydQ=; b=Sk13URzqp/lbYU
	5uDd0xbXO+n9pW+YPXwwdE9vYjQgoGxawxP8WYCDCaBz4dLhGkXfidMLRTN4/VjejALkm/RstoRaZ
	cIu9YuHxMyUZHOnp4ZrRupfS2QkDwadsayMCf8fGYW8TtO02iRRNip71JCAakcfkxdRSxPHH2iHwA
	Hjsq5fyZWnFcHyCn5dYvCVkHWyFw7rFgDifmoqdv9DXhMOFINXMKK8akuBLPKkyU7O8NtIbEJdY2J
	BGzIjJMWI/KNWtsTC36tXee7TBsxwM4FKSjWW7az3iwEP5hcFldj3R3Jc5oj70QxFS3MzU4IzKVHe
	kmhIbohDH2I8plRCLacQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoEHy-0001l6-OV; Thu, 18 Jul 2019 21:50:10 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoEHd-0001Zu-PH
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 21:49:51 +0000
Received: by mail-vs1-xe43.google.com with SMTP id k9so20202139vso.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jul 2019 14:49:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vVaakzPBBxcCnU1uQoatmOIcAq9lkWIyC/ZitRYoNgg=;
 b=X0bRe+v4iwS6jdXfFpHS/B1EX7o/Ag7+xrNChOx3rwtQf1rriCNbBBc2AORVmlG9gC
 KVxWBeK9NBQ8gBXi8w3Av9R1Yh8r3h7xlJoRYPAOSzyytZUVC4+ejy9Cn3PMuHz9YpW/
 IxLuV6N64nVRcqJGyugTEStIUQQsmFjSjI3Fy/4XjJOaWPe1Tv10djjEfP5VnAyre9Oz
 +v6sV/2I3P9kSX69DLaBAK+GbpCi9bKxUIteMutCxdGAkTLk6xGcGP1HExLaCbrye+OE
 8gxLRO/Twcav0vXVKqTdUtgl/TBIEzaP0a1edGLGuHPegpLd/TMcEm8b/qDG4Ok3mPbw
 W7Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vVaakzPBBxcCnU1uQoatmOIcAq9lkWIyC/ZitRYoNgg=;
 b=CqixFE1cviLAhY//5Ocxse6CXwvSCkm6cIQLZH7xUHl+m76cxzHyrrLaskhLtbRSsl
 b5fzTZkzaH4uTz+UJkuOTc2MDhR0HigfRPrpxco4op7hBddYaif+1ascaZp2O9x0SKWp
 5VCa8l2k/2NYfOrcY/8XmIP26OMae5vZxSEzM3dE+hy8hljk7a8jekbMESFFUX5gQDcz
 Qh0ZxJi2ByeH8BpdPMJVIvoPpR0WrhNYXBCfRnENeiBUhuRo0SZ+kecNKflVTWEpPj1J
 zs3ENSQUFK7OQhxiA7mxj1B3v1D2pHyX4qS/hETsqGLuTJWZlOTXv1oWOoJ+a3qQZUw6
 3Nkw==
X-Gm-Message-State: APjAAAVCAvQ1TgUgrMhQQLbKrql6M2Y2dcpb1Nnu2UJY6I8ezQCwSwc5
 nFz1j7pO2MPTLd/BDWw9CcKLTxVPFg4zy+D6g7zqbA==
X-Google-Smtp-Source: APXvYqx6w0adJ6xepr9OilXJBz3+Zq+jx9/hhhjOwrMjwd3XZB1LUnFpt9Xc9uk4rPa7wYkP1TAGbNJcQe6BKGLWrJs=
X-Received: by 2002:a67:e454:: with SMTP id n20mr31593172vsm.34.1563486587134; 
 Thu, 18 Jul 2019 14:49:47 -0700 (PDT)
MIME-Version: 1.0
References: <20190513192300.653-1-ulf.hansson@linaro.org>
 <20190513192300.653-15-ulf.hansson@linaro.org>
 <20190716155317.GB32490@e121166-lin.cambridge.arm.com>
 <CAPDyKFrJ75mo+s6GuUCTQ-nVv7C+9YJyTVmwuBZ2RKFOvOi3Nw@mail.gmail.com>
 <20190718133053.GA27222@e121166-lin.cambridge.arm.com>
 <CAPDyKFr4NmichQk4uf+Wgbanh=5idKYY=37WCb6U_hNFDVYg=w@mail.gmail.com>
 <20190718174116.GD25567@codeaurora.org>
In-Reply-To: <20190718174116.GD25567@codeaurora.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 18 Jul 2019 23:49:11 +0200
Message-ID: <CAPDyKFrxBdZfskyp2HOb5YykkAqkBzRfW4-LLbcj1DAaL65XpA@mail.gmail.com>
Subject: Re: [PATCH 14/18] drivers: firmware: psci: Manage runtime PM in the
 idle path for CPUs
To: Lina Iyer <ilina@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_144949_838258_FD11365A 
X-CRM114-Status: GOOD (  26.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 18 Jul 2019 at 19:41, Lina Iyer <ilina@codeaurora.org> wrote:
>
> On Thu, Jul 18 2019 at 10:55 -0600, Ulf Hansson wrote:
> >On Thu, 18 Jul 2019 at 15:31, Lorenzo Pieralisi
> ><lorenzo.pieralisi@arm.com> wrote:
> >>
> >> On Thu, Jul 18, 2019 at 12:35:07PM +0200, Ulf Hansson wrote:
> >> > On Tue, 16 Jul 2019 at 17:53, Lorenzo Pieralisi
> >> > <lorenzo.pieralisi@arm.com> wrote:
> >> > >
> >> > > On Mon, May 13, 2019 at 09:22:56PM +0200, Ulf Hansson wrote:
> >> > > > When the hierarchical CPU topology layout is used in DT, let's allow the
> >> > > > CPU to be power managed through its PM domain, via deploying runtime PM
> >> > > > support.
> >> > > >
> >> > > > To know for which idle states runtime PM reference counting is needed,
> >> > > > let's store the index of deepest idle state for the CPU, in a per CPU
> >> > > > variable. This allows psci_cpu_suspend_enter() to compare this index with
> >> > > > the requested idle state index and then act accordingly.
> >> > >
> >> > > I do not see why a system with two CPU CPUidle states, say CPU retention
> >> > > and CPU shutdown, should not be calling runtime PM on CPU retention
> >> > > entry.
> >> >
> >> > If the CPU idle governor did select the CPU retention for the CPU, it
> >> > was probably because the target residency for the CPU shutdown state
> >> > could not be met.
> >>
> >> The kernel does not know what those cpu states represent, so, this is an
> >> assumption you are making and it must be made clear that this code works
> >> as long as your assumption is valid.
> >>
> >> If eg a "cluster" retention state has lower target_residency than
> >> the deepest CPU idle state this assumption is wrong.
> >
> >Good point, you are right. I try to find a place to document this assumption.
> >
> >>
> >> And CPUidle and genPD governor decisions are not synced anyway so,
> >> again, this is an assumption, not a certainty.
> >>
> >> > In this case, there is no point in allowing any other deeper idle
> >> > states for cluster/package/system, since those have even greater
> >> > residencies, hence calling runtime PM doesn't make sense.
> >>
> >> On the systems you are testing on.
> >
> >So what you are saying typically means, that if all CPUs in the same
> >cluster have entered the CPU retention state, on some system the
> >cluster may also put into a cluster retention state (assuming the
> >target residency is met)?
> >
> >Do you know of any systems that has these characteristics?
> >
> Many QCOM SoCs can do that. But with the hardware improving, the
> power-performance benefits skew the results in favor of powering off
> the cluster than keeping the CPU and cluster in retention.
>
> Kevin H and I thought of this problem earlier on. But that is a second
> level problem to solve and definitely to be thought of after we have the
> support for the deepest states in the kernel. We left that out for a
> later date. The idea would have been to setup the allowable state(s) in
> the DT for CPU and cluster state definitions and have the genpd take
> that into consideration when deciding the idle state for the domain.

Thanks for confirming.

This more or less means we need to improve the hierarchical support in
genpd to support more levels, such that it makes sense to have a genpd
governor assigned at more than one level. This doesn't work well
today. As I also have stated, this is on my todo list for genpd.

However, I also agree with your standpoint, that let's start simple to
enable the deepest state as a start with, then we can improve things
on top.

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
