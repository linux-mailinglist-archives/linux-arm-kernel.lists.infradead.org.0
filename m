Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2B69D2845
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 13:42:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7krDBsSI7nRK9mnkokTj07qjilHlHj/bws6kkY3AlJk=; b=QDISuHMUhZX4N+E8i1/zAN+n1m
	0lid3qz5PS/AddAQ7F8cIugd330FEy/oR0i6vAZj+M7hn9qoNGcB18opTHsa8cdWPWqmvGxdR5s2C
	tE7scaTDiRYMrd+6MPDJxQwhJ6hEkPzoF3mg0EpTHW7ewy1WEjX8uFRgP4UaPMDG4bWoyWEdgyVR4
	m6qsYS5usD3ogaZtw8VUjMhrzw//hZATTTZbiRXLyZOsk834lP6FsbEG2pYouQLhCDstDmN1NiQ6T
	0ZnyFNW2d3VA3PWNXBzIeP0CBhzhBIHO4xN/tqTId38b/XOgUVRjqyjOXRAVPd+6YT9qbTd9WuEuZ
	61fHwIcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIWpu-0004cT-1o; Thu, 10 Oct 2019 11:42:26 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIWns-0002pt-2Y
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 11:40:22 +0000
Received: by mail-lf1-x142.google.com with SMTP id r134so4109773lff.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 10 Oct 2019 04:40:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=p5qrlgEHHz72OqawbaM4oNKQbRiSCqvlNCrVec5FI84=;
 b=fpTsBvZBXrvTN9zR+IrMwIGukuhZz6A+ldBwdcZi85by9XgVOP/bWsZrqXdciNslhQ
 hPSQ87yb+x0ew8Zra1SvLTZ/P48Hr3FZUtR+nc3Bf+KjolueaFc8mzWO7hCTf5JTZ53J
 GY5IkZKAU60fnj9UwZMeKc4KEFiIVOqUHjv08fBOzAHTlLevorIgxgahat41rZdmOHja
 NUdOFzdcgrXCmknjYH2vORo7/nhAmDa0V6rUyNJERU3OmJlYnNSJONJXOFyK9xkZzVhT
 BZKrXoMMpkDffL35v7BHgNLabiW8/lWryfjLPNpRXqpI8THMQwTtCoxQ3KIMmGeK8+Ak
 oyhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=p5qrlgEHHz72OqawbaM4oNKQbRiSCqvlNCrVec5FI84=;
 b=UwRFYtTJCjs5zH2wsSVtAfbndYBvLfNZxK923Yq5Bvuv5o8Sc0W8zmVav0gp7SX7Ot
 /PrVvnGQxGdqsR/Elvvo6e9B694QuInRPa6QCRyEc0+EDAjFuAObljC2hzBKQVIJHKrS
 C1LfAMaU7e+vAjiUoZceCO3H0ZS+Hs2Voaht/bgt0l06N1LARCPniyZsRZQJ52QfEs24
 UAnBQbf3cF10EtJcRu8NP1gAWKK2jeEgJWR8NGCjyRhklKf6EH2Q2SgehOR+EiPDYYfk
 2SxvLPN9leZdNynNSUNbBYWk+HAmKvcI7MosIbBDHAJudeoAZU383BF92mwsvfZ6jhPR
 9vyQ==
X-Gm-Message-State: APjAAAWyPb9K+I1udZVck9MXuhuwVZFaDIVPGaQCiZQYQmTNoRW2uc2a
 trzo25snNNbBJqXrLO/s+mHJ2Q==
X-Google-Smtp-Source: APXvYqwurmeJAb45mxPdDwDdgYZyKg506CrXtVc4YhleXcNpg+js8O9MZD5A1KTQyHAY5EPoYkaFnA==
X-Received: by 2002:a19:ed14:: with SMTP id y20mr5807432lfy.4.1570707618117;
 Thu, 10 Oct 2019 04:40:18 -0700 (PDT)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id p3sm1168937ljn.78.2019.10.10.04.40.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Oct 2019 04:40:17 -0700 (PDT)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Mark Rutland <mark.rutland@arm.com>, Lina Iyer <ilina@codeaurora.org>,
 linux-pm@vger.kernel.org
Subject: [PATCH 08/13] cpuidle: psci: Prepare to use OS initiated suspend mode
 via PM domains
