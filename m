Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5ED310ADB7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 11:30:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=allQLhPwr33/qbOmrDVuR5k5cCw/IVjC8QiIwkOJom4=; b=u2cTt2z/OdbsyESeFIXOumDLZ6
	YcmhZwlEwK9KZXovbp1W5ksxbtWPu1uJIuA6vuk2szWpv0RuF8KV3pFUoRtgpDBiMuJ99euzV3XOA
	Yomj3wFt9TPsO7Mn7MVkKr8CiTp/I6EaxmLSytMWt16bOIjam4dkfFq7PQVfz8VSWf7F+NlHUyUFK
	zgLl9wLEc13I1GQgk0S8G+ocuFVUQaMof3Z45nCFyg/tgMO2qRYqQLzvnhqfIuIqwmsFeOIzJr1vl
	+VQEhYsulqRogFNCBDxNrO0jAPHlR7QmRHNeFmuvFG0goKcz/XQaR87n9rMnXzmuabiOhnsCyhC8/
	sepnkEeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZua5-0005pj-7a; Wed, 27 Nov 2019 10:29:57 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZuZU-0005Xg-LR
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 10:29:22 +0000
Received: by mail-lj1-x244.google.com with SMTP id m4so23824970ljj.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 Nov 2019 02:29:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=75TMc1cT7FH1sabSgSiOxKjblChN2q0Nv5wC1JCjNcA=;
 b=yfkFQHGSTi+m76i8sYvYqdEiuggix6PnBHJpJpmRd1TB3+HBk28IT3r3QivTmsosW3
 P5rPoeO+FgUBK3MOmVvO1JUHb3eLFY79MhHRnE+icFW+jjT2WL7HFRR4tp1G8qN/A2sn
 IIk4sfepSYFdvVBdNHNiNtnCUlt8z8lm4+AI1Ls/4Cvp4dN4v5vpvGLeGmY3v9m51pCV
 1RtoYLhYErI+uFTBrPbHuDMbEngyxAmo7PHnH4UB7Eu/VvccG3FfcCkbWvfKNP5FdLhC
 1DlAD7Zg1BdRyBzmBv/jdXinAsrYRjK3KNI+WtKDTJtemO4A9AWbEjfPE5iReHNipErB
 ByLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=75TMc1cT7FH1sabSgSiOxKjblChN2q0Nv5wC1JCjNcA=;
 b=iXUx6OoVW2Ngh2bibf3i1khTNsnasXw+zWZzflMyA2bX3mK8EebnUZp4mE1DJWKRga
 L1FpmgOjl2gio/VNx9Sw30WOIYvpDhK4aAuNdSfkgXHbIQlt7vQ8HJAlADlyty/h0LvC
 8FpgE3Go1Zn9VOIzJV6YxA0Z2zLd6ZCAHNm6dsKMgupVOV+Tkypq4f6YQk9gk6UaL7Lk
 CD2/LCY/iZnFdQZcEmRW9D9fp50YBODG3og50oJB53uMnqrybs8YJKHTcGJsC51wV5U9
 CsrAH8ExMEf7C4hh4XiBxW7sARIByMFOWqEjP5xxq1u70lDfbYI/QDkIkuZLsH+fHIDe
 WsHg==
X-Gm-Message-State: APjAAAXFRNpecRrsduoVV5UPAl20zknGBZkK7ySwEiLdhmcyYxR8cHgZ
 BZmEg/OPOBjJuXLE8qfG/4x9ug==
X-Google-Smtp-Source: APXvYqyU1IApp4NI9wl22/OIUXj5aD2EpYZqlLflyJ4cORj4qNdhYEZOz8nnWtIV00rgXD1rv0nt9g==
X-Received: by 2002:a2e:b818:: with SMTP id u24mr15059006ljo.33.1574850558878; 
 Wed, 27 Nov 2019 02:29:18 -0800 (PST)
Received: from uffe-XPS-13-9360.ideon.se ([85.235.10.227])
 by smtp.gmail.com with ESMTPSA id t9sm6868260ljj.19.2019.11.27.02.29.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 Nov 2019 02:29:18 -0800 (PST)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Rob Herring <robh+dt@kernel.org>, linux-pm@vger.kernel.org
Subject: [PATCH v3 01/13] cpuidle: psci: Align psci_power_state count with
 idle state count
Date: Wed, 27 Nov 2019 11:29:02 +0100
Message-Id: <20191127102914.18729-2-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191127102914.18729-1-ulf.hansson@linaro.org>
References: <20191127102914.18729-1-ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_022920_700903_CDD49893 
X-CRM114-Status: GOOD (  14.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

From: Sudeep Holla <sudeep.holla@arm.com>

Instead of allocating 'n-1' states in psci_power_state to manage 'n'
idle states which include "ARM WFI" state, it would be simpler to have
1:1 mapping between psci_power_state and cpuidle driver states.

ARM WFI state(i.e. idx == 0) is handled specially in the generic macro
CPU_PM_CPU_IDLE_ENTER_PARAM and hence state[-1] is not possible. However
for sake of code readability, it is better to have 1:1 mapping and not
use [idx - 1] to access psci_power_state corresponding to driver cpuidle
state for idx.

psci_power_state[0] is default initialised to 0 and is never accessed
while entering WFI state.

Reported-by: Ulf Hansson <ulf.hansson@linaro.org>
Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
Reviewed-by: Ulf Hansson <ulf.hansson@linaro.org>
---

Changes in v3:
	- None.

---
 drivers/cpuidle/cpuidle-psci.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/cpuidle/cpuidle-psci.c b/drivers/cpuidle/cpuidle-psci.c
index f3c1a2396f98..361985f52ddd 100644
--- a/drivers/cpuidle/cpuidle-psci.c
+++ b/drivers/cpuidle/cpuidle-psci.c
@@ -30,7 +30,7 @@ static int psci_enter_idle_state(struct cpuidle_device *dev,
 	u32 *state = __this_cpu_read(psci_power_state);
 
 	return CPU_PM_CPU_IDLE_ENTER_PARAM(psci_cpu_suspend_enter,
-					   idx, state[idx - 1]);
+					   idx, state[idx]);
 }
 
 static struct cpuidle_driver psci_idle_driver __initdata = {
@@ -89,12 +89,14 @@ static int __init psci_dt_cpu_init_idle(struct device_node *cpu_node, int cpu)
 	if (!count)
 		return -ENODEV;
 
+	count++; /* Add WFI state too */
 	psci_states = kcalloc(count, sizeof(*psci_states), GFP_KERNEL);
 	if (!psci_states)
 		return -ENOMEM;
 
-	for (i = 0; i < count; i++) {
-		state_node = of_parse_phandle(cpu_node, "cpu-idle-states", i);
+	for (i = 1; i < count; i++) {
+		state_node = of_parse_phandle(cpu_node, "cpu-idle-states",
+					      i - 1);
 		ret = psci_dt_parse_state_node(state_node, &psci_states[i]);
 		of_node_put(state_node);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
