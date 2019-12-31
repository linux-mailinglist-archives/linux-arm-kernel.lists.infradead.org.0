Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 744BE12D811
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Dec 2019 11:43:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BV00VQIr4z9ZngOk/JnsvQSwhEAO8cXyaT0UoEscFIo=; b=gnWQoa606hovLo
	4JDED31geybrEOBLEKx9Nk/f49NdFeQuWlQ7H8QnvRILksRAclpu3K3qYRQKZyyN0J/KcXE26LTSY
	fQYGX+4e1/n46hru6CB6ukE292VSkLS8NCW0iJx3KbePmZyT6V3IAaFbRlp8G2ay+dSErBFESoaBg
	X4LRS7CIKV6U8PeXK971i6gkUozdWHpLGeWX177fbrFsKfvfAq4OnXXg3t1ukSNO6h2cg1F7ko1HN
	Qb9kX7HUfqrnEX+vJfwKHDiCZ6UTmJHVWSIwL+LwprMLY33EMSB4KYt7/2A3hB9uuXdBjuy8bdVCk
	8sYXIjnvcst+ujVpYsKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imF06-0000Hk-JE; Tue, 31 Dec 2019 10:43:46 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imEzx-0000HB-NM
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Dec 2019 10:43:39 +0000
Received: by mail-ot1-f68.google.com with SMTP id b18so28073282otp.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 31 Dec 2019 02:43:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=f9RuIajEDlg1ejskjnNTp0LO3cBbcL76yHqkzb9nkhs=;
 b=ub0Jamho2rZSfSTHfbALHfHq6HrWL+KYN4An/CVuN28vi0rJj0HHpCL8VQSqLhFHHh
 xjlAJt6q2kW/wxg+RiXvlQB5Iiy2xpy63VfxcZASM6ddYWSx6N03RadRKUGVOVpL+x5N
 TiVxVM1DWn/xw/J+76yypJXnc06MIuiPFOwbf4cghM6N0bV9Sc2kyL9pBfoeNdPgALSS
 HYniYdj+pFIzgELieUowNn1NwV/8CEoPOVckcuLuV1XPLFyn1AvlBvAbZO2RO4hvr4Ro
 Actxu101uOjsc15RLXzNAdjRZEPW9fr91FhzgE3/O81GTnQuXTIyGG1ODB2UOzk2LFwi
 MJPw==
X-Gm-Message-State: APjAAAWjXPUplYbbITrwYidgAl+ZtPxPwEUvMngAVnfy5mpEtP6HNeuE
 xGHrfsuseboJ9YV4CDTZXAX3syLZEa/UBs2z2rM=
X-Google-Smtp-Source: APXvYqxjCCDp3TQDPlyzZoTf6zVTaHAL3XMA7buUwxN3t7uiee8Hat/CkGqsTzvBTRieAzNmM4eMtQnJlz9XUMna43I=
X-Received: by 2002:a05:6830:1e67:: with SMTP id
 m7mr76473319otr.262.1577789016310; 
 Tue, 31 Dec 2019 02:43:36 -0800 (PST)
MIME-Version: 1.0
References: <20191230144402.30195-1-ulf.hansson@linaro.org>
 <CAPDyKFrVQO-WFOfX_EKVTUYnesGj93GQMKxFNpbMt6s3xv_qBw@mail.gmail.com>
In-Reply-To: <CAPDyKFrVQO-WFOfX_EKVTUYnesGj93GQMKxFNpbMt6s3xv_qBw@mail.gmail.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Tue, 31 Dec 2019 11:43:25 +0100
Message-ID: <CAJZ5v0gSY_Zg+sbBEfTaeBCiOf_L6JP4_-4tdpeFU0iCGJu3Nw@mail.gmail.com>
Subject: Re: [PATCH v5 00/15] cpuidle: psci: Support hierarchical CPU
 arrangement
