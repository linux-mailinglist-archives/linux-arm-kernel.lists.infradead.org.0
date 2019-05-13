Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BADB71BDBE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 21:24:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=u/h2PulhPqZfo2ntr7vCtkaHi4HecknvlKAMwaRAHlg=; b=FmT9NxAeUFGl9oBuHwSu8dgUiN
	S0m+IX6OKo9FjKtAOjwoo2CpTIYizKuCIkupwMm3aAv5Qw/aDUOlvqsznRxGROWnXtguJxq1GExRe
	UKzCJ+tRlRCQqd6hLufPnhRMqILxp1PUFcUrcCvh6n/3X5YEvish/AA/Dj8P4ZImWY7lHqqg6VYKS
	MvI6ntBJRM7AhUeGX2TcdNRdRSeUV88ELA4c5kC7+kYH91SKcPO8gmj/ObCC1ZAbATtwZNaeuT4wO
	OSaw3TeTHNJYH6Ul8jySF5GTuB8wDfvNlnwdl28TT/Fx3q6ETotFYuq5tsZ7/JzkmBC4RFY0nlwD5
	AYl1vQaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQGZ8-0002oy-8U; Mon, 13 May 2019 19:24:50 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQGXi-00015a-DU
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 19:23:30 +0000
Received: by mail-lj1-x244.google.com with SMTP id k8so12054142lja.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 May 2019 12:23:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=tL+sK5pEBsAoCFopnPPwt4es9T7EwxPGgYEkm8O7IBI=;
 b=PleXZ03XqpXkNBmDfAycSfGQdOAnwKcgjPE/yvddT6ahyVQYQIimbvzlM0ZT24i2e5
 LUFZWo+Tdttrv0PhN9+zyZsiyAIl0piyFql/WuOFoJwf6rT/ApfowwA2yVJk5ycqSnHJ
 tVjZQ/8bSIufYfq7D+pcmCxP7awzaUFp1ndubavu4Rg3LGgEgIDKhT1v5im0eJXErzwM
 yeE7sM0FGOsZqtCWMwGXPx4qW6dtJwALcEcJrbDFKC6sEY00Uvvm8/vcCf8KVozLm45m
 GNwRj8IB28P/Qgq9gd8i2bHXXGget+HBMR2KuUq4pUtz49trTZoVO+c/X53DLD2flOHv
 U9zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=tL+sK5pEBsAoCFopnPPwt4es9T7EwxPGgYEkm8O7IBI=;
 b=GdsKHvlIYtORrftUTGOKT6QWybpetlNAo5hyHCWtnRWPEPSd8ZICe1RQyTBRDrY79w
 qZIbHYJuDERzqtHP0BgGi9UY0R5o/mv2qjnUJq6rKUfSIPh5GKqdKVkMSA3Yvhejt39K
 nWu0B+LGkhnqoAnGMpdMeLyYq4aXhYiKL+VQBZiwJ70+O8WCoNYIcqOJjoYgT+9Or7kg
 RzJ4L8AKXIDIaQfRm9fGsFLQn23U6Vy6d2rJLK8zN9Zj6a12pL2cgDVEKIMWyhB/86cN
 mongG1Nh4gxzn2B5rMc83xKGPzzh3Xig321B4B69BfeVQAWZEcGjZFJ0qnp+3Zhf1Ziz
 a5BA==
X-Gm-Message-State: APjAAAWdh4xJ9wqVxM7u7vGB3oHPbYqt2j3UYZ5fFQdGJswocyros1Jz
 8laA1GYDGbAIP/qgUU7v5GmfTg==
X-Google-Smtp-Source: APXvYqx4whMnRpTm4m80h2xmvQbwZJE+FnBv/f7E0p3WgnHRPkfQ9mN1Bj/AUSzvNa+UTmcvCbPkvw==
X-Received: by 2002:a2e:81cf:: with SMTP id s15mr14626643ljg.193.1557775400776; 
 Mon, 13 May 2019 12:23:20 -0700 (PDT)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id q21sm3449365lfa.84.2019.05.13.12.23.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 13 May 2019 12:23:19 -0700 (PDT)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Mark Rutland <mark.rutland@arm.com>, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 08/18] drivers: firmware: psci: Prepare to support PM domains
