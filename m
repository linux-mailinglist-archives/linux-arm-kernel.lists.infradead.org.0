Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26F55113F71
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 11:34:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=IKtSiUYa7KfgKbZTwqKaFYo4PU55915YprzqwkxiNbA=; b=Ui0
	ntFjTdCcluD4WZ6ELqYm5e/5aQwT2E+1SEyAKbkp56I3Z2Al+V9onkFWAmHwmfFFpIG+ZDwKHlMOm
	GkFy+8tSsynH0bfTbtE7RPFCxlBtIW1LVA3n9PU4Ip5wceVbw9mZXXEiyYyCbZoOksOoO41xNpg0/
	d8BkcEIaOKLK5zx/Z29a/1m4EHp2Qi9IZ7Tft9+CCtn8WLwsMIQaKrRq2L8Qbl4ust6jqUFZOE7Oq
	Y/hZRBlf2J9OBj+Yieely5Au51nGMdiRSwY7vUCA5M2I7CWvL9cpuXwkwU/1z084Twtmw9NymCpMi
	5T4Aw0HjxELG672uwgd6RUIvPj6tacA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icoSB-0005en-J6; Thu, 05 Dec 2019 10:33:47 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icoS4-0005dc-IR
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 10:33:42 +0000
Received: by mail-lf1-x143.google.com with SMTP id m30so2077230lfp.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Dec 2019 02:33:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=pG2r2/g6r/cRCtHmJlWgFPElnDAc0sUuBSOFJTt/9mM=;
 b=aDoxulZlbbd5bF/v/4CyK6vhcnMYCh7Inj4fn0/I97KJcUrFG4prGB7UZESZdT6Iwl
 7yHiMEAXT+089BDZHMhap7VfP08w0DuVWp02Td6DHD/YJPi4sf1lrDsYgbrExDYUiyHe
 bOFXAG5Cp/2IkMddKesk3iktaRQ9W3ugPFcZimD0Y/dEQdMrQV4wNnFb/d6i8tdqTOw0
 QsHdnXVNj46/6nMnDMfyDhz2IifArYSDS/abkMtb9vXKj0TMm4N/m0aVfJKRXdEUyzU6
 Er/AUYXpEV7VFZ2mzG81IiZq92mONgdNKDK6KFYD+UBMNSSHtJl/fkto9EaDrOe04e/7
 4lmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=pG2r2/g6r/cRCtHmJlWgFPElnDAc0sUuBSOFJTt/9mM=;
 b=Wu6G6H3ZtmVWqE1468PnLZtCLh/wZooV3FqhMDR3ktC0fKsVLjvXGZ5FlHNXynSEM5
 RUbBUKKdzQw6IUNhaO4kT0A5+kD1wy9j7LJhO3R+4yBwrCqZ8UMdFUzCnDGLrt9YlpPu
 5CWxPRzGP6HGGJfm8l3+iyXiRXGkPVmeljfef+imTIR8g0s/p0fq2FhpI0Sf5U1dQDNj
 vHPW/K1cRQKigKTdcfFwCTCC6UsQe/iomx5kot7kimqtWs8fdEXCuMvvMNxG0ndHl/7T
 m6wAfl/xN9NaHYpCWPQA97nCXIz0j0iAyubJtkWk1F2oI3cpCVN5mNrpTIIrlFvQoOej
 Sl9A==
X-Gm-Message-State: APjAAAVSMNUvQQBmy5ZQYQKxo4bAfVcdKaxEGUYCl12+ut0SLmy9kKjV
 J7cpowRQYCLQVSVGBR/pvb1j3g==
X-Google-Smtp-Source: APXvYqxJHIgterRi/o0jlDeDLVi9QArtZJQzyNYGI94YgKkmQimIHKm8hdCfRNfrwkyYxntcSN6ejw==
X-Received: by 2002:a19:e002:: with SMTP id x2mr5043191lfg.28.1575542017782;
 Thu, 05 Dec 2019 02:33:37 -0800 (PST)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id w2sm4680438ljo.61.2019.12.05.02.33.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Dec 2019 02:33:37 -0800 (PST)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Rob Herring <robh+dt@kernel.org>, linux-pm@vger.kernel.org
Subject: [PATCH] cpuidle: psci: Support CPU hotplug for the hierarchical model
Date: Thu,  5 Dec 2019 11:33:30 +0100
Message-Id: <20191205103330.27166-1-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_023340_638403_27AADCBE 
X-CRM114-Status: GOOD (  17.65  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Lorenzo, Sudeep, Rafael, Daniel,

Note that, this patch is based upon a recently posted series [1] and the intent
is to queue it on top. I can fold it into the series and resend it all, if that
makes it easier for people. Just tell me what you prefer.

Kind regards
Uffe

[1]
https://patchwork.kernel.org/cover/11263735/

---
 drivers/cpuidle/cpuidle-psci.c | 45 +++++++++++++++++++++++++++++++++-
 include/linux/cpuhotplug.h     |  1 +
 2 files changed, 45 insertions(+), 1 deletion(-)

diff --git a/drivers/cpuidle/cpuidle-psci.c b/drivers/cpuidle/cpuidle-psci.c
index 835c7c3aa118..46b481c524cc 100644
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
 
 void psci_set_domain_state(u32 state)
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
@@ -161,9 +201,11 @@ static int __init psci_dt_cpu_init_idle(struct cpuidle_driver *drv,
 	}
 
 	/* Manage the deepest state via a dedicated enter-function. */
-	if (dev)
+	if (dev) {
 		drv->states[state_count - 1].enter =
 			psci_enter_domain_idle_state;
+		psci_cpuidle_use_cpuhp = true;
+	}
 
 	data->dev = dev;
 
@@ -285,6 +327,7 @@ static int __init psci_idle_init(void)
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
