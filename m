Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DC09DBF8B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 10:11:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Te9W9NWDobdWFUt5eyE7VjuFft7q0fyU6qhAnJE72ns=; b=RfHcOisKGkE9uh
	BodsjczTEM4m2Ym7cJQgO20DtLEvgs7ezsZQG2y4boAgOBfOpagouySdkdRcPp7QHHW3xs7jaguoi
	kNzxQgOxanQC/9NFnIoKHacTqVhxMlysKUIuO597Ogz1Le4u7775zuYHx0CHjAq62F1rqeHTmb2iq
	ruvqjt0ZPQs4Ziu/Va7g9K/Dc0gNC7Sli04XyLt6qXWGj+BL83BvLUGBTWhHSZ9yu/2wOCm21UhGN
	XrHbmvHTYeUbi0Vs9J2qGDv/HtvLs870DJ2Hc3UQwbhSfd+aFJyDlqxB8x5IzafNDn0fQbGnZB45G
	Kr9sH1gDQL7G3jgKnuYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLNLj-0001Kt-DT; Fri, 18 Oct 2019 08:11:03 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLNLW-0001KN-Gs
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 08:10:52 +0000
Received: by mail-vs1-xe42.google.com with SMTP id m22so3440683vsl.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 01:10:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hXiuhqjxfmBX/sG2OrevgXIiWecPGwPXk32tr5vuY04=;
 b=VwYlda01p1jGwF9Bcpj6zOR1x8neb/OGEpTbgXNmPn+0y3Ixie8hgSCR3GFMOMUQkO
 V9k0dUGqfvEGDXD71rbpvBsM2ctpv9jf3FpwvpX0hX4bz6Ekp05C5xf1Q6IdUk4Nyj6K
 YjRQ6pYobbBbJLhsXDmp2c13cqewriR1/czWC50D/ab4buHLg0b+4UATUYxC6rn0X0jc
 I+7ajpjy4re9wt4olcthlE5/90vhGY1EXdh0oi0gDqIu+WMsuXgBpYpy+eCQtU55pAHO
 UJqq4/ahTtdJr4RKEOVoIaGPgKrSvPFXJemWwoqt7v49mmou6EbE9yLTmRrqW5D+9EQm
 kW7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hXiuhqjxfmBX/sG2OrevgXIiWecPGwPXk32tr5vuY04=;
 b=mKSABj4YQtHx7gTA9+Bd8xe6ei5BMl7YdXhgljZY9vHIH19GfnCU6tYKmCDy0b1Y4/
 2SdY92NLOIEV11rmLRYzazX4BV6muoIIh/RRJefxvW+cINwnu7EmTd9JQBk5Lvv3o1gS
 +9h+LZzMQLj3ZrsXwxiKbNt1MS6CQFJGoT7XNqn+ND8Ipfucq1HIUL1J2GJVZKTkPFe7
 R+CFO6qS6YIAwpJvJoSjpjk5K94yGhxbwPgWfIIQALX25efzrLncAAIoW2pgwCo0rc4l
 dVMPtNvr5QJlaUgIfYCqL/mLEUdK4j8omTip9nu61M4BKGNDQrhAkkehPZzGASKms3wH
 Z7OQ==
X-Gm-Message-State: APjAAAXFIKYQjDGACpzNQEM33uwbP2lsBqGdiTOC4N56gE30AyeqT/u3
 l9vr8uok4jc1xjk0Ic6M1fTV2qqPoPeUPuYgShjfGg==
X-Google-Smtp-Source: APXvYqyYp0Yvnrsx2yfirIPl8CPOyfzoTsCZB6XxogSt1B4qW14k/8FyrHl8CQQX7yj4RKVw1UPExyXKcs5k4Nz0dnk=
X-Received: by 2002:a67:cf05:: with SMTP id y5mr4906975vsl.34.1571386249087;
 Fri, 18 Oct 2019 01:10:49 -0700 (PDT)
MIME-Version: 1.0
References: <20191010113937.15962-1-ulf.hansson@linaro.org>
In-Reply-To: <20191010113937.15962-1-ulf.hansson@linaro.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 18 Oct 2019 10:10:13 +0200
Message-ID: <CAPDyKFqcq6z=y67hQ4Gk8PayQ6R=b8B3hSv374A+4u-zuvrFaQ@mail.gmail.com>
Subject: Re: [PATCH 00/13] cpuidle: psci: Support hierarchical CPU arrangement
To: Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_011050_594076_37A35CF0 
X-CRM114-Status: GOOD (  20.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kevin Hilman <khilman@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Linux PM <linux-pm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Lina Iyer <ilina@codeaurora.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 10 Oct 2019 at 13:40, Ulf Hansson <ulf.hansson@linaro.org> wrote:
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
>
> Lina Iyer (1):
>   cpuidle: dt: Support hierarchical CPU idle states
>
> Ulf Hansson (12):
>   cpuidle: psci: Fix potential access to unmapped memory
>   dt: psci: Update DT bindings to support hierarchical PSCI states
>   firmware: psci: Export functions to manage the OSI mode
>   of: base: Add of_get_cpu_state_node() to get idle states for a CPU
>     node
>   cpuidle: psci: Simplify OF parsing of CPU idle state nodes
>   cpuidle: psci: Support hierarchical CPU idle states
>   cpuidle: psci: Prepare to use OS initiated suspend mode via PM domains
>   cpuidle: psci: Add support for PM domains by using genpd
>   cpuidle: psci: Add a helper to attach a CPU to its PM domain
>   cpuidle: psci: Attach CPU devices to their PM domains
>   cpuidle: psci: Manage runtime PM in the idle path
>   arm64: dts: Convert to the hierarchical CPU topology layout for
>     MSM8916
>
>  .../devicetree/bindings/arm/psci.yaml         | 153 +++++++++
>  arch/arm64/boot/dts/qcom/msm8916.dtsi         |  57 +++-
>  drivers/cpuidle/Makefile                      |   4 +-
>  drivers/cpuidle/cpuidle-psci-domain.c         | 302 ++++++++++++++++++
>  drivers/cpuidle/cpuidle-psci.c                | 106 ++++--
>  drivers/cpuidle/cpuidle-psci.h                |  17 +
>  drivers/cpuidle/dt_idle_states.c              |   5 +-
>  drivers/firmware/psci/psci.c                  |  18 +-
>  drivers/of/base.c                             |  36 +++
>  include/linux/of.h                            |   8 +
>  include/linux/psci.h                          |   2 +
>  11 files changed, 673 insertions(+), 35 deletions(-)
>  create mode 100644 drivers/cpuidle/cpuidle-psci-domain.c
>  create mode 100644 drivers/cpuidle/cpuidle-psci.h
>
> --
> 2.17.1
>

Sudeep, Lorenzo,

Just wanted to give you a gentle ping about this series, especially
patch1 is kind of urgent.

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