To: Ulf Hansson <ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_024337_761415_E9C2BDBC 
X-CRM114-Status: GOOD (  26.61  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rjwysocki[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Andy Gross <agross@kernel.org>,
 Lina Iyer <ilina@codeaurora.org>, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kevin Hilman <khilman@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 31, 2019 at 11:38 AM Ulf Hansson <ulf.hansson@linaro.org> wrote:
>
> Rafael,
>
> On Mon, 30 Dec 2019 at 15:44, Ulf Hansson <ulf.hansson@linaro.org> wrote:
> >
> > Changes in v5:
> >         - Remove PM domains in the error path, when failing to enable OSI.
> >         - Folded in a patch that adds a genpd OF helper to remove subdomains.
> >         - Added reviewed-by tags.
> >
> > Changes in v4:
> >         - Move the check for OSI support from psci_dt_attach_cpu() to the
> >         caller's side of it.
> >         - Add comment in the code about using the deepest idle state as the
> >         triggering point for the domain state selection.
> >         - Folded in a patch to enable support for CPU hotplug.
> >
> > Changes in v3:
> >         - Take one step further to completely avoid executing any OSI specific
> >         code from the ->enter() callback, while operating in the default PSCI
> >         Platform Coordinated mode.
> >         - Update example for the PSCI DT bindings to make it compile with
> >         "make dt_binding_check"
> >
> > Changes in v2:
> >         - Avoid to affect the non-OSI path with specific changes for OSI. This
> >         forced me to re-order the series and a caused more or less minor changes
> >         to most of the patches.
> >         - Updated the DT bindings for PSCI to clarify and to include the "psci"
> >         name of the PM domain to attach to.
> >         - Replaced patch1 with another patch from Sudeep, solving the same
> >         problem, but in a different way.
> >
> > This series enables initial support for hierarchical CPU arrangement, managed
> > by PSCI and its corresponding cpuidle driver. It's based on using the generic
> > PM domain (genpd), which nowadays also supports devices belonging to CPUs.
> >
> > The last DTS patch enables the hierarchical topology to be used for the Qcom
> > 410c Dragonboard, which supports the PSCI OS-initiated mode.
> >
> > More detailed background can be found from previous submissions [1].
> >
> > The series is also available at:
> > git.linaro.org/people/ulf.hansson/linux-pm.git next
> >
> > Kind regards
> > Ulf Hansson
> >
> > [1]
> > https://lwn.net/Articles/788306/
> >
> > Lina Iyer (1):
> >   cpuidle: dt: Support hierarchical CPU idle states
> >
> > Sudeep Holla (1):
> >   cpuidle: psci: Align psci_power_state count with idle state count
> >
> > Ulf Hansson (13):
> >   dt: psci: Update DT bindings to support hierarchical PSCI states
> >   firmware: psci: Export functions to manage the OSI mode
> >   of: base: Add of_get_cpu_state_node() to get idle states for a CPU
> >     node
> >   cpuidle: psci: Simplify OF parsing of CPU idle state nodes
> >   cpuidle: psci: Support hierarchical CPU idle states
> >   cpuidle: psci: Add a helper to attach a CPU to its PM domain
> >   cpuidle: psci: Attach CPU devices to their PM domains
> >   cpuidle: psci: Prepare to use OS initiated suspend mode via PM domains
> >   cpuidle: psci: Manage runtime PM in the idle path
> >   cpuidle: psci: Support CPU hotplug for the hierarchical model
> >   PM / Domains: Introduce a genpd OF helper that removes a subdomain
> >   cpuidle: psci: Add support for PM domains by using genpd
> >   arm64: dts: Convert to the hierarchical CPU topology layout for
> >     MSM8916
> >
> >  .../devicetree/bindings/arm/cpus.yaml         |  15 +
> >  .../devicetree/bindings/arm/psci.yaml         | 104 ++++++
> >  arch/arm64/boot/dts/qcom/msm8916.dtsi         |  57 +++-
> >  drivers/base/power/domain.c                   |  38 +++
> >  drivers/cpuidle/Makefile                      |   4 +-
> >  drivers/cpuidle/cpuidle-psci-domain.c         | 308 ++++++++++++++++++
> >  drivers/cpuidle/cpuidle-psci.c                | 161 +++++++--
> >  drivers/cpuidle/cpuidle-psci.h                |  17 +
> >  drivers/cpuidle/dt_idle_states.c              |   5 +-
> >  drivers/firmware/psci/psci.c                  |  18 +-
> >  drivers/of/base.c                             |  36 ++
> >  include/linux/cpuhotplug.h                    |   1 +
> >  include/linux/of.h                            |   8 +
> >  include/linux/pm_domain.h                     |   8 +
> >  include/linux/psci.h                          |   2 +
> >  15 files changed, 747 insertions(+), 35 deletions(-)
> >  create mode 100644 drivers/cpuidle/cpuidle-psci-domain.c
> >  create mode 100644 drivers/cpuidle/cpuidle-psci.h
> >
> > --
> > 2.17.1
> >
>
> This series is ready to go (unless you have some objections of
> course), would you mind queuing it up?
>
> Of course, patch15 can be left for arm-soc.
>
> If you prefer a pull-request, just tell me.

So I would prefer arm-soc to take the whole lot if that's not a problem.

Feel free to add ACKs from me to the patches for this purpose if that helps

Thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
