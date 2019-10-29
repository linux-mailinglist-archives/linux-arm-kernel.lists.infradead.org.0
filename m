Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ED4BE8D2F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 17:46:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=UfEmNa8CFJgv0s4D/eovE6xWH05aenshfj+A46F/u4E=; b=cjX
	i8mAhxIJFQvensmLMmhFjkRH+04aDqlOKefMjKhXym99Zs0WSPxV6ueDzd8DJEfZOakMWBI+cN9YW
	147cEaCX5JTHyhjnyoD63kmrmkJFV/XdT/RhWced/+aR8FZgCtlPT2Bq7PkfKq5bG1CmStxxguEpo
	CqQkL3OU/EFpcU92H5Q+T9LDwWYK2EiNYNbSYDxP4R+nMZdnINMuxs/914ER6b5lthTfuTItedjbI
	lguikJWTMa2VPjVY+Ufr0v5c5Sp0bmC3pFTyJEiMQBiWXE4zS87YdO74knRe03pGcr5oCYZUxCiH6
	qm/N56jJfUChOz87ixp5Q/4HnlFOOuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPUdh-00055u-DL; Tue, 29 Oct 2019 16:46:37 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPUbx-0002oN-5l
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 16:44:54 +0000
Received: by mail-lj1-x242.google.com with SMTP id a21so16012878ljh.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 09:44:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=Unqe7dpPmCPH71nTnrspbuD4zxyZhoMYgNbcCppl/RY=;
 b=Pdyqe8cpM612bo95zzr1d4VSW7A4kUkPwaBnUwtvdWBMcue4QEMMHDDVfx3lwZRejk
 0xM4R+ikkhWn2SKT/h7IblcBuBRanHw7Z2kT+tiGBS16gPpIg5R5X0u+YTfIUAamtXlV
 pwzGwqvSiQ6z5kOTfKI6lVoCe9YTEqfKmqsWtFFh01aIQpjSevuliSHcUimYdhIOk1vZ
 iFVq8cu11b8ylN/L0a39H8fTKvRonbLP9xAFJcZQin9BypNXTpXtClilLpXUhI/FirBw
 VVIXLPky36zIloMScavckjBEoBJ75A9+4DZTZcPE/DQKm+uNfTdHJKlCg0/9klFkkxne
 A87A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Unqe7dpPmCPH71nTnrspbuD4zxyZhoMYgNbcCppl/RY=;
 b=gfp8qUF4i/l2xgKgL7IsDSio3O3DiFfdRJpbHHkm1VoofBZAbdnDAYOFYqtCIUAWXK
 lQWsih1/cRAG+VX72GWKN84hdQTl2PvbvvnUL2jbnFPGkbDlZqXLL/amlaIp/AmJX+5B
 dLRpElUzcPSLHRJP8HR6oz619d9gxbSx8EkNhl7RGeubiniMBHAxg5h0U9Z2ZfGCQk0G
 qugUbcWPt7RHX729M89c+abM4LRzvm0SJR86glvz7OmulLQ27AEH1qJDvnWcddCmTcXq
 n+nIhS2kI0ofBOZ+8E+zdCTMuQuGXxoj8+iFhoZFFQU48JiT9kqeoadFBOy65HHhgYwm
 vIsQ==
X-Gm-Message-State: APjAAAVfTdvc+LHzIoewo4Yq3N40Z7r/SaEKgRjqEqzVYeSBWFK3cNKj
 cGIYjC/0n/ucRQA8+nQYHhCPkA==
X-Google-Smtp-Source: APXvYqwBxgSodXhX9B5DgAsU63uCOB1U9YSsUdnkSaeJF7HoObW4xTS+gVrZ4U3iqF/OOCr575N/jg==
X-Received: by 2002:a2e:a0c9:: with SMTP id f9mr3427023ljm.77.1572367483719;
 Tue, 29 Oct 2019 09:44:43 -0700 (PDT)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id f28sm2048161lfh.35.2019.10.29.09.44.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 09:44:43 -0700 (PDT)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Mark Rutland <mark.rutland@arm.com>, Lina Iyer <ilina@codeaurora.org>,
 linux-pm@vger.kernel.org
Subject: [PATCH v2 00/13] cpuidle: psci: Support hierarchical CPU arrangement
Date: Tue, 29 Oct 2019 17:44:25 +0100
Message-Id: <20191029164438.17012-1-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_094449_253350_2C0D391E 
X-CRM114-Status: GOOD (  18.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Kevin Hilman <khilman@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, linux-arm-msm@vger.kernel.org,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Changes in v2:
	- Avoid to affect the non-OSI path with specific changes for OSI. This
	forced me to re-order the series and a caused more or less minor changes
	to most of the patches.
	- Updated the DT bindings for PSCI to clarify and to include the "psci"
	name of the PM domain to attach to.
	- Replaced patch1 with another patch from Sudeep, solving the same
	problem, but in a different way.

This is the same coverletter as in v1:

This series enables initial support for hierarchical CPU arrangement, managed
by PSCI and its corresponding cpuidle driver. It's based on using the generic
PM domain (genpd), which nowadays also supports devices belonging to CPUs.

The last DTS patch enables the hierarchical topology to be used for the Qcom
410c Dragonboard, which supports the PSCI OS-initiated mode.

Do note, most of the code in this series have been posted earlier, but from the
latest version being reviewed, we agreed on that it was better to re-work the
PSCI backend driver as a first step, simply to get a clean interface towards the
cpuidle driver.

Summary of the main-changes since the last submission [1]:

 - Moved implementation from the psci FW dricer into cpuidle-psci.

 - Re-requesting review of the DT bindings, as we have moved to yaml. No
   changes as such, but tried to clarify a few things in the text.

 - Drop the patch enabling support for CPU hotplug, postponing that to the next
   step.

 - Respect the hierarchical topology in DT only when OSI mode is supported.
   This is to start simple and we can always extend the support on top.

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

Ulf Hansson (11):
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
  cpuidle: psci: Add support for PM domains by using genpd
  arm64: dts: Convert to the hierarchical CPU topology layout for
    MSM8916

 .../devicetree/bindings/arm/cpus.yaml         |  15 +
 .../devicetree/bindings/arm/psci.yaml         | 102 ++++++
 arch/arm64/boot/dts/qcom/msm8916.dtsi         |  57 +++-
 drivers/cpuidle/Makefile                      |   4 +-
 drivers/cpuidle/cpuidle-psci-domain.c         | 302 ++++++++++++++++++
 drivers/cpuidle/cpuidle-psci.c                | 123 +++++--
 drivers/cpuidle/cpuidle-psci.h                |  17 +
 drivers/cpuidle/dt_idle_states.c              |   5 +-
 drivers/firmware/psci/psci.c                  |  18 +-
 drivers/of/base.c                             |  36 +++
 include/linux/of.h                            |   8 +
 include/linux/psci.h                          |   2 +
 12 files changed, 654 insertions(+), 35 deletions(-)
 create mode 100644 drivers/cpuidle/cpuidle-psci-domain.c
 create mode 100644 drivers/cpuidle/cpuidle-psci.h

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
