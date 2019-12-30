Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09C4E12D142
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 15:53:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=NOABWUYcg3sBZsclQHpij0gdOoN0Nhtsqu0BKyh3JOQ=; b=qntRhAy32QrDQNXju2SKOUVKBX
	VEoaFROnc/x98+mY01qzd9vMxHofSXiIoxg3oTo1hVxGhZaamtVMVnS4CLc2kf46uLk7H8Ywd2Ybp
	h26l2Qw7teydz3C+7b5QwbrGBMjw2QXosEw0zwyLBZqiyQMIqMnS+UGrXthnR0WXn0J6knPxkkSBu
	wkfjWjAYFCp2VtHwTRAi3Uw2ybYby/8FkIj+wnxWCb5f4ONZQ1ARhMm3u8tDoOQB2eDdVGHwYAs/2
	8dBHjYMeSZdejS+irTMdRy+SVso+T/s4/3b3G/J5DOHeM8autVNvYxSt+/CluLpa0Ml3Wr3cc1itv
	TuMhfn+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilwQ0-0006h4-Ss; Mon, 30 Dec 2019 14:53:16 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilwHV-0005Nb-81
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Dec 2019 14:44:40 +0000
Received: by mail-lj1-x244.google.com with SMTP id y4so19160868ljj.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Dec 2019 06:44:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=iP0q67cVa7joTIBbxM/rB2PXgLYhwll7Ud0Qeuw7uE4=;
 b=cZDkTeTBaAAlRRZrP1XLtXSbuzbscAVY8zmWFyVTHUO5xJzFNqhSGbfNaVWsCH1AuX
 4rT40nwkm1sYOV87tQsTVNYOpKm/XQgnTfubKy97NWJGHyYGyJ+cykHyuBuzwg1e4vI+
 dP2uBSyDD85o+XaR8nCem4voDrHfRNDwol6CbGAaupD5x1CDQNr/ejTTClgbNp+xnOmR
 2Bybqk0ajXhcvXbxyM51KKuqO7Pq9KUok4Z20H1s3n3ChONQsVe8t0SEdohf+xd9LlR9
 TwQyqLl/Nqa3iyclS4fQCNrW5jt9RzhUB79qF7nkaemxrQzWOlFc+6vmMc74MtPky/iM
 eUnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=iP0q67cVa7joTIBbxM/rB2PXgLYhwll7Ud0Qeuw7uE4=;
 b=lb2vsREySsgFcWZ2NzdV41wgW45RcQZ3f4Toj/Qy68pbxXS8CZO6bMWHSPHeygluMp
 mYYyFkLBNFuoUOeZRW/UfRKCFL9O+mv56F6VQwxFFLwxbiecbEvt8MqM1x+hVmufiSpr
 bY1N+0piytCSyD3RfYPBpajK1MFkNmsGvfudsS8CO99gIj7siw0N7tRGidCFGqL9TX0d
 06bC4aj2DBPExLFtBK0tK4uoSIOgPZSAH3wxklfnw6uKsjpKgdRm4p99sXsnNPNJP0cZ
 lkfgTGhI9yvYypnCEraFemW4Nwoe7gi+ow97jXAZoupFzdfxUSuT8knZGtLrvONNZvey
 e6mA==
X-Gm-Message-State: APjAAAWuikgoW0aj2lyla3PJ1/MILM40XuPs70yf6A5RnkTnroguXKAe
 P9jmqHAVbOETi94QvQ80Waz19w==
X-Google-Smtp-Source: APXvYqzBs/tiWnncxKxVYy6elFVnD48Lxju0cyn1aR3gEPXIkZtrCY33Ut1F1NTu0L4H0jjmnQTcwg==
X-Received: by 2002:a2e:8090:: with SMTP id i16mr39630757ljg.88.1577717067493; 
 Mon, 30 Dec 2019 06:44:27 -0800 (PST)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id a21sm18744931lfg.44.2019.12.30.06.44.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Dec 2019 06:44:26 -0800 (PST)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Rob Herring <robh+dt@kernel.org>, linux-pm@vger.kernel.org
Subject: [PATCH v5 12/15] cpuidle: psci: Support CPU hotplug for the
 hierarchical model
Date: Mon, 30 Dec 2019 15:43:59 +0100
Message-Id: <20191230144402.30195-13-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191230144402.30195-1-ulf.hansson@linaro.org>
References: <20191230144402.30195-1-ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_064429_349518_E2158124 
X-CRM114-Status: GOOD (  18.55  )
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

