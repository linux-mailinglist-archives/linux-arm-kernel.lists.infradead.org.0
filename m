Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 655FBDC3D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 08:53:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C6U66hnjLIT1sGFjek8ckSbZQDYhbFJLc1E4vCz31HI=; b=Pu3quCJM3dPSAe
	pu7z7pF8+g71FYCDi0ymwvCybvRNhgRXUxy5+NEjk3OaGOaFy37P5jSqLBl8O4iNqKc/FEd0ZOI4i
	4P0M8yydWH5XtED02TygUvJAnFJY/nOTv0PbKBn1NJ9j92D171N3LgG+5YL4gcYh0rAL0iRncnC+b
	a+0MwbSyuBZeRSnNn6LbUKgGY86VFuVGaEzicbLx2/Agps3tLTnMJ7Loqf+VGo+b1hIikF9q2FKph
	MLSz5SQ6d3Egc/pa3sCorM1hMdfFhAG5YrmfT77TBS4qumIN84stAq8gf9f/M46Dq5bu3u92lvdok
	yj4EpEMxM7jtULK7uNXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL0AM-0003Cw-0k; Mon, 29 Apr 2019 06:53:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL0AE-0003CZ-Sz
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 06:53:24 +0000
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com
 [209.85.167.44])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 00A852147A
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Apr 2019 06:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556520802;
 bh=/8s3r5X+mra2HHJHmmBGYYEEnP8VSjNF/uGBLudyStM=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=Zoya90rKN0PHZexbyvZL9PtDtk+DylIduUidCxWViXejlQv8m3j4uR9GYRTYN6d1k
 8p9P9qB0u+aLdiHCTIEnQLDkgXLrLOaeSAjiO1oBlYzjzfoBEL0+vRNAnGOXAU2z4f
 H3s9nQR4Ll8wtrP0JKdV1UkOQVrEKlU2WQ/KFr90=
Received: by mail-lf1-f44.google.com with SMTP id h126so7086042lfh.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 23:53:21 -0700 (PDT)
X-Gm-Message-State: APjAAAXzDnIyFK/1VeObNQqH4dB4lyrhmQoQaWb/KA5GtPG4AkFY4kDI
 Z+dt2xMtrzzFHKFpomi/ga6C/vLKJuvhszQGMrM=
X-Google-Smtp-Source: APXvYqzNqMoLoFyXW1X6g3hv/YfTO7wryk7yF+B9HqpjcYIXKneyEULTZE0XAlyk9wlJ1OYKn0th3it5W/vg18auv2E=
X-Received: by 2002:a19:c301:: with SMTP id t1mr30532924lff.167.1556520800288; 
 Sun, 28 Apr 2019 23:53:20 -0700 (PDT)
MIME-Version: 1.0
References: <20190414154805.10188-1-krzk@kernel.org>
 <20190414154805.10188-3-krzk@kernel.org>
In-Reply-To: <20190414154805.10188-3-krzk@kernel.org>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Mon, 29 Apr 2019 08:53:09 +0200
X-Gmail-Original-Message-ID: <CAJKOXPfzV0wn0a-4xvy1B0fR=X4VvpqNmtqwRGFhFdCMH3OpHA@mail.gmail.com>
Message-ID: <CAJKOXPfzV0wn0a-4xvy1B0fR=X4VvpqNmtqwRGFhFdCMH3OpHA@mail.gmail.com>
Subject: Re: [GIT PULL 3/3] ARM: samsung: Changes for v5.2
To: Olof Johansson <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>,
 arm@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_235322_970521_37D0BF6A 
X-CRM114-Status: GOOD (  19.19  )
X-Spam-Score: -5.3 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 Kukjin Kim <kgene@kernel.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 14 Apr 2019 at 17:48, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
>
> The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
>
>   Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
>
> are available in the Git repository at:
>
>   https://git.kernel.org/pub/scm/linux/kernel/git/krzk/linux.git tags/samsung-soc-5.2
>
> for you to fetch changes up to 7676e667c841375b41d9438b559756141aa93d0e:
>
>   ARM: s3c64xx: Tidy up handling of regulator GPIO lookups (2019-04-14 12:53:03 +0200)
>
> ----------------------------------------------------------------
> Samsung mach/soc changes for v5.2
>
> 1. Cleanup in mach code.
> 2. Add necessary fixes for Suspend to RAM on Exynos5422 boards (tested
>    with Odroid XU3/XU4/HC1 family).  Finally this brings a working S2R
>    on these Odroid boards (still other drivers might have some issues
>    but mach code seems to be finished).
> 3. Require MCPM for Exynos542x boards because otherwise not all of cores
>    will come online.
> 4. GPIO regulator cleanup on S3C6410 Craig.

Hi Olof and Arnd,

I see you pulled in DTS and DTS64 pull request. I think this one here
is still pending.

Best regards,
Krzysztof

>
> ----------------------------------------------------------------
> Charles Keepax (1):
>       ARM: s3c64xx: Tidy up handling of regulator GPIO lookups
>
> Joonyoung Shim (1):
>       ARM: exynos: Add CPU state management for Exynos542x under secure firmware
>
> Marek Szyprowski (5):
>       ARM: exynos: Move Exynos542x CPU state reset to pm_prepare()
>       ARM: exynos: Add Exynos SMC values for secure memory write
>       ARM: exynos: Fix undefined instruction during Exynos5422 resume
>       ARM: exynos: Fix infinite loops on CPU powerup failure
>       ARM: exynos: Set MCPM as mandatory for Exynos542x/5800 SoCs
>
> Wen Yang (1):
>       ARM: exynos: Fix a leaked reference by adding missing of_node_put
>
>  arch/arm/configs/exynos_defconfig            |  1 -
>  arch/arm/configs/multi_v7_defconfig          |  1 -
>  arch/arm/mach-exynos/Kconfig                 | 12 ++-----
>  arch/arm/mach-exynos/Makefile                |  2 +-
>  arch/arm/mach-exynos/common.h                |  1 +
>  arch/arm/mach-exynos/exynos.c                |  3 ++
>  arch/arm/mach-exynos/firmware.c              |  1 +
>  arch/arm/mach-exynos/mcpm-exynos.c           | 13 +++++++-
>  arch/arm/mach-exynos/platsmp.c               |  9 ++++-
>  arch/arm/mach-exynos/smc.h                   |  7 ++++
>  arch/arm/mach-exynos/suspend.c               | 49 ++++++++++++++++++++++++----
>  arch/arm/mach-s3c64xx/mach-crag6410-module.c | 14 ++++++--
>  12 files changed, 89 insertions(+), 24 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