Date: Thu, 10 Oct 2019 13:39:32 +0200
Message-Id: <20191010113937.15962-9-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191010113937.15962-1-ulf.hansson@linaro.org>
References: <20191010113937.15962-1-ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_044020_167517_952E1E73 
X-CRM114-Status: GOOD (  18.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Lina Iyer <lina.iyer@linaro.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The per CPU variable psci_power_state, contains an array of fixed values,
which reflects the corresponding arm,psci-suspend-param parsed from DT, for
each of the available CPU idle states.

This isn't sufficient when using the hierarchical CPU topology in DT, in
combination with having PSCI OS initiated (OSI) mode enabled. More
precisely, in OSI mode, Linux is responsible of telling the PSCI FW what
idle state the cluster (a group of CPUs) should enter, while in PSCI
Platform Coordinated (PC) mode, each CPU independently votes for an idle
state of the cluster.

For this reason, introduce a per CPU variable called domain_state and
implement two helper functions to read/write its value. Then let the
domain_state take precedence over the regular selected state, when idling
the CPU in psci_enter_idle_state().

This allows subsequent patches that implements support for PM domains for
cpuidle-psci, to write the selected idle state parameter for the cluster
into the domain_state variable. Furthermore, let's share the needed
functions in a header file, to enable the support for PM domains to be
implemented in a separate c-file.

Co-developed-by: Lina Iyer <lina.iyer@linaro.org>
Signed-off-by: Lina Iyer <lina.iyer@linaro.org>
Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
---
 drivers/cpuidle/cpuidle-psci.c | 31 ++++++++++++++++++++++++++++---
 drivers/cpuidle/cpuidle-psci.h | 11 +++++++++++
 2 files changed, 39 insertions(+), 3 deletions(-)
 create mode 100644 drivers/cpuidle/cpuidle-psci.h

diff --git a/drivers/cpuidle/cpuidle-psci.c b/drivers/cpuidle/cpuidle-psci.c
index 5c30f23a8a7b..a16467daf99d 100644
--- a/drivers/cpuidle/cpuidle-psci.c
+++ b/drivers/cpuidle/cpuidle-psci.c
@@ -20,17 +20,42 @@
 
 #include <asm/cpuidle.h>
 
+#include "cpuidle-psci.h"
 #include "dt_idle_states.h"
 
 static DEFINE_PER_CPU_READ_MOSTLY(u32 *, psci_power_state);
+static DEFINE_PER_CPU(u32, domain_state);
+
+void psci_set_domain_state(u32 state)
+{
+	__this_cpu_write(domain_state, state);
+}
+
+static inline u32 psci_get_domain_state(void)
+{
+	return __this_cpu_read(domain_state);
+}
+
+static int __psci_enter_idle_state(int idx, u32 state)
+{
+	return CPU_PM_CPU_IDLE_ENTER_PARAM(psci_cpu_suspend_enter, idx, state);
+}
 
 static int psci_enter_idle_state(struct cpuidle_device *dev,
 				struct cpuidle_driver *drv, int idx)
 {
+	int ret;
 	u32 *states = __this_cpu_read(psci_power_state);
-	u32 state = idx ? states[idx - 1] : 0;
+	u32 state = psci_get_domain_state();
 
-	return CPU_PM_CPU_IDLE_ENTER_PARAM(psci_cpu_suspend_enter, idx, state);
+	if (!state && idx)
+		state = states[idx - 1];
+
+	ret = __psci_enter_idle_state(idx, state);
+
+	/* Clear the domain state to start fresh when back from idle. */
+	psci_set_domain_state(0);
+	return ret;
 }
 
 static struct cpuidle_driver psci_idle_driver __initdata = {
@@ -56,7 +81,7 @@ static const struct of_device_id psci_idle_state_match[] __initconst = {
 	{ },
 };
 
-static int __init psci_dt_parse_state_node(struct device_node *np, u32 *state)
+int __init psci_dt_parse_state_node(struct device_node *np, u32 *state)
 {
 	int err = of_property_read_u32(np, "arm,psci-suspend-param", state);
 
diff --git a/drivers/cpuidle/cpuidle-psci.h b/drivers/cpuidle/cpuidle-psci.h
new file mode 100644
index 000000000000..e593de1784c3
--- /dev/null
+++ b/drivers/cpuidle/cpuidle-psci.h
@@ -0,0 +1,11 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+#ifndef __CPUIDLE_PSCI_H
+#define __CPUIDLE_PSCI_H
+
+struct device_node;
+
+void psci_set_domain_state(u32 state);
+int __init psci_dt_parse_state_node(struct device_node *np, u32 *state);
+
+#endif /* __CPUIDLE_PSCI_H */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
