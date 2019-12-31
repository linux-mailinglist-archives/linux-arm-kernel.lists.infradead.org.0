Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77C4112D808
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Dec 2019 11:38:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lwaYAlI3Sfay7E0+nq9UagsXnzOeOHSTpjT0tP/3hf4=; b=kq2GjEzIbQf1/U
	9Ju4l/0BZCO8eopGtoV8g755KsHaaQScoQwRsE/31gcZMUAUL3DoZ3B0vmB0D2w7aXN9uMTswTkR8
	IqPB7r1iYkmmLbD0M3dw/uHLyzmnKeZEP9Mgx8lFMzC2a/HM55Lb9ZG8YlZ0k6TsX3JFc4mm22NUr
	9ClLcKpVQS5p2wRwr6B3FkkJRnG0wJO050Q1e/MPd2PC5/uE+4DEOjoEMaoBTxVG5AlfdWupQFWKO
	ijVBhV+H+UkqKrPouWWGNp/vTvuethqgZb2oY7XfgsiQqr8+WldFoPXdetudnxCNQxGtNyePhSZXj
	HUETrsq0qg9LBoyW+kFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imEvI-00071J-1q; Tue, 31 Dec 2019 10:38:48 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imEv2-0006yg-5b
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Dec 2019 10:38:34 +0000
Received: by mail-vs1-xe42.google.com with SMTP id x123so22461504vsc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 31 Dec 2019 02:38:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9MPzzButeWiEZHg1ooM4hlZrCnUO5hrxINjX6+EJ6TY=;
 b=Lspx/jryoMZVfCYjGJ1kZpVVTNtScD5ADc7oTcRnu/jKh8s7sJ+af39uJ/1wGKtJHC
 OrLxyl5EpOVQmuk6iyrevxoGtO3BJ08yn4vV/vgP7Qd2FOsMBttuC5q/9H5FPLqOui7m
 6yArDMFqDxSqcXFiqCfvJJiEaoxH1LPMM7lYgbUxLwOIOi1az8CYbjucMprybn5eSgpS
 nu1p0TCPbKrL0KE+KFnhss7bJeNO9ZB/Zh8lsskwOuocNY7SvfQSnnBK0ln2oFe6NKXm
 Qsv3nrvCpDzesTaOa/Ypy4VRi0iiSzdSJzsBJaKNzFZdAaqt4DQyGhTENsiNheiGIVyd
 8Bkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9MPzzButeWiEZHg1ooM4hlZrCnUO5hrxINjX6+EJ6TY=;
 b=FF5dG1crQ+VVqbL0oGuCLf8EfPY2wpXBOk9nOiNa5tTcKdWWxeb9nJtac6wroBgkiR
 S1Pc/7ZTeoN+q0afI1v41V/vRg5d9sHT1MqBr5Hx6d3QHI1lAcpakOlP5eaURe8P5fb7
 7FbVN3RBFOX2tv4UD9ZF59IYE1Kg78UwcH8gT3R1kBPMSiHYSaw04wprVxnkoS3hqEXC
 L9ugvT4tED4ciX2zWDQE+WQvLnQtE7C7QZqOEo4cgPEUyJFjmXv/Nak61pOkVGub+6qy
 qq4lR6nRJpfwU0yzTvah4nUuAoRcQBYMkcY+GpwH4KKhrVmDEVO0LOKpYcE3/NxKZg3j
 vMyA==
X-Gm-Message-State: APjAAAW1DhMdJSJoKENJjCxBz2YaN/zTsoYUQq73p4ga3DKNozoOmrsL
 4jwyuY4xYce9pgfvVa9+PzWrQdlMxmjXROHy4VwFGw==
X-Google-Smtp-Source: APXvYqx8CguxmbJdzpPJGw/2SsYw91ixuNPe6rjoxmohVAd5bUA7CsiL1cS+UiZ8tV2r5X0/+2rlZp2okUTdqfHPSeY=
X-Received: by 2002:a67:314e:: with SMTP id x75mr32871749vsx.35.1577788711103; 
 Tue, 31 Dec 2019 02:38:31 -0800 (PST)
MIME-Version: 1.0
References: <20191230144402.30195-1-ulf.hansson@linaro.org>
In-Reply-To: <20191230144402.30195-1-ulf.hansson@linaro.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 31 Dec 2019 11:37:55 +0100
Message-ID: <CAPDyKFrVQO-WFOfX_EKVTUYnesGj93GQMKxFNpbMt6s3xv_qBw@mail.gmail.com>
Subject: Re: [PATCH v5 00/15] cpuidle: psci: Support hierarchical CPU
 arrangement
To: "Rafael J . Wysocki" <rjw@rjwysocki.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_023832_271334_A9241F8E 
X-CRM114-Status: GOOD (  21.88  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Linux PM <linux-pm@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Andy Gross <agross@kernel.org>,
 Lina Iyer <ilina@codeaurora.org>, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kevin Hilman <khilman@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Rafael,

On Mon, 30 Dec 2019 at 15:44, Ulf Hansson <ulf.hansson@linaro.org> wrote:
>
> Changes in v5:
>         - Remove PM domains in the error path, when failing to enable OSI.
>         - Folded in a patch that adds a genpd OF helper to remove subdomains.
>         - Added reviewed-by tags.
>
> Changes in v4:
>         - Move the check for OSI support from psci_dt_attach_cpu() to the
>         caller's side of it.
>         - Add comment in the code about using the deepest idle state as the
>         triggering point for the domain state selection.
>         - Folded in a patch to enable support for CPU hotplug.
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
> Lina Iyer (1):
>   cpuidle: dt: Support hierarchical CPU idle states
>
> Sudeep Holla (1):
>   cpuidle: psci: Align psci_power_state count with idle state count
>
> Ulf Hansson (13):
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
>   PM / Domains: Introduce a genpd OF helper that removes a subdomain
>   cpuidle: psci: Add support for PM domains by using genpd
>   arm64: dts: Convert to the hierarchical CPU topology layout for
>     MSM8916
>
>  .../devicetree/bindings/arm/cpus.yaml         |  15 +
>  .../devicetree/bindings/arm/psci.yaml         | 104 ++++++
>  arch/arm64/boot/dts/qcom/msm8916.dtsi         |  57 +++-
>  drivers/base/power/domain.c                   |  38 +++
>  drivers/cpuidle/Makefile                      |   4 +-
>  drivers/cpuidle/cpuidle-psci-domain.c         | 308 ++++++++++++++++++
>  drivers/cpuidle/cpuidle-psci.c                | 161 +++++++--
>  drivers/cpuidle/cpuidle-psci.h                |  17 +
>  drivers/cpuidle/dt_idle_states.c              |   5 +-
>  drivers/firmware/psci/psci.c                  |  18 +-
>  drivers/of/base.c                             |  36 ++
>  include/linux/cpuhotplug.h                    |   1 +
>  include/linux/of.h                            |   8 +
>  include/linux/pm_domain.h                     |   8 +
>  include/linux/psci.h                          |   2 +
>  15 files changed, 747 insertions(+), 35 deletions(-)
>  create mode 100644 drivers/cpuidle/cpuidle-psci-domain.c
>  create mode 100644 drivers/cpuidle/cpuidle-psci.h
>
> --
> 2.17.1
>

This series is ready to go (unless you have some objections of
course), would you mind queuing it up?

Of course, patch15 can be left for arm-soc.

If you prefer a pull-request, just tell me.

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
