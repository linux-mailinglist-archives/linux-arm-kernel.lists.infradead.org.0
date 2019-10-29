Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 034D7E8D31
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 17:47:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/ogtkiLnHraFgrd0ZVdJNYTRAeSm5bu1pzAZeLOFX6E=; b=lrArN7nwMrXrDi8300vAnwmIuj
	j4ejmZ/ec8fvFEWQiLGw/lt9OCNfGTRSCpHuGMJqltAJPigHHKeuuz0V4GQFvNZaS78WKnh+dVzqq
	Rpibxgalry9iK/PxCFwxsrDXYECZXhLz3ufJiMEUTZc8aU7CDuZTOfo2G6SfuW/8RWhaENHEEWxKn
	coaDgZvt71we8eUHdREfvZQIOCW80yTHE/NdnrH4spsey8By+bpCOwJYIsgtQQK2I3Wowonl9mZwG
	+lZvfmjfaTgZUJ6EbdBenTB1ZFpe3sbITyEUOuZTxOwEIX6C7O8dbAb9uVIN705qFz1r9Ha102fy5
	tCIK6Mfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPUeS-0005g5-6h; Tue, 29 Oct 2019 16:47:24 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPUc6-0002sb-2g
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 16:45:00 +0000
Received: by mail-lf1-x144.google.com with SMTP id f5so11065459lfp.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 09:44:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=lVOXUxxNfV4wN8bXUUjCt19F2H674agulhVmSpBAGAE=;
 b=Wq5NfHQPAlEsbZnoQSMFmjC6IAkDnAhfODokHmgWVS89BHlzxBq+ZIf8QlWoglh0YS
 4TeLiSC2uYyogVPZ3eCnP0EuopYnwKNk6DKy0T/tPABYmb6JOUPxItn2XxgeuAuSCWpq
 OudHPaKwaUZRxh/QMpMbNhOjU2IZ2Q8cIzpFzc7tLvhIoGa1oFjLfmpIIbsmbAPEXOQL
 HRdAyY1mdURR5DmHxMN5wRmFt9zw1oS9mLzxxVM+T5b7WILz0Sx81Jg9XXWGRdz4YURc
 Jg67ktqi3/B61awY2CkjMd5/w09MMl3vU1SwFJXpNNHKp7Xt5yFrq3EiH/oH55ELcysM
 DT2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=lVOXUxxNfV4wN8bXUUjCt19F2H674agulhVmSpBAGAE=;
 b=pF8FIVMit8OmduvmQqCnBxEDcQ/Mx7CN1/zQzM90UxYxDV6AkiifA23iYMblGFq15i
 ZER+YPylST/cQ4sG3FbBIZ6lWqX96AS2ZXy9Ga/1iefRX8zTjEv7TnSn0/SrOSj3d5zk
 xPq35xvFP7zvZAva32wGgw5gMhdPUFwnteytZ4LDXe2F+ZzHLHUcF1AlJfR8sM0Qpzff
 h11iGWyJHLa2HJK6A5gyPK27qO1gplz7x9G3Tz683Pqk0bU9sQRrdmaobCmJqxwhx/3B
 NVQVIBnItJ1kkh0xLCHPoujByhHuc+I5RtUeEYzJFmAtQ60mrTC+SOXLgv508YietJl4
 eaOA==
X-Gm-Message-State: APjAAAXGWdLfUtGjwuR9o/RLH/HXywzRv0AlgbMPXfdd78ngGiDd8Fja
 Qny+DirK+Ljgouv4t2fBpNvE6A==
X-Google-Smtp-Source: APXvYqxGf8w8I3KVuSqOM7/zKsnP0xinWPh7Ee1N9tyxQPh9MinelvopEFVFU27e5Ky+H/l8+CQgXw==
X-Received: by 2002:ac2:5b42:: with SMTP id i2mr3123478lfp.164.1572367493929; 
 Tue, 29 Oct 2019 09:44:53 -0700 (PDT)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id f28sm2048161lfh.35.2019.10.29.09.44.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 09:44:53 -0700 (PDT)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Mark Rutland <mark.rutland@arm.com>, Lina Iyer <ilina@codeaurora.org>,
 linux-pm@vger.kernel.org
Subject: [PATCH v2 06/13] cpuidle: psci: Simplify OF parsing of CPU idle state
 nodes
