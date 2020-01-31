Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0281D14ECB3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 Jan 2020 13:48:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=96BXkcwYzb8gwYa94L+7yHi6tBciqTMOHSo0QOJLQbY=; b=XaYHDZhLuQZXY2
	3nSq1/fwSgZHETqDO7GAmHozNgH0GADQkPnYSda39iYLKKPWwMVJdjHBFuCBoGTUXwQBKiOxA2hL0
	8wgK+JnlzD3hGxKS9a78dmsN9KratdaCgBeq2k3Zq3RMe7t5BFI4+5nQt9fO/8c3Oc8L0JfM64GMb
	4IKOXcr+pXNmC2/gfF07pZgKv2gOoWoQnt2TvPms8NRYF0qPjqK5uPwUGUsmL+AnabpWqGO9/eIAg
	V1Ahce57r4HWpdBWjpG9lq3sKf6rekUx0fuqXnVsI+BRSLxwkYqTHwcGvJb27unWywGaDV0Xh0ZI2
	rebIIxCRYVvZbQGzjp8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixViO-0006bw-PU; Fri, 31 Jan 2020 12:48:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixViG-0006b3-6J
 for linux-arm-kernel@lists.infradead.org; Fri, 31 Jan 2020 12:47:57 +0000
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com
 [209.85.208.172])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4EEF420707
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 31 Jan 2020 12:47:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580474872;
 bh=zUVGVuT/slEg9NfW81Qpk5tDo3UxUZ/3h0IpAViw9gg=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=OqwJM7IGkbZ1uFh4KlR7ZdMt6WePCl41DIjNCy1y4wOuwRwRQUGX7XERZg0fW1Awl
 qzMPoAuqd4Tdrblb8yRQXWayPt3MO7nM89SYL5LYCRdYTItn37u0VDFMJArjgZWRMs
 g5cjHy5Zu+RMHjS4iItbIy1ktzcDsNUCSeZH8yzU=
Received: by mail-lj1-f172.google.com with SMTP id d10so6930409ljl.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 31 Jan 2020 04:47:52 -0800 (PST)
X-Gm-Message-State: APjAAAVjxdiUOggeAEB4AfyATZAgILlc5dzdD40Tza6a8qQIQ2vB1pRQ
 HGRNSt+DYTwJeU9UTys0iaybW1mECLUpgpSJ2I0=
X-Google-Smtp-Source: APXvYqz9+Y6RQt0gt8PATpeqqazsTkQ4mtFx4O+38Nhe+xGu6lufag13gYVF/5Mi0zj+NjLUD5c9sYtx8skheC/3Qe8=
X-Received: by 2002:a2e:9c85:: with SMTP id x5mr5970504lji.50.1580474870430;
 Fri, 31 Jan 2020 04:47:50 -0800 (PST)
MIME-Version: 1.0
References: <20200127215453.15144-1-lukasz.luba@arm.com>
 <20200127215453.15144-2-lukasz.luba@arm.com>
In-Reply-To: <20200127215453.15144-2-lukasz.luba@arm.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Fri, 31 Jan 2020 13:47:39 +0100
X-Gmail-Original-Message-ID: <CAJKOXPedRc3ag6DDUAXSbHk8JcAZbug5HSss9wb8YyLkP7MLaw@mail.gmail.com>
Message-ID: <CAJKOXPedRc3ag6DDUAXSbHk8JcAZbug5HSss9wb8YyLkP7MLaw@mail.gmail.com>
Subject: Re: [PATCH 1/3] ARM: exynos_defconfig: Enable SCHED_MC
To: lukasz.luba@arm.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_044756_277451_E9564326 
X-CRM114-Status: GOOD (  18.03  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 linux-pm@vger.kernel.org,
 =?UTF-8?B?QmFydMWCb21pZWogxbtvxYJuaWVya2lld2ljeg==?=
 <b.zolnierkie@samsung.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 robh+dt@kernel.org, Chanwoo Choi <cw00.choi@samsung.com>,
 kyungmin.park@samsung.com, kgene@kernel.org, myungjoo.ham@samsung.com,
 dietmar.eggemann@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 27 Jan 2020 at 22:55, <lukasz.luba@arm.com> wrote:
>
> From: Lukasz Luba <lukasz.luba@arm.com>
>
> Since the 'capacities-dmips-mhz' are present in the CPU nodes, make use of
> this knowledge in smarter decisions during scheduling.
>
> The values in 'capacities-dmips-mhz' are normilized, this means that i.e.
> when CPU0's capacities-dmips-mhz=100 and CPU1's 'capacities-dmips-mhz'=50,
> cpu0 is twice fast as CPU1, at the same frequency. The proper hirarchy
> in sched_domain topology could exploit the SoC architecture advantages
> like big.LITTLE.

I do not quite get how this is related to rationale behind changing defconfig...

> Enabling the SCHED_MC will create two levels in
> sched_domain hierarchy, which might be observed in:

This is looks more convincing... but still what is the need? To work with EAS?

> grep . /proc/sys/kernel/sched_domain/cpu*/domain*/{name,flags}
> /proc/sys/kernel/sched_domain/cpu0/domain0/name:MC
> /proc/sys/kernel/sched_domain/cpu0/domain1/name:DIE
> ...
> /proc/sys/kernel/sched_domain/cpu0/domain0/flags:575
> /proc/sys/kernel/sched_domain/cpu0/domain1/flags:4223

Not related to defconfig change and not visible after this commit.

Best regards,
Krzysztof

>
> Signed-off-by: Lukasz Luba <lukasz.luba@arm.com>
> ---
>  arch/arm/configs/exynos_defconfig | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/arch/arm/configs/exynos_defconfig b/arch/arm/configs/exynos_defconfig
> index e7e4bb5ad8d5..1db857056992 100644
> --- a/arch/arm/configs/exynos_defconfig
> +++ b/arch/arm/configs/exynos_defconfig
> @@ -8,6 +8,7 @@ CONFIG_PERF_EVENTS=y
>  CONFIG_ARCH_EXYNOS=y
>  CONFIG_CPU_ICACHE_MISMATCH_WORKAROUND=y
>  CONFIG_SMP=y
> +CONFIG_SCHED_MC=y
>  CONFIG_BIG_LITTLE=y
>  CONFIG_NR_CPUS=8
>  CONFIG_HIGHMEM=y
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
