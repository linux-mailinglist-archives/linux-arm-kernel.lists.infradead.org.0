Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2F891BDCC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 21:25:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=utqVynMMW2q9SXvmK9qb3eJnSKthHI7pfE+o1qDKIt8=; b=aQ/OIJVJoZzBo9jIlnXXxf4p5x
	TbP/XVqH3qfwFuRkW6DgmWRByblm7gU+OMzfS1mAmKJB2gDh6mCoxS33tWgt48XhkEUuFMObCPkCM
	UV2fu54UKAQtLYA6ryd+M/pC/XBmy+rSs7nj8NOd4QZwHBr5rqxOYJLEzHB10lVRAq/8hTc+ml4QD
	dmqDhSRk1haz6Mw+qwY4Zq0ql69/BIlbLkUQz2Qdcb4QWRLtXLH36jPpcGMkrxdsNmDJhdw9N8BiS
	6sj9es183R36O/LX955HsJgEBAtOFjYOPfwwypUi5yGJzQl28kiFgJQScfCHqFiJjF7xfFIBxTE0N
	nfbjD7GA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQGZi-0004kV-9R; Mon, 13 May 2019 19:25:26 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQGXn-0001Df-Np
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 19:23:42 +0000
Received: by mail-lf1-x144.google.com with SMTP id h126so9929688lfh.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 May 2019 12:23:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=XTy06JPjF+Flbr9WT5p68Fa18r9/HEAcUQNjh0fiSxI=;
 b=xNwX3XNe/fEpvPHbUQrZ5x+LqEpdA/RH0mdOzfdRzVQASPFEcNy/mFD0OfHWCToaZ0
 PrLL4rnH27RSud7LIy378Wj4Wj8Hh9/Xt0I8VfOlVZRAh/O3hbwv62GHEi7+LF8SOLO2
 tt3BCSJoO1lX0RHEpuYlTM6SspGottirXeynSYFliz9YP8Y+Zzt7m+A613Qa7wbd7vf9
 9Bq4pR31rg1WKJVhfAuJ5QPRwmYRPdi4ueAQ4ADAi0B9GO8o48sWaERmDbLHwHzGEjEy
 1VAPQLLEoIZKP/kHIeO1MNUF7XhwAH5ChUeHgtbVhjw8ggkBEECcBqw/N9bFX+WErUR/
 8B/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=XTy06JPjF+Flbr9WT5p68Fa18r9/HEAcUQNjh0fiSxI=;
 b=qeVm0E+uX1VxyFwzmbbMTKBMUaq+UCNvzZzy5rgxmVAgTISaYROmpGHfmACi/Cj/J0
 8Gm9tmae7bHj0BF+4TiNRwuubANodXIBKeO+jOKTEFkiEq4rRktM00cI+e1BwmdW/69J
 MXBSBBfBP4IRyMc28wKeAlX6Dny+nPDWBq4OWy01/HoNAcJW3Vu9edOxaJnAvoWaWiCD
 cm5mhdxm/8VKf2PDsXb+7Fc3q6jAc01DeJ3FQPxLgxqqkaxSL/6jtL1D4iUti3xBbqOH
 7NlzZw2dLiLa6/+OcDWsYskYC8p8aeBszjP4m/pvyYsnNU7nC+N1MqlC4rLMG6a5wYEV
 D1VA==
X-Gm-Message-State: APjAAAVRkMKle5ZQ427XV8tfY/RLGxkeg7Wslt2CkPFmuBMoDGfZn30w
 L7ySGVyMSst5AAfRIoEfRDUFTA==
X-Google-Smtp-Source: APXvYqy6lylq/7RbTmCodW9mEbVCUkckcxopczjrEblxG06MxFPhpTcYSizZjnHDtDbPl63l4lZbOw==
X-Received: by 2002:ac2:410e:: with SMTP id b14mr7738149lfi.100.1557775406156; 
 Mon, 13 May 2019 12:23:26 -0700 (PDT)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id q21sm3449365lfa.84.2019.05.13.12.23.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 13 May 2019 12:23:25 -0700 (PDT)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Mark Rutland <mark.rutland@arm.com>, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 11/18] drivers: firmware: psci: Introduce
 psci_dt_topology_init()
