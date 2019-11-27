Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3683D10ADC0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 11:32:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=FXTL4iN3TspNkgjTtJHhWeBpVVHP+tQ+8D9MGzrtZj8=; b=mINBvQo6Rh3O3WQGstM4l3lszD
	Xjd2Q99VU2s4qnPK69BpZc2Xb/p+KHlqbEZDQ34EWTNjrhbJgXGdl5GDz8xvHfxZBm/K6nI7U6PYy
	kOE4dZ3JO2UX1Ac+gcCHJHvNKYplc5i+/t8qplDWA0gUqcetG37VbKaf6brPlqIGzXwJFxtYpUOZ7
	arehakcffKQp0ClarTbEt+cXNku8jhKd5PQeQ1n8wWGvjVsm1zoyJxW/zz77FNsnsOKjM3ZE2krbj
	slRhYBKLhU5rliD8Ciy4I7tngoJ3mpiJgn2aV9NWXjAF0kDyxaSh6kn1whAXjdrQC+RGTjtH83gzh
	QQIwqy9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZuc2-0000Dy-1F; Wed, 27 Nov 2019 10:31:58 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZuZd-0005dy-A9
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 10:29:30 +0000
Received: by mail-lf1-x142.google.com with SMTP id v201so15659690lfa.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 Nov 2019 02:29:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=0I9CQqrUBNSTNqaPoYCSgGHqC9smjnctVcF6YeNShSQ=;
 b=vZ1vOFaHIZmtCdVywrWmJBZGQYGImGUJFdgpnJpTpl9g9lZQrdtiKa347hWKoVT80M
 2ui5XajnnMJ2OqZe4jTjaj6WoYmEaPHvpSpjJVAlkpqIEfv0Y1TLqmeCOQq1i+nWax2E
 5ZwTRG1xMvRIj8zQ/E/62lyspn9awdC/GJEmr5HNssUDKOjdv8LcTflXAXXYepmrrwSQ
 fQ4DEY6vociDIPd9KFLaCtvFZo9F0nNRnCCwSaoFWrz4OdLn2wETIbPvI6Drbgzbezzl
 vCXF1Jm6ldsz1uIfzHl8kckcS66a8S5yo1Vd03uGTo2LXIXjUj92xStSzceDPHBUe0bI
 n5Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=0I9CQqrUBNSTNqaPoYCSgGHqC9smjnctVcF6YeNShSQ=;
 b=NWp3BZVzA7yB0ktv1op9w7I8iDHEf9nLD0hXjkAInizjUSqBL/UaSOId2mC0m5ct9X
 fP+0uYY83xdycJyEVaD5rPn6BKluxv+47KJJN4IHvZLbsjU/0HTRInOwi2GvBzMs6lZ7
 +yZuS774BEf8k86Jh6ZkG0NrJ55JLv7nAC0kCfjULbWWiRbM/u+fNPmRlcnlwUvfxkol
 S5aQrSX2bloUBmSVOP8QDN3lyazMGZeyejJeXY9LyPI2IWgPwebDCFW713Id7rzsUI9t
 8AcGaVPV1z3+H/mxhrALieQnalQLGERKXBaJ3QNPJPWc3tU8lQByZOCKrS0BEuarjbAT
 s3ZA==
X-Gm-Message-State: APjAAAXGcYtjf71n9A/egXOqGy/NpPSDu+RUuimxUCd5XLpOf2EJ337P
 7MgxGG6o79GWukUJ1cGGBgdocA==
X-Google-Smtp-Source: APXvYqwNFTas3Bs6wwHxVh132p8pvVvuXzBhsyjzWLzItUAMqGGEB3v2xG26muuVMBiwA8d0S7N2BQ==
X-Received: by 2002:ac2:5ec3:: with SMTP id d3mr1270912lfq.176.1574850567136; 
 Wed, 27 Nov 2019 02:29:27 -0800 (PST)
