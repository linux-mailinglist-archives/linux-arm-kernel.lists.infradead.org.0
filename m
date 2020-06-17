Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D15871FCB88
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 12:58:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rtjJnF6R8INInQC4ya5wDoXu7iu46CuMSHZCoamuXJM=; b=nVxB/EfmjjyYJh
	PW/RFORtvS+XcClf3+4xfdXA2Ds+nXGlfhvH9HRrMbJ7V2lNT5Pd2ZNjGHRdxZMpTRtIZyHJeUklp
	V+r7xxXK85yT/x/9mpGJ2Y6dlbQwdPWnLQaY53LwXpAco8VsFMiG9mszT8p/ZcBFvdhPKbehYPh7t
	YMu1uUt7IBLOx6vaGtl6myunNnU2lPFn0PHFafN9SjYkFcaqi1I5CKPvA16brQieFgNt9nVkKy8Bk
	U/AYBzXfdxVU3UrHq3B6cGU9gXW+yR3oeCR1T99vWJCrUczwe9t9VXW4LqTuUc+71SKrSfaAU5mnQ
	OvgkBPWTsxW7KHIazncw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlVln-0000jX-V0; Wed, 17 Jun 2020 10:58:15 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlVld-0000j1-1y
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 10:58:06 +0000
Received: by mail-io1-xd44.google.com with SMTP id t9so2149064ioj.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jun 2020 03:58:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nMiSyPVInJQRoT6fLFwnryiJhqxToOM1NO8PNE6msJo=;
 b=L1VQaMVlmrOZgULfTCWPMCYLpDDHM4ZSarJw84Oc8JwzTX9G9VTK3OQNwcJ6qL5a25
 iKDU96CV1RiNVVrY/eVWJ8aztQi3GbN1rYSp9lmcyOML4OoslwIiKSiPITLADEZeq4Q8
 gyFZR6rg+BA2owmtUg8x8cLa7N214bIbh6PQBh07BKmr3hNootriMqAGC7M/gtzLTOhS
 88TO+hTbiRxomYMt+bi//CsaEShIPS+TI7cJDpjTrciI7t9U+irByTPc5ydBOIxjalWT
 bha6cWFMSZrqnJ4krwTMXYR3QztRFqRhUX1iiJ7FtT6v7RC5H9MSqUUsf+QW6IuWcQhn
 cZsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nMiSyPVInJQRoT6fLFwnryiJhqxToOM1NO8PNE6msJo=;
 b=omP9BhsSfGxoLUFJAFmWermifPzMVeZNd+QEW0evWB+x6REg52DCc2IflilHyuePWT
 VzZUxdoV7gdzNJZ7a2WAsAIvXpqrPf70nKV2m4+hjq6WchGdaTSAboudv/r8iDPcsdDL
 /3nD/kWPJcnh6+S1ysc5v1lyByW++ISmjxQO4jJmGT5IStNJxL+FPuKQHnVRB1+tvNh4
 VNwD5/kPD8fwRz8+t4uLEmzxZWhmLrsh8j8OAHdj/v1eUU8liddF+fcdMqfcGapuNm3G
 HId8WARXFCj7Ds/7v+fObtu0atmf7Y/WR5WeeVxXXyu7cg5bGeCLRFa8s0t+vsnqDRVF
 psVw==
X-Gm-Message-State: AOAM531a9/rTBwO9LWHGzrYeQMqLgQRTcCSyzY6cTjbrOY6X1bSABkd8
 X0pAIY6HwIXJ1/DLTdp83h/CQl6MXTgVwjQAbtk=
X-Google-Smtp-Source: ABdhPJyq7fw2XXwLJfk3fsu0fT46sa8BXmL96PRwsE0LD1hGltiXnd+hLRjlWlDnkImUvYwybAHDQr8LCW67Ze4QoUQ=
X-Received: by 2002:a05:6602:2dd5:: with SMTP id
 l21mr7612508iow.173.1592391482585; 
 Wed, 17 Jun 2020 03:58:02 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20200616081248eucas1p168faa343ce333a28c8fd3cf9a6a58b3c@eucas1p1.samsung.com>
 <20200616081230.31198-1-m.szyprowski@samsung.com>
 <CANAwSgStsYP5fBB7z7-Reo2BP4ZQPT6RN4s8QdLGVGhKCDA_Ng@mail.gmail.com>
 <3e6b5dbb-a8a2-e3db-d740-53e13676455c@samsung.com>
In-Reply-To: <3e6b5dbb-a8a2-e3db-d740-53e13676455c@samsung.com>
From: Anand Moon <linux.amoon@gmail.com>
Date: Wed, 17 Jun 2020 16:27:54 +0530
Message-ID: <CANAwSgSgvOSMQbvZG0kFe3YHQh5ZeCbDjMHCRt-fb=dmTwA-EQ@mail.gmail.com>
Subject: Re: [PATCH 0/4] Restore big.LITTLE cpuidle driver for Exynos
To: Marek Szyprowski <m.szyprowski@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_035805_117840_4EB1F7AE 
X-CRM114-Status: GOOD (  19.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [linux.amoon[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

On Wed, 17 Jun 2020 at 15:18, Marek Szyprowski <m.szyprowski@samsung.com> wrote:
>
> Hi Anand,
>
> On 16.06.2020 22:58, Anand Moon wrote:
> > On Tue, 16 Jun 2020 at 13:44, Marek Szyprowski <m.szyprowski@samsung.com> wrote:
> >> The ARM big.LITTLE cpuidle driver has been enabled and tested on Samsung
> >> Exynos 5420/5800 based Peach Pit/Pi Chromebooks and in fact it worked
> >> only on those boards.
> >>
> >> However, support for it was broken by the commit 833b5794e330 ("ARM:
> >> EXYNOS: reset Little cores when cpu is up") and then never enabled in the
> >> exynos_defconfig. This patchset provides the needed fix to the common
> >> code and restores support for it. Thanks to Lukasz Luba who motivated me
> >> to take a look into this issue.
> >>
> > Thanks for this updates.
> >
> > But I feel some DTS changes are missing for example
> > d2e5c871ed8a drivers: cpuidle: initialize big.LITTLE driver through DT
>
> This is not strictly needed. The bl-cpuidle matches also to the A7/A15
> CPU product ids and it is properly instantiated on the Peach Pit/Pi
> Chromebooks. Those CPU DT properties were added as a future-proof
> generic solution. I won't hurt to add them though.
>
Ok Thanks.

> > But I feel that this feature is not working as desired since
> > still some missing code changes for cluster idle states are missing.
> > like clock  PWR_CTR and PWR_CTRL2.
>
> I cannot judge now. All I can test now is a that the boards enters those
> idle states and system works stable. I cannot measure power consumption,
> because currently I have only remote access to the boards.
>
Ok, Thanks.

What I meant was in order to cpu cluster to enter into IDLE states,
it's controlled by the EXYNOS5422_PWR_CTRL and EXYNOS5422_PWR_CTRL2 clk fields
See below example from the Exynos5422 cpu idle driver.

[0] https://github.com/hardkernel/linux/blob/odroidxu3-3.10.y/arch/arm/mach-exynos/cpuidle-exynos5422.c#L319-L379

Just link Exynos5250 clk driver we need to Initialize PWR_CTRL and
PWR_CTRL2 for Exynos542x clocks

[1] https://github.com/torvalds/linux/blob/master/drivers/clk/samsung/clk-exynos5250.c#L828-L846

which will help support cpu idle drivers.

-Anand

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
