Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C07917F538
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 11:41:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1k0bHobPnK/cMAfvrJMmvjh0FDgVjQNGP5j46sfd/Rk=; b=pJbOAsyMrXasdX
	aadynTJaNnC/OjLd8hw/Q1qHzUrVcJLOYn5iAT5plXKUI4p0RBEqib4TE2WeJ7sGQK8wGq2yOv8Kg
	ZV4FYxZWTy9sGc2h7psHRa+vWFXwVmaNBEevAEjUacdSj3EGU+RI5ADPeKVb+iOxSPeYIMR5M8Mgj
	4N7A2t+nyDtonK3c2kTft5FXWf5QzwGoD3Srwpnj/qlgfwXErsGjD4LD3Uar3FleOYZWGX8RxCkK6
	Zgk7hCVTAVJ5UnT2lKyt/uEpxIb+K7EHo0eAIDTnMRjmA0EBzw3VD8ybCGGIYDeOixFtDWLgLwbLQ
	U1kNDOVgmXmbMrTmYo6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBcJl-0001Aa-9K; Tue, 10 Mar 2020 10:40:57 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBcJY-00016M-Az
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 10:40:47 +0000
Received: by mail-lj1-x243.google.com with SMTP id g12so1214075ljj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Mar 2020 03:40:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6pxlLk38rJ+HhQrbDG9StMgSzEGNLqFsirKScynCScU=;
 b=nc6/NWC0ZnA3EHC5pXdWeUncJizYLSupGGwOcnk1c26mwggUrbQlWG54DY4FknvUYC
 28jVQAIJIwqs8DWroIOThx0+dpmmj9ek3g7+J7ZWSAEJAKnjaEuEu0hL1in+KrU4I2Cj
 6EoKk8Z2W08D0X5hLNTyxIPOnrkzo2mxdpjQabpM/cozVARF9SSCYuukC6rnk6NPDafV
 WXiPDg3mmSwA2N6t5wckhRmEi1FF+EFsr03KtdQ+hOPcjc/Agv4GfUakYa+50CUuMlEc
 541J2z+kFc8ewkil29Pgiqwh5Yynam9/Aigi50NWSaFUYN/1Nzj5TaoYkStWR2ciEepb
 q00w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6pxlLk38rJ+HhQrbDG9StMgSzEGNLqFsirKScynCScU=;
 b=KLwvQ6tvyq4n56TFffDZW/RCR0ErKVuHD8otfComCVryOzLIAgEVvQsBIEjh2K5SAH
 Rpwfte7YLnQ/YKc4mRQ6epSfZC7DKFw/hgu3oDkOoJz1FgrLWkVJe7ne31nwiLQLhL9i
 4zPzy8LtnHcgc+XgutHJcuehGhwuYzX53FXxzVUU/6nji67SrfV5xVoAbaFcCu9Q4YWj
 MD/4KgsvFE5FOeKIU9/zBuhHUwDqxN0LT/mL/drrYycDg9gBJv/JkUBu4iQgNypsyLMP
 1/yvTaDUpJXQVWhgqt7BEVirYOORNjUIF54pVqHR94OWY4z8RfPkwbPVHoXl/HoKNjye
 mTsg==
X-Gm-Message-State: ANhLgQ3ptk9iCdKz+8wvaucSRtw1iffQbg1138toUgUgiya/hvO5vqzL
 T+sMMqfo1AgEv1m9wuXgYORaVA==
X-Google-Smtp-Source: ADFU+vtyugMzukSnO3/aD1ZXvAqRaTZfqRTHJXjr2Xlk1nBcgblQDVHM7XoSCktNZFEhOicuiCITog==
X-Received: by 2002:a2e:8802:: with SMTP id x2mr8541132ljh.291.1583836842549; 
 Tue, 10 Mar 2020 03:40:42 -0700 (PDT)
Received: from uffe-XPS13.ideon.se ([85.235.10.227])
 by smtp.gmail.com with ESMTPSA id e2sm21511582ljp.55.2020.03.10.03.40.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Mar 2020 03:40:41 -0700 (PDT)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>, linux-pm@vger.kernel.org
Subject: [PATCH v3 2/2] cpuidle: psci: Split psci_dt_cpu_init_idle()
Date: Tue, 10 Mar 2020 11:40:39 +0100
Message-Id: <20200310104039.4066-1-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_034044_406566_7E8C8314 
X-CRM114-Status: GOOD (  15.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
 Benjamin Gaignard <benjamin.gaignard@st.com>, Stephen Boyd <sboyd@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Lina Iyer <ilina@codeaurora.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

To make the code a bit more readable, let's move the OSI specific
initialization out of the psci_dt_cpu_init_idle() and into a separate
function.

Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>
Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
---

Changes in v3:
	- Resending with reviewed-tags added and dropped fixes tag.

---
 drivers/cpuidle/cpuidle-psci.c | 46 ++++++++++++++++++++--------------
 1 file changed, 27 insertions(+), 19 deletions(-)

diff --git a/drivers/cpuidle/cpuidle-psci.c b/drivers/cpuidle/cpuidle-psci.c
index edd7a54ef0d3..bae9140a65a5 100644
--- a/drivers/cpuidle/cpuidle-psci.c
+++ b/drivers/cpuidle/cpuidle-psci.c
@@ -160,6 +160,29 @@ int __init psci_dt_parse_state_node(struct device_node *np, u32 *state)
 	return 0;
 }
 
+static int __init psci_dt_cpu_init_topology(struct cpuidle_driver *drv,
+					    struct psci_cpuidle_data *data,
+					    unsigned int state_count, int cpu)
+{
+	/* Currently limit the hierarchical topology to be used in OSI mode. */
+	if (!psci_has_osi_support())
+		return 0;
+
+	data->dev = psci_dt_attach_cpu(cpu);
+	if (IS_ERR_OR_NULL(data->dev))
+		return PTR_ERR_OR_ZERO(data->dev);
+
+	/*
+	 * Using the deepest state for the CPU to trigger a potential selection
+	 * of a shared state for the domain, assumes the domain states are all
+	 * deeper states.
+	 */
+	drv->states[state_count - 1].enter = psci_enter_domain_idle_state;
+	psci_cpuidle_use_cpuhp = true;
+
+	return 0;
+}
+
 static int __init psci_dt_cpu_init_idle(struct cpuidle_driver *drv,
 					struct device_node *cpu_node,
 					unsigned int state_count, int cpu)
@@ -193,25 +216,10 @@ static int __init psci_dt_cpu_init_idle(struct cpuidle_driver *drv,
 		goto free_mem;
 	}
 
-	/* Currently limit the hierarchical topology to be used in OSI mode. */
-	if (psci_has_osi_support()) {
-		data->dev = psci_dt_attach_cpu(cpu);
-		if (IS_ERR(data->dev)) {
-			ret = PTR_ERR(data->dev);
-			goto free_mem;
-		}
-
-		/*
-		 * Using the deepest state for the CPU to trigger a potential
-		 * selection of a shared state for the domain, assumes the
-		 * domain states are all deeper states.
-		 */
-		if (data->dev) {
-			drv->states[state_count - 1].enter =
-				psci_enter_domain_idle_state;
-			psci_cpuidle_use_cpuhp = true;
-		}
-	}
+	/* Initialize optional data, used for the hierarchical topology. */
+	ret = psci_dt_cpu_init_topology(drv, data, state_count, cpu);
+	if (ret < 0)
+		goto free_mem;
 
 	/* Idle states parsed correctly, store them in the per-cpu struct. */
 	data->psci_states = psci_states;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
