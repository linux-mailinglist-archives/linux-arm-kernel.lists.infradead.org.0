Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D00C1BDB8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 21:24:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fJdmelHuNS+H60mzqEmLLRCJeX1DpDetpmtXjXtqvdE=; b=c/mVUmDpZg+fhlna4UhQoc0IUk
	dqvbjy1KKPskaBbIVsl3aU02VpbmXLj9oLXBtJ1F+Q6koAy4zBk4kRBzP05+2XRZO3sFURbCft2Si
	xFR2SisJSJi+lyMx1FMkj2rwr5RBE0siGizRAOER+FuC5llAfoyWP0npkIqzeOg+eTAvW/LtFL7lm
	Hxca8Nbyesv59kav35SOs4r+QxW5o9ss267emgTRMbSt/dekz43s6Dbkxa0oXH9ntvb2+ef15H9Hx
	IKfO7yms8sYtf0bQqLaerWHYug2fLrsPwL9e8ncbyoKskXDjg4UFtGm7BNgnA67mOErhr5nzwS6cz
	CwcLtBqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQGYA-0001WH-OP; Mon, 13 May 2019 19:23:50 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQGXY-0000s0-MP
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 19:23:16 +0000
Received: by mail-lj1-x243.google.com with SMTP id d15so12061788ljc.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 May 2019 12:23:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=F5AEltUKfed5w7dHNisHSX8S1wBzU63rf2dZ2cHwfSs=;
 b=ihwtaKGHm5HWQDkvQkty6/m7be/aDE2Ue2EF8h2aUL7J5q3dbOjBQl/7riCd7391Bk
 6mt4yavZncehbr1dqBkKzd5+XE6F5UVYInUI/aMbhArbPszaqyttf3MVOOEailuYdP3R
 fucpydZkU9Xe7taVXR0KfQZCmk+WPepu9Fz5czOMEkZzxq0cyv/O9xzdwPbelTwhxiAt
 AgLFcBQz4OuHsSIHPRYM79Mx2eXRaijBK738WDXPRnaM8wcxzwaXGNHAtjVqh3N6NVfn
 PALPweQK2a7Hw+qtF1599CtdwmhaZJP3Loxm6jMlG87c2/LPW1b4sxzN22fBdrGhOVkv
 xgGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=F5AEltUKfed5w7dHNisHSX8S1wBzU63rf2dZ2cHwfSs=;
 b=kPyBRSi7vh2skwpTURkJtYF7dyAqc3IoiNYMRlLKFFbBxT0r7ANGn1ei6Q6bQJwiTE
 bMwqwbtrQkK1TmPbpCUQ6R7X51gg9ugZmjJaul/mYnrFpwlf/6elVGcZ/Zq1ifKh/1bM
 UtZ5wzl2hBdn8LAZJNnR68BxS8PWaGBg5zQGOiEZcHq5DUOng9I9tCZfBG3DnYDpMbxE
 FJK7xGddMDFqVRQBuq8vTkCIatdC5atIUsSiT+BbA8m2bT8zZD/f97YLWWoqnnYoDtiR
 DyAFz3UrEKp1W/36mrbTZIZ8HN/Cr4pEEAthdozXzB0hVGohXvuWJbvSyCTwGPsDiXXv
 zjAw==
X-Gm-Message-State: APjAAAUWMt6NZNZAzaZeXPPlpyG0yJKAtc8Gu+xdhKUNwLEHFIB5jXOY
 EMYtvpdohFvOgyNxmzPkp1nUZA==
X-Google-Smtp-Source: APXvYqxS293Cibnm8BvM4OA/7mePaZMMHGVjPn5T9aLCXEe34R5mqSI/nCjgK/Ib9ssZWuTZNP1Trw==
X-Received: by 2002:a2e:c41:: with SMTP id o1mr8693546ljd.23.1557775391156;
 Mon, 13 May 2019 12:23:11 -0700 (PDT)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id q21sm3449365lfa.84.2019.05.13.12.23.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 13 May 2019 12:23:10 -0700 (PDT)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Mark Rutland <mark.rutland@arm.com>, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 03/18] cpuidle: dt: Support hierarchical CPU idle states
Date: Mon, 13 May 2019 21:22:45 +0200
Message-Id: <20190513192300.653-4-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190513192300.653-1-ulf.hansson@linaro.org>
References: <20190513192300.653-1-ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_122313_052499_7C7C04C7 
X-CRM114-Status: GOOD (  12.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
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
 "Raju P . L . S . S . S . N" <rplsssn@codeaurora.org>,
 Lina Iyer <lina.iyer@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Lina Iyer <lina.iyer@linaro.org>

Currently CPU's idle states are represented in a flattened model, via the
"cpu-idle-states" binding from within the CPU's device nodes.

Support the hierarchical layout during parsing and validating of the CPU's
idle states. This is simply done by calling the new OF helper,
of_get_cpu_state_node().

Suggested-by: Sudeep Holla <sudeep.holla@arm.com>
Signed-off-by: Lina Iyer <lina.iyer@linaro.org>
Reviewed-by: Daniel Lezcano <daniel.lezcano@linaro.org>
Co-developed-by: Ulf Hansson <ulf.hansson@linaro.org>
Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
---

Changes:
	- None.

---
 drivers/cpuidle/dt_idle_states.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/cpuidle/dt_idle_states.c b/drivers/cpuidle/dt_idle_states.c
index add9569636b5..97ad25399ca8 100644
--- a/drivers/cpuidle/dt_idle_states.c
+++ b/drivers/cpuidle/dt_idle_states.c
@@ -114,8 +114,7 @@ static bool idle_state_valid(struct device_node *state_node, unsigned int idx,
 	for (cpu = cpumask_next(cpumask_first(cpumask), cpumask);
 	     cpu < nr_cpu_ids; cpu = cpumask_next(cpu, cpumask)) {
 		cpu_node = of_cpu_device_node_get(cpu);
-		curr_state_node = of_parse_phandle(cpu_node, "cpu-idle-states",
-						   idx);
+		curr_state_node = of_get_cpu_state_node(cpu_node, idx);
 		if (state_node != curr_state_node)
 			valid = false;
 
@@ -173,7 +172,7 @@ int dt_init_idle_driver(struct cpuidle_driver *drv,
 	cpu_node = of_cpu_device_node_get(cpumask_first(cpumask));
 
 	for (i = 0; ; i++) {
-		state_node = of_parse_phandle(cpu_node, "cpu-idle-states", i);
+		state_node = of_get_cpu_state_node(cpu_node, i);
 		if (!state_node)
 			break;
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
