Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78321D2842
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 13:42:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3QgEYlb4PGFLJNih0/Sy/heCM8q7JibRxAzSqhH88lQ=; b=mxYwp3ihc+iVEianmX01T+8FHF
	5aMFQ2RWeUd+1GNJPECf1ZoEAej2OYK2X1jeULHM6GwL6fBNRGpktfYumQXWHK9q6ASsyclHvGHmL
	s8cqFLBJjCjurDogaMLBqDuDV2C1yWApE1n2RUMQwST1w3y9Ddrj7o93JOVzCcMzeuR9DG5MbnGyD
	1mjt0vJx2eqbdnUr/a0Q4icOqOkVVz8rrzju7nqS9C7ZHIyKPT8D95LU1FzslAPrNVHf115HmPIs6
	JdJXWqjYbl8/QZnGNTFTN/Ju7EJOLFrfPfsfoYdqCPHGa21MjCTHyUIuciIdkf2DabcFWzoKKBiqc
	0nSo5o2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIWpX-0004Bg-29; Thu, 10 Oct 2019 11:42:03 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIWno-0002lx-CF
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 11:40:18 +0000
Received: by mail-lj1-x244.google.com with SMTP id v24so5859807ljj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 10 Oct 2019 04:40:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=zajMnk2cgVpbetFqzeuJjqL5gocttncCIISD2oCeqro=;
 b=w/wpfkf4JD7NtMhgYW5bka2jwABBrG/zFpdfSK+C6Y8ZEzk1usOy+0SZ037SEiwojW
 8ikm7DR8YcoaSKOsLXm8/4fAoU66XIkDrdXmlfD0bKpQ4pPfXVVdHhNQ8eWlxdKdwF8m
 3v9pJu7MyhXBh0O8lxuIkg9S/oSY3v5jPH/hUxyxae9He70A2JNrMcErYiipUzzxW6la
 RPJBm1dTBVGovcLV6kmCCd3lqZrimb7rDvRlZSKv2Ch/iQaQuACu1Dssa3Z+C2w/ecWr
 XF0jqnbdyn9OWFCh7gZX9bj7CuKUEM3iw2jfcQG61bDXCjKqE62EJgVMKO9gnqC4ni9I
 rSlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=zajMnk2cgVpbetFqzeuJjqL5gocttncCIISD2oCeqro=;
 b=ZdMBwZ91aRNQFwnC/W9lC0GGE9WFIq0g5RPbbk3JBT3bl6Wi+qSywkaVUvSTe9yMIP
 /UEtzuWT++iX+EjR1JyAUGycMBLBC+87MFRNrrtj1d8HWODaWLTXZRtzLRnBBC0HNOtw
 srAqn+8CZRNhWEVa3jU+2kGC4edQsvjpVXbEhSrNoIke3daL/3G/xLzAVWYvr2oCxN5S
 mKEQFlpEI99hFWxK+NRpgS7PBRNvBJfb5YUpR/Zm+yuS4smDVtKEfL4nPoLRWqY9qMN4
 yMnnAQrN1Wty4aiNIeyO154xo0bUibfiI10+82HiQc2tkq5vGzLKLTOVjAhUMAdoXQv2
 bs7Q==
X-Gm-Message-State: APjAAAWSKHLJNTbcatCchloNHH1uOdi5x2MVWp8oNaVA+1vKDPlJKGoA
 kyowZFZpNYuBC9ReoXK/JloDkQ==
X-Google-Smtp-Source: APXvYqx8XV+oQ6tAHK6bndR8s4uIRBDsgX8TGkAPZYFU0mns7A7hnFIcGWvIyBsKIHrN+DhA2aCXOg==
X-Received: by 2002:a2e:87ca:: with SMTP id v10mr5973843ljj.43.1570707614837; 
 Thu, 10 Oct 2019 04:40:14 -0700 (PDT)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id p3sm1168937ljn.78.2019.10.10.04.40.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Oct 2019 04:40:14 -0700 (PDT)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Mark Rutland <mark.rutland@arm.com>, Lina Iyer <ilina@codeaurora.org>,
 linux-pm@vger.kernel.org
