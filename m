Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B86A810ADC3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 11:32:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=u2QmezXNP31rduVZdH2OBXEOkAXZZWYmHBKE6jJRmy8=; b=AEXGMtU5McnX5mJu6gf4T9s0VE
	Tmj9h1bdRdi0aW3mNv9zUUhs02qgM4Gq5ByJDHDIgEDpND0tlFKdb3XxyDB/43FAN3PphSHjXQ7ya
	zSs2C4YYDkUqoWJT6LUmBDqPD/khc7uXe5YJMNucyrcNxfBHXogo8jhEDp7BgEiG2QHzQU5cug6PY
	gq9xdyC8I7Zb3A4D71lwDGkqJVAeMRegQR2PL1gvXrnEP1XGRZ/FFlq4sh8tpzpbMDHLidnrp9dIe
	hzSYRsEJqYbu1xcr36ytlg5QXEvsrdibuTAQb7E6NFe1VME3jdzxpSlyV5HNdO8+0KRq+jq5nAsPU
	13Agb4qQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZucW-0000g6-6j; Wed, 27 Nov 2019 10:32:28 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZuZh-0005iI-BI
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 10:29:35 +0000
Received: by mail-lf1-x144.google.com with SMTP id 203so16677445lfa.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 Nov 2019 02:29:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=YDuIKF2u/t0zqT/PFLBo98uaEM9517X/GbUauBtkgr4=;
 b=uwA+m9WfDKjbBezkbOrLRu6yVTPgdRr7kEaV+WDMwVHp8ndZU/bqjiqpTu6iTDRlwE
 GEWtK1C4weec3gXsxWUz/Zt1apMdmrxCCgNwXHY7InzJGDHWLtrYlLRO35DEsLa1CTJn
 1l99Xc5nKfxNduW4sFOWbjZ3zYHkk/mf5TJlf7YixTNEvWaG8LrHE0i5fl45a4zGrGp1
 iXLfXve7JYW27J32oSQ90Gl7NOb/jFc8I9ZxbFGbYFzT5zDOD25O6IAc7rkRood2iEFi
 bUj9OMlBVeQ4c8LxU358f78a4DJDQ/xZvj9XRyBM1QFFM4b9F7yFMc0Xwsd+wQusQnuS
 Nu8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=YDuIKF2u/t0zqT/PFLBo98uaEM9517X/GbUauBtkgr4=;
 b=RhdBGZ0rQLOWd6Rfa1PJFLi2VXdaF7mO6SxrhVIFNtBzhn0QIZ9vixtgQZ0unmDeNc
 UUohLnpGyoismTAFLozNCjN6UVWj1GBBEzMAQObWKhQjVWK9Z/neSSJurmBffQ9S2L61
 al+0REWg6R5Aim+lzPkm2ccWUmZXPwzxgxIJFOt3Ef0jwECztz5++FisGth2dGqSfB7s
 vjRZwSPPkVoRQFxKbt1oWwqTFgJnVFgJH7UNionj8ooIBTRZ7qydZOynqGuDj83h8Uw0
 /1sjpUEIpfgN5x5j/gqgAhhN6FQBC9kIeunxgAfD2I9muyqe4f1i6b4aZUPOnkP1/yZ/
 8lsg==
X-Gm-Message-State: APjAAAVJHp7ym3NyP4mzDn6biozFUbLcqTA7CRTOF/OXsLZgfOS0P3sE
 LMZIe6FaiqpmL19Bn+AkgaedCA==
X-Google-Smtp-Source: APXvYqzR+IbfU/o0Fa1cQvZhfrwH8z5ze9YCQCLSUiMUNU6DIDIY20P09bbx6zldipb6zrULTiqGXw==
X-Received: by 2002:ac2:5462:: with SMTP id e2mr18613613lfn.181.1574850570998; 
 Wed, 27 Nov 2019 02:29:30 -0800 (PST)
Received: from uffe-XPS-13-9360.ideon.se ([85.235.10.227])
 by smtp.gmail.com with ESMTPSA id t9sm6868260ljj.19.2019.11.27.02.29.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 Nov 2019 02:29:30 -0800 (PST)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Rob Herring <robh+dt@kernel.org>, linux-pm@vger.kernel.org
Subject: [PATCH v3 09/13] cpuidle: psci: Attach CPU devices to their PM domains
Date: Wed, 27 Nov 2019 11:29:10 +0100
Message-Id: <20191127102914.18729-10-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191127102914.18729-1-ulf.hansson@linaro.org>
References: <20191127102914.18729-1-ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_022933_442240_35A2E34F 
X-CRM114-Status: GOOD (  15.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
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

In order to enable a CPU to be power managed through its PM domain, let's
try to attach it by calling psci_dt_attach_cpu() during the cpuidle
initialization.

psci_dt_attach_cpu() returns a pointer to the attached struct device, which
later should be used for runtime PM, hence we need to store it somewhere.
Rather than adding yet another per CPU variable, let's create a per CPU
struct to collect the relevant per CPU variables.

Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
---

Changes in v3:
	- None.

---
 drivers/cpuidle/cpuidle-psci.c | 24 ++++++++++++++++++++----
 1 file changed, 20 insertions(+), 4 deletions(-)

diff --git a/drivers/cpuidle/cpuidle-psci.c b/drivers/cpuidle/cpuidle-psci.c
index 830995b8a56f..167249d0493f 100644
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
@@ -78,7 +84,9 @@ static int __init psci_dt_cpu_init_idle(struct device_node *cpu_node,
 {
 	int i, ret = 0;
 	u32 *psci_states;
+	struct device *dev;
 	struct device_node *state_node;
+	struct psci_cpuidle_data *data = per_cpu_ptr(&psci_cpuidle_data, cpu);
 
 	state_count++; /* Add WFI state too */
 	psci_states = kcalloc(state_count, sizeof(*psci_states), GFP_KERNEL);
@@ -104,8 +112,16 @@ static int __init psci_dt_cpu_init_idle(struct device_node *cpu_node,
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
