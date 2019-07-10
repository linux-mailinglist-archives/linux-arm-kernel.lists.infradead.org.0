Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88C176440C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 11:01:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wRPrOBTQE3PJiEjUMij7VY2DnIFOLPo/Lc3ASKoo/II=; b=fbemGc8Eh5Sz6X
	1uhaDD+jTMr0ucDhTNA+Ay20ogH9vZ+CD53uufZTgTzFwXvMmfU/4gZlbp2bU60eBJfXJ/ejCsFgE
	v1hfs3gfoCi9qwgjYHzMFFKE2wUxIZBfomSsqeb7wHQK5DlL40Tmb1Reqo5seJ1T1KHkmNEGYfEvY
	KGRBM4hTY0bpRTYZI0Dhuz3lWgu3H5I50VgQQE5WdgHMZxIL8tVbOG2SGcUJ48Uw0khaZxcKsq8UI
	JmR6ILtCoXdBcrh54UiSMqmqardH6UgpwZ9JG0G+xXX7WmTtxApQG/gSDtqPpeCblVSZ8/vg98PlH
	yOdcm11lSznV1BG+f61w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hl8Tj-0006oH-5o; Wed, 10 Jul 2019 09:01:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hl8TK-0006j6-Ue
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jul 2019 09:01:09 +0000
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com
 [209.85.208.178])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2B489208E4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jul 2019 09:01:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562749266;
 bh=wJ4UybqhWF4GHysL0HzNpEbCXWrP9PdCHa4n5QXVa+k=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=iw+A8s5irXEma3Z1l7JBvR7lj9Z4gfTmGjpyXPgCDIRUztCLU1SSaxwjc7MFjyLDV
 pdcoYxskBQ0VQ1hd6Ttl0HP5tscMckWqQuwCSUfwE5YNKCV+tTCvP5Rr0lqPHSQnb7
 LAH9dCfPgkFRLpqC5Ja379xIVqunhX3veJB1GPvQ=
Received: by mail-lj1-f178.google.com with SMTP id i21so1298029ljj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jul 2019 02:01:06 -0700 (PDT)
X-Gm-Message-State: APjAAAVmRCE3/nY14fdW26O650CQk2F16nHujnmknDuZXO9Lg1+ZL1xc
 xNVoAPZGFLzocO1CMvlaz4GKOUbA6KahaC5Suz0=
X-Google-Smtp-Source: APXvYqySTqN+a0Pd632KuRg+HHS06nuFlFkBnJ+6eD7MYISsnc9zgvNILpGXeTB3FUo87vj9BNr4HWlVIikw8EUIrzQ=
X-Received: by 2002:a2e:980a:: with SMTP id a10mr14216019ljj.40.1562749264412; 
 Wed, 10 Jul 2019 02:01:04 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20190708141158eucas1p17d4b50978dbe1e5c876ce6d8f433cc95@eucas1p1.samsung.com>
 <20190708141140.24379-1-k.konieczny@partner.samsung.com>
In-Reply-To: <20190708141140.24379-1-k.konieczny@partner.samsung.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Wed, 10 Jul 2019 11:00:53 +0200
X-Gmail-Original-Message-ID: <CAJKOXPd+UZ2MdrTVfBv5UYzK5LgKNQHUFzRbRNeq271EaDSchg@mail.gmail.com>
Message-ID: <CAJKOXPd+UZ2MdrTVfBv5UYzK5LgKNQHUFzRbRNeq271EaDSchg@mail.gmail.com>
Subject: Re: [PATCH 0/3] add coupled regulators for Exynos5422/5800
To: k.konieczny@partner.samsung.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_020107_565762_B36890C6 
X-CRM114-Status: GOOD (  20.59  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Nishanth Menon <nm@ti.com>,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Stephen Boyd <sboyd@kernel.org>, Viresh Kumar <vireshk@kernel.org>,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, devicetree@vger.kernel.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 8 Jul 2019 at 16:12, <k.konieczny@partner.samsung.com> wrote:
>
> From: Kamil Konieczny <k.konieczny@partner.samsung.com>
>
> Hi,
>
> The main purpose of this patch series is to add coupled regulators for
> Exynos5422/5800 to keep constrain on voltage difference between vdd_arm
> and vdd_int to be at most 300mV. In exynos-bus instead of using
> regulator_set_voltage_tol() with default voltage tolerance it should be
> used regulator_set_voltage_triplet() with volatege range, and this is
> already present in opp/core.c code, so it can be reused. While at this,
> move setting regulators into opp/core.
>
> This patchset was tested on Odroid XU3.
>
> The last patch depends on two previous.

So you break the ABI... I assume that patchset maintains
bisectability. However there is no explanation why ABI break is needed
so this does not look good...

Best regards,
Krzysztof

>
> Regards,
> Kamil
>
> Kamil Konieczny (2):
>   opp: core: add regulators enable and disable
>   devfreq: exynos-bus: convert to use dev_pm_opp_set_rate()
>
> Marek Szyprowski (1):
>   ARM: dts: exynos: add initial data for coupled regulators for
>     Exynos5422/5800
>
>  arch/arm/boot/dts/exynos5420.dtsi             |  34 ++--
>  arch/arm/boot/dts/exynos5422-odroid-core.dtsi |   4 +
>  arch/arm/boot/dts/exynos5800-peach-pi.dts     |   4 +
>  arch/arm/boot/dts/exynos5800.dtsi             |  32 ++--
>  drivers/devfreq/exynos-bus.c                  | 172 +++++++-----------
>  drivers/opp/core.c                            |  13 ++
>  6 files changed, 120 insertions(+), 139 deletions(-)
>
> --
> 2.22.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
