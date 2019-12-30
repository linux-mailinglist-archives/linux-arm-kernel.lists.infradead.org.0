Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C812412D134
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 15:50:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Q2M/cMWuid6zJThX/tVH2pAQbkk82vb4BSPtuo1gGw8=; b=Hz8
	ht0mic5iH0PRaWsHa/0OWzzIFRry7j24h2Tyg3ImaK2OSay5pxXRoFVl2ZthOcYjIOVdoVDMvnIUf
	SwzqU/qaQRnBZabV+PdlyO1NpgCtuP/ixxiUei9HGY7DG/o+Isjzn9XDCiZ2H9muG0GKvms9JJAw2
	xl8AQbsk91OsD/oXy+14ujvp7DhLf5LcFlLZVrm8HxtbTwASGBl5XM+LgIHxq4/w0uxlBTst3PIPv
	neQtSCmdhC59Mp/KQ6AR7H3voO88DgwvplJjsH4tMvT2djL1tCb1y4gf9SX7EEAVGGIlJ4L7mLFx5
	bnKWmLBnfjnllGYJ6KboCWH+bWnLu8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilwNA-0002vS-Uy; Mon, 30 Dec 2019 14:50:20 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilwHD-00059M-5f
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Dec 2019 14:44:13 +0000
Received: by mail-lf1-x143.google.com with SMTP id f15so25235673lfl.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Dec 2019 06:44:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=sFfjg/yNHvgMOq/dY0SQeqxIZJHWCbLuEKyo3araOLs=;
 b=NP/bXJFLt86IBRjeVMel3EBAEvK8F7rBxQbMHOohl4CF2QNfY9trFGs+OHOfSomsVD
 tLeLIs8K3KwGEDz9U/J51c6YOE4ZzyNB2l72m/Lr/Jh3NQx591Q2w+1yXvAsRlLdZjnl
 5QXW17WOv65zyS/p8YBEVHpjlPuvKRrHn7p3KfGlgGVBth9MPppuf35rsX4oZcwU5UKP
 Mi1MImgE0NmiNE3eBREBzc+u9lB1OrsjhTDw0RGHMDK3BqGMZlW8dkg1HcygZxDr+o7V
 Nr9PFC4MivKEkhX6ZlcQwQSykROcCnzGVRAgj7mguDzbuk9pLT2GSMWjQ3HvDPzEE/3Y
 YPWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=sFfjg/yNHvgMOq/dY0SQeqxIZJHWCbLuEKyo3araOLs=;
 b=SFn+Cuy/3qerU8D/RJouRmqJzH7yJBMzuKyq6M4QgBLpMJeyVW3/qCp0vrLTqiO6dF
 D8jHIqvN7+K0IGSkmZ395ybKheGovmoDHs4kMpAmVu9MtULt4Gb4bUiLyuv4Oh5wO6ax
 lEpAGIuSf1II8trD/XcaW+sY2XZOUcFd9xJfbs/ECg6X5muzhkAYESrWfA5S9xJu/0HJ
 UcA9RJOIH+g1861MIosjIDLBu71SRYV7eAZUmeW6xxOUZiXqlC9LnBOuy+iPdJrZPbXR
 D54sMZhGD3QhdKMhXhsWVPRUVUdViVcldqPZ2RDjiMA94/1ZxqTLOna51ohJyQLV4bKh
 vLlg==
X-Gm-Message-State: APjAAAUdl+eEoKFEM8vOgZlAo5pACvPWkFDu0HAhN1MrnC7Lw/t9VPyA
 0hdQwx0Ps73iHNFqvjo4oJbU2b5QWPI=
X-Google-Smtp-Source: APXvYqy4XidAIjxpwoiaO8eMYG36haXaoFRqDnDjYaeZWAaq8806N3mNSYv74D0HNG8dhm1F6TD5NQ==
X-Received: by 2002:a19:48c5:: with SMTP id
 v188mr38314593lfa.100.1577717048501; 
 Mon, 30 Dec 2019 06:44:08 -0800 (PST)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id a21sm18744931lfg.44.2019.12.30.06.44.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Dec 2019 06:44:07 -0800 (PST)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Rob Herring <robh+dt@kernel.org>, linux-pm@vger.kernel.org
Subject: [PATCH v5 00/15] cpuidle: psci: Support hierarchical CPU arrangement
Date: Mon, 30 Dec 2019 15:43:47 +0100
Message-Id: <20191230144402.30195-1-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_064411_361806_A4056401 
X-CRM114-Status: GOOD (  18.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Changes in v5:
	- Remove PM domains in the error path, when failing to enable OSI.
	- Folded in a patch that adds a genpd OF helper to remove subdomains.
	- Added reviewed-by tags.

Changes in v4:
	- Move the check for OSI support from psci_dt_attach_cpu() to the
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

Ulf Hansson (13):
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
  PM / Domains: Introduce a genpd OF helper that removes a subdomain
  cpuidle: psci: Add support for PM domains by using genpd
  arm64: dts: Convert to the hierarchical CPU topology layout for
    MSM8916

 .../devicetree/bindings/arm/cpus.yaml         |  15 +
 .../devicetree/bindings/arm/psci.yaml         | 104 ++++++
 arch/arm64/boot/dts/qcom/msm8916.dtsi         |  57 +++-
 drivers/base/power/domain.c                   |  38 +++
 drivers/cpuidle/Makefile                      |   4 +-
 drivers/cpuidle/cpuidle-psci-domain.c         | 308 ++++++++++++++++++
 drivers/cpuidle/cpuidle-psci.c                | 161 +++++++--
 drivers/cpuidle/cpuidle-psci.h                |  17 +
 drivers/cpuidle/dt_idle_states.c              |   5 +-
 drivers/firmware/psci/psci.c                  |  18 +-
 drivers/of/base.c                             |  36 ++
 include/linux/cpuhotplug.h                    |   1 +
 include/linux/of.h                            |   8 +
 include/linux/pm_domain.h                     |   8 +
 include/linux/psci.h                          |   2 +
 15 files changed, 747 insertions(+), 35 deletions(-)
 create mode 100644 drivers/cpuidle/cpuidle-psci-domain.c
 create mode 100644 drivers/cpuidle/cpuidle-psci.h

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
