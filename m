Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2F5CE8D37
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 17:48:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=UUf9W/wHyOQ9NU23fidvaeQcmeTO/32FAN/xwYhsh0s=; b=PUpIE7f7Xzs1b4HcSVqHfxd9Dt
	bSVPGf1RrBRJKd7bNqIkmBaIsucd2FrdQ6ctAcYsxB1uIclJ7Q3KEsvqftQ/OxTuR5E18TS0+Qdfs
	C7TWsXHQu5doGDuQUHkQ2A0hWW5c6ldA8ICQHtdUHsTjXNMcEsZAZtDtpZvvPn+peNx51pOHR2RYR
	g4+S9lXmtu7ncHS/EbvHdieOcfQD0fEgT7EBz4hh6zN8REL/yt9pvOkLn++h6BLRLQ99//jNCjNT4
	KTjTMO+tLmrd93pv7pRCB7/PK8mQGtmtAJjlnxSqOz+btiXibpohPQvBQJ9i/gcseheSe8nlN5fc+
	8rGvgrJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPUfP-0006f0-TE; Tue, 29 Oct 2019 16:48:23 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPUcB-0002y6-QG
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 16:45:05 +0000
Received: by mail-lj1-x241.google.com with SMTP id s4so15137107ljj.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 09:45:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=oPeghc6WqG1iFH3/ouy3iONyWp9Iyx8uFEd3HgEFhLk=;
 b=wrOFgiwtszMolhgnzxseLGcu4GGivTDev2DuMZF5S+K3pvdZw3gzV80jSc+iKNalzg
 3jq/ygxLZUPCte2H+90aboCJeYosvTFeewSQrUp7gqdUcTpxl2olrUzW55dSFxqS2X4n
 pK6cwxmnWPlTEEUyOPd/NTtCaGlcbrQ1XyAZcYAnRFmd1nJTnWC+Ak01jyggNQ7zs2c1
 NUiNV7ukM36egEaPE8tXtJ5wQQVAmC7mbh2vRWBvR9tX36/S5DjLvCefJHgRLIOLINKH
 U+hqAkGNAqm8UWIDOOoA5iB7zVQgM5M46iPMTWTjK3fHlbDHnMfQ19bhe297cLV4GuUj
 9OeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=oPeghc6WqG1iFH3/ouy3iONyWp9Iyx8uFEd3HgEFhLk=;
 b=Vah7EvIXTBbexrL56BBRZd+W3l6u9RQTseeALYd0edSC9s9lfQhbU9OhLmh0SFxg6A
 l88YBcSKoMClgEiroEgqcMWYK4nbz8IRZTZw5yehiy+9i9oTgwuDGUQW0N+NyWcupPrC
 On1LXvwwwBJkOK1+ZEuqLyEx0EMPmmLwQdT4VGAJz6oHy9PSiP2JJAEilYlDklOTLmZ6
 J1Horv9zumPk0KK+cFV39XOakASSiHoa6RGTeda4AiFgPqAJCMAfb6YyhTbx7t6R2EC6
 ifUWVSYV4H2xbvVDqUgDu2BstZtviZNw7biLsWjKm+5byefwuT3hgeGJ247KpBVCmmlS
 DNGQ==
X-Gm-Message-State: APjAAAWHO6aIq57Yyyv0QvWQSd2ndNqVFqn9UH/l0w7Ab+9nYdxABxfs
 um8ug64fjK3/G/FKTvG8/FVyAQ==
X-Google-Smtp-Source: APXvYqyIFKxFkqbyPaXM93D7aym8tj0pRQr9/BS4/DANzI/lG6G74uINtsQQx6lGNYgWxgUkzs6yiA==
X-Received: by 2002:a05:651c:293:: with SMTP id
 b19mr3286729ljo.176.1572367501795; 
 Tue, 29 Oct 2019 09:45:01 -0700 (PDT)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id f28sm2048161lfh.35.2019.10.29.09.45.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 09:45:01 -0700 (PDT)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Mark Rutland <mark.rutland@arm.com>, Lina Iyer <ilina@codeaurora.org>,
 linux-pm@vger.kernel.org
Subject: [PATCH v2 11/13] cpuidle: psci: Manage runtime PM in the idle path
Date: Tue, 29 Oct 2019 17:44:36 +0100
Message-Id: <20191029164438.17012-12-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191029164438.17012-1-ulf.hansson@linaro.org>
References: <20191029164438.17012-1-ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_094503_935175_DDCBB8FB 
X-CRM114-Status: GOOD (  18.89  )
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

In case we have succeeded to attach a CPU to its PM domain, let's deploy
runtime PM support for the corresponding attached device, to allow the CPU
to be powered-managed accordingly.

To set the triggering point for when runtime PM reference counting should
be done, let's store the index of deepest idle state for the CPU in the per
CPU struct. Then use this index to compare the selected idle state index
when entering idle, as to understand whether runtime PM reference counting
is needed or not.

Note that, from the hierarchical point view, there may be good reasons to
do runtime PM reference counting even on shallower idle states, but at this
point this isn't supported, mainly due to limitations set by the generic PM
domain.

Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
---

Changes in v2:
	- Rebased.

---
 drivers/cpuidle/cpuidle-psci.c | 18 +++++++++++++++++-
 1 file changed, 17 insertions(+), 1 deletion(-)

diff --git a/drivers/cpuidle/cpuidle-psci.c b/drivers/cpuidle/cpuidle-psci.c
index 4b0183d010e0..937a8e450251 100644
--- a/drivers/cpuidle/cpuidle-psci.c
+++ b/drivers/cpuidle/cpuidle-psci.c
@@ -16,6 +16,7 @@
 #include <linux/of.h>
 #include <linux/of_device.h>
 #include <linux/psci.h>
+#include <linux/pm_runtime.h>
 #include <linux/slab.h>
 
 #include <asm/cpuidle.h>
@@ -25,6 +26,7 @@
 
 struct psci_cpuidle_data {
 	u32 *psci_states;
+	u32 rpm_state_id;
 	struct device *dev;
 };
 
@@ -50,13 +52,26 @@ static int psci_enter_domain_state(int idx, struct psci_cpuidle_data *data)
 {
 	int ret;
 	u32 *states = data->psci_states;
-	u32 state = psci_get_domain_state();
+	struct device *pd_dev = data->dev;
+	bool runtime_pm = (pd_dev && data->rpm_state_id == idx);
+	u32 state;
 
+	/*
+	 * Do runtime PM if we are using the hierarchical CPU toplogy, but only
+	 * when cpuidle have selected the deepest idle state for the CPU.
+	 */
+	if (runtime_pm)
+		pm_runtime_put_sync_suspend(pd_dev);
+
+	state = psci_get_domain_state();
 	if (!state)
 		state = states[idx];
 
 	ret = _psci_enter_state(idx, state);
 
+	if (runtime_pm)
+		pm_runtime_get_sync(pd_dev);
+
 	/* Clear the domain state to start fresh when back from idle. */
 	psci_set_domain_state(0);
 	return ret;
@@ -160,6 +175,7 @@ static int __init psci_dt_cpu_init_idle(struct device_node *cpu_node,
 	}
 
 	data->dev = dev;
+	data->rpm_state_id = state_count - 1;
 
 	/* Idle states parsed correctly, store them in the per-cpu struct. */
 	data->psci_states = psci_states;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
