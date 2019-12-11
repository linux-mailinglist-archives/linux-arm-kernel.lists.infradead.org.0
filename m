Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFE7D11B453
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 16:47:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=rU/vLUj2lVD31vW/54TJp39EjPROE5ExsM1eFxNsoMw=; b=Rpr
	ei0N4cTqTQtjZ3gxFSI9UBnG+ejm9cNGT2Dota2HOav+uuyhY0i52ziE/L5VvxBmtvEHfpCMRuteV
	Te41rblcT4izhCvv+jFMMfxSZKuFofcnD1ggQcN9qb77unObt2Aizn4BT3IR+BYKonPqr8KscaNaG
	yYFw90IGlsvTVCzUthX9D+sBFOVJo8J2MElIuuj0/WTM6GVIAhebDa33VCjfCNkbzSG7/B5twPfgR
	sLnQc/ydM+vOusPX4IF5jgcfpgTtijrID8vvTdwJJCBw49/tHQF41nh1d4hfuw6YuyAzE603J+sSM
	n8X22ziG6KL+b8hjpA9klFUKpOmL8kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if4Cs-0002hO-UR; Wed, 11 Dec 2019 15:47:18 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if49Z-0006r8-3y
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 15:43:56 +0000
Received: by mail-lf1-x143.google.com with SMTP id 9so17052128lfq.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Dec 2019 07:43:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=QezpLoEmLm+pWssoQww7VDpy8yHjq0vuBcOFSjXa5GE=;
 b=P8O5lEVpe+ZO3x1D0AMi3L5afQw+fv5PZ6YUxcJBFCYq4SO3Q6S7ti8rr+zHrJvJ1q
 Sl3evW7V2s3EvpGsOvz1ZkV2MR7/k8607+xpR0ufo1Bs2yR4gYTd4nhPbtJ0nRbPahiy
 e6eoQynMs3JidBalYwxrDP8JjjzH7iY4tSG7o4DGPdqNQXtT15aCizsyoUc13nUFtEkA
 4t6ihL9CUjk03IBL5J9BBw9x5ai/uGRRpDQXVG9q/IoFfOU50BhrZ6viK+cu2QoYn+On
 iUfO/DmkQjdkPeF2LDReFCiIznyV3djwRi8DxddIyczo5drNeT5tU0UNtVl2Mjpr/BFa
 5y7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=QezpLoEmLm+pWssoQww7VDpy8yHjq0vuBcOFSjXa5GE=;
 b=tT2ju49onwZmx1gM/ai34wRhm5qRZUy0X3h6Vhpouf8pTniT2vV7tHD8vUjZIKpdXz
 1164Jq80mYP3ZMwPk9p7aWGwhJ/NQpsBXhoxflxRkaAst2NKgmn01niZqAWyefgGr1Pz
 aUsf6GD5BzJ4S2LwViyuHg/C+cm4CcQf3/mPdXRyrD8UpBYXFtU0hzTmlZl7xNTmaiTn
 x8LWbQxPKG58Aq50gIVS6uevAcFZUUjd6tnxeCcPHNPsiRpPY91u4dDuUCZXMy+3TThg
 YksKKrQJGYtSBHF+zU0/boamYiO2N/ZTuSRrb6dHzuALLdNGnkYoe35/X8QqQlRWruBs
 r85g==
X-Gm-Message-State: APjAAAUDrbOYmg31HU2fiX7tbBy7XJn2X8UzdmIDI44aVYQXBps7nlOi
 Z0cjdqNAx+bKwl8bx4MTLd99hw==
X-Google-Smtp-Source: APXvYqw2OODZNzrYtdX2PqTZvRKg+ydXv1DAdVmcIzLeDqTTiGCyNqpsrjIdToasKLYVFPqVfMmnsg==
X-Received: by 2002:ac2:498e:: with SMTP id f14mr2615140lfl.172.1576079030830; 
 Wed, 11 Dec 2019 07:43:50 -0800 (PST)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id b14sm1389608lff.68.2019.12.11.07.43.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Dec 2019 07:43:50 -0800 (PST)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Rob Herring <robh+dt@kernel.org>, linux-pm@vger.kernel.org
