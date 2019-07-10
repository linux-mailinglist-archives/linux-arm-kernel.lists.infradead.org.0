Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C077E6450B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 12:15:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iXiD3wbfZHw68pwNeriJbejM6Pd7qrb3hNiHslSO/2M=; b=d1c+kEda5Ka07s
	bz1mh9r0Uca2LvysRmyWHsvWGEvpq2ZChieNMliU9av0oypI5hRoj2Wf+HFcs4UzAX/0wiN2yBXmY
	u/SBPxdUSNiyA5T/8ABJn6dCvfsklbVjz+XEfqQp9p3KgLw0t0GM0cefWp+1ZisO8HYrNxR4L4zWY
	ClyPuzRl/NQ/BIgTJ2Me6fYDJqdXaRFALReNU/oWM/NxNTZG1ybQOWY5ehUODSGSsLEM8f291aUKm
	fgysbmPtIMdTMMNAvb/iF6hGaotZLeTmRQOmaItnCBlJawYgI+Ah8vsEn28YW7VGxu7eoQYfmFNHJ
	TTHKt6bntqCXjCS8U2aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hl9dA-0006OJ-9b; Wed, 10 Jul 2019 10:15:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hl9cw-0005jT-MD
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jul 2019 10:15:08 +0000
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com
 [209.85.208.176])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AB4A22086D
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jul 2019 10:15:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562753705;
 bh=FKpiA/emhKXUOAPvuAJ5oh3C3NX2rCFMH+btriqrd4E=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=xWsc9WLv9uXi+kTm/sQBJC6Gcxs5SxUhmTBPZGMtgW6lJzrVfAdyorhbft7xaFAbL
 AgdDhUNdVXew3QRvl0mZO1y3DthJZ0L/AoSun2BGegLwZrrGgnFcZE4XKtjQvSZ5+r
 T6LfnYa6wKz0ZydjRFYLeFVNiPuGW48f18Uj8N0Q=
Received: by mail-lj1-f176.google.com with SMTP id z28so1510034ljn.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jul 2019 03:15:04 -0700 (PDT)
X-Gm-Message-State: APjAAAVd7ywFyiXPmXYXerqseuu3tXEmXQImDoXBOW3pUT/oCqIE1uT5
 6ljhvZVokWZ419GYbwSbjHsKCnf6tIPWTKDJy2M=
X-Google-Smtp-Source: APXvYqzFBP1tdwwgtZ/3RtfqPPV8drCmzRWKuK+JH6Dw5x+7dbZyN+IaqrSobdz3ZdFMyRjarSxqkEs4HDySwe+JxPc=
X-Received: by 2002:a2e:7818:: with SMTP id t24mr13443634ljc.210.1562753702877; 
 Wed, 10 Jul 2019 03:15:02 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20190708141158eucas1p17d4b50978dbe1e5c876ce6d8f433cc95@eucas1p1.samsung.com>
 <20190708141140.24379-1-k.konieczny@partner.samsung.com>
 <CAJKOXPd+UZ2MdrTVfBv5UYzK5LgKNQHUFzRbRNeq271EaDSchg@mail.gmail.com>
 <91f65527-3440-90fd-4096-5824fba1df78@partner.samsung.com>
In-Reply-To: <91f65527-3440-90fd-4096-5824fba1df78@partner.samsung.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Wed, 10 Jul 2019 12:14:51 +0200
X-Gmail-Original-Message-ID: <CAJKOXPc1rOyFujyWk4HwmQb6YEXd=CEHKwN8AH_pKxk-6CA08w@mail.gmail.com>
Message-ID: <CAJKOXPc1rOyFujyWk4HwmQb6YEXd=CEHKwN8AH_pKxk-6CA08w@mail.gmail.com>
Subject: Re: [PATCH 0/3] add coupled regulators for Exynos5422/5800
To: Kamil Konieczny <k.konieczny@partner.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_031506_768769_C2C936DE 
X-CRM114-Status: GOOD (  21.13  )
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

On Wed, 10 Jul 2019 at 12:03, Kamil Konieczny
<k.konieczny@partner.samsung.com> wrote:
>
> On 10.07.2019 11:00, Krzysztof Kozlowski wrote:
> > On Mon, 8 Jul 2019 at 16:12, <k.konieczny@partner.samsung.com> wrote:
> >>
> >> From: Kamil Konieczny <k.konieczny@partner.samsung.com>
> >>
> >> Hi,
> >>
> >> The main purpose of this patch series is to add coupled regulators for
> >> Exynos5422/5800 to keep constrain on voltage difference between vdd_arm
> >> and vdd_int to be at most 300mV. In exynos-bus instead of using
> >> regulator_set_voltage_tol() with default voltage tolerance it should be
> >> used regulator_set_voltage_triplet() with volatege range, and this is
> >> already present in opp/core.c code, so it can be reused. While at this,
> >> move setting regulators into opp/core.
> >>
> >> This patchset was tested on Odroid XU3.
> >>
> >> The last patch depends on two previous.
> >
> > So you break the ABI... I assume that patchset maintains
> > bisectability. However there is no explanation why ABI break is needed
> > so this does not look good...
>
> Patchset is bisectable, first one is simple and do not depends on others,
> second depends on first, last depends on first and second.
>
> What do you mean by breaking ABI ?

I mean, that Linux kernel stops working with existing DTBs... or am I
mistaken and there is no problem? Maybe I confused the order...

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