Subject: [PATCH 06/13] cpuidle: psci: Simplify OF parsing of CPU idle state
 nodes
Date: Thu, 10 Oct 2019 13:39:30 +0200
Message-Id: <20191010113937.15962-7-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191010113937.15962-1-ulf.hansson@linaro.org>
References: <20191010113937.15962-1-ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_044016_446409_C5BC4974 
X-CRM114-Status: GOOD (  17.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
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
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Iterating through the idle state nodes in DT, to find out the number of
states that needs to be allocated is unnecessary, as it has already been
done from dt_init_idle_driver(). Therefore, drop the iteration and use the
number we already have at hand.

Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
---
 drivers/cpuidle/cpuidle-psci.c | 33 ++++++++++++++++-----------------
 1 file changed, 16 insertions(+), 17 deletions(-)

diff --git a/drivers/cpuidle/cpuidle-psci.c b/drivers/cpuidle/cpuidle-psci.c
index 2e91c8d6c211..1195a1056139 100644
--- a/drivers/cpuidle/cpuidle-psci.c
+++ b/drivers/cpuidle/cpuidle-psci.c
@@ -73,28 +73,22 @@ static int __init psci_dt_parse_state_node(struct device_node *np, u32 *state)
 	return 0;
 }
 
-static int __init psci_dt_cpu_init_idle(struct device_node *cpu_node, int cpu)
+static int __init psci_dt_cpu_init_idle(struct device_node *cpu_node,
+				unsigned int state_nodes, int cpu)
 {
-	int i, ret = 0, count = 0;
+	int i, ret = 0;
 	u32 *psci_states;
 	struct device_node *state_node;
 
-	/* Count idle states */
-	while ((state_node = of_parse_phandle(cpu_node, "cpu-idle-states",
-					      count))) {
-		count++;
-		of_node_put(state_node);
-	}
-
-	if (!count)
-		return -ENODEV;
-
-	psci_states = kcalloc(count, sizeof(*psci_states), GFP_KERNEL);
+	psci_states = kcalloc(state_nodes, sizeof(*psci_states), GFP_KERNEL);
 	if (!psci_states)
 		return -ENOMEM;
 
-	for (i = 0; i < count; i++) {
+	for (i = 0; i < state_nodes; i++) {
 		state_node = of_parse_phandle(cpu_node, "cpu-idle-states", i);
+		if (!state_node)
+			break;
+
 		ret = psci_dt_parse_state_node(state_node, &psci_states[i]);
 		of_node_put(state_node);
 
@@ -104,6 +98,11 @@ static int __init psci_dt_cpu_init_idle(struct device_node *cpu_node, int cpu)
 		pr_debug("psci-power-state %#x index %d\n", psci_states[i], i);
 	}
 
+	if (i != state_nodes) {
+		ret = -ENODEV;
+		goto free_mem;
+	}
+
 	/* Idle states parsed correctly, initialize per-cpu pointer */
 	per_cpu(psci_power_state, cpu) = psci_states;
 	return 0;
@@ -113,7 +112,7 @@ static int __init psci_dt_cpu_init_idle(struct device_node *cpu_node, int cpu)
 	return ret;
 }
 
-static __init int psci_cpu_init_idle(unsigned int cpu)
+static __init int psci_cpu_init_idle(unsigned int cpu, unsigned int state_nodes)
 {
 	struct device_node *cpu_node;
 	int ret;
@@ -129,7 +128,7 @@ static __init int psci_cpu_init_idle(unsigned int cpu)
 	if (!cpu_node)
 		return -ENODEV;
 
-	ret = psci_dt_cpu_init_idle(cpu_node, cpu);
+	ret = psci_dt_cpu_init_idle(cpu_node, state_nodes, cpu);
 
 	of_node_put(cpu_node);
 
@@ -185,7 +184,7 @@ static int __init psci_idle_init_cpu(int cpu)
 	/*
 	 * Initialize PSCI idle states.
 	 */
-	ret = psci_cpu_init_idle(cpu);
+	ret = psci_cpu_init_idle(cpu, ret);
 	if (ret) {
 		pr_err("CPU %d failed to PSCI idle\n", cpu);
 		goto out_kfree_drv;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
