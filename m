Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 539C61BDDC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 21:26:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=tabuPsMk7jjBAd7zmtxn7OwX/8otAkXpt5h/BuXylCU=; b=bAkMCMtR4+zyp+6RlMYUcwpz7+
	LAvMMOyscocfl4kPBooEj4mfnX1ulilo27E6m3Yb1jMR7F+7vW5vKr9jfKHdWkdALF+KP01hcony5
	pLK5mwoQv7STcNON0wUuvxygWbfJM21YmomnSwB+m7xi4vGxeEUOZoXRoOTMeNCPCVh5wOyIszSlT
	Vm73Rtl4aoNfdKkdClxlTk5A5kX4WRa/2y2ufAVfQOX2slaWouMR4tMr75TbAgJrHx7gBEcjRRhGf
	LJ+RPVw1RzxvK/BVOJaJhx8oTcqcx/6ivamjgwywwg7tyz8uHpYEEKzhCeNsr+QBes1AawK075dHV
	qZObTfyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQGaD-0005SA-Oo; Mon, 13 May 2019 19:25:57 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQGXr-0001Ia-EY
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 19:23:49 +0000
Received: by mail-lj1-x244.google.com with SMTP id r76so12043232lja.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 May 2019 12:23:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=7mMRJh0gRWk8jRKSu7vpJTGJ6ww/FK+bFoVvoMzjgck=;
 b=A5Wrb60xziILjw5xMgQgTTamMl9xJY2MhOSpDPLTAf/3EQCP+lf+7yig/Ph/N48Hs+
 5eISRFo4PakItBUPivivio9sRWxxOcKf9wZko/ylG4GFm+PHhBbtsOQFhs6a2EYmk6cf
 d08V0bhI77Ip2AT10wAzzGYunJYYv1Xq6bLSZK+0AvF8kKHSnNeeoT7ASAv0aJjZ/uXa
 pAh3Vd1UJMx+yB0pcoGTGuiTiECq7yRcyQftboHCRgguQn1fjPxSH/PuwhRrzWxMWrOP
 vkkAGabM1BZQ68YI0gr+vhbHfVr1udpWSAPl8raFY3py7bW24MK4MzWkC91WgHCON7Du
 frtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=7mMRJh0gRWk8jRKSu7vpJTGJ6ww/FK+bFoVvoMzjgck=;
 b=JfG9u/r/NbVdsejX/3CfV+67MdfQXytkGBUVEEe0c7pC5eYkE0u8ng5QZCg6TSKBj1
 sMh6xRmtwbnJs6qe7ToivkmCQzPpOlx62AdWyQpNwTXpHMhcI/yYL+BwiZSslJ2PoWLG
 g04E5RDTp74Mnmjt5NT9t9EujmdN8LAdBsgRsajxznKVIGqLzWgds+XBHx5+sXJ5di55
 w/5455tFiSPHtl9gapdRgvFgv8KDshdWYxWTQN8YIEwv5ZAP/0qeijpHqdrRLqH0nMUk
 ksC75cuo+ZvknviTK0LFBMHV5WazsIPhrDAomMupxSJyl2hJcAzQIr3sYFFgRbjlblu7
 AB9g==
X-Gm-Message-State: APjAAAV3ugoLC0hXKYAYfIu+8tqfFW6X9e625OaIWUJ8cHp/ni1UXzVA
 3E9NXah2sGMq+YXuDLRQOA4PoA==
X-Google-Smtp-Source: APXvYqxf9UXPo2PbATF2Ej4O/JEKsCNTcYfsKPhGKIQE6BXSznQnuXwlAcye5xuHinSMJfMHW3VIvg==
X-Received: by 2002:a2e:8954:: with SMTP id b20mr4530759ljk.10.1557775409921; 
 Mon, 13 May 2019 12:23:29 -0700 (PDT)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id q21sm3449365lfa.84.2019.05.13.12.23.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 13 May 2019 12:23:29 -0700 (PDT)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Mark Rutland <mark.rutland@arm.com>, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 13/18] drivers: firmware: psci: Attach the CPU's device to its
 PM domain
