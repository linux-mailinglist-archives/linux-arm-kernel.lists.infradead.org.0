Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E24B124076
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 08:37:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TgbpHHpd/ScAdGfBTSPL6/rvikfiLBGSgvV005Rao84=; b=YYo4+v08wXed9+
	wE3TqxfSZEEykm01TlPTUAJt8UnSNTUvQXgAbcoq0viWpm8o6gHOlYwbYYPpGoGrgLlup/aGCteef
	JrySJ5ZqNZTcbPXgsGNHRn18KaPRdyJ4ro0dmMTW0sOiwUQpQDsC0+u+ek0lDJnbR76+6zNIeC6RW
	UE5PmSkTOcrbRnMyr5XBQZJlrkomowo7hKnQxc//TvRomrUSatFd+UU/aTFJliAzyod91MqPZFI15
	CoR2VnvFwGpRsDWLluFlNd+v7+okgo1LLD7mUEBrQDp6IsSDBShd6IpT2JNEtSe4muYywpQTe0w0t
	tw0iVFAlOsB9AmMqidmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihTtq-0003c0-VC; Wed, 18 Dec 2019 07:37:38 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihTtT-0003NM-Ki
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 07:37:17 +0000
Received: by mail-vs1-xe42.google.com with SMTP id g15so808164vsf.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Dec 2019 23:37:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=do6SVqqrSwYfkhVDYH5RikYbwbOxWPehu5jl8jI0+ro=;
 b=dRl6siJx8/e5LA8G0oj29mO4iXrBu9qbVmovo0gKnnEwC1hFh8awIvWNZc0Rr0BwEB
 loKd1AI31kRkpDHV5kbhNBbK8mvWpRSBooECgvRtbR/Lj5xgHkLRRC4wyOaiq3cOlv4O
 1K/YhNefY9Ae1Hr/nV7LgZ/55G+zlOaK+EBZLRIVuMTAgp0WzgLvplshDV4linqhCDZC
 OC9ziugqRL/g1VLvgl8/NTkLv6ezS0iRcYKx9pvI/ioOdyWHOPYdJ90Y0ohXlrkQ6cIA
 AaJjCinfFMs7aus+bmO1E0kWvobHHMBMhTZPx97Wm10IP1BNEG4PyjeTOOxbox0v+x13
 glZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=do6SVqqrSwYfkhVDYH5RikYbwbOxWPehu5jl8jI0+ro=;
 b=s1dZuPz0HGtIMGCOTxPIQq6Lqkc+6LUHQlN6kXYlEUV5OL70zP2hIbmW/KqgfmdnzY
 OJsaPUsZoq4+Tk+LdG2EOuwsqGQ5x0S6VEQia/Nnbpueeh2LamRmb99o460j4DdT03yE
 Jxg4QtWso09AaBw3T85kRPJNMpME6V3NUPfNdY3BqLqu6ErZ+AlNsH5TbbsOIXQVBCJl
 UcjwdFv+ODSrZsbU5H+L+A64H0Qa2BeTyT8z3cimDCpnwnzPyJq42KXeiwsXsX2C3lY7
 8S+LgUN1e1QeitsvT/UT7NxFkYOtwDcKQeEPmfM4jYRQHlNV2ZAK1AKidIeCKYW7U4DR
 GteQ==
X-Gm-Message-State: APjAAAXplgDbxEjJIKax4ieFSsX/iyMHDsExI6ebs4K+68R4d5vLn41x
 Y/EUWyD3QtO/ka+wV8JwZ27fBjevWqgNXltWjVbr2g==
X-Google-Smtp-Source: APXvYqwgUxsqu+XwnIdw+nD/Mf13KCyvX5NTV1GCHYpw+JayUBeFvWW3aLmH5gcfiI9UpYv2GOoClnViaDRb37oAJ/U=
X-Received: by 2002:a67:f499:: with SMTP id o25mr488125vsn.165.1576654634125; 
 Tue, 17 Dec 2019 23:37:14 -0800 (PST)
MIME-Version: 1.0
References: <20191211154343.29765-1-ulf.hansson@linaro.org>
In-Reply-To: <20191211154343.29765-1-ulf.hansson@linaro.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 18 Dec 2019 08:36:38 +0100
Message-ID: <CAPDyKFoTKAs-sFZWNgY+Ym8-hQ_Ks2Qa+g3EtgfMPhEstHTddw@mail.gmail.com>
Subject: Re: [PATCH v4 00/14] cpuidle: psci: Support hierarchical CPU
 arrangement
