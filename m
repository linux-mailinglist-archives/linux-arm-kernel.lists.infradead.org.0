Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E959112D133
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 15:50:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=orb2Jj087IY9thKtcE/D0B38JzXq+7WQIlh0d9GTmcA=; b=ck9VrW3wbY7zdzTALp61c98PXF
	raxiV/jfjmmaB+gSRSdL0sKCF93rWi+s7brQCHVKO2C2x5GnSFoscI3YFSXj7e6hhLL3A5I8RdIpA
	yuBFLUIe7sVTHTv4buGVt96oql2C/GYhSIPZLmCkrn5wbj+pPfiu9l8wZFcUp9xQsN8oicObPV+tI
	kcvrbkj7Bur5pkkGoipc5BeGKJLU3B2SPIHARKUI0DBfBwBDX+B6yeyLqiKha43rDwHjTqUzO1FRy
	y7+NoHDTYaF6nNWUpi+2hx+ZSErJkMoeq4qIDSUhvvPPiS/ktGAaigTfl35j6i38rfBgx6tn0JEyy
	mxFwkthw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilwMn-0002ff-NA; Mon, 30 Dec 2019 14:49:57 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilwHE-0005B4-33
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Dec 2019 14:44:16 +0000
Received: by mail-lj1-x244.google.com with SMTP id y6so25494262lji.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Dec 2019 06:44:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=yJwsi3DMV/pwzB8sWAmHjBjjwOzOWtOVx10q5OKc/Qg=;
 b=VLgbT14aKbIweXjePyokMcXGIZ6qb6kWlnLdbU2O9QNBikijGUeMsDJ5BerDOGJVyP
 hT/gOq3EcoVXwl4kpM8e3733iP90YILT3RaXDUM2AuU9KGQt4qYTgy6f6jabQM8o6m0z
 f2Dw+FKT/VwRq6dj/Q+Mb4OPmk5DBWeU3Am8tGUkQkau5kdcLudikh879SjNbyZlbktm
 lKJi0S1dkLtuKh4sR51iIzOPusJcnwu9cu+P1Mbyr5xhvb7FvMb2wY+1GVhDzNKRCsz4
 LDcl7o0n0E5yYOD6GEMWIYriiQq1ppx9SFRSm2kbu+C3hWO2xWy6bgqtGzmp6tbF8BLn
 M+Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=yJwsi3DMV/pwzB8sWAmHjBjjwOzOWtOVx10q5OKc/Qg=;
 b=WNrmh5MJInrMSiLr4gncQThI0Ho/JDJznU3fp3v/BYoXOyRz9CEsvcH04Az+TwXU+R
 7zu8BQTpYiLvW+1yk7F+giYPzTt+kktGRLr8vENDDQQfcbj2gRobmDwev3axplAeyadi
 vvGG69BBVFwXhqZne2YMknGSpB4NsBNdyQLVEs6D5MiWaEpPAgQDJ7+WAf0EB4b3lBY/
 xCBrAWAcDJRoh7KcszqO0JW7WOsm2D32hd3bUVs7UzpY6nl8+3k3bMCjMk+jKWli1MVi
 9eOA3k0ccMS0zCBH7w462xUtEwee2b8Qiuh3ys7LeCD/I9MvLez7bAEUN2IAv45qVq0i
 bwcQ==
X-Gm-Message-State: APjAAAWmP71+5xNlEVLz0dXPwXFV3vM3N7yslnoVbotGiPnZZCwXpfYN
 JWK2o82xG+mUHs+2taHPmkh9dA==
X-Google-Smtp-Source: APXvYqwN0EAf9bCeoE9MhNqvKtGj6Kuzpeq236RUFu+VyIzagp3j7CmYdCtkZY/sNNfmqJXTyE+Ieg==
X-Received: by 2002:a2e:9e43:: with SMTP id g3mr23393509ljk.37.1577717050174; 
 Mon, 30 Dec 2019 06:44:10 -0800 (PST)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id a21sm18744931lfg.44.2019.12.30.06.44.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Dec 2019 06:44:09 -0800 (PST)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Rob Herring <robh+dt@kernel.org>, linux-pm@vger.kernel.org
Subject: [PATCH v5 01/15] cpuidle: psci: Align psci_power_state count with
 idle state count
Date: Mon, 30 Dec 2019 15:43:48 +0100
Message-Id: <20191230144402.30195-2-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191230144402.30195-1-ulf.hansson@linaro.org>
References: <20191230144402.30195-1-ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_064412_178367_7EF3FBE2 
X-CRM114-Status: GOOD (  13.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
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

From: Sudeep Holla <sudeep.holla@arm.com>

Instead of allocating 'n-1' states in psci_power_state to manage 'n'
idle states which include "ARM WFI" state, it would be simpler to have
1:1 mapping between psci_power_state and cpuidle driver states.

ARM WFI state(i.e. idx == 0) is handled specially in the generic macro
CPU_PM_CPU_IDLE_ENTER_PARAM and hence state[-1] is not possible. However
for sake of code readability, it is better to have 1:1 mapping and not
use [idx - 1] to access psci_power_state corresponding to driver cpuidle
state for idx.

psci_power_state[0] is default initialised to 0 and is never accessed
while entering WFI state.

Reported-by: Ulf Hansson <ulf.hansson@linaro.org>
Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
Reviewed-by: Ulf Hansson <ulf.hansson@linaro.org>
---

Changes in v5:
	- None.

---
 drivers/cpuidle/cpuidle-psci.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/cpuidle/cpuidle-psci.c b/drivers/cpuidle/cpuidle-psci.c
index f3c1a2396f98..361985f52ddd 100644
--- a/drivers/cpuidle/cpuidle-psci.c
+++ b/drivers/cpuidle/cpuidle-psci.c
@@ -30,7 +30,7 @@ static int psci_enter_idle_state(struct cpuidle_device *dev,
 	u32 *state = __this_cpu_read(psci_power_state);
 
 	return CPU_PM_CPU_IDLE_ENTER_PARAM(psci_cpu_suspend_enter,
-					   idx, state[idx - 1]);
+					   idx, state[idx]);
 }
 
 static struct cpuidle_driver psci_idle_driver __initdata = {
@@ -89,12 +89,14 @@ static int __init psci_dt_cpu_init_idle(struct device_node *cpu_node, int cpu)
 	if (!count)
 		return -ENODEV;
 
+	count++; /* Add WFI state too */
 	psci_states = kcalloc(count, sizeof(*psci_states), GFP_KERNEL);
 	if (!psci_states)
 		return -ENOMEM;
 
-	for (i = 0; i < count; i++) {
-		state_node = of_parse_phandle(cpu_node, "cpu-idle-states", i);
+	for (i = 1; i < count; i++) {
+		state_node = of_parse_phandle(cpu_node, "cpu-idle-states",
+					      i - 1);
 		ret = psci_dt_parse_state_node(state_node, &psci_states[i]);
 		of_node_put(state_node);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