Date: Mon, 13 May 2019 21:22:50 +0200
Message-Id: <20190513192300.653-9-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190513192300.653-1-ulf.hansson@linaro.org>
References: <20190513192300.653-1-ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_122323_215015_F41A7553 
X-CRM114-Status: GOOD (  16.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
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

Subsequent changes implements support for PM domains to PSCI. Those changes
are mainly implemented in a new separate c-file, hence a couple of the
internal PSCI functions needs to be shared to be accessible. Let's do that
via adding a new PSCI header file.

Moreover, to implement support for PM domains, switching the PSCI FW into
the OS initiated mode is sometimes needed. Therefore, let's share a new
function that implement this.

Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
---

Changes:
	- Convert psci_set_osi_mode() to return an int.
	- Don't share psci_get_domain_state() as that's no longer needed.
	- Update changelog.

---
 drivers/firmware/psci/psci.c | 17 ++++++++++++++---
 drivers/firmware/psci/psci.h | 16 ++++++++++++++++
 2 files changed, 30 insertions(+), 3 deletions(-)
 create mode 100644 drivers/firmware/psci/psci.h

diff --git a/drivers/firmware/psci/psci.c b/drivers/firmware/psci/psci.c
index 4aec513136e4..0e91d864e346 100644
--- a/drivers/firmware/psci/psci.c
+++ b/drivers/firmware/psci/psci.c
@@ -34,6 +34,8 @@
 #include <asm/smp_plat.h>
 #include <asm/suspend.h>
 
+#include "psci.h"
+
 /*
  * While a 64-bit OS can make calls with SMC32 calling conventions, for some
  * calls it is necessary to use SMC64 to pass or return 64-bit values.
@@ -96,7 +98,7 @@ static inline bool psci_has_ext_power_state(void)
 				PSCI_1_0_FEATURES_CPU_SUSPEND_PF_MASK;
 }
 
-static inline bool psci_has_osi_support(void)
+bool psci_has_osi_support(void)
 {
 	return psci_cpu_suspend_feature & PSCI_1_0_OS_INITIATED;
 }
@@ -161,6 +163,15 @@ static u32 psci_get_version(void)
 	return invoke_psci_fn(PSCI_0_2_FN_PSCI_VERSION, 0, 0, 0);
 }
 
+int psci_set_osi_mode(void)
+{
+	int err;
+
+	err = invoke_psci_fn(PSCI_1_0_FN_SET_SUSPEND_MODE,
+			     PSCI_1_0_SUSPEND_MODE_OSI, 0, 0);
+	return psci_to_linux_errno(err);
+}
+
 static int psci_cpu_suspend(u32 state, unsigned long entry_point)
 {
 	int err;
@@ -292,12 +303,12 @@ static inline u32 psci_get_domain_state(void)
 	return __this_cpu_read(domain_state);
 }
 
-static inline void psci_set_domain_state(u32 state)
+void psci_set_domain_state(u32 state)
 {
 	__this_cpu_write(domain_state, state);
 }
 
-static int psci_dt_parse_state_node(struct device_node *np, u32 *state)
+int psci_dt_parse_state_node(struct device_node *np, u32 *state)
 {
 	int err = of_property_read_u32(np, "arm,psci-suspend-param", state);
 
diff --git a/drivers/firmware/psci/psci.h b/drivers/firmware/psci/psci.h
new file mode 100644
index 000000000000..f2277c3ad405
--- /dev/null
+++ b/drivers/firmware/psci/psci.h
@@ -0,0 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+#ifndef __PSCI_H
+#define __PSCI_H
+
+struct device_node;
+
+int psci_set_osi_mode(void);
+bool psci_has_osi_support(void);
+
+#ifdef CONFIG_CPU_IDLE
+void psci_set_domain_state(u32 state);
+int psci_dt_parse_state_node(struct device_node *np, u32 *state);
+#endif
+
+#endif /* __PSCI_H */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
