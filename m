Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B3C41BDBD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 21:24:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=C8LH10oQAFGapTMPurta41i2ant0Z8SOd7sBoNyJ1r4=; b=Z5MFLPFfUgxJdVgXJQEnpTtfGh
	T7idRprLkruG9MfmWK2imTweOeNLi6nPBqRMianMiM8Cd1w++kMVr0JdX6fwZGYBpJFZPfUHu3BeL
	tfdcZK/f++dCOcfQDq7VfLlKsXDjKWgtCWEf/P6oBc5/O0T7JWLlRt3WkLmqpPHA0qsliBWiBQD6+
	hDQgNWojYXdhcpSLOoq3a3KG8130Di3MtMOjLLHSIg6X2a7t8yNax+ZnPnKoo80OSTmXgQS1fWJ8R
	97MvHlZZblybcYaDJJslRpKlfmvJfNT8NXWtNwVGFU57qdVZaoa2XC9OCMOUTjnwvYOWzzKIX4RsD
	liKopbLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQGYx-0002ZV-Vv; Mon, 13 May 2019 19:24:40 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQGXg-000136-U7
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 19:23:26 +0000
Received: by mail-lf1-x142.google.com with SMTP id l26so4284390lfh.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 May 2019 12:23:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=o5+9luZ7sCLYkQQCN67HXS68IdQpduZUcgaX5OCzqos=;
 b=FV//hyoMnEuhzttuAwy+3IjGHtAXZchGsvSZSUyMAJmSDn6Qk/tkPJX+DlL6/5jYzf
 jjMWLRDOaqPCtvzv2sKC48W9o1aofdOROz4I4viJvVGZPZnvq+pyPn3BVrwCJB/hIPhj
 xoxPevY6gXOnHpj09x2OwoTmPkocCKVcE7Z93ckD9UyadrfNo3LJ7pOTKkOK+xuf6SLV
 Afnne5GeWsYyFeQRUOEE13gZvwjrLN5xx482cgJ/AFWRxxE3zyhRueMlyLJa7HIuxd+d
 tSoTPkin1gaqwGLGobS1zs6UV3QuJLhH0X8bHUVoBjRumtVozN5vQTbZ8hJpt19iAGq+
 W/Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=o5+9luZ7sCLYkQQCN67HXS68IdQpduZUcgaX5OCzqos=;
 b=AR97T2pynv2/E2qSuwL0kgEMnEqItRxT/hBslGA0kxwV9PuZZIEeaUE0snvSJTPLfr
 +yXCnblYjgZUB5Yv+wr0p/lDKl7CF3TXASjZlorKpa5fz9CN7troxsdbN53EKq70cagN
 N6MHQpi6m9z5kzJ5cQnSp9SvWWsMb0OPVL99PksvQSlagaceuHJtfOlp1IPPoDanErim
 CX/1Evk/uQT4ucpWhGxlKxgzzkI3G0o0C3Y8m9T/WG0BzNeH/7OnfddORAUnANKc/EVf
 iRMcLBWx2YdXOX+DAxUERx2qOgjlJZ6ZMRw7vQyH4n5Yye+Y75d1Sztx6DSOV2hTY8qG
 m9Rg==
X-Gm-Message-State: APjAAAXYjnA2VPOFsqXTm0NSl5Kc6coC7qPeeMBW+bn5W7qpkqx0v65a
 rcPze6CYuubEjBnVoV1K7s1nZw==
X-Google-Smtp-Source: APXvYqw2t+LdElc4Xj4e0QzMBJlLjpK3q+ffxnx73kmsSfuwHRWHbqmUdPJVxZsVxNzXZK8vAzoQbQ==
X-Received: by 2002:a19:4a04:: with SMTP id x4mr14103234lfa.124.1557775398769; 
 Mon, 13 May 2019 12:23:18 -0700 (PDT)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id q21sm3449365lfa.84.2019.05.13.12.23.17
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 13 May 2019 12:23:18 -0700 (PDT)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Mark Rutland <mark.rutland@arm.com>, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 07/18] drivers: firmware: psci: Prepare to use OS initiated
 suspend mode
