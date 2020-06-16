Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 141FB1FC084
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 22:59:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RtoZmOBDNPmW5TA8QakYVl0PR0ZTjIGpJp7mkum/Kcs=; b=ZSjhhwGm9pnAvJ
	VRxKWZ0e/inZS80t2lPZu4vOsTLiWFyoYi3/OYSTJaVrSdxNTDWl4BrkTcrW+SYLgq8Hn/22p2/WX
	AslCj5nIu6n4TbszKpxxqXZZKAziI40BC2GLl3SY7TupdajuWLrHHQAbkCFIlf16TN5j5WnClPBOg
	V30wlCIqkUicEgeitaqKiYQGPyGgykrq5Pp4Mhaz0ngzNg6lubxAzCtSXrESscEhAIAX1XMjzWnnW
	QRaeLS/FUF6MoY4CbK5SuYouXzBeM+bGU1AiiqdOAH9uqyotz7SXTqWiU9kSvu1KG4peC+jMDZusE
	9/V9BE1zOTlwyk4XBHWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlIgC-0005AK-EM; Tue, 16 Jun 2020 20:59:36 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlIer-0004FO-BO
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 20:58:22 +0000
Received: by mail-il1-x143.google.com with SMTP id h3so20446392ilh.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 13:58:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FYZcH9YCAV2D9xJRlKDws3xYJbeunSuHP5OJ4xopk5U=;
 b=sMF4Sz7iAfVFIns3sFM03xAVLeLz7qz67oG6nGIOlyZZ3O/RM8u2Pn9IjPPyKjEhkz
 rUVI5YzGAv9LDyXBpmtn6ltuOy+cEhjBA5e+dz5AjMAGLGNFZ9JpZk9Dc+RbOo9yGVkk
 YKpLnn0Tt7F0qK+LyZWtmDVYLtg6hqJ778mTjGl5/YueUBiU8X3OJSpI9T2LWsi/dm1R
 128cAkSgho2OWRjjKjr4ZwtJzNkxCliHWC4Rfr/6gThIGFsIevcMtr2vc1y2FJb4F9AT
 2IG3BhZaAI5FJox/mINW4hJenvrhvylvAz7q8DisookNHWadKuEZfYFp7A5M9zpAnbn8
 lI2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FYZcH9YCAV2D9xJRlKDws3xYJbeunSuHP5OJ4xopk5U=;
 b=UajCCIiIHQCAjKqrUXch2em/y6Z97KxpdHTdCUKSTmvGpi+HKQv9h9XbvOZclVagf5
 25EdjAwAYOYaxi4DgT2uhO+nb4ckxTTlFT2Uo6zalKP5qqHf7TF3molCIEgp+aPVDnez
 tDebqT4ikUkU/t2c8lTwBJPcK+d0XvhHg+ERHyMBRFILq9lLQA+3WpDqkLs4VBxEndI7
 iBqugIsferLlwdzL5nbaiKxaJK1KUMrHpnx4TgqHi6J3rm2ncr7YTrYK918LW1zCmyMK
 jipl7PgFp0WRTEd5InNNl2PAO/XIqYXmBTCQxcrq+Y09Rgrjt/2ZqN4cJRQqGFRCrvRl
 YlPQ==
X-Gm-Message-State: AOAM530F7TQrwGUANd+fjpTKxeIVsoKkwsGDjHeX/gdgenYu934saiHK
 R8+L3V34bGdAfz+ojSCpdygHi6fid906Ve6rOps=
X-Google-Smtp-Source: ABdhPJw7r9fTtiY0V63BhtDgkS/1VuVZSmoZam4NKdSyg6P5i4KlsKliKnLpusFiTessmcmOsEUwrNO8miMsJEyN4oY=
X-Received: by 2002:a92:de10:: with SMTP id x16mr5352212ilm.6.1592341091058;
 Tue, 16 Jun 2020 13:58:11 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20200616081248eucas1p168faa343ce333a28c8fd3cf9a6a58b3c@eucas1p1.samsung.com>
 <20200616081230.31198-1-m.szyprowski@samsung.com>
In-Reply-To: <20200616081230.31198-1-m.szyprowski@samsung.com>
From: Anand Moon <linux.amoon@gmail.com>
Date: Wed, 17 Jun 2020 02:28:01 +0530
Message-ID: <CANAwSgStsYP5fBB7z7-Reo2BP4ZQPT6RN4s8QdLGVGhKCDA_Ng@mail.gmail.com>
Subject: Re: [PATCH 0/4] Restore big.LITTLE cpuidle driver for Exynos
To: Marek Szyprowski <m.szyprowski@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_135813_444662_A16A9AA9 
X-CRM114-Status: GOOD (  18.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [linux.amoon[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Linux PM list <linux-pm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, linux-samsung-soc@vger.kernel.org,
 Lukasz Luba <lukasz.luba@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marek,

On Tue, 16 Jun 2020 at 13:44, Marek Szyprowski <m.szyprowski@samsung.com> wrote:
>
> The ARM big.LITTLE cpuidle driver has been enabled and tested on Samsung
> Exynos 5420/5800 based Peach Pit/Pi Chromebooks and in fact it worked
> only on those boards.
>
> However, support for it was broken by the commit 833b5794e330 ("ARM:
> EXYNOS: reset Little cores when cpu is up") and then never enabled in the
> exynos_defconfig. This patchset provides the needed fix to the common
> code and restores support for it. Thanks to Lukasz Luba who motivated me
> to take a look into this issue.
>
Thanks for this updates.

But I feel some DTS changes are missing for example
d2e5c871ed8a drivers: cpuidle: initialize big.LITTLE driver through DT

But I feel that this feature is not working as desired since
still some missing code changes for cluster idle states are missing.
like clock  PWR_CTR and PWR_CTRL2.

-Anand

> Best regards
> Marek Szyprowski
> Samsung R&D Institute Poland
>
>
> Patch summary:
>
> Marek Szyprowski (4):
>   ARM: exynos: Apply little core workaround only under secure firmware
>   cpuidle: big.LITTLE: enable driver only on Peach-Pit/Pi Chromebooks
>   ARM: exynos_defconfig: Enable big.LITTLE cpuidle driver
>   ARM: multi_v7_defconfig: Enable big.LITTLE cpuidle driver
>
>  arch/arm/configs/exynos_defconfig    |  1 +
>  arch/arm/configs/multi_v7_defconfig  |  1 +
>  arch/arm/mach-exynos/mcpm-exynos.c   | 10 +++++++---
>  drivers/cpuidle/cpuidle-big_little.c |  3 +--
>  4 files changed, 10 insertions(+), 5 deletions(-)
>
> --
> 2.17.1
>
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