Date: Mon, 13 May 2019 21:22:53 +0200
Message-Id: <20190513192300.653-12-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190513192300.653-1-ulf.hansson@linaro.org>
References: <20190513192300.653-1-ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_122328_299861_13EF9A64 
X-CRM114-Status: GOOD (  16.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
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

To be able to initiate the PM domain data structures for PSCI at a specific
point during boot, let's export a new init function,
psci_dt_topology_init(). If CONFIG_CPU_IDLE is set, it calls
psci_dt_init_pm_domains(), which performs the actual initialization.

Note that, it may seem like feasible idea to hook into the existing
psci_dt_init() function, rather than adding a new separate init function.
However, this doesn't work because psci_dt_init() is called early in the
boot sequence, when allocating dynamic data structures isn't yet possible.

Subsequent changes calls this new init function.

Finally, following changes on top needs to know whether the hierarchical PM
domain topology is used or not. Therefore, let's store this information in
an internal PSCI flag.

Co-developed-by: Lina Iyer <lina.iyer@linaro.org>
Signed-off-by: Lina Iyer <lina.iyer@linaro.org>
Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
---

Changes:
	- Moved some code inside "#ifdef CONFIG_CPU_IDLE".
	- Updated changelog.

---
 drivers/firmware/psci/psci.c | 30 ++++++++++++++++++++++++++++++
 include/linux/psci.h         |  2 ++
 2 files changed, 32 insertions(+)

diff --git a/drivers/firmware/psci/psci.c b/drivers/firmware/psci/psci.c
index bfef300b7ebe..28745234b53f 100644
--- a/drivers/firmware/psci/psci.c
+++ b/drivers/firmware/psci/psci.c
@@ -297,6 +297,7 @@ static int __init psci_features(u32 psci_func_id)
 #ifdef CONFIG_CPU_IDLE
 static DEFINE_PER_CPU_READ_MOSTLY(u32 *, psci_power_state);
 static DEFINE_PER_CPU(u32, domain_state);
+static bool psci_dt_topology;
 
 static inline u32 psci_get_domain_state(void)
 {
@@ -480,6 +481,19 @@ static const struct cpuidle_ops psci_cpuidle_ops __initconst = {
 
 CPUIDLE_METHOD_OF_DECLARE(psci, "psci", &psci_cpuidle_ops);
 #endif
+
+static int __init _psci_dt_topology_init(struct device_node *np)
+{
+	int ret;
+
+	/* Initialize the CPU PM domains based on topology described in DT. */
+	ret = psci_dt_init_pm_domains(np);
+	psci_dt_topology = ret > 0;
+
+	return ret;
+}
+#else
+static inline int _psci_dt_topology_init(struct device_node *np) { return 0; }
 #endif
 
 static int psci_system_suspend(unsigned long unused)
@@ -758,6 +772,22 @@ int __init psci_dt_init(void)
 	return ret;
 }
 
+int __init psci_dt_topology_init(void)
+{
+	struct device_node *np;
+	int ret;
+
+	np = of_find_matching_node_and_match(NULL, psci_of_match, NULL);
+	if (!np)
+		return -ENODEV;
+
+	/* Initialize the topology described in DT. */
+	ret = _psci_dt_topology_init(np);
+
+	of_node_put(np);
+	return ret;
+}
+
 #ifdef CONFIG_ACPI
 /*
  * We use PSCI 0.2+ when ACPI is deployed on ARM64 and it's
diff --git a/include/linux/psci.h b/include/linux/psci.h
index 4f29a3bff379..16beccccbbcc 100644
--- a/include/linux/psci.h
+++ b/include/linux/psci.h
@@ -55,8 +55,10 @@ extern struct psci_operations psci_ops;
 
 #if defined(CONFIG_ARM_PSCI_FW)
 int __init psci_dt_init(void);
+int __init psci_dt_topology_init(void);
 #else
 static inline int psci_dt_init(void) { return 0; }
+static inline int psci_dt_topology_init(void) { return 0; }
 #endif
 
 #if defined(CONFIG_ARM_PSCI_FW) && defined(CONFIG_ACPI)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
