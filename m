Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68DA2E8D15
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 17:45:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=w+Bfq53yiTvKgdZAHZ2s/sKjbXTWn4G2vqbRfi7Wj7g=; b=VcbnlLw5xegK+cSai+WhIUGAum
	Y/ISdAf2EGf7R89GmMxWsTj00lANNJK6Izu+1k/rD2WmMATYMSNfPK3N+p96Emh90/QTzDJJ2aH5m
	GB4PbBQIARB9pR1AKC8ghzVpLN4XQYW3z6s56eNRvE/fxcW3NYdC3cgVnCXytnevYGX0d9wQAV3PM
	pb0hM7u6r/FbAxe65GaE4sgv+s1YXAypOZdX8EDShADiBTLjU6Cz5P80xLAYNV0clcOMcWVNHkkvC
	hJuQ0OE1fjSP6rVBwIXQUpw/ih/qBDS4FFcPAh1qYqhXY7lw55WbWlaa3dG53xrbzIgnoPk96z0jG
	m4gqYiFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPUcP-0002qn-4T; Tue, 29 Oct 2019 16:45:17 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPUbx-0002oO-6m
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 16:44:52 +0000
Received: by mail-lj1-x241.google.com with SMTP id y3so16057646ljj.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 09:44:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=bWmI0Xiuvq89sgTizuBFylB3C9/WTB7ILCq148rwhZk=;
 b=nGhuDYkfvkQnrZTY/TN3SJPYAaq6N0hugnaQQTvYzRjyoPirGxoPyytewdnMuFCFij
 DaKmL0IiI3Qljq5CIImb9zhUYVW5VW+op923nnammGE5rv2FOHsLNPRmSR5VSjEBxWTZ
 +oyoY/dWhez06dxKGThbrMguGRiBM7sr5gIaMs4iiiLuPwmPqMDG6CWDzEBWGB0x0Ha1
 In+/km5T6X+Vcwoxcv0M++rn5YHmiXagng2jm6Cu5K0cpWPMP5hz4j2QblIRc92btI15
 4916IppXqRFSp/7tSoPmztteLkZaZyI8t2KNAKLsXA/ULl2xQ7yG8pW90jbbx1HmvIqH
 BLRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=bWmI0Xiuvq89sgTizuBFylB3C9/WTB7ILCq148rwhZk=;
 b=UD41Io3a/Z0gb+IM8jjoNY3/K2GymrB+82+qt4qncIQ4HMH+1N4Kv9W+haDOA19Nal
 q+4GZvwfh9O/QQFe8rR2Oett+lOCGlE7jxxvdjaM0VQnW0uq/bT46z8FNMClspyPAu3z
 QSueACKqmkU3hfeZ7MHew9VeGb6wxwg2XmN9QBkg71322i/q8xuGzs50V8g5nDy0m6pk
 WIpikhrwm8b6lyT2BLSesaoT/Mmtb9SuQ/vBwkUxhawc3qempnfYxjjVrOOH+S3UD6PB
 cRMKQn9DvVJyVxvANvbA2Mi6WuGK3XGdFpgmM+LwZP3Dg6rV7pDo5mNxf21bCWBO1N4a
 On6w==
X-Gm-Message-State: APjAAAVAPvdKUpffjoHE3EyeFux9D/p1IcDUUm5kX7VWn1UeW4Tszvy5
 8O4VDVlSTgnLYidx5W100WJT+w==
X-Google-Smtp-Source: APXvYqxiw4yXF19S009oKLq+GuUCc8WXW014siinCqLOYELILmRXWbsHObr2NPT+v/kN830ot6hPPw==
X-Received: by 2002:a2e:9a9a:: with SMTP id p26mr3283051lji.164.1572367485207; 
 Tue, 29 Oct 2019 09:44:45 -0700 (PDT)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id f28sm2048161lfh.35.2019.10.29.09.44.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 09:44:44 -0700 (PDT)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Mark Rutland <mark.rutland@arm.com>, Lina Iyer <ilina@codeaurora.org>,
 linux-pm@vger.kernel.org
Subject: [PATCH v2 01/13] cpuidle: psci: Align psci_power_state count with
 idle state count
Date: Tue, 29 Oct 2019 17:44:26 +0100
Message-Id: <20191029164438.17012-2-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191029164438.17012-1-ulf.hansson@linaro.org>
References: <20191029164438.17012-1-ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_094449_250499_0E6E65F6 
X-CRM114-Status: GOOD (  14.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
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
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
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

Changes in v2:
	- Added tags.

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
