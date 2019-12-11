Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63E4F11B4AB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 16:49:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=6wk69KHTl+Ps61DmUveSu5h/ZgGq09DUOZ+szBPFMjQ=; b=Zh3BmLzwHyVp5IB0YC74q4qBN5
	GFlpEq00yCAdhH/t87w0fMPvZbefULqqeRcNi71W2FNIH1QgQ535BG+EiG5qxjZRGXzXSK7hs2Lqy
	iCZ7/+t09Me6RSOvGGt/9O/bYkFBfMU1mpkfNt7AFqwodKIO3X6VNyeHAS1xAW3L1IHybBFwQEViE
	leZ1V0kFxOR84M2BUoFHtVG93ivJVJG/Okt34CmNUMbuL6iyYj2HwyoRVXCx/RMBSIxSDvYpkiQTr
	MAY4iCvN8P7W2lPXP9VcDjr1IIk3GMKUY/WdWGKw6eWI+tJExwv5LOpy9rg9iu99rwpDYDF/wm2sg
	BynG1PPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if4FG-0005IZ-4m; Wed, 11 Dec 2019 15:49:46 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if49p-00078N-S1
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 15:44:11 +0000
Received: by mail-lj1-x241.google.com with SMTP id r19so24633660ljg.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Dec 2019 07:44:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=xFV9pwGCTDQIRD0MEW258+4R088s+9zQCaaqV7y2r0w=;
 b=syw2oRHygvzxLXpdFNwn22dQOkl4y20AEx6z1Uls/sCqdCKH9r/o178DiOzM54g7OV
 IpU/IRF4flzpLrKYOHSTQTgXkwHzSkEXp2rV756hmn2XQCDXaD6+cSKzxqSy4vRFG1yy
 xq9vWaLOGI67hpk7tWHiiKQJ3ewjM9UHPj4tM0WJtVKebWiYIkynUYM2xXG/P/hvtOYR
 ywZw0bgnjxKUvrLx0aTaqE5z5F3scckjHAmyMWiCyO17yUPp1j6PAtHhutWHx9tr/LPd
 lG/RPDAnJMf4qeEVMADGUS/b2jiJQHhs/r3fynwHlNPhQAXvFjnhb+m4tItEuDESwGAR
 Llmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=xFV9pwGCTDQIRD0MEW258+4R088s+9zQCaaqV7y2r0w=;
 b=Dv8TLy+mKzpGxnPWT/XaD/ohc9hWoL8p69ZmMPP4d471tWKLixZEhuRLOHxIxxTkR9
 crU9RqwDwh20KiR6MzLXztu58/pXuR66EvjqpXZfm7di310Iqh614DzVzKS0VfmLOV9L
 tHwBowehQ54dQP6FIHwzRwu8J6Jq2+SZbxFfuJzkyfMQ66eS62/TiM4HvUXxlKQ4NIbZ
 nTYqr1D7YzgwrxtH0O+6Q3ZmYgZpw7ApFzenpBhmGQHxgbfcN1nKB00Y2E7PhNNo1nZe
 vTnx85fXVXEGUl7yOq2gypZIk29JHYgSYta9HOLDlhJEBMUWUWbBCE6TXRowIkwMPQK5
 sZOA==
X-Gm-Message-State: APjAAAUk0CJWIaD2ttNu2bYVI6XA7yNqdqC5JNtUL9OxPrJp+FwS6xz3
 N7NrC+5c2evDzRHEdjBnVO4ZOQ==
X-Google-Smtp-Source: APXvYqwy9KqxilZ2uPEWVJbqhtBfRH7pmVUc1hwAnfJS9bCNt24+Ia7y6QxnjkBb+pzDnvPQc3Ea1Q==
X-Received: by 2002:a05:651c:2046:: with SMTP id
 t6mr2255960ljo.180.1576079048402; 
 Wed, 11 Dec 2019 07:44:08 -0800 (PST)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id b14sm1389608lff.68.2019.12.11.07.44.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Dec 2019 07:44:07 -0800 (PST)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Rob Herring <robh+dt@kernel.org>, linux-pm@vger.kernel.org
Subject: [PATCH v4 10/14] cpuidle: psci: Prepare to use OS initiated suspend
 mode via PM domains
Date: Wed, 11 Dec 2019 16:43:39 +0100
Message-Id: <20191211154343.29765-11-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191211154343.29765-1-ulf.hansson@linaro.org>
References: <20191211154343.29765-1-ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_074409_935430_63542571 
X-CRM114-Status: GOOD (  19.21  )
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
domain_state take precedence over the regular selected state, when entering
and idle state.

To avoid executing the above OSI specific code in the ->enter() callback,
while operating in the default PSCI Platform Coordinated mode, let's also
add a new enter-function and use it for OSI.

