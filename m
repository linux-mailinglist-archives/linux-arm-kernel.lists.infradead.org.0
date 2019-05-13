Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7EAC1BDDD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 21:26:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=H4Q+wwDYZzPMayQ0d8u4SDWktG+rkkUchoXqn0Ba2Gs=; b=GDpXZXCFAaH+huAUN3U+tKqpin
	v6Bjd5R3Ls6IP+Cp2/mjzNveDSlQNvf0M3HXmkvrJhkJCHD3gHIyRGpuS+KgdRGawAC9/qGZ0hhCJ
	rczD87x9YkXe7ByGoE3eKLJ/r+NZb5diupynKZnNlbivzFo96wJEUu3abttQPYaYs+v/Wdq0d9Gty
	r/TbdEfv4LNsedSicOd8Br90nCusPGXn7+kLJcWfZZOzaL+3+RxkGhB9mNcBGXHHv+1HHLb7Mw3LT
	DdenHJiJccwBaofch/fTL0RJ1SJFYN5csB+ImWL/orBBg8uzoLhXt0Po71dJqzpaVOpdcHz/iZ+HM
	JViFS8vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQGaN-0005fw-Pi; Mon, 13 May 2019 19:26:07 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQGXt-0001LC-Ed
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 19:23:50 +0000
Received: by mail-lj1-x241.google.com with SMTP id d15so12062721ljc.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 May 2019 12:23:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=5L3+w8hUR6giXqb5Tz84iJ3SS/PuntIOYwjCkJwPh9s=;
 b=nuEds6uqvSvhzFgPN0xx4WrLj+8Aq5wMne2aRP4Hl30ysRHF3JwffRDwh2I/w4NkhA
 ruqtjGmeavnUC5G6t1+5vD7jYhWzIibj7v8eKj+D5BqywqtbMj4VlBzc5f+oeCC7YVZr
 gMQJv7sBlyWAqagmqVCdQx6ievkrgzxp6P6VXhi+yjAzjEClLL/IUaPqLF+XdiUzD+wB
 PoZRlnXLRxkuWULBDbbLIts79BiF1YdM5kTUelzfYB3F6IWAddBJ1onCo4N+i653uveS
 lhlUL6q4MSOpQOYlAnyDByOwere/dmOdnrZOjhSfSGK/7nMJMIUGdCEIfOTBMbYwDCev
 MmjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=5L3+w8hUR6giXqb5Tz84iJ3SS/PuntIOYwjCkJwPh9s=;
 b=lsUMIsVYEg8kMaR78mC/yzcWa1kkz6pDgiMaOII7s5rI/hvNBMYH9Gw5VoiVSoMJTZ
 nuVIdSCwj/fV//ifDErFUSm7J5IAr3tna30aJz4Lo4ve1XvTb8/iMH4w0qw50K/+IN5Z
 nwEaix85CVmtLlJTtMwQpbcKmnEDw6P+5Wr7K/8RK7PODBjSv0b60E9b3VvePjNsTW4G
 qVWmZN7mpmAuUUeC/9rjm0M+BvT/lX6E0sto0TjQwtvb3xTzgPip1yLVksaO5g4aRGIX
 Wy0SDB9V5ZBDuv7gcD/Zhbg8tfDGC1tNGkNrIzUCGPrcScpiDz9iktiZULWQyANtLjoR
 INWQ==
X-Gm-Message-State: APjAAAUbqC/WL56o+3EBc/x/eqqgBAepUgqfIbMkbF7DCN1hC8CzKTye
 lgRkRqp9P+M7fQXrKsLEi/Xt0w==
X-Google-Smtp-Source: APXvYqwhviRoSbMrrPulC15a2Em5gq4bwlntBmk6fP/23jtstN9Z1J324DMrQRo3VkPOVmz3QA57og==
X-Received: by 2002:a2e:9141:: with SMTP id q1mr14833265ljg.84.1557775411722; 
 Mon, 13 May 2019 12:23:31 -0700 (PDT)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id q21sm3449365lfa.84.2019.05.13.12.23.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 13 May 2019 12:23:31 -0700 (PDT)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Mark Rutland <mark.rutland@arm.com>, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 14/18] drivers: firmware: psci: Manage runtime PM in the idle
 path for CPUs
