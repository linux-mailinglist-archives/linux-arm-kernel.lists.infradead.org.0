Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B984012D13D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 15:52:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=COC0YxK5w+ywEYfSf34KBvXaU+Eaa+T047tZKZyq3q0=; b=GckFLqMXR2gdkX8m6Pt6SazxfK
	oqOepO53oBfV4QVaRqx0g8qoLsRZuP7JTg3ugVI19y5H6lNlpt8Trxnz7nJXGfDJNvMy/4ojRqA8S
	HqZn2AEWntdTx80s9wfnAzU3py09MTTHE898mWDjYun+Wy9PJUPpF235sOxLpik0HcqEobVWJ2fmt
	dnZjAYTYMsxDuKay2AweXCXY+OwVooyrkoA270kW2xUyk3t04/MVF5kjAZWAvthAQQqTk+mUZHvCm
	6KyQ1dxa/I4vdAgnZOyRHZQv9YnVOXOtcHj34skxDMqA6SWaG7d7vhOYiZPAhLyZrl/qoq4+b2Ffq
	Us1jOPlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilwP7-0005wP-Nm; Mon, 30 Dec 2019 14:52:21 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilwHR-0005L9-Le
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Dec 2019 14:44:35 +0000
Received: by mail-lj1-x243.google.com with SMTP id u71so33510099lje.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Dec 2019 06:44:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=F62eMHvAlv7nF3GieiDqKuJt4z4o+7t76tdVx5DtOc8=;
 b=xKKUKeIOyuo2s2W+neuN/sbW173fQNrou3tC+j6v7Ko/GuV217MXietDZKhjA3Uskq
 +oGLDtucefGKWLnVAkdy0EhggOa4EVlAW3GgnRf3Q///TpMXhcvS47NgjBgaWEZcvHEa
 sNPyCIaZTNdpqI7KOnRBwON5a3hrpogrN9d9Ws+HKMrAubG/J+RRvvjmiuXp2X5RAeLx
 6xSd9DNxkiJYPcmnO5P1a2Ljaf0kWX0Uv0AmAJhO8VjFrwyPTyVlJYM0h5cT5tIv0xYm
 DOGryt9AIk3n2s3w+VoyOqVcAFEb685q0iz4QCXHyot3S9+MEpZiMmxb1W2IxQea5VsV
 oLOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=F62eMHvAlv7nF3GieiDqKuJt4z4o+7t76tdVx5DtOc8=;
 b=loBHNaDYDddtl3zh+AtocgPWl868KYMpGkKCrBmXMlBKPhysSBGiKHExSn/8QRYXwS
 IBluQPm7xWdlT1X4W+pGY+YvOoSbAcC6FLYONCh+wgAEnD3lz/KfP9oRmqqa+3PAosE8
 7geW5yyEjuDtJLVpe/v6ZjTaAPNPVr9Z5cVG9pWCr5Co26TTXI1qqUlIm+EqvijtQeRI
 CTjZIalGhVJVK++Gfq30iu2TAqkXFJTKPORHv6j0JMSr1QZ9cAfEU7xp4EygY43IA8Qk
 LC6BueP4q6VBX3Yczc2q5ErZbDw8k4TEgaIFGIu89lkUghakER1myPhwfqtYYBqSq61P
 j88A==
X-Gm-Message-State: APjAAAU4Lj5lBKuigyTO0qfktiK7IKPyp7UtZSkxlxWVYnc6VyqyFDUo
 tCk6xWoO21nEZKpavdCdCsHIuQ==
X-Google-Smtp-Source: APXvYqx5ku6KI9MfPdQZ+SWjpmvOotL42D1PWyIwc9k7LE5GzctpSfHSXBO4s15SrZ/WJeAsBlX0Ug==
X-Received: by 2002:a2e:8e22:: with SMTP id r2mr32224867ljk.51.1577717063226; 
 Mon, 30 Dec 2019 06:44:23 -0800 (PST)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id a21sm18744931lfg.44.2019.12.30.06.44.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Dec 2019 06:44:22 -0800 (PST)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Rob Herring <robh+dt@kernel.org>, linux-pm@vger.kernel.org
Subject: [PATCH v5 09/15] cpuidle: psci: Attach CPU devices to their PM domains
Date: Mon, 30 Dec 2019 15:43:56 +0100
Message-Id: <20191230144402.30195-10-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191230144402.30195-1-ulf.hansson@linaro.org>
References: <20191230144402.30195-1-ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_064425_743458_D4316B0D 
X-CRM114-Status: GOOD (  15.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

In order to enable a CPU to be power managed through its PM domain, let's
try to attach it by calling psci_dt_attach_cpu() during the cpuidle
initialization.

psci_dt_attach_cpu() returns a pointer to the attached struct device, which
later should be used for runtime PM, hence we need to store it somewhere.
Rather than adding yet another per CPU variable, let's create a per CPU
struct to collect the relevant per CPU variables.

Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>
---

Changes in v5:
	- None.

---
 drivers/cpuidle/cpuidle-psci.c | 24 ++++++++++++++++++++----
 1 file changed, 20 insertions(+), 4 deletions(-)

diff --git a/drivers/cpuidle/cpuidle-psci.c b/drivers/cpuidle/cpuidle-psci.c
index 830995b8a56f..6a87848be3c3 100644
--- a/drivers/cpuidle/cpuidle-psci.c
+++ b/drivers/cpuidle/cpuidle-psci.c
@@ -20,14 +20,20 @@
 
 #include <asm/cpuidle.h>
 
+#include "cpuidle-psci.h"
 #include "dt_idle_states.h"
 
-static DEFINE_PER_CPU_READ_MOSTLY(u32 *, psci_power_state);
+struct psci_cpuidle_data {
+	u32 *psci_states;
+	struct device *dev;
+};
+
+static DEFINE_PER_CPU_READ_MOSTLY(struct psci_cpuidle_data, psci_cpuidle_data);
 
 static int psci_enter_idle_state(struct cpuidle_device *dev,
 				struct cpuidle_driver *drv, int idx)
 {
-	u32 *state = __this_cpu_read(psci_power_state);
+	u32 *state = __this_cpu_read(psci_cpuidle_data.psci_states);
 
 	return CPU_PM_CPU_IDLE_ENTER_PARAM(psci_cpu_suspend_enter,
 					   idx, state[idx]);
@@ -79,6 +85,7 @@ static int __init psci_dt_cpu_init_idle(struct device_node *cpu_node,
 	int i, ret = 0;
 	u32 *psci_states;
 	struct device_node *state_node;
+	struct psci_cpuidle_data *data = per_cpu_ptr(&psci_cpuidle_data, cpu);
 
 	state_count++; /* Add WFI state too */
 	psci_states = kcalloc(state_count, sizeof(*psci_states), GFP_KERNEL);
@@ -104,8 +111,17 @@ static int __init psci_dt_cpu_init_idle(struct device_node *cpu_node,
 		goto free_mem;
 	}
 
-	/* Idle states parsed correctly, initialize per-cpu pointer */
-	per_cpu(psci_power_state, cpu) = psci_states;
+	/* Currently limit the hierarchical topology to be used in OSI mode. */
+	if (psci_has_osi_support()) {
+		data->dev = psci_dt_attach_cpu(cpu);
+		if (IS_ERR(data->dev)) {
+			ret = PTR_ERR(data->dev);
+			goto free_mem;
+		}
+	}
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