Co-developed-by: Lina Iyer <lina.iyer@linaro.org>
Signed-off-by: Lina Iyer <lina.iyer@linaro.org>
Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
---

Changes in v4:
	- Rebased on top of earlier changes.
	- Add comment about using the deepest cpuidle state for the domain state
	selection.

---
 drivers/cpuidle/cpuidle-psci.c | 56 ++++++++++++++++++++++++++++++----
 1 file changed, 50 insertions(+), 6 deletions(-)

diff --git a/drivers/cpuidle/cpuidle-psci.c b/drivers/cpuidle/cpuidle-psci.c
index 6a87848be3c3..9600fe674a89 100644
--- a/drivers/cpuidle/cpuidle-psci.c
+++ b/drivers/cpuidle/cpuidle-psci.c
@@ -29,14 +29,47 @@ struct psci_cpuidle_data {
 };
 
 static DEFINE_PER_CPU_READ_MOSTLY(struct psci_cpuidle_data, psci_cpuidle_data);
+static DEFINE_PER_CPU(u32, domain_state);
+
+static inline void psci_set_domain_state(u32 state)
+{
+	__this_cpu_write(domain_state, state);
+}
+
+static inline u32 psci_get_domain_state(void)
+{
+	return __this_cpu_read(domain_state);
+}
+
+static inline int psci_enter_state(int idx, u32 state)
+{
+	return CPU_PM_CPU_IDLE_ENTER_PARAM(psci_cpu_suspend_enter, idx, state);
+}
+
+static int psci_enter_domain_idle_state(struct cpuidle_device *dev,
+					struct cpuidle_driver *drv, int idx)
+{
+	struct psci_cpuidle_data *data = this_cpu_ptr(&psci_cpuidle_data);
+	u32 *states = data->psci_states;
+	u32 state = psci_get_domain_state();
+	int ret;
+
+	if (!state)
+		state = states[idx];
+
+	ret = psci_enter_state(idx, state);
+
+	/* Clear the domain state to start fresh when back from idle. */
+	psci_set_domain_state(0);
+	return ret;
+}
 
 static int psci_enter_idle_state(struct cpuidle_device *dev,
 				struct cpuidle_driver *drv, int idx)
 {
 	u32 *state = __this_cpu_read(psci_cpuidle_data.psci_states);
 
-	return CPU_PM_CPU_IDLE_ENTER_PARAM(psci_cpu_suspend_enter,
-					   idx, state[idx]);
+	return psci_enter_state(idx, state[idx]);
 }
 
 static struct cpuidle_driver psci_idle_driver __initdata = {
@@ -79,7 +112,8 @@ static int __init psci_dt_parse_state_node(struct device_node *np, u32 *state)
 	return 0;
 }
 
-static int __init psci_dt_cpu_init_idle(struct device_node *cpu_node,
+static int __init psci_dt_cpu_init_idle(struct cpuidle_driver *drv,
+					struct device_node *cpu_node,
 					unsigned int state_count, int cpu)
 {
 	int i, ret = 0;
@@ -118,6 +152,15 @@ static int __init psci_dt_cpu_init_idle(struct device_node *cpu_node,
 			ret = PTR_ERR(data->dev);
 			goto free_mem;
 		}
+
+		/*
+		 * Using the deepest state for the CPU to trigger a potential
+		 * selection of a shared state for the domain, assumes the
+		 * domain states are all deeper states.
+		 */
+		if (data->dev)
+			drv->states[state_count - 1].enter =
+				psci_enter_domain_idle_state;
 	}
 
 	/* Idle states parsed correctly, store them in the per-cpu struct. */
@@ -129,7 +172,8 @@ static int __init psci_dt_cpu_init_idle(struct device_node *cpu_node,
 	return ret;
 }
 
-static __init int psci_cpu_init_idle(unsigned int cpu, unsigned int state_count)
+static __init int psci_cpu_init_idle(struct cpuidle_driver *drv,
+				     unsigned int cpu, unsigned int state_count)
 {
 	struct device_node *cpu_node;
 	int ret;
@@ -145,7 +189,7 @@ static __init int psci_cpu_init_idle(unsigned int cpu, unsigned int state_count)
 	if (!cpu_node)
 		return -ENODEV;
 
-	ret = psci_dt_cpu_init_idle(cpu_node, state_count, cpu);
+	ret = psci_dt_cpu_init_idle(drv, cpu_node, state_count, cpu);
 
 	of_node_put(cpu_node);
 
@@ -201,7 +245,7 @@ static int __init psci_idle_init_cpu(int cpu)
 	/*
 	 * Initialize PSCI idle states.
 	 */
-	ret = psci_cpu_init_idle(cpu, ret);
+	ret = psci_cpu_init_idle(drv, cpu, ret);
 	if (ret) {
 		pr_err("CPU %d failed to PSCI idle\n", cpu);
 		goto out_kfree_drv;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
