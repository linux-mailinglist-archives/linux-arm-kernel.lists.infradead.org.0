Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF67C11B4CA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 16:50:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Mx6Jp8GCyy0mRgWjTfab+bCPbV/iT5i//tzK4A+rXBE=; b=id6tWLFB/CtCyyaCa0ucq2SJ6t
	C0B0EgesmqQsyhpY0JibRWIlV5ItZb3aQ94deocKpHmVAAfDwLS6iLhyLwTB9TJjGfuTmFiy8fPDK
	g8ImXAPVOS2URUXtDrX8jqizmQgR4rw6bRpQPt5Toa0+JNEuprX9VR60K2PAYyprCF62zo0/7BPEu
	UMa+JekkrVjY2IWrGvTIPTJZBdNhwirHKve1SyuTI4i8Y0SJyifkZCOXdazr39l95Xv01QvE7Vf99
	zUpjC9iKvkdBBt7lrlHDhJ+0AW5DGnYk6Iw/swnDSyUFpTkNh2JKH6y+QElLrjcPFCQ7RD0wgoT+G
	+T7uZTig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if4GE-0007ci-Cf; Wed, 11 Dec 2019 15:50:46 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if49s-0007Bs-W8
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 15:44:15 +0000
Received: by mail-lj1-x241.google.com with SMTP id c19so24513825lji.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Dec 2019 07:44:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=C9yDPOd0OTPQBhTZJI/d5IX3T66EXAgmCmdgu1ZiaJ4=;
 b=MnnWQmWEeBtnTrCwz+if5edRXhdr8n1z8NyRUUN+vY5sIwfgvW8I9kvOpkWFAei451
 nND8kLG3NcWd6u+J5e37NWK4CNjCGeVhqZNkwNXqP7d5jxtP9D64PYQMpqhlHHK+doCH
 bdaqR8Go/MWDUGCDh60YKNTwkVFA0ZfEt9yrLkKhA/KA97D6/r1LjUahAH+VIeIqOPXQ
 1ODrXRWkTCHuV154SJI8hmmNc6d7Z5sxTc/R6CQIy3F/BU9Xpq6pO/13gBpG7/G0J8Ch
 HvkwMA0i/FWcmSKmxXPJlpjTTS64BXL55MlhDk8DojW1fkrhMA4hOmvftk5HDjV9JtP9
 9rug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=C9yDPOd0OTPQBhTZJI/d5IX3T66EXAgmCmdgu1ZiaJ4=;
 b=LJg2AtSCED/vPk9fw9BhaObcrZLf2wntP7Rzs8TfNtEWx3PuIZr9r4RHfeYLmFCoC2
 AdjPH7Yntg57Ux2oECvUKOTNqWRZkdyFfAU3juyPuuuNpwaMAHZGZ2DY9bi1BQaNKXo0
 cCMOhJ0kLR8L6LTUzjQzm0ggJwqDRezacjEsUT8kVbHLQLHN+YqF28BBQHBEvX8vwqxA
 EBbVZUZF1ZHrXRqHGNA/ChmFx3NYzfB32OsJaaKlzmINrkihm68rXwsP1tUo+nb+LV0r
 ATN3E9pjMqw0sY+UcVOaSpiJpq8fX8PBCZ3pAy8XUsZR8yM0DfR9hyJ2mtWb6SQsXyiM
 dfYw==
X-Gm-Message-State: APjAAAXq/t/fzSbtnqH9LPCa6hgNj/1xm8slZ3ZsfXYCYRZk4eL/6Ait
 LQgAOQJs6+pwWvFDEZisgufl3A==
X-Google-Smtp-Source: APXvYqzDtybEqOEpWbUBHh5vtyfTA9qvNWwzUAhOzqDHGkA5ldRK0aDwlSTGQ73RmyeYlolJmJRFnw==
X-Received: by 2002:a2e:5751:: with SMTP id r17mr2591479ljd.254.1576079051400; 
 Wed, 11 Dec 2019 07:44:11 -0800 (PST)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id b14sm1389608lff.68.2019.12.11.07.44.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Dec 2019 07:44:10 -0800 (PST)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Rob Herring <robh+dt@kernel.org>, linux-pm@vger.kernel.org
Subject: [PATCH v4 12/14] cpuidle: psci: Support CPU hotplug for the
 hierarchical model
Date: Wed, 11 Dec 2019 16:43:41 +0100
Message-Id: <20191211154343.29765-13-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191211154343.29765-1-ulf.hansson@linaro.org>
References: <20191211154343.29765-1-ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_074413_160595_FEDFB0B4 
X-CRM114-Status: GOOD (  19.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
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

When the hierarchical CPU topology is used and when a CPU is put offline,
that CPU prevents its PM domain from being powered off, which is because
genpd observes the corresponding attached device as being active from a
runtime PM point of view. Furthermore, any potential master PM domains are
also prevented from being powered off.

To address this limitation, let's add add a new CPU hotplug state
(CPUHP_AP_CPU_PM_STARTING) and register up/down callbacks for it, which
allows us to deal with runtime PM accordingly.

Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
---

Changes in v4:
	- Folded in the patch to be part of the series.
	- Rebased on top of earlier changes.

---
 drivers/cpuidle/cpuidle-psci.c | 45 +++++++++++++++++++++++++++++++++-
 include/linux/cpuhotplug.h     |  1 +
 2 files changed, 45 insertions(+), 1 deletion(-)

diff --git a/drivers/cpuidle/cpuidle-psci.c b/drivers/cpuidle/cpuidle-psci.c
index 6e7804e697ed..34a89d99bb0f 100644
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
+static bool psci_cpuidle_use_cpuhp;
 
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
+static void psci_idle_init_cpuhp(void)
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