Date: Mon, 13 May 2019 21:22:49 +0200
Message-Id: <20190513192300.653-8-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190513192300.653-1-ulf.hansson@linaro.org>
References: <20190513192300.653-1-ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_122321_448766_45D8E227 
X-CRM114-Status: GOOD (  18.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 TVD_PH_BODY_ACCOUNTS_PRE The body matches phrases such as
 "accounts suspended", "account credited", "account verification"
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

The per CPU variable psci_power_state, contains an array of fixed values,
which reflects the corresponding arm,psci-suspend-param parsed from DT, for
each of the available CPU idle states.

This isn't sufficient when using the hierarchical CPU topology in DT in
combination with having PSCI OS initiated (OSI) mode enabled. More
precisely, in OSI mode, Linux is responsible of telling the PSCI FW what
idle state the cluster (a group of CPUs) should enter, while in PSCI
Platform Coordinated (PC) mode, each CPU independently votes for an idle
state of the cluster.

For this reason, let's introduce an additional per CPU variable called
domain_state and implement two helper functions to read/write its values.
Following patches, which implements PM domain support for PSCI, will use
the domain_state variable and set it to corresponding bits that represents
the selected idle state for the cluster.

Finally, in psci_cpu_suspend_enter() and psci_suspend_finisher(), let's
take into account the values in the domain_state, as to get the complete
suspend parameter.

Co-developed-by: Lina Iyer <lina.iyer@linaro.org>
Signed-off-by: Lina Iyer <lina.iyer@linaro.org>
Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
---

Changes:
	- Clarify changelog.
	- Drop changes in psci_cpu_on() as it belongs in the patch for hotplug.
	- Move some code inside "#ifdef CONFIG_CPU_IDLE".

---
 drivers/firmware/psci/psci.c | 24 ++++++++++++++++++++----
 1 file changed, 20 insertions(+), 4 deletions(-)

diff --git a/drivers/firmware/psci/psci.c b/drivers/firmware/psci/psci.c
index b11560f7c4b9..4aec513136e4 100644
--- a/drivers/firmware/psci/psci.c
+++ b/drivers/firmware/psci/psci.c
@@ -285,6 +285,17 @@ static int __init psci_features(u32 psci_func_id)
 
 #ifdef CONFIG_CPU_IDLE
 static DEFINE_PER_CPU_READ_MOSTLY(u32 *, psci_power_state);
+static DEFINE_PER_CPU(u32, domain_state);
+
+static inline u32 psci_get_domain_state(void)
+{
+	return __this_cpu_read(domain_state);
+}
+
+static inline void psci_set_domain_state(u32 state)
+{
+	__this_cpu_write(domain_state, state);
+}
 
 static int psci_dt_parse_state_node(struct device_node *np, u32 *state)
 {
@@ -420,15 +431,17 @@ int psci_cpu_init_idle(struct cpuidle_driver *drv, unsigned int cpu)
 static int psci_suspend_finisher(unsigned long index)
 {
 	u32 *state = __this_cpu_read(psci_power_state);
+	u32 composite_state = state[index - 1] | psci_get_domain_state();
 
-	return psci_ops.cpu_suspend(state[index - 1],
-				    __pa_symbol(cpu_resume));
+	return psci_ops.cpu_suspend(composite_state, __pa_symbol(cpu_resume));
 }
 
 int psci_cpu_suspend_enter(unsigned long index)
 {
 	int ret;
 	u32 *state = __this_cpu_read(psci_power_state);
+	u32 composite_state = state[index - 1] | psci_get_domain_state();
+
 	/*
 	 * idle state index 0 corresponds to wfi, should never be called
 	 * from the cpu_suspend operations
@@ -436,11 +449,14 @@ int psci_cpu_suspend_enter(unsigned long index)
 	if (WARN_ON_ONCE(!index))
 		return -EINVAL;
 
-	if (!psci_power_state_loses_context(state[index - 1]))
-		ret = psci_ops.cpu_suspend(state[index - 1], 0);
+	if (!psci_power_state_loses_context(composite_state))
+		ret = psci_ops.cpu_suspend(composite_state, 0);
 	else
 		ret = cpu_suspend(index, psci_suspend_finisher);
 
+	/* Clear the domain state to start fresh when back from idle. */
+	psci_set_domain_state(0);
+
 	return ret;
 }
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
