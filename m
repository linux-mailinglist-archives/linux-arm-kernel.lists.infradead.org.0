Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D566A12D141
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 15:53:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=a5Nysz8gd1+wGZ8H4+AoTgZvFRq37+x+lD+zQJOP6eA=; b=kqsLa4nap9YsoQDY2SkXMe9w4O
	QAorywPAEFOoGRb3En2IAIsEE0ZYA8Ykg9tcPS9KgT++TEGBk0FiJKxzfQBaEO91Ntt5/PdN3kEAj
	1rR7xq7hozVnN7nDgpFcSjKqe1KZ3V46OxSGokAzmEFzDx25FisgEfXHvjDk9rezzTmHGuun6O+Ea
	ilp3nMHDEPM2BsfcPZcxn/9E4+wNmbR4KPPcJ2oAopOU71mZvJ82OaY36oiEgwozmzkJCipl4Y17P
	g/2Gu/Wsi5D+TN3xPu3JaXo9EZqoAjx+L7j1/Ajbdr+1AfLnFt+tNQowvjWu6D/D97JeeccgnUgRE
	QgUeAPwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilwPh-0006W3-Tn; Mon, 30 Dec 2019 14:52:57 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilwHT-0005MP-R7
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Dec 2019 14:44:38 +0000
Received: by mail-lj1-x242.google.com with SMTP id r19so33512137ljg.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Dec 2019 06:44:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=KzTTqj8p23Akt27Kd2Hs4c3lg6YLbPXs3ATs0EVFR2M=;
 b=JCpPFKZuzoDLpUkDOuKcE6t8dYafbfR22Clus44/n9Hef4fPXDwh1TRjb+z065rvDg
 o/viC2PDowY6Nd/qjdwLbcafGiUjQEFMxLU6yqRKI8wPY10/9rarX+BejUdqBkbDm9vd
 9Z9n5/eM+fkJVT5R5Vs/Dr7pRB35rJUaDClIXV9Z+UrVQ94QdsySErw4oBeFMtYlFd5L
 tOxKqgfFBSF+ojOLNFP8YRMHr8AIQ2jAmYy+8sa7jcSo3mkI1ZZ596uUE56pv1SOGxM5
 lWD6v8tteSg8CojtKOusDP2q7wvntfRbAU4K2tC50TgVk4h7PGpP/FbUnVvDzNIXkm7h
 Qpow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=KzTTqj8p23Akt27Kd2Hs4c3lg6YLbPXs3ATs0EVFR2M=;
 b=r5tcU3ZsW/M3wDwTtDimjrtvkOJChWARPOjmrTcWhMffU4dvPiKH4k/sB4hb4ffYBY
 iQvshd8QHbUt4n4ENQCplCGdG3KiO05P3pUoUPrVUtQYkG7g98CNP12w+2IQntJtcDsT
 CbFNL4p86cgeiITfzHX5kwRnYrjmNXbwmYuYci6R5MSE67ia1BsL0MjrIegV3Bmwh3Wm
 jScDPlSr381W8yKp0dWLx2HwBoJCmQ0MDXTcvTmJKSZkml/mwp5v287V2Lm4JtfpPzuB
 qo+gZdujUhw6M73Yamj64oABLOV5/IrtMYnQNg6F2Uf9bHrGQ2opiRxcCK317SUiC6E/
 bl9A==
X-Gm-Message-State: APjAAAUeICP7mbd79sXM6drNhcHiB/2nhIcu0EcVudJORq1s+DFsEHGI
 QppoloiGydWaptB1/EMIlKhKZA==
X-Google-Smtp-Source: APXvYqzGA3gtYNDs67k65CEee1AiLGVULQ9UOPYgswEyii5PPQ7+p9U9ijvBI9aT4vNl0v8Jdj0WmQ==
X-Received: by 2002:a2e:a402:: with SMTP id p2mr39436965ljn.143.1577717066026; 
 Mon, 30 Dec 2019 06:44:26 -0800 (PST)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id a21sm18744931lfg.44.2019.12.30.06.44.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Dec 2019 06:44:25 -0800 (PST)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Rob Herring <robh+dt@kernel.org>, linux-pm@vger.kernel.org
Subject: [PATCH v5 11/15] cpuidle: psci: Manage runtime PM in the idle path
Date: Mon, 30 Dec 2019 15:43:58 +0100
Message-Id: <20191230144402.30195-12-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191230144402.30195-1-ulf.hansson@linaro.org>
References: <20191230144402.30195-1-ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_064427_967987_EE90CA39 
X-CRM114-Status: GOOD (  15.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
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

In case we have succeeded to attach a CPU to its PM domain, let's deploy
runtime PM support for the corresponding attached device, to allow the CPU
to be powered-managed accordingly.

The triggering point for when runtime PM reference counting should be done,
has been selected to the deepest idle state for the CPU. However, from the
hierarchical point view, there may be good reasons to do runtime PM
reference counting even on shallower idle states, but at this point this
isn't supported, mainly due to limitations set by the generic PM domain.

Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>
---

Changes in v5:
	- None.

---
 drivers/cpuidle/cpuidle-psci.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/cpuidle/cpuidle-psci.c b/drivers/cpuidle/cpuidle-psci.c
index 9600fe674a89..6e7804e697ed 100644
--- a/drivers/cpuidle/cpuidle-psci.c
+++ b/drivers/cpuidle/cpuidle-psci.c
@@ -16,6 +16,7 @@
 #include <linux/of.h>
 #include <linux/of_device.h>
 #include <linux/psci.h>
+#include <linux/pm_runtime.h>
 #include <linux/slab.h>
 
 #include <asm/cpuidle.h>
@@ -51,14 +52,21 @@ static int psci_enter_domain_idle_state(struct cpuidle_device *dev,
 {
 	struct psci_cpuidle_data *data = this_cpu_ptr(&psci_cpuidle_data);
 	u32 *states = data->psci_states;
-	u32 state = psci_get_domain_state();
+	struct device *pd_dev = data->dev;
+	u32 state;
 	int ret;
 
+	/* Do runtime PM to manage a hierarchical CPU toplogy. */
+	pm_runtime_put_sync_suspend(pd_dev);
+
+	state = psci_get_domain_state();
 	if (!state)
 		state = states[idx];
 
 	ret = psci_enter_state(idx, state);
 
+	pm_runtime_get_sync(pd_dev);
+
 	/* Clear the domain state to start fresh when back from idle. */
 	psci_set_domain_state(0);
 	return ret;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