Subject: [PATCH v4 00/14] cpuidle: psci: Support hierarchical CPU arrangement
Date: Wed, 11 Dec 2019 16:43:29 +0100
Message-Id: <20191211154343.29765-1-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_074353_435208_0BCF1E40 
X-CRM114-Status: GOOD (  16.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Kevin Hilman <khilman@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 linux-arm-msm@vger.kernel.org, Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Lina Iyer <ilina@codeaurora.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Andy Gross <agross@kernel.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Changes in v4:
	- Mover the check for OSI support from psci_dt_attach_cpu() to the
	caller's side of it.
	- Add comment in the code about using the deepest idle state as the
	triggering point for the domain state selection.
	- Folded in a patch to enable support for CPU hotplug.

Changes in v3:
	- Take one step further to completely avoid executing any OSI specific
	code from the ->enter() callback, while operating in the default PSCI
	Platform Coordinated mode.
	- Update example for the PSCI DT bindings to make it compile with
	"make dt_binding_check"

Changes in v2:
	- Avoid to affect the non-OSI path with specific changes for OSI. This
	forced me to re-order the series and a caused more or less minor changes
	to most of the patches.
	- Updated the DT bindings for PSCI to clarify and to include the "psci"
	name of the PM domain to attach to.
	- Replaced patch1 with another patch from Sudeep, solving the same
	problem, but in a different way.

This series enables initial support for hierarchical CPU arrangement, managed
by PSCI and its corresponding cpuidle driver. It's based on using the generic
PM domain (genpd), which nowadays also supports devices belonging to CPUs.

The last DTS patch enables the hierarchical topology to be used for the Qcom
410c Dragonboard, which supports the PSCI OS-initiated mode.

More detailed background can be found from previous submissions [1].

The series is also available at:
git.linaro.org/people/ulf.hansson/linux-pm.git next

Kind regards
Ulf Hansson

[1]
https://lwn.net/Articles/788306/


Lina Iyer (1):
  cpuidle: dt: Support hierarchical CPU idle states

Sudeep Holla (1):
  cpuidle: psci: Align psci_power_state count with idle state count

Ulf Hansson (12):
  dt: psci: Update DT bindings to support hierarchical PSCI states
  firmware: psci: Export functions to manage the OSI mode
  of: base: Add of_get_cpu_state_node() to get idle states for a CPU
    node
  cpuidle: psci: Simplify OF parsing of CPU idle state nodes
  cpuidle: psci: Support hierarchical CPU idle states
  cpuidle: psci: Add a helper to attach a CPU to its PM domain
  cpuidle: psci: Attach CPU devices to their PM domains
  cpuidle: psci: Prepare to use OS initiated suspend mode via PM domains
  cpuidle: psci: Manage runtime PM in the idle path
  cpuidle: psci: Support CPU hotplug for the hierarchical model
  cpuidle: psci: Add support for PM domains by using genpd
  arm64: dts: Convert to the hierarchical CPU topology layout for
    MSM8916

 .../devicetree/bindings/arm/cpus.yaml         |  15 +
 .../devicetree/bindings/arm/psci.yaml         | 104 ++++++
 arch/arm64/boot/dts/qcom/msm8916.dtsi         |  57 +++-
 drivers/cpuidle/Makefile                      |   4 +-
 drivers/cpuidle/cpuidle-psci-domain.c         | 298 ++++++++++++++++++
 drivers/cpuidle/cpuidle-psci.c                | 161 ++++++++--
 drivers/cpuidle/cpuidle-psci.h                |  17 +
 drivers/cpuidle/dt_idle_states.c              |   5 +-
 drivers/firmware/psci/psci.c                  |  18 +-
 drivers/of/base.c                             |  36 +++
 include/linux/cpuhotplug.h                    |   1 +
 include/linux/of.h                            |   8 +
 include/linux/psci.h                          |   2 +
 13 files changed, 691 insertions(+), 35 deletions(-)
 create mode 100644 drivers/cpuidle/cpuidle-psci-domain.c
 create mode 100644 drivers/cpuidle/cpuidle-psci.h

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
