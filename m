Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37B5AF72B2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 12:02:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5yJch5fKA/Tjd+eQJwwp5VQ9gnn26urSCsy26d/lSGY=; b=Fej2fo6RiMLUrN
	KL34paYl93qN10bzCWNiYzkQE8DmPorCwMwCjgDwC73mSaD8Z1hm/pPZ1PquvrALJ4a+WmLbtV3Up
	XQz9PwX12C/Fnkb6aoMu8qTsY+Nb5H4EvPDfAR2wFPEQfh62LfIC+RhWM8aEi+V/4iR4EafSiZaqP
	bAbg6P0k1NtrIsPIJlb6Jg8xdUSDq4WJJHcoMik6ueun/9vSJalGp6ZnbERwvOfrP+Xk+WJuum/KU
	H9oGlii7v2AHWXfBwGaBkhpWDp1IhFogk0eevBPG0x7AVPyMmvgsMQ9O1YX9Dmb/4TvnTty+DXxfn
	EjgPI5Y+6ig46hJRkOsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU7SV-0001GP-KF; Mon, 11 Nov 2019 11:02:11 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU7Rt-0001FJ-LT
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 11:01:55 +0000
Received: by mail-vs1-xe42.google.com with SMTP id m9so8426402vsq.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 Nov 2019 03:01:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Mz3lNQ/pSTpjBy4/rt0FiWEYQmsAhg9p/dIjDzFfTO0=;
 b=CYxf1c35gK5NtcdsAKgFQmNcI0NRUCD1qc5CY7Gfkg1niJJ5ryezlxrJYmyYktCj7C
 hOQly/9/+7syg1PGyi+YO5GpLT2V/GOgJ+Ws/W0MVgPMPJzopRHddYN7/PjnwRV3w2Kd
 9GOYaABtA2QUb6wuTC25zWLpQYBcfm3gCKwh7fAVqmDMxXRTjo3GUvfn+yeKvYKuzVuQ
 tgvQEEhFVWu/gdUqcyziu4IuIRiiIgOcD6YHvik2uiewFqW+JuoLfUPP0H9zJFenCDhJ
 PYrKPxRbmrnO7JQwNGyZ0j8qI/jZZpbTGpcLOAUoprTSlWGfXHMe4DdmI4WzkODAuXml
 u+Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Mz3lNQ/pSTpjBy4/rt0FiWEYQmsAhg9p/dIjDzFfTO0=;
 b=B7Qny75VYjgtK39zIg5fgyI24rAjO70NNhSRzA9fdwyjZHb5FcfKJGLt8Q3905e6Sj
 cRe5DsJtmIv4K4unoeqxrnKEqgM1bqRs5Aunjjggl/EJ/sRZbxunOO1bsk7Ip35djrDr
 D1pQPkxjmkvuadNcxhl6uC3kYlInklvbTvOtjkPeRl9eLQmouGffqEJw+F4FaFpjgWeO
 B0neWheY2fvvQv+WJGn0C5ivrEwqbvmzVqew80mvoLOJtUehJxmkrV36jWLSxQ5k2SHu
 av2e9dst8ogn9d8lGN+91qzGD8OzLVKidR0HbpJnRlDDBFB1V7R64f10kEfRyWmtf6j9
 Je9A==
X-Gm-Message-State: APjAAAVGuHbL/k7dBxb8kNVb/r7ZSbW+EZ8qOLm+I+XjF55bh6mQ3lPN
 mtTTre9HJpgxNit+UuwCRanrHisr8Nf/Myn6xIMmPg==
X-Google-Smtp-Source: APXvYqx70uiAioSm0jvKz9MZFVmJvEQ0JqWGP534KhMvg5sjyFaaNuu21UzItkaDejfwEfEJIhd0ox49kFW3WNrTa3U=
X-Received: by 2002:a67:fc04:: with SMTP id o4mr17895409vsq.35.1573470088368; 
 Mon, 11 Nov 2019 03:01:28 -0800 (PST)