To: Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>, 
 Linux PM <linux-pm@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_233715_708787_00D10F43 
X-CRM114-Status: GOOD (  21.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kevin Hilman <khilman@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Andy Gross <agross@kernel.org>,
 Lina Iyer <ilina@codeaurora.org>, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Sudeep, Lorenzo,

On Wed, 11 Dec 2019 at 16:43, Ulf Hansson <ulf.hansson@linaro.org> wrote:
>
> Changes in v4:
>         - Mover the check for OSI support from psci_dt_attach_cpu() to the
>         caller's side of it.
>         - Add comment in the code about using the deepest idle state as the
>         triggering point for the domain state selection.
>         - Folded in a patch to enable support for CPU hotplug.

I believe I should have addressed all your provided inputs for this
version, unless you find something new, of course.

Then, would it be possible to get your blessing for this, before
Christmas, to allow this to cook for a while in linux-next via
Rafael's tree?

Kind regards
Uffe

>
> Changes in v3:
>         - Take one step further to completely avoid executing any OSI specific
>         code from the ->enter() callback, while operating in the default PSCI
>         Platform Coordinated mode.
>         - Update example for the PSCI DT bindings to make it compile with
>         "make dt_binding_check"
>
> Changes in v2:
>         - Avoid to affect the non-OSI path with specific changes for OSI. This
>         forced me to re-order the series and a caused more or less minor changes
>         to most of the patches.
>         - Updated the DT bindings for PSCI to clarify and to include the "psci"
>         name of the PM domain to attach to.
>         - Replaced patch1 with another patch from Sudeep, solving the same
>         problem, but in a different way.
>
> This series enables initial support for hierarchical CPU arrangement, managed
> by PSCI and its corresponding cpuidle driver. It's based on using the generic
> PM domain (genpd), which nowadays also supports devices belonging to CPUs.
>
> The last DTS patch enables the hierarchical topology to be used for the Qcom
> 410c Dragonboard, which supports the PSCI OS-initiated mode.
>
> More detailed background can be found from previous submissions [1].
>
> The series is also available at:
> git.linaro.org/people/ulf.hansson/linux-pm.git next
>
> Kind regards
> Ulf Hansson
>
> [1]
> https://lwn.net/Articles/788306/
>
>
> Lina Iyer (1):
>   cpuidle: dt: Support hierarchical CPU idle states
>
> Sudeep Holla (1):
>   cpuidle: psci: Align psci_power_state count with idle state count
>
> Ulf Hansson (12):
>   dt: psci: Update DT bindings to support hierarchical PSCI states
>   firmware: psci: Export functions to manage the OSI mode
>   of: base: Add of_get_cpu_state_node() to get idle states for a CPU
>     node
>   cpuidle: psci: Simplify OF parsing of CPU idle state nodes
>   cpuidle: psci: Support hierarchical CPU idle states
>   cpuidle: psci: Add a helper to attach a CPU to its PM domain
>   cpuidle: psci: Attach CPU devices to their PM domains
>   cpuidle: psci: Prepare to use OS initiated suspend mode via PM domains
>   cpuidle: psci: Manage runtime PM in the idle path
>   cpuidle: psci: Support CPU hotplug for the hierarchical model
>   cpuidle: psci: Add support for PM domains by using genpd
>   arm64: dts: Convert to the hierarchical CPU topology layout for
>     MSM8916
>
>  .../devicetree/bindings/arm/cpus.yaml         |  15 +
>  .../devicetree/bindings/arm/psci.yaml         | 104 ++++++
>  arch/arm64/boot/dts/qcom/msm8916.dtsi         |  57 +++-
>  drivers/cpuidle/Makefile                      |   4 +-
>  drivers/cpuidle/cpuidle-psci-domain.c         | 298 ++++++++++++++++++
>  drivers/cpuidle/cpuidle-psci.c                | 161 ++++++++--
>  drivers/cpuidle/cpuidle-psci.h                |  17 +
>  drivers/cpuidle/dt_idle_states.c              |   5 +-
>  drivers/firmware/psci/psci.c                  |  18 +-
>  drivers/of/base.c                             |  36 +++
>  include/linux/cpuhotplug.h                    |   1 +
>  include/linux/of.h                            |   8 +
>  include/linux/psci.h                          |   2 +
>  13 files changed, 691 insertions(+), 35 deletions(-)
>  create mode 100644 drivers/cpuidle/cpuidle-psci-domain.c
>  create mode 100644 drivers/cpuidle/cpuidle-psci.h
>
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
