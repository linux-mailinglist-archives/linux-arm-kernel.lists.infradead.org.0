Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A054611B488
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 16:49:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=iMkDRRsf0IIgEBFju922MhPgMHYvPVTrhRCaonslGbo=; b=MFDWMdaLS1MJNfTm4W6PbuJRYC
	Vbihi0nOfYgE/lLbXeYMI5vXW3x/IzoOXWxK5libaYsnIQPy0PbowoYELDXEukCtBqwSJWTkzQfIb
	1IxA+xw6+XjIGh5ZD39jRCBB5EUZb5Hr4RK2358KYtYtrZE+aMq95khAQncImLZj6ah6pq+5sdRW2
	1V7dD+kHh2x3vckjRT7Dh8SeIEp+tayXEBoFAwCQ3xI6Sx1I2WSGsmRcdpsQbwjdy+gqwoC7iucam
	53HpXtVWGwDEeMcTwC02zJ+JXJaQW7rQY16F0T0ihlFS9NQHOsKnQs95nB1fVzUyQJopu+1+hunux
	pe9p6RJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if4F0-00051i-R0; Wed, 11 Dec 2019 15:49:30 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if49o-00076R-F5
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 15:44:10 +0000
Received: by mail-lf1-x144.google.com with SMTP id m30so17037629lfp.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Dec 2019 07:44:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ZEqQy0QuBsg1TqWJIDaDl2CROKkjokF3ooQD0C47ttQ=;
 b=crgggGsC3dwf7AJpgrpv7kiGHF0JSSV9L2QDRT6xPS3QwxZWH7sgggU0/LquhhHokm
 zkco4V/uRz2u/hqibm2QejtHtq4Ir5uj3ArxE/PyRQ0aIkkaTRzgm/KIwgkEvRZkKlM+
 cBaNX4NfPKTCSakCdK7opEN0D6LCpsB6Cq/zFgnvyqUWWayJQrvaVPOYLyONQIlIFtnU
 5/PvHNppqyW2XqLkgWXRI2iZRezylJ0cOdImrm90k8NP72fDvgO07gNPQabsjcPMhBzt
 fPCkAiYyGUfyR0ONYMqaTRoqjqGxXWM8qiud4j7NNNGaz3dralBEf1UmqJWYm3cn9x8r
 3fLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ZEqQy0QuBsg1TqWJIDaDl2CROKkjokF3ooQD0C47ttQ=;
 b=tV+qMJnW33BoDsSauXZVK6tPj2uX+ywC1SOGCH4zERRpYbCtu6jmpFrapPzurWMEz1
 yCDTHftxHflJewws7/EqDydtdHwCFrxoynaDv0UcXCXow7nERtIfBaM6o9KtyKc7CaCr
 hMdRys1qyvX4m2NldLtgLgV1NEZmM8OeN5eJ1n/ZbvxAComuH+obFJ9IjDm1Tq9zfehL
 C8n6KKbha5Hkmxc9p0IbaAXR3AkAgRfL0LiZlSbRqe1s0fy5Zfjk58n446ayaVll8dnP
 mjZ4k3UBeSJSZSsUziAAuL5slfods76xP3f1FYoIDVjvHfJkgSJ7q5ao6B1UFaiH/mRK
 1tlw==
X-Gm-Message-State: APjAAAUYcu3lDHtWYJweLHejteqqs9jy+upnu8NS0kP9leDxFrFA6MEs
 1k8DGFe8P4H67zh+LP64A7xH2Q==
X-Google-Smtp-Source: APXvYqz6G0V9w/CiBy3QQqH4g4H8jB9GpTQH6XahhQT/gJ+INB0/yKI1QY+9Pl+Z9bTJ0xaRV6xGag==
X-Received: by 2002:ac2:5e9b:: with SMTP id b27mr2649079lfq.147.1576079046311; 
 Wed, 11 Dec 2019 07:44:06 -0800 (PST)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id b14sm1389608lff.68.2019.12.11.07.44.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Dec 2019 07:44:05 -0800 (PST)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Rob Herring <robh+dt@kernel.org>, linux-pm@vger.kernel.org
Subject: [PATCH v4 09/14] cpuidle: psci: Attach CPU devices to their PM domains
Date: Wed, 11 Dec 2019 16:43:38 +0100
Message-Id: <20191211154343.29765-10-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191211154343.29765-1-ulf.hansson@linaro.org>
References: <20191211154343.29765-1-ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_074408_542534_734C7B62 
X-CRM114-Status: GOOD (  15.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
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

Changes in v4:
	- Add check for OSI support before calling psci_dt_attach_cpu().

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