MIME-Version: 1.0
References: <20191029164438.17012-1-ulf.hansson@linaro.org>
In-Reply-To: <20191029164438.17012-1-ulf.hansson@linaro.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 11 Nov 2019 12:00:52 +0100
Message-ID: <CAPDyKFpiMK_P+4+n9wHc+68X6j44XOoTm=J8OXz5HkqoMxOsOg@mail.gmail.com>
Subject: Re: [PATCH v2 00/13] cpuidle: psci: Support hierarchical CPU
 arrangement
To: Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_030137_660695_359378B1 
X-CRM114-Status: GOOD (  22.98  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Linux PM <linux-pm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Andy Gross <agross@kernel.org>,
 Lina Iyer <ilina@codeaurora.org>, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 29 Oct 2019 at 17:44, Ulf Hansson <ulf.hansson@linaro.org> wrote:
>
> Changes in v2:
>         - Avoid to affect the non-OSI path with specific changes for OSI. This
>         forced me to re-order the series and a caused more or less minor changes
>         to most of the patches.
>         - Updated the DT bindings for PSCI to clarify and to include the "psci"
>         name of the PM domain to attach to.
>         - Replaced patch1 with another patch from Sudeep, solving the same
>         problem, but in a different way.

Hi Sudeep and Lorenzo,

Apologize for nagging you about reviews, again. Can you please have a
look at the new version!?

Kind regards
Uffe

>
> This is the same coverletter as in v1:
>
> This series enables initial support for hierarchical CPU arrangement, managed
> by PSCI and its corresponding cpuidle driver. It's based on using the generic
> PM domain (genpd), which nowadays also supports devices belonging to CPUs.
>
> The last DTS patch enables the hierarchical topology to be used for the Qcom
> 410c Dragonboard, which supports the PSCI OS-initiated mode.
>
> Do note, most of the code in this series have been posted earlier, but from the
> latest version being reviewed, we agreed on that it was better to re-work the
> PSCI backend driver as a first step, simply to get a clean interface towards the
> cpuidle driver.
>
> Summary of the main-changes since the last submission [1]:
>
>  - Moved implementation from the psci FW dricer into cpuidle-psci.
>
>  - Re-requesting review of the DT bindings, as we have moved to yaml. No
>    changes as such, but tried to clarify a few things in the text.
>
>  - Drop the patch enabling support for CPU hotplug, postponing that to the next
>    step.
>
>  - Respect the hierarchical topology in DT only when OSI mode is supported.
>    This is to start simple and we can always extend the support on top.
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
> Lina Iyer (1):
>   cpuidle: dt: Support hierarchical CPU idle states
>
> Sudeep Holla (1):
>   cpuidle: psci: Align psci_power_state count with idle state count
>
> Ulf Hansson (11):
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
>   cpuidle: psci: Add support for PM domains by using genpd
>   arm64: dts: Convert to the hierarchical CPU topology layout for
>     MSM8916
>
>  .../devicetree/bindings/arm/cpus.yaml         |  15 +
>  .../devicetree/bindings/arm/psci.yaml         | 102 ++++++
>  arch/arm64/boot/dts/qcom/msm8916.dtsi         |  57 +++-
>  drivers/cpuidle/Makefile                      |   4 +-
>  drivers/cpuidle/cpuidle-psci-domain.c         | 302 ++++++++++++++++++
>  drivers/cpuidle/cpuidle-psci.c                | 123 +++++--
>  drivers/cpuidle/cpuidle-psci.h                |  17 +
>  drivers/cpuidle/dt_idle_states.c              |   5 +-
>  drivers/firmware/psci/psci.c                  |  18 +-
>  drivers/of/base.c                             |  36 +++
>  include/linux/of.h                            |   8 +
>  include/linux/psci.h                          |   2 +
>  12 files changed, 654 insertions(+), 35 deletions(-)
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