Received: from uffe-XPS-13-9360.ideon.se ([85.235.10.227])
 by smtp.gmail.com with ESMTPSA id t9sm6868260ljj.19.2019.11.27.02.29.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 Nov 2019 02:29:26 -0800 (PST)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Rob Herring <robh+dt@kernel.org>, linux-pm@vger.kernel.org
Subject: [PATCH v3 06/13] cpuidle: psci: Simplify OF parsing of CPU idle state
 nodes
Date: Wed, 27 Nov 2019 11:29:07 +0100
Message-Id: <20191127102914.18729-7-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191127102914.18729-1-ulf.hansson@linaro.org>
References: <20191127102914.18729-1-ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_022929_422650_75D9B8F8 
X-CRM114-Status: GOOD (  17.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Iterating through the idle state nodes in DT, to find out the number of
states that needs to be allocated is unnecessary, as it has already been
done from dt_init_idle_driver(). Therefore, drop the iteration and use the
number we already have at hand.

Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>
---

Changes in v3:
	- None.

---
 drivers/cpuidle/cpuidle-psci.c | 35 +++++++++++++++++-----------------
 1 file changed, 17 insertions(+), 18 deletions(-)

diff --git a/drivers/cpuidle/cpuidle-psci.c b/drivers/cpuidle/cpuidle-psci.c
index 361985f52ddd..761359be50f2 100644
--- a/drivers/cpuidle/cpuidle-psci.c
+++ b/drivers/cpuidle/cpuidle-psci.c
@@ -73,30 +73,24 @@ static int __init psci_dt_parse_state_node(struct device_node *np, u32 *state)
 	return 0;
 }
 
-static int __init psci_dt_cpu_init_idle(struct device_node *cpu_node, int cpu)
+static int __init psci_dt_cpu_init_idle(struct device_node *cpu_node,
+					unsigned int state_count, int cpu)
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
-	count++; /* Add WFI state too */
-	psci_states = kcalloc(count, sizeof(*psci_states), GFP_KERNEL);
+	state_count++; /* Add WFI state too */
+	psci_states = kcalloc(state_count, sizeof(*psci_states), GFP_KERNEL);
 	if (!psci_states)
 		return -ENOMEM;
 
-	for (i = 1; i < count; i++) {
+	for (i = 1; i < state_count; i++) {
 		state_node = of_parse_phandle(cpu_node, "cpu-idle-states",
 					      i - 1);
+		if (!state_node)
+			break;
+
 		ret = psci_dt_parse_state_node(state_node, &psci_states[i]);
 		of_node_put(state_node);
 
@@ -106,6 +100,11 @@ static int __init psci_dt_cpu_init_idle(struct device_node *cpu_node, int cpu)
 		pr_debug("psci-power-state %#x index %d\n", psci_states[i], i);
 	}
 
+	if (i != state_count) {
+		ret = -ENODEV;
+		goto free_mem;
+	}
+
 	/* Idle states parsed correctly, initialize per-cpu pointer */
 	per_cpu(psci_power_state, cpu) = psci_states;
 	return 0;
@@ -115,7 +114,7 @@ static int __init psci_dt_cpu_init_idle(struct device_node *cpu_node, int cpu)
 	return ret;
 }
 
-static __init int psci_cpu_init_idle(unsigned int cpu)
+static __init int psci_cpu_init_idle(unsigned int cpu, unsigned int state_count)
 {
 	struct device_node *cpu_node;
 	int ret;
@@ -131,7 +130,7 @@ static __init int psci_cpu_init_idle(unsigned int cpu)
 	if (!cpu_node)
 		return -ENODEV;
 
-	ret = psci_dt_cpu_init_idle(cpu_node, cpu);
+	ret = psci_dt_cpu_init_idle(cpu_node, state_count, cpu);
 
 	of_node_put(cpu_node);
 
@@ -187,7 +186,7 @@ static int __init psci_idle_init_cpu(int cpu)
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
