Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC4C6E8D3D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 17:48:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=AbL8U3tqkJhuolO31hwN2/rem76xTx6n7CevQyM8qto=; b=hc1icHj7LcQgCBqgu7jR8z8YMj
	oInyrvyAHgPtE5lMMsurvijDiXMWGMIyXM72cK1Mty0bcr0Bwv6L7Ew+QNN9wcDtq3ePcIg9RI9hg
	SYW2HfTrKsIhtWlXcIeblBYYR27F0kSfHQplN1rXTrSY0AuwCu64Qvrsg8pvkXX2szoG4BSfkdVyU
	lOUzZaN05UNqS7Vrw8Ds1BDMxF/fNbKi4YM7EA+32/SPXmnr33c0wr2AXS2ZAupR9AbQ2ywo8DXEI
	I0aQQ0r7otZHsQ03DzNHBxjqF0hMwz0R3rT9bFvotI6S8aPX0YlT0m7bEMfjUgV0jYQ0rcTQ1z+6B
	Me+nV3kA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPUfx-0007BY-Hr; Tue, 29 Oct 2019 16:48:57 +0000
Received: from mail-lj1-f193.google.com ([209.85.208.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPUcF-0003Gs-V5
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 16:45:12 +0000
Received: by mail-lj1-f193.google.com with SMTP id y3so16058375ljj.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 09:45:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=rmTg5S9BzhED65UVWftQq6ljq1LQZhA0EBbzU9hhqeQ=;
 b=aqzEO0G1RyLhLQmCiDT2JleGD1IdETwghK3gyCVpU3BoJ9IuHC/mJJtZqyEw7OS5bY
 8Pt4WTtjZ+5IeX1WyaqK0oxx9v79xIuTQqk2y4zsdW41U0BO6JplWCJNK0dtZpODoM0L
 0lKghAQnovyr1JsLBsc29QAhAX43dJTSGZc4b1wvan915ofokrkC+6XjliyFzkzr/lyG
 NG0DkvysJMRGehwK4eH/+gmFLoocqpJy2k/jfeIAAVJjfDpLGzFhNnCrBqv5ZeazYjAn
 JlUcvaviVU0GvIb7r3OWkBXXWrrW+mGtVJequx0KFAO2HlykGcmi2A0fAv9aJQmGLA+b
 GqIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=rmTg5S9BzhED65UVWftQq6ljq1LQZhA0EBbzU9hhqeQ=;
 b=ipidVc2mKuz2yb6rGvaL5l/x1UOauKobTSqhD7oVPa2plc1UeSEyq3FHtLRuf4I0iW
 EisGAhJ8DtUPWOlBSgKtnS0jXzP4PRUvdzc7P7V5xx84AnTTyVF+QiW5FnaHa4oBfUTl
 82x+Uxb7gb9YuU+d2wp3qyjsmP+qsHNGFzuPl9UdL8f6KzFv8/IdVNFxC8Y2X1smlQvt
 7BTh8hpab93SZv2ApTGI7OxX7/nkBJBT1ddIUbhpNoF6cN4m8tFKL1QRRaxrZnIxNORO
 ivqHtQ934SXyXW8xvZ5IZJa15/tqMtjvo+9s/Nu4SVwebHYaGo7BKPvOYAmIYujZ9tzl
 cZGA==
X-Gm-Message-State: APjAAAV664KOrcfefSw6JzEBCgBPjayJPXyuWEYrcRFuGg4ZaQClunjY
 +bTXUgZxBU21u7mtHnvaVN9jnA==
X-Google-Smtp-Source: APXvYqzEL/7R3mVVyBqWfGuEW21GUqv79UeOF7RbekoESh7r+dEmrlO8kUYeAvjCF8KRrW5zWEFfXw==
X-Received: by 2002:a2e:8113:: with SMTP id d19mr3480037ljg.229.1572367500173; 
 Tue, 29 Oct 2019 09:45:00 -0700 (PDT)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id f28sm2048161lfh.35.2019.10.29.09.44.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 09:44:59 -0700 (PDT)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Mark Rutland <mark.rutland@arm.com>, Lina Iyer <ilina@codeaurora.org>,
 linux-pm@vger.kernel.org
Subject: [PATCH v2 10/13] cpuidle: psci: Prepare to use OS initiated suspend
 mode via PM domains
Date: Tue, 29 Oct 2019 17:44:35 +0100
Message-Id: <20191029164438.17012-11-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191029164438.17012-1-ulf.hansson@linaro.org>
References: <20191029164438.17012-1-ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_094508_141318_9BF9C751 
X-CRM114-Status: GOOD (  15.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Kevin Hilman <khilman@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, linux-arm-msm@vger.kernel.org,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Lina Iyer <lina.iyer@linaro.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The per CPU variable psci_power_state, contains an array of fixed values,
which reflects the corresponding arm,psci-suspend-param parsed from DT, for
each of the available CPU idle states.

This isn't sufficient when using the hierarchical CPU topology in DT, in
combination with having PSCI OS initiated (OSI) mode enabled. More
precisely, in OSI mode, Linux is responsible of telling the PSCI FW what
idle state the cluster (a group of CPUs) should enter, while in PSCI
Platform Coordinated (PC) mode, each CPU independently votes for an idle
state of the cluster.

For this reason, introduce a per CPU variable called domain_state and
implement two helper functions to read/write its value. Then let the
domain_state take precedence over the regular selected state, when entering
and idle state.

Finally, let's also avoid sprinkling the existing non-OSI path with
operations being specific for OSI.

Co-developed-by: Lina Iyer <lina.iyer@linaro.org>
Signed-off-by: Lina Iyer <lina.iyer@linaro.org>
Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
---

Changes in v2:
	- Rebased.

---
 drivers/cpuidle/cpuidle-psci.c | 47 +++++++++++++++++++++++++++++++---
 1 file changed, 44 insertions(+), 3 deletions(-)

diff --git a/drivers/cpuidle/cpuidle-psci.c b/drivers/cpuidle/cpuidle-psci.c
index 167249d0493f..4b0183d010e0 100644
--- a/drivers/cpuidle/cpuidle-psci.c
+++ b/drivers/cpuidle/cpuidle-psci.c
@@ -29,14 +29,55 @@ struct psci_cpuidle_data {
 };
 
 static DEFINE_PER_CPU_READ_MOSTLY(struct psci_cpuidle_data, psci_cpuidle_data);
+static DEFINE_PER_CPU(u32, domain_state);
+
+static inline void psci_set_domain_state(u32 state)
+{
+	__this_cpu_write(domain_state, state);
+}
+
+static inline u32 psci_get_domain_state(void)
+{
+	return __this_cpu_read(domain_state);
+}
+
+static inline int _psci_enter_state(int idx, u32 state)
+{
+	return CPU_PM_CPU_IDLE_ENTER_PARAM(psci_cpu_suspend_enter, idx, state);
+}
+
+static int psci_enter_domain_state(int idx, struct psci_cpuidle_data *data)
+{
+	int ret;
+	u32 *states = data->psci_states;
+	u32 state = psci_get_domain_state();
+
+	if (!state)
+		state = states[idx];
+
+	ret = _psci_enter_state(idx, state);
+
+	/* Clear the domain state to start fresh when back from idle. */
+	psci_set_domain_state(0);
+	return ret;
+}
+
+static int psci_enter_state(int idx, struct psci_cpuidle_data *data)
+{
+	u32 *states = data->psci_states;
+
+	return _psci_enter_state(idx, states[idx]);
+}
 
 static int psci_enter_idle_state(struct cpuidle_device *dev,
 				struct cpuidle_driver *drv, int idx)
 {
-	u32 *state = __this_cpu_read(psci_cpuidle_data.psci_states);
+	struct psci_cpuidle_data *data = this_cpu_ptr(&psci_cpuidle_data);
+
+	if (!data->dev)
+		return psci_enter_state(idx, data);
 
-	return CPU_PM_CPU_IDLE_ENTER_PARAM(psci_cpu_suspend_enter,
-					   idx, state[idx]);
+	return psci_enter_domain_state(idx, data);
 }
 
 static struct cpuidle_driver psci_idle_driver __initdata = {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