Date: Tue, 29 Oct 2019 17:44:31 +0100
Message-Id: <20191029164438.17012-7-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191029164438.17012-1-ulf.hansson@linaro.org>
References: <20191029164438.17012-1-ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_094458_156581_E219C8BF 
X-CRM114-Status: GOOD (  18.09  )
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

Iterating through the idle state nodes in DT, to find out the number of
states that needs to be allocated is unnecessary, as it has already been
done from dt_init_idle_driver(). Therefore, drop the iteration and use the
number we already have at hand.

Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
---

Changes in v2:
	- Rebased.
	- Renamed variable and fixed tab-intendent.

---
 drivers/cpuidle/cpuidle-psci.c | 35 +++++++++++++++++-----------------
 1 file changed, 17 insertions(+), 18 deletions(-)

diff --git a/drivers/cpuidle/cpuidle-psci.c b/drivers/cpuidle/cpuidle-psci.c
index 361985f52ddd..761359be50f2 100644
--- a/drivers/cpuidle/cpuidle-psci.c
+++ b/drivers/cpuidle/cpuidle-psci.c
@@ -73,30 +73,24 @@ static int __init psci_dt_parse_state_node(struct device_node *np, u32 *state)
 	return 0;
 }
 
-static int __init psci_dt_cpu_init_idle(struct device_node *cpu_node, int cpu)
+static int __init psci_dt_cpu_init_idle(struct device_node *cpu_node,
+					unsigned int state_count, int cpu)
 {
-	int i, ret = 0, count = 0;
+	int i, ret = 0;
 	u32 *psci_states;
 	struct device_node *state_node;
 
-	/* Count idle states */
-	while ((state_node = of_parse_phandle(cpu_node, "cpu-idle-states",
-					      count))) {
-		count++;
-		of_node_put(state_node);
-	}
-
-	if (!count)
-		return -ENODEV;
-
-	count++; /* Add WFI state too */
-	psci_states = kcalloc(count, sizeof(*psci_states), GFP_KERNEL);
+	state_count++; /* Add WFI state too */
+	psci_states = kcalloc(state_count, sizeof(*psci_states), GFP_KERNEL);
 	if (!psci_states)
 		return -ENOMEM;
 
-	for (i = 1; i < count; i++) {
+	for (i = 1; i < state_count; i++) {
 		state_node = of_parse_phandle(cpu_node, "cpu-idle-states",
 					      i - 1);
+		if (!state_node)
+			break;
+
 		ret = psci_dt_parse_state_node(state_node, &psci_states[i]);
 		of_node_put(state_node);
 
@@ -106,6 +100,11 @@ static int __init psci_dt_cpu_init_idle(struct device_node *cpu_node, int cpu)
 		pr_debug("psci-power-state %#x index %d\n", psci_states[i], i);
 	}
 
+	if (i != state_count) {
+		ret = -ENODEV;
+		goto free_mem;
+	}
+
 	/* Idle states parsed correctly, initialize per-cpu pointer */
 	per_cpu(psci_power_state, cpu) = psci_states;
 	return 0;
@@ -115,7 +114,7 @@ static int __init psci_dt_cpu_init_idle(struct device_node *cpu_node, int cpu)
 	return ret;
 }
 
-static __init int psci_cpu_init_idle(unsigned int cpu)
+static __init int psci_cpu_init_idle(unsigned int cpu, unsigned int state_count)
 {
 	struct device_node *cpu_node;
 	int ret;
@@ -131,7 +130,7 @@ static __init int psci_cpu_init_idle(unsigned int cpu)
 	if (!cpu_node)
 		return -ENODEV;
 
-	ret = psci_dt_cpu_init_idle(cpu_node, cpu);
+	ret = psci_dt_cpu_init_idle(cpu_node, state_count, cpu);
 
 	of_node_put(cpu_node);
 
@@ -187,7 +186,7 @@ static int __init psci_idle_init_cpu(int cpu)
 	/*
 	 * Initialize PSCI idle states.
 	 */
-	ret = psci_cpu_init_idle(cpu);
+	ret = psci_cpu_init_idle(cpu, ret);
 	if (ret) {
 		pr_err("CPU %d failed to PSCI idle\n", cpu);
 		goto out_kfree_drv;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
