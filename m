Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D86EE71774
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 13:50:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Kt4Nl2GujKhnWpdw3hFT81xxLojJZhHLeaDmx0EHgw=; b=s4l4OC3BEurxLj
	1u9Kx80sAvJrGKUVkOIa3KHXiVmBTJYJejTc15DhMVmeCsEtlyjuFg0yHRgAWQT91shTG6taTSYJZ
	wPxPcfDK/cGK7h51Cg3f0wcRigqaNpxfAnVjeP3pBnEEwLw3qhqWpyzIgBm60CCLg/MIUBgz9gjzJ
	+AXpNO6ONo2Kb3jUoziBxmZ1Dyv2n+yW/dkorf1FGTNiMjnhe+SGIOkAIHAfKZazCci8c8hZodqZV
	7Z47CEi+5bzKAHmgDFgRWpXGxRT1AoNG7H/Hvu89z5B1svX9ZyKbJ33sCPgLEmmeSPDeGDtGnJGdD
	Oy+mEU1KYiJlVkY33QuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hptJE-0004Zy-8Y; Tue, 23 Jul 2019 11:50:20 +0000
Received: from mail-vk1-xa44.google.com ([2607:f8b0:4864:20::a44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hptIm-0004Wu-Es
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 11:49:54 +0000
Received: by mail-vk1-xa44.google.com with SMTP id b69so8588015vkb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 23 Jul 2019 04:49:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=eCc8oz4uiY5oWVmZXIo5sT3kYxDAiMvuCiy1W2eyWGs=;
 b=IcKy60K678v+J0heI68tZHz8GPQxO3NxVDFj7+zJrF5AlvdfaU4g7QvRBm4WzK2N23
 pDKiRHpCNnOLUYPIN99LoT+yt2FC3qBbHHQCKxLUEjiAu1+4X7mxR23Ke87joLy6cjbI
 s3/6QiwZIo4K0jxG1wUGV+ZYdWyrhdjWi+nN9ZjiCyoRpATnDAt+2ggPiQacmFtWkrVD
 BrcbtUmBD1XehP1guAAKJcsNS9FBV6Hj/B9IQZitsYgSfyYPTwanhyZrQB7wwo4flyGj
 NNhILO8zBbNZ6oupsz5WyUKBloxPApdSZeMXiRE1p5gl+NEcbn5V4bIv7J/i7P9twUoG
 bIcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=eCc8oz4uiY5oWVmZXIo5sT3kYxDAiMvuCiy1W2eyWGs=;
 b=LTIg4PH9DX5+a2h0CTdgx4vzxQZgpNjtOxWjyAE62snhZglxYTs9DBR5NcSo4Qd+1k
 yPhsD7YZpHi43sOggiw8RexFMmQ8wkMg6ToRkSG94RuTj8PWNgoA4SukhCnCg1Q97e2s
 8iJ3h5POiYld735gzDf7BH3jxy2Q6gUhU1Bdx+Ck3ePSPbb3q1Qp+hTx+i+MzKN9VIbc
 GM6mM6+IoGc8myYC1EJ3v0KvbXBPYLubLFmmwe+78yQ+OBjniU3/GaX7OduR6dM3xSQV
 WtoxTUvK/O6vkFXyg5OOITdGZikzUApKlg/trOZaF/XuSAgnOhblMmXa+liQ/u8moi5H
 Ac8g==
X-Gm-Message-State: APjAAAVLlc1EWFS7kwEs2e3xf29O/wHdoU1xrfnhqYOHg8NPfNUp84CN
 i7j4bLh2KCpu0qRLZCdKUIPgMYkQrQMlEEnvimg5Hg==
X-Google-Smtp-Source: APXvYqzQew1R0hp4RpT558NdXJ2lVRHSHKaFuji8MnNl0ExroDkpLeuQgO9KGA19hr8dIxNU/dxd/h2ROvbh8X67rj0=
X-Received: by 2002:ac5:c2d2:: with SMTP id i18mr27496163vkk.36.1563882591235; 
 Tue, 23 Jul 2019 04:49:51 -0700 (PDT)
MIME-Version: 1.0
References: <20190722153745.32446-1-lorenzo.pieralisi@arm.com>
In-Reply-To: <20190722153745.32446-1-lorenzo.pieralisi@arm.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 23 Jul 2019 13:49:15 +0200
Message-ID: <CAPDyKFqAMhx_8T5FF7MujYc7HuNVAfCYx4j1UEfesuCc-TE-rw@mail.gmail.com>
Subject: Re: [PATCH 0/6] ARM: psci: cpuidle: PSCI CPUidle rework
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_044952_523021_1DD3A9FC 
X-CRM114-Status: GOOD (  22.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Linux PM <linux-pm@vger.kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, LKML <linux-kernel@vger.kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>, Will Deacon <will@kernel.org>,
 LAKML <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 22 Jul 2019 at 17:37, Lorenzo Pieralisi
<lorenzo.pieralisi@arm.com> wrote:
>
> Current PSCI CPUidle driver is built on top of the generic ARM
> CPUidle infrastructure that relies on the architectural back-end
> idle operations to initialize and enter idle states.
>
> On ARM64 systems, PSCI is the only interface the kernel ever uses
> to enter idle states, so, having to rely on a generic ARM CPUidle
> driver when there is and there will always be only one method
> for entering idle states proved to be overkill, more so given
> that on ARM 32-bit systems (that can also enable the generic
> ARM CPUidle driver) only one additional idle back-end was
> ever added:
>
> drivers/soc/qcom/spm.c
>
> and it can be easily converted to a full-fledged CPUidle driver
> without requiring the generic ARM CPUidle framework.
>
> Furthermore, the generic ARM CPUidle infrastructure forces the
> PSCI firmware layer to keep CPUidle specific information in it,
> which does not really fit its purpose that should be kernel
> control/data structure agnostic.
>
> Lastly, the interface between the generic ARM CPUidle driver and
> the arch back-end requires an idle state index to be passed to
> suspend operations, with idle states back-end internals (such
> as idle state parameters) hidden in architectural back-ends and
> not available to the generic ARM CPUidle driver.
>
> To improve the above mentioned shortcomings, implement a stand
> alone PSCI CPUidle driver; this improves the current kernel
> code from several perspective:
>
> - Move CPUidle internal knowledge into CPUidle driver out of
>   the PSCI firmware interface
> - Give the PSCI CPUidle driver control over power state parameters,
>   in particular in preparation for PSCI OSI support
> - Remove generic CPUidle operations infrastructure from the kernel
>
> This patchset does not go as far as removing the generic ARM CPUidle
> infrastructure in order to collect feedback on the new approach
> before completing the removal from the kernel, the generic and PSCI
> CPUidle driver are left to co-exist.

I like the approach and I think this series definitely moves things in
the right direction.

Of course, some additional cleanups/re-works on top are needed to show
its full benefit, but step by step we reach that point.

>
> Tested on Juno platform with both DT and ACPI boot firmwares.
>
> Cc: Will Deacon <will@kernel.org>
> Cc: Ulf Hansson <ulf.hansson@linaro.org>
> Cc: Sudeep Holla <sudeep.holla@arm.com>
> Cc: Daniel Lezcano <daniel.lezcano@linaro.org>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: "Rafael J. Wysocki" <rjw@rjwysocki.net>
>
> Lorenzo Pieralisi (6):
>   ARM: cpuidle: Remove useless header include
>   ARM: cpuidle: Remove overzealous error logging
>   drivers: firmware: psci: Decouple checker from generic ARM CPUidle
>   ARM: psci: cpuidle: Introduce PSCI CPUidle driver
>   ARM: psci: cpuidle: Enable PSCI CPUidle driver
>   PSCI: cpuidle: Refactor CPU suspend power_state parameter handling
>
>  MAINTAINERS                          |   8 +
>  arch/arm/configs/imx_v6_v7_defconfig |   1 +
>  arch/arm64/configs/defconfig         |   1 +
>  arch/arm64/kernel/cpuidle.c          |  50 +++++-
>  arch/arm64/kernel/psci.c             |   4 -
>  drivers/cpuidle/Kconfig.arm          |   7 +
>  drivers/cpuidle/Makefile             |   1 +
>  drivers/cpuidle/cpuidle-arm.c        |  13 +-
>  drivers/cpuidle/cpuidle-psci.c       | 235 +++++++++++++++++++++++++++
>  drivers/firmware/psci/psci.c         | 167 +------------------
>  drivers/firmware/psci/psci_checker.c |  16 +-
>  include/linux/cpuidle.h              |  17 +-
>  include/linux/psci.h                 |   4 +-
>  13 files changed, 338 insertions(+), 186 deletions(-)
>  create mode 100644 drivers/cpuidle/cpuidle-psci.c
>
> --
> 2.21.0
>

For the series, besides the minor comments I had on patch 4, feel free to add:

Reviewed-by: Ulf Hansson <ulf.hansson@linaro.org>

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
