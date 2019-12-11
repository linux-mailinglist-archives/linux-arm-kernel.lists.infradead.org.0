Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F284D11B452
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 16:47:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=v8/RQ+EyXoJzpg9+96D6oqtxchhVNj5ymdelK2Ljn8A=; b=ohC3Yf+AWVxplntlJL1a8hThb9
	9Fjb+cBnJDWKNXAaAmL1zyUES3o9wO3yBGBfrM7f87sNJjxx4FIIinV0UPgCiH35kEuR8M0VEYPe7
	acX6e3yXAurZp84EokuxRXmQN4RDbI6a2vF6ytAG3RWC+fc7iYpAJY/2EMgfEg3L2UN+p/wwyNQM8
	GEv/DjGAgHSTGzaB9D4w9fCbJOzz/enPyijzvjQ2XtpfByYU0McZculiEiB7Z3hpl2LDHZ8Lxw/yY
	uJR82oE4qB2LbCr3oaMOJRqTotHClbwcGKYqKMoXEA9q99zAjBE5z5WDnEzgOaGpJk0IEoJNgs+58
	7iJ+oFig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if4Cg-0002QT-LM; Wed, 11 Dec 2019 15:47:06 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if49Z-0006sN-Ry
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 15:43:55 +0000
Received: by mail-lj1-x244.google.com with SMTP id u17so24598195lja.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Dec 2019 07:43:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=46fQcaYRZVJGONWzkSKPwKhP/wuZIGStJprSOcfe334=;
 b=zcVsfgmbomRQuy8rc/lQGcTMLcfThl+n7UWlp4kXd00250zpeWcVglLPs5vVtxbHiA
 MStdCliToDc21B16LC3rUFLv9V4D2lPn2NiGHf51l8fuBArM9o3WbINapyKCElF4lLrz
 qY+SsGpOx7kmMLn4AJLHq52jc2Zvz5F9naiyeNkU0AjWzJ3IQ048sI8oHf++ia88BoOd
 f8YyxpzoGt/jfKR61R9Lg9T5Jh3zIUmgPnBwGUwCCUzWHmeP+786WMwqcKvNL2813ApA
 bHz14WRPnG8bkLdQ71opOq2TPJAs/3SfQaLV3Z80xNJMf99BU8GpsZ8m0CHOBXp05Ngk
 AOmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=46fQcaYRZVJGONWzkSKPwKhP/wuZIGStJprSOcfe334=;
 b=hmCL8nElMm/6cA5CXhvLlaR+kqFQPWs9/5IxXYfjxMb5BsPHwYpYAnxev4ejhVFilQ
 VJr+SdnhR1RJcWxtLoWtWL1e8aQ/Jo+GLMWLijMis3M/IBDJVj1KIuXcfhmpA3mCUEls
 ee/2vz9/hLOIQDLK8eB9ym4CqXyB6NcMF3tyj95sdW+dZS8Iw3vW3QtRaRAC8QqTXIns
 5NtDULVuPD/sFgT9GrpJQiD0Ky1neCMK/YQkoc1ovwRiquFxZwUFfveH5liyBHAQ+RKw
 jXb0XjVe6eWzPjjPWf1YiQR1P5pNH6WnwEU2VhsbmtZ8g4Hzlck8ezhIGkWNpiM7lJcG
 exyQ==
X-Gm-Message-State: APjAAAUtO2533Zm3nF2oPgnPJS9NaxgZAiFPkXZd7Wuf4eJ8YIKRJHz5
 32YamT/GK2z4sVJ19m1OSr1wBQ==
X-Google-Smtp-Source: APXvYqyBnDelMMLa2yqKqTKQABkrz/d0cAklTqaTVvb1gl+L1svnMBI59J/g1AHwehWqOsVxBQl8ww==
X-Received: by 2002:a2e:8eda:: with SMTP id e26mr2480158ljl.65.1576079032149; 
 Wed, 11 Dec 2019 07:43:52 -0800 (PST)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id b14sm1389608lff.68.2019.12.11.07.43.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Dec 2019 07:43:51 -0800 (PST)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Rob Herring <robh+dt@kernel.org>, linux-pm@vger.kernel.org
Subject: [PATCH v4 01/14] cpuidle: psci: Align psci_power_state count with
 idle state count
Date: Wed, 11 Dec 2019 16:43:30 +0100
Message-Id: <20191211154343.29765-2-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191211154343.29765-1-ulf.hansson@linaro.org>
References: <20191211154343.29765-1-ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_074353_906474_998B8074 
X-CRM114-Status: GOOD (  13.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
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

Changes in v4:
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
