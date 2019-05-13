Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E6151BDBA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 21:24:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=feym2BX+0M5RSmafRRS6QsOLeplu/SeakXdfGEjy8d8=; b=sckS0KISESs9E2xWLmw2XLwOFL
	EEkJylOzWo62mzmXFgKK+sR/RYuX09XgNLbt9/mhBuiKgtPcqM2oDUnE/MkoMllDQPKgPRT3MbL6i
	7Dlg1Eg/uV0mueuUeHRSLCFvFYcr2xaHP6s1WFOwXDuK/8VXZInTjAYEylPSpr/vw2N3jtc4cd1Yt
	2DF+C7nCO1q+Jm+4Wv0HoEYS36acb3O6gpr3KjtiTNrm1CYLbHroKBF5Ks6X+58ZVvyMXXkrhHYAM
	B/0jTThT/t8Zyzfq7ceB+yH9dc7MBQMioATCTc96c+jqmy6rxJMu0zZ7L134wRO/yXIWDzeotTbGI
	QbcVi/eA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQGYe-000236-1p; Mon, 13 May 2019 19:24:20 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQGXf-00010l-03
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 19:23:21 +0000
Received: by mail-lj1-x244.google.com with SMTP id w1so9505922ljw.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 May 2019 12:23:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Nbt/R0uZX9P8HTLZOOX7O4bQjSSh3KmuxEw/gJfnJ0w=;
 b=c9ATK+kF7r7EPNbGkGdt7Bm63ADC4YHAW78L6XgGCewkxmYTEtG+L0LG2PjuZOY9P6
 GIc/wvpLNy0UH3lkOe6ZFzROaxSq6yzGyHcvnwD2CRd7HZc2KPc2eU2Qqjw/+V6Y/odG
 8g1QUs5Jnsr58ljysRy+9dUb1w4F/dykHejwWNEfEpnjahvDUevoLs2Q6KSLe41qv/kt
 0zP1wQEuDypoCPrKTbmlS2icrt04INJA7iFSJ5TpXPM+7IfemYXsH5ks1f1TIKzK3DDH
 bHfdYw7ILT8JPAFLDWe6W30v1tHH6XaC6WnzwDnPcwbc/4E0bjVz5MHKP4astQUCxbqu
 Hwvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Nbt/R0uZX9P8HTLZOOX7O4bQjSSh3KmuxEw/gJfnJ0w=;
 b=jOhFy2PdSzQS7lZ4KJCriS+G+zlqEw018iVbYScdXrRPut354nULD0meNiVcHMqBkk
 4zKwKUox5bn2Lq5icJc7hrRZoXBU9hfnCa0dI3YcHY3K/LDA/76YBrgRBE+Ccp+cdhml
 PQTOqmRrw9qrVCIMvtf0dkqUciyyHZcBXJyhaad6cnqCnm7Rl+Lfey+62gRESS7lWZ+S
 DRV2GpCof4ppOTNOY8KRtPb4Fj7QsvCS8QWWbyX6YMdWTXD1m9WZJgylK5C22hiCnt21
 jqZofxwKpGjP6NOnsJYdVQOp22SmOcZYMS6DH9R2ayAcbj5BYctYBq50gGSW6QKwIow6
 GhYA==
X-Gm-Message-State: APjAAAU6NZIm0+gHUEJ2WTXmIHzg1yNl8YBHFDLPogFOObtuZYv4N0wX
 778uyFQYTNNpIXjHTT/XncLe6g==
X-Google-Smtp-Source: APXvYqw/K4DSr+T5mHbidlXB09i9OsKjJE0jmVRY6GRi9vogaHyD5Mxz5/BfqSTiLW4LknGP/8Tf2g==
X-Received: by 2002:a2e:1312:: with SMTP id 18mr4211531ljt.79.1557775397083;
 Mon, 13 May 2019 12:23:17 -0700 (PDT)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id q21sm3449365lfa.84.2019.05.13.12.23.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 13 May 2019 12:23:16 -0700 (PDT)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Mark Rutland <mark.rutland@arm.com>, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 06/18] drivers: firmware: psci: Support hierarchical CPU idle
 states
Date: Mon, 13 May 2019 21:22:48 +0200
Message-Id: <20190513192300.653-7-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190513192300.653-1-ulf.hansson@linaro.org>
References: <20190513192300.653-1-ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_122319_045430_E26F9F6B 
X-CRM114-Status: GOOD (  13.91  )
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
 "Raju P . L . S . S . S . N" <rplsssn@codeaurora.org>,
 Lina Iyer <lina.iyer@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Lina Iyer <lina.iyer@linaro.org>

Currently CPU's idle states are represented in a flattened model, via the
"cpu-idle-states" binding from within the CPU's device nodes.

Support the hierarchical layout, simply by converting to calling the new OF
helper, of_get_cpu_state_node().

Suggested-by: Sudeep Holla <sudeep.holla@arm.com>
Signed-off-by: Lina Iyer <lina.iyer@linaro.org>
Co-developed-by: Ulf Hansson <ulf.hansson@linaro.org>
Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
---

Changes:
	- None.

---
 drivers/firmware/psci/psci.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/firmware/psci/psci.c b/drivers/firmware/psci/psci.c
index 9c2180bcee4c..b11560f7c4b9 100644
--- a/drivers/firmware/psci/psci.c
+++ b/drivers/firmware/psci/psci.c
@@ -316,7 +316,7 @@ static int psci_dt_cpu_init_idle(struct cpuidle_driver *drv,
 		return -ENOMEM;
 
 	for (i = 0; i < num_state_nodes; i++) {
-		state_node = of_parse_phandle(cpu_node, "cpu-idle-states", i);
+		state_node = of_get_cpu_state_node(cpu_node, i);
 		if (!state_node)
 			break;
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