Date: Mon, 13 May 2019 21:22:56 +0200
Message-Id: <20190513192300.653-15-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190513192300.653-1-ulf.hansson@linaro.org>
References: <20190513192300.653-1-ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_122333_930368_F64BCB4F 
X-CRM114-Status: GOOD (  18.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
 Vincent Guittot <vincent.guittot@linaro.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Kevin Hilman <khilman@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>, linux-pm@vger.kernel.org,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 Amit Kucheria <amit.kucheria@linaro.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Tony Lindgren <tony@atomide.com>,
 Lina Iyer <ilina@codeaurora.org>, linux-arm-msm@vger.kernel.org,
 Niklas Cassel <niklas.cassel@linaro.org>,
 Souvik Chakravarty <souvik.chakravarty@arm.com>,
 "Raju P . L . S . S . S . N" <rplsssn@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When the hierarchical CPU topology layout is used in DT, let's allow the
CPU to be power managed through its PM domain, via deploying runtime PM
support.

To know for which idle states runtime PM reference counting is needed,
let's store the index of deepest idle state for the CPU, in a per CPU
variable. This allows psci_cpu_suspend_enter() to compare this index with
the requested idle state index and then act accordingly.

Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
---

Changes:
	- Simplify the code by using the new per CPU struct, that stores the
	  needed struct device*.

---
 drivers/firmware/psci/psci.c | 22 ++++++++++++++++++++--
 1 file changed, 20 insertions(+), 2 deletions(-)

diff --git a/drivers/firmware/psci/psci.c b/drivers/firmware/psci/psci.c
index 54e23d4ed0ea..2c4157d3a616 100644
--- a/drivers/firmware/psci/psci.c
+++ b/drivers/firmware/psci/psci.c
@@ -20,6 +20,7 @@
 #include <linux/linkage.h>
 #include <linux/of.h>
 #include <linux/pm.h>
+#include <linux/pm_runtime.h>
 #include <linux/printk.h>
 #include <linux/psci.h>
 #include <linux/reboot.h>
@@ -298,6 +299,7 @@ static int __init psci_features(u32 psci_func_id)
 
 struct psci_cpuidle_data {
 	u32 *psci_states;
+	u32 rpm_state_id;
 	struct device *dev;
 };
 
@@ -385,6 +387,7 @@ static int psci_dt_cpu_init_idle(struct cpuidle_driver *drv,
 			goto free_mem;
 
 		data->dev = dev;
+		data->rpm_state_id = drv->state_count - 1;
 	}
 
 	/* Idle states parsed correctly, store them in the per-cpu struct. */
@@ -481,8 +484,11 @@ static int psci_suspend_finisher(unsigned long index)
 int psci_cpu_suspend_enter(unsigned long index)
 {
 	int ret;
-	u32 *state = __this_cpu_read(psci_cpuidle_data.psci_states);
-	u32 composite_state = state[index - 1] | psci_get_domain_state();
+	struct psci_cpuidle_data *data = this_cpu_ptr(&psci_cpuidle_data);
+	u32 *states = data->psci_states;
+	struct device *dev = data->dev;
+	bool runtime_pm = (dev && data->rpm_state_id == index);
+	u32 composite_state;
 
 	/*
 	 * idle state index 0 corresponds to wfi, should never be called
@@ -491,11 +497,23 @@ int psci_cpu_suspend_enter(unsigned long index)
 	if (WARN_ON_ONCE(!index))
 		return -EINVAL;
 
+	/*
+	 * Do runtime PM if we are using the hierarchical CPU toplogy, but only
+	 * when cpuidle have selected the deepest idle state for the CPU.
+	 */
+	if (runtime_pm)
+		pm_runtime_put_sync_suspend(dev);
+
+	composite_state = states[index - 1] | psci_get_domain_state();
+
 	if (!psci_power_state_loses_context(composite_state))
 		ret = psci_ops.cpu_suspend(composite_state, 0);
 	else
 		ret = cpu_suspend(index, psci_suspend_finisher);
 
+	if (runtime_pm)
+		pm_runtime_get_sync(dev);
+
 	/* Clear the domain state to start fresh when back from idle. */
 	psci_set_domain_state(0);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