When the hierarchical CPU topology is used and when a CPU is put offline,
that CPU prevents its PM domain from being powered off, which is because
genpd observes the corresponding attached device as being active from a
runtime PM point of view. Furthermore, any potential master PM domains are
also prevented from being powered off.

To address this limitation, let's add add a new CPU hotplug state
(CPUHP_AP_CPU_PM_STARTING) and register up/down callbacks for it, which
allows us to deal with runtime PM accordingly.

Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>
---

Changes in v5:
	- Make CPUHP function/variable initdata.

---
 drivers/cpuidle/cpuidle-psci.c | 45 +++++++++++++++++++++++++++++++++-
 include/linux/cpuhotplug.h     |  1 +
 2 files changed, 45 insertions(+), 1 deletion(-)

diff --git a/drivers/cpuidle/cpuidle-psci.c b/drivers/cpuidle/cpuidle-psci.c
index 6e7804e697ed..9d779be27071 100644
--- a/drivers/cpuidle/cpuidle-psci.c
+++ b/drivers/cpuidle/cpuidle-psci.c
@@ -8,6 +8,7 @@
 
 #define pr_fmt(fmt) "CPUidle PSCI: " fmt
 
+#include <linux/cpuhotplug.h>
 #include <linux/cpuidle.h>
 #include <linux/cpumask.h>
 #include <linux/cpu_pm.h>
@@ -31,6 +32,7 @@ struct psci_cpuidle_data {
 
 static DEFINE_PER_CPU_READ_MOSTLY(struct psci_cpuidle_data, psci_cpuidle_data);
 static DEFINE_PER_CPU(u32, domain_state);
+static bool psci_cpuidle_use_cpuhp __initdata;
 
 static inline void psci_set_domain_state(u32 state)
 {
@@ -72,6 +74,44 @@ static int psci_enter_domain_idle_state(struct cpuidle_device *dev,
 	return ret;
 }
 
+static int psci_idle_cpuhp_up(unsigned int cpu)
+{
+	struct device *pd_dev = __this_cpu_read(psci_cpuidle_data.dev);
+
+	if (pd_dev)
+		pm_runtime_get_sync(pd_dev);
+
+	return 0;
+}
+
+static int psci_idle_cpuhp_down(unsigned int cpu)
+{
+	struct device *pd_dev = __this_cpu_read(psci_cpuidle_data.dev);
+
+	if (pd_dev) {
+		pm_runtime_put_sync(pd_dev);
+		/* Clear domain state to start fresh at next online. */
+		psci_set_domain_state(0);
+	}
+
+	return 0;
+}
+
+static void __init psci_idle_init_cpuhp(void)
+{
+	int err;
+
+	if (!psci_cpuidle_use_cpuhp)
+		return;
+
+	err = cpuhp_setup_state_nocalls(CPUHP_AP_CPU_PM_STARTING,
+					"cpuidle/psci:online",
+					psci_idle_cpuhp_up,
+					psci_idle_cpuhp_down);
+	if (err)
+		pr_warn("Failed %d while setup cpuhp state\n", err);
+}
+
 static int psci_enter_idle_state(struct cpuidle_device *dev,
 				struct cpuidle_driver *drv, int idx)
 {
@@ -166,9 +206,11 @@ static int __init psci_dt_cpu_init_idle(struct cpuidle_driver *drv,
 		 * selection of a shared state for the domain, assumes the
 		 * domain states are all deeper states.
 		 */
-		if (data->dev)
+		if (data->dev) {
 			drv->states[state_count - 1].enter =
 				psci_enter_domain_idle_state;
+			psci_cpuidle_use_cpuhp = true;
+		}
 	}
 
 	/* Idle states parsed correctly, store them in the per-cpu struct. */
@@ -289,6 +331,7 @@ static int __init psci_idle_init(void)
 			goto out_fail;
 	}
 
+	psci_idle_init_cpuhp();
 	return 0;
 
 out_fail:
diff --git a/include/linux/cpuhotplug.h b/include/linux/cpuhotplug.h
index e51ee772b9f5..01f04ed6ad92 100644
--- a/include/linux/cpuhotplug.h
+++ b/include/linux/cpuhotplug.h
@@ -95,6 +95,7 @@ enum cpuhp_state {
 	CPUHP_AP_OFFLINE,
 	CPUHP_AP_SCHED_STARTING,
 	CPUHP_AP_RCUTREE_DYING,
+	CPUHP_AP_CPU_PM_STARTING,
 	CPUHP_AP_IRQ_GIC_STARTING,
 	CPUHP_AP_IRQ_HIP04_STARTING,
 	CPUHP_AP_IRQ_ARMADA_XP_STARTING,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