Date: Mon, 13 May 2019 21:22:55 +0200
Message-Id: <20190513192300.653-14-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190513192300.653-1-ulf.hansson@linaro.org>
References: <20190513192300.653-1-ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_122331_868888_42CD755B 
X-CRM114-Status: GOOD (  19.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
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

In order to allow the CPU to be power managed through a potential PM domain
and the corresponding topology, it needs to be attached to it. For that
reason, check if the PM domain data structures have been initiated for PSCI
and if so, let's try to attach the CPU device to its PM domain.

However, before attaching the CPU to its PM domain, we need to check
whether the PSCI firmware supports OS initiated mode or not. If that isn't
the case, we rely solely on the cpuidle framework to deal with the idle
state selection, which means we need to parse DT and convert the
hierarchical described domain idle states into regular cpuidle states,
hence let's do that.

Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
---

Changes:
	- Adapt to updated psci_dt_attach_cpu() helper, as it now returns a
	  struct device * instead of an int.
	- Create a per CPU struct, to store the relevant PSCI cpuidle data.

---
 drivers/firmware/psci/psci.c | 46 +++++++++++++++++++++++++++++-------
 1 file changed, 38 insertions(+), 8 deletions(-)

diff --git a/drivers/firmware/psci/psci.c b/drivers/firmware/psci/psci.c
index 28745234b53f..54e23d4ed0ea 100644
--- a/drivers/firmware/psci/psci.c
+++ b/drivers/firmware/psci/psci.c
@@ -295,7 +295,13 @@ static int __init psci_features(u32 psci_func_id)
 }
 
 #ifdef CONFIG_CPU_IDLE
-static DEFINE_PER_CPU_READ_MOSTLY(u32 *, psci_power_state);
+
+struct psci_cpuidle_data {
+	u32 *psci_states;
+	struct device *dev;
+};
+
+static DEFINE_PER_CPU_READ_MOSTLY(struct psci_cpuidle_data, psci_cpuidle_data);
 static DEFINE_PER_CPU(u32, domain_state);
 static bool psci_dt_topology;
 
@@ -332,8 +338,9 @@ static int psci_dt_cpu_init_idle(struct cpuidle_driver *drv,
 	int i, ret = 0, num_state_nodes = drv->state_count - 1;
 	u32 *psci_states;
 	struct device_node *state_node;
+	struct psci_cpuidle_data *data = per_cpu_ptr(&psci_cpuidle_data, cpu);
 
-	psci_states = kcalloc(num_state_nodes, sizeof(*psci_states),
+	psci_states = kcalloc(CPUIDLE_STATE_MAX, sizeof(*psci_states),
 			GFP_KERNEL);
 	if (!psci_states)
 		return -ENOMEM;
@@ -357,8 +364,31 @@ static int psci_dt_cpu_init_idle(struct cpuidle_driver *drv,
 		goto free_mem;
 	}
 
-	/* Idle states parsed correctly, initialize per-cpu pointer */
-	per_cpu(psci_power_state, cpu) = psci_states;
+	/*
+	 * If the hierarchical CPU topology is used, let's attach the CPU device
+	 * to its corresponding PM domain. If OSI mode isn't supported, convert
+	 * the additional domain idle states from the hierarchical DT layout
+	 * into regular flattened cpuidle states, as to let cpuidle manage them.
+	 */
+	if (psci_dt_topology) {
+		struct device *dev;
+
+		if (!psci_has_osi_support()) {
+			ret = psci_dt_pm_domains_parse_states(drv, cpu_node,
+							      psci_states);
+			if (ret)
+				goto free_mem;
+		}
+
+		dev = psci_dt_attach_cpu(cpu);
+		if (IS_ERR_OR_NULL(dev))
+			goto free_mem;
+
+		data->dev = dev;
+	}
+
+	/* Idle states parsed correctly, store them in the per-cpu struct. */
+	data->psci_states = psci_states;
 	return 0;
 
 free_mem:
@@ -403,8 +433,8 @@ static int __maybe_unused psci_acpi_cpu_init_idle(unsigned int cpu)
 		}
 		psci_states[i] = state;
 	}
-	/* Idle states parsed correctly, initialize per-cpu pointer */
-	per_cpu(psci_power_state, cpu) = psci_states;
+	/* Idle states parsed correctly, store them in the per-cpu struct. */
+	per_cpu(psci_cpuidle_data.psci_states, cpu) = psci_states;
 	return 0;
 }
 #else
@@ -442,7 +472,7 @@ int psci_cpu_init_idle(struct cpuidle_driver *drv, unsigned int cpu)
 
 static int psci_suspend_finisher(unsigned long index)
 {
-	u32 *state = __this_cpu_read(psci_power_state);
+	u32 *state = __this_cpu_read(psci_cpuidle_data.psci_states);
 	u32 composite_state = state[index - 1] | psci_get_domain_state();
 
 	return psci_ops.cpu_suspend(composite_state, __pa_symbol(cpu_resume));
@@ -451,7 +481,7 @@ static int psci_suspend_finisher(unsigned long index)
 int psci_cpu_suspend_enter(unsigned long index)
 {
 	int ret;
-	u32 *state = __this_cpu_read(psci_power_state);
+	u32 *state = __this_cpu_read(psci_cpuidle_data.psci_states);
 	u32 composite_state = state[index - 1] | psci_get_domain_state();
 
 	/*
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
