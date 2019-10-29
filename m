Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8353FE8D36
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 17:48:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=SCSvu10ILjT6l8CXbcVOpTTZGXDj0kBm+jwSL/8ZtXg=; b=HuyS3eHO1z551uMPEDr68yBpsE
	6iluCPus1KTk7kq5/IqaWZfAUFpbZjWZ4EHM0cB4R86H8YMIVTzb8IPOINnmV983UkJEIHXOZtL1Y
	jvDBnCS9AaaMkL3YS2zU5alIFg4tEx3CTdUySPMiW06syFgy9JpEb2wgNPJwoSJrZPBQ0U6HJ6I1d
	5Qzyld8kMBjbDhDnFcZ1zFO7cxo6XAMfLxop2HXVIVeElrZAoAqZtG5b+cDREArum8lo6EO/ICweV
	XsTslk38EmLYiZ72nWy3ejOsXJIS5IakfQni0/d3dx2qfUgjAjhDfFmspnc0ZoVIWMLSY58rAg/Vq
	akeB+5bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPUfC-0006Pn-Sj; Tue, 29 Oct 2019 16:48:10 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPUc8-0002uz-5k
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 16:45:01 +0000
Received: by mail-lf1-x144.google.com with SMTP id f4so5059480lfk.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 09:44:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=vOTQa6UzVCEIiTs5syxBeghS5mOeakZSLZW0GE/rgZA=;
 b=z8D6HMBXssHVDql8bLgtR21ZuCihMSUrMxv2eBZ40PvewQtBvycZT+f6DhSg4lOPiH
 7X6DV43O6E661txvqWeXUWoySBr10Ft01XAmu1gP2suZk6RSa72qHIJlGIHMvm9PG/Sz
 VYV8bUCAYhqleRebOWTeJnJZvkyLOlkQ++cuaphGdxEwLiXzanV7i4N3AicqdXk0jh5M
 lYyDE2BARBRrwWZl3e/LgY/OenCQvf9S5DNlT/61rEWfrhETf7Bp9NtUscMqwO0HyaYG
 NkY3lp5XTuwq+hjJ90gfgvGZMhttbI3ELQivgUivPLVBXgFES08i/H+E/hmBPlDPq9m9
 bcXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=vOTQa6UzVCEIiTs5syxBeghS5mOeakZSLZW0GE/rgZA=;
 b=Kh6zQ6TB1ou1J+tn5QjCFg7JbPkFPO9BzB8tfq5dhFRPvDCVcLmF8Ki2AMHyoz3Jrb
 nMaOEkjBGwH75hfyCeYBY5P9xAd5pF2anqpN9HXRhWAteZF8PbF1PMAvIiRIEpjYT12V
 R5uUcVVABfo76c8hsiIFGbPXsp7Sck7K+24RHe2IUldKBIhqbbMayEw5w+6diKsL2ZK9
 0K/YQY+uhKFQHdZL3eHytaUo5qY4aTJ7HbmCzP4jV3xgBa9/2X9TpDwH0SKTac4rEBaH
 aCijvobL26XntIUKJUHrW1gPA+ZvIK68wpYNVBLvx4Ohj8s+VhiOSqb8MDu+o4cJKVRD
 75cQ==
X-Gm-Message-State: APjAAAUZKKyrd6/7wxVIb/NapQGltpPZFvS1DzmnHLkWO9M+/x4wBfAW
 BZGWih4Yt22zL64x/LF1YxC9Ag==
X-Google-Smtp-Source: APXvYqzNnr8T4A4xJlPf4SZM23Erro4aD3FFBbZzMuE+TOuRb5sHtT49+bOmhLjeNMTLoN2Ve55vSg==
X-Received: by 2002:ac2:520e:: with SMTP id a14mr2981413lfl.43.1572367498613; 
 Tue, 29 Oct 2019 09:44:58 -0700 (PDT)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id f28sm2048161lfh.35.2019.10.29.09.44.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 09:44:57 -0700 (PDT)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Mark Rutland <mark.rutland@arm.com>, Lina Iyer <ilina@codeaurora.org>,
 linux-pm@vger.kernel.org
Subject: [PATCH v2 09/13] cpuidle: psci: Attach CPU devices to their PM domains
Date: Tue, 29 Oct 2019 17:44:34 +0100
Message-Id: <20191029164438.17012-10-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191029164438.17012-1-ulf.hansson@linaro.org>
References: <20191029164438.17012-1-ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_094500_303795_E4DDFC6D 
X-CRM114-Status: GOOD (  15.77  )
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

In order to enable a CPU to be power managed through its PM domain, let's
try to attach it by calling psci_dt_attach_cpu() during the cpuidle
initialization.

psci_dt_attach_cpu() returns a pointer to the attached struct device, which
later should be used for runtime PM, hence we need to store it somewhere.
Rather than adding yet another per CPU variable, let's create a per CPU
struct to collect the relevant per CPU variables.

Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
---

Changes in v2:
	- Rebased.

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
