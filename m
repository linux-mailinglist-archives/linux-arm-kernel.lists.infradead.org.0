Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51DC51BDBB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 21:24:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xJCcoDoNGu218edz5jZ2BmOqWqmnQ8ght1LbbY2Lh3k=; b=DXbOsxqIzBPf25L2ku1BugN1nT
	srfXkXT0tSZdpCakaJqSZ2LNW4AQg3SUq5Jwy17K1ndv28zQUbm196u5TTLDhdAZawfceHw1C+t8g
	P+7Azm3FQgAux/nzQxoIEL/hWCU9A7J+/khsTNyZq2Smahe1ersWANOiu5TAwqxobW9d3y1hwmIy4
	eUOiofyJIegRxJsml+79/s0hMlBe/L0h+ysgCgWLFEgxbzsy7/Ve9huJYlAec5rc9tNVSFMQ76Rrw
	9zoEzUwThyOHawol3877GSa23NOPfrL+1Mt0z/BHydVbxxoDAWNRd/5v+/h6aJVb35IJPwi0QYXue
	VEtv4fkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQGYn-0002MB-Dc; Mon, 13 May 2019 19:24:29 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQGXd-0000xh-75
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 19:23:19 +0000
Received: by mail-lj1-x241.google.com with SMTP id 14so12078190ljj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 May 2019 12:23:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=h+mBrphGE8r6kKGvHPN2hwwjlulIBItsLgwHs6HK8tw=;
 b=z1qwoOxfxP8ws6K0eXeqsi0M8rg4AiA8aC+/rjIVQbuJPoKSAquEg4iySw4L3cN5x8
 jjlTDZuSJciHj+R09dPL+gALzrtUwcXOVPCSnr1zV5JjUxXC+jTH/bs1uFkycg9wYG8L
 3ilSYwaJ4Q/40soKA1mrFGCJYk6E1a5pkxpihVokTsS7TPrP5nTxTdm7Jw+QAnCFWTxO
 uSmb50ZRpi0pFqGue364kuAdvMUhtO582nHQ8c2OptpkJde/IrOfk1AUVO3SIIewRV7N
 vt3h/dJVN+5qmhzobmOPYqBY1Id026c5O41E9qZf/leKI1FYytDGLpKNJm1MNCm4XpMm
 8yxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=h+mBrphGE8r6kKGvHPN2hwwjlulIBItsLgwHs6HK8tw=;
 b=PWVs+mTc9rqsmrOiXtCul/TP6BFIhcKXOXjZm95VI7bo7jVZT9ouSLG6dJPEqfnntV
 TpondbPc/s5pMA4nJrlCS2Ygl47KrVbE8339iOTPfluKjFAZTHRaXFwARPuHdeEXsjEj
 +HFMTOcA6JvGC+Vt3swCggnrqbAVrh47q0PfY01zmLBVOK5s1zTsU0gkszj8IncVUD5J
 n9Vk9znpEfK9eVq229bNP1xHqtFuBSEGVgNqgUfsS1BOVsou5WYKba2QEng4aWqPx46i
 yuXbfqvrmHu43zvXwbnG08f/l+AezxEmszrPRtd2WKtW4xevjGAfGAvgVWF2AXwf+2pF
 qggA==
X-Gm-Message-State: APjAAAVldSdyCh9vifS0aXph80yLWpk2LxvEDRzW2IOF6zs08MtdZ/3r
 r5hjSBF5Maf1owbb3idr6/YBzg==
X-Google-Smtp-Source: APXvYqyeVfJKdGokU/doivXzmlRxtYYG8D4KXKrSzXVVKA9wCQvIkwAm3xVkfpldRQZcHwdKpXbyIA==
X-Received: by 2002:a2e:9241:: with SMTP id v1mr14737256ljg.6.1557775395160;
 Mon, 13 May 2019 12:23:15 -0700 (PDT)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id q21sm3449365lfa.84.2019.05.13.12.23.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 13 May 2019 12:23:14 -0700 (PDT)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Mark Rutland <mark.rutland@arm.com>, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 05/18] drivers: firmware: psci: Simplify state node parsing
Date: Mon, 13 May 2019 21:22:47 +0200
Message-Id: <20190513192300.653-6-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190513192300.653-1-ulf.hansson@linaro.org>
References: <20190513192300.653-1-ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_122317_425293_03C42913 
X-CRM114-Status: GOOD (  16.22  )
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

Instead of iterating through all the state nodes in DT, to find out how
many states that needs to be allocated, let's use the number already known
by the cpuidle driver. In this way we can drop the iteration altogether.

Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
Acked-by: Daniel Lezcano <daniel.lezcano@linaro.org>
---

Changes:
	- None.

---
 drivers/firmware/psci/psci.c | 25 ++++++++++++-------------
 1 file changed, 12 insertions(+), 13 deletions(-)

diff --git a/drivers/firmware/psci/psci.c b/drivers/firmware/psci/psci.c
index 88e90e0f06b9..9c2180bcee4c 100644
--- a/drivers/firmware/psci/psci.c
+++ b/drivers/firmware/psci/psci.c
@@ -306,26 +306,20 @@ static int psci_dt_parse_state_node(struct device_node *np, u32 *state)
 static int psci_dt_cpu_init_idle(struct cpuidle_driver *drv,
 			struct device_node *cpu_node, int cpu)
 {
-	int i, ret = 0, count = 0;
+	int i, ret = 0, num_state_nodes = drv->state_count - 1;
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
+	psci_states = kcalloc(num_state_nodes, sizeof(*psci_states),
+			GFP_KERNEL);
 	if (!psci_states)
 		return -ENOMEM;
 
-	for (i = 0; i < count; i++) {
+	for (i = 0; i < num_state_nodes; i++) {
 		state_node = of_parse_phandle(cpu_node, "cpu-idle-states", i);
+		if (!state_node)
+			break;
+
 		ret = psci_dt_parse_state_node(state_node, &psci_states[i]);
 		of_node_put(state_node);
 
@@ -335,6 +329,11 @@ static int psci_dt_cpu_init_idle(struct cpuidle_driver *drv,
 		pr_debug("psci-power-state %#x index %d\n", psci_states[i], i);
 	}
 
+	if (i != num_state_nodes) {
+		ret = -ENODEV;
+		goto free_mem;
+	}
+
 	/* Idle states parsed correctly, initialize per-cpu pointer */
 	per_cpu(psci_power_state, cpu) = psci_states;
 	return 0;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
