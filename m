Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DF86D284C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 13:43:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xsov6KUz45dH+mIixgEn39ziqaGz9qhRbKJyVgAdSoQ=; b=WrTzQHaFFSaZaK0w0cCrSQzoh3
	nr5JWEEplpq3t1OHufRyloChKHdVHvxFyh7B5T2Njb+5ZmLo9RCsdXKiyTe8bYTslIBedwqLoW93g
	ztlt6yFN/rPSO85KWYxmejarILjtLzLdzeYVu8UOHmTj6pCFxki0N0EVhAlReEl8QEcA1Q5DK+ChV
	SF3d8CUMTalLK7SsbKfMoTXfJN2s0jC4MM3W708/DOzF8M4Vtf3dMnfG7GGLR4kkn/4dyvsfigHIA
	n9FePULne5WFFEPxxInmtqMzYhBYr2lZRe/CNewGWSO6WECzQV40H8rlnxbh86rIU0xZrXcrXtKOw
	ZLdrIhIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIWqe-0005K3-Jc; Thu, 10 Oct 2019 11:43:12 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIWnw-0002uB-JE
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 11:40:27 +0000
Received: by mail-lj1-x242.google.com with SMTP id l21so5851209lje.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 10 Oct 2019 04:40:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=xwB/tavfIMYf7rxHdkrDdviMkDSYXD3kklyLW60B66Q=;
 b=y5fnfZfzF20HGrbuklXhoX4IRAb3sw2pVHlyIgINlkZsqTCt4OVzOnIglZ5AC79CtD
 DsNOJpfSilfGfXZtv/tEgCB3gQiuhIGvs1zshF7zwNcTf2qOF8Fc/rMwNcZXiZTL+kw6
 Yzr2TdiZrnORg1wGpq19yH9Xcs0CIUPV2lm1fsXVYSjXlq+ZlST41yjYA2oN1KG7fjS6
 5gBBGJP6W0zkh27WfEp5bCy2cXFBBYwBVSQxDFzIbvzoUWu2TihJdw0pV2UQGtwkzvsY
 tHxQK36pjsfWSB57iJO/4O/taNsevtQefN+dNqFOeyJ3soL1660gFAXKDgtQIhwhU66S
 B0UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=xwB/tavfIMYf7rxHdkrDdviMkDSYXD3kklyLW60B66Q=;
 b=rpNQmbD2CsOhknUI72gWev4yhNvBP1xIjo5RMmT+WLrVVF6etnaZvPvlHbU0U0TF4v
 bIacPNjR58RPdrabSErt6LmS5gKHmwGLhQiyqH9XtLY026UPmyaMlarfasJLQIGOHcJN
 Nwp7n8c6y418cv62Rg16IL6M14bzSiBQKAZUKSau9v53ATXpTzLkrNo48K1R5QY/nKSi
 adjlsVPB8O3ya1/c8cFbVcLAqXmJEKsGJdTlukNvNQpY6r0Li9piE/RCLkRFOfQr6y+V
 7E4XH/e3Rf+/6TKhweDmW+Fi7TU1uiBPBVDVTgNg2by5fwBEad4okuG6pdTm7kxrgrT0
 2WGQ==
X-Gm-Message-State: APjAAAVZg+dCnxGtiL4Vzt3ATrUxdOp5OwVisX4rvYYPbL97Vw3IZGf2
 UL0Mr4eg7UAIcIFFTqLqhdXW6Q==
X-Google-Smtp-Source: APXvYqx9XzUujAF/LwxrlZOzoBs1q0AvlrOroFuQxRIn7MA18US1H4Ia1dTMLsrPBuGfqUBKeebXeA==
X-Received: by 2002:a2e:9f4d:: with SMTP id v13mr6239064ljk.226.1570707622756; 
 Thu, 10 Oct 2019 04:40:22 -0700 (PDT)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id p3sm1168937ljn.78.2019.10.10.04.40.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Oct 2019 04:40:22 -0700 (PDT)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Mark Rutland <mark.rutland@arm.com>, Lina Iyer <ilina@codeaurora.org>,
 linux-pm@vger.kernel.org
Subject: [PATCH 11/13] cpuidle: psci: Attach CPU devices to their PM domains
Date: Thu, 10 Oct 2019 13:39:35 +0200
Message-Id: <20191010113937.15962-12-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191010113937.15962-1-ulf.hansson@linaro.org>
References: <20191010113937.15962-1-ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_044024_682507_DDD2048B 
X-CRM114-Status: GOOD (  15.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
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

In order to enable a CPU to be power managed through its PM domain, let's
try to attach it by calling psci_dt_attach_cpu() during the cpuidle
initialization.

psci_dt_attach_cpu() returns a pointer to the attached struct device, which
later should be used for runtime PM, hence we need to store it somewhere.
Rather than adding yet another per CPU variable, let's create a per CPU
struct to collect the relevant per CPU variables.

Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
---
 drivers/cpuidle/cpuidle-psci.c | 23 +++++++++++++++++++----
 1 file changed, 19 insertions(+), 4 deletions(-)

diff --git a/drivers/cpuidle/cpuidle-psci.c b/drivers/cpuidle/cpuidle-psci.c
index a16467daf99d..1510422c7a53 100644
--- a/drivers/cpuidle/cpuidle-psci.c
+++ b/drivers/cpuidle/cpuidle-psci.c
@@ -23,7 +23,12 @@
 #include "cpuidle-psci.h"
 #include "dt_idle_states.h"
 
-static DEFINE_PER_CPU_READ_MOSTLY(u32 *, psci_power_state);
+struct psci_cpuidle_data {
+	u32 *psci_states;
+	struct device *dev;
+};
+
+static DEFINE_PER_CPU_READ_MOSTLY(struct psci_cpuidle_data, psci_cpuidle_data);
 static DEFINE_PER_CPU(u32, domain_state);
 
 void psci_set_domain_state(u32 state)
@@ -45,7 +50,7 @@ static int psci_enter_idle_state(struct cpuidle_device *dev,
 				struct cpuidle_driver *drv, int idx)
 {
 	int ret;
-	u32 *states = __this_cpu_read(psci_power_state);
+	u32 *states = __this_cpu_read(psci_cpuidle_data.psci_states);
 	u32 state = psci_get_domain_state();
 
 	if (!state && idx)
@@ -103,7 +108,9 @@ static int __init psci_dt_cpu_init_idle(struct device_node *cpu_node,
 {
 	int i, ret = 0;
 	u32 *psci_states;
+	struct device *dev;
 	struct device_node *state_node;
+	struct psci_cpuidle_data *data = per_cpu_ptr(&psci_cpuidle_data, cpu);
 
 	psci_states = kcalloc(state_nodes, sizeof(*psci_states), GFP_KERNEL);
 	if (!psci_states)
@@ -128,8 +135,16 @@ static int __init psci_dt_cpu_init_idle(struct device_node *cpu_node,
 		goto free_mem;
 	}
 
-	/* Idle states parsed correctly, initialize per-cpu pointer */
-	per_cpu(psci_power_state, cpu) = psci_states;
+	dev = psci_dt_attach_cpu(cpu);
+	if (IS_ERR(dev)) {
+		ret = PTR_ERR(dev);
+		goto free_mem;
+	}
+
+	data->dev = dev;
+
+	/* Idle states parsed correctly, store them in the per-cpu struct. */
+	data->psci_states = psci_states;
 	return 0;
 
 free_mem:
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
