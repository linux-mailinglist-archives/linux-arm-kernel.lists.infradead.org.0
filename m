Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0E6B1F9BEB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 17:22:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H3NLrvMpvOE3Jt4AoYiJYUr/6GqcfyvO4AbucI+SgBM=; b=dHxEJ2JrjF+DnV
	psygMW2QH/kwbdn1/0b/a/5AEAB84/YL3vovr5BXxPmpPp2MKvBVNoNhGxnMy76AmJuhNBvoB78af
	hRcMP8OWs5ePETo8NT8erpFruOfI7k5o7sOEHJTpOEYo+2ZDgYND27BydPlwxIbB2iBMPGE30EmoQ
	FbIWHFwEiE/+NnW1fMrHh9Yr3hmaPY2Rvw/U63CyMf7AoJeipUks/ABvW3mzkQn/+KgPZApoV1rII
	wTxvetOzUZoR152LS8ahcOoczlmFXnApTQeB+0cEMmDoun0f99/4B3w4UOSAkDTU/4+E1yn4IrYBg
	jwbjsl6IcV738ZSq4REw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkqwh-0006NI-Mt; Mon, 15 Jun 2020 15:22:47 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkqv8-0005BR-FC
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 15:21:11 +0000
Received: by mail-lf1-x143.google.com with SMTP id g2so2172570lfb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 08:21:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vhNL1X1q5NcFvN2K8EIYcmkOuXak8nPvZVNGDqJ5u0c=;
 b=OQjdZzsxvgkgfaKvQLiV9tJflG/RmsGfS4m0I+TNrGoWmxvcK+jbLmLbY/ExTtyYIY
 Vg0NakP5xmuAUYG5zcgPGVkCT9VZF1veYdWFoUD5fUgHkfVGaeNHKEJN25AAgTF8V8LQ
 PgzfhEgTzMOyHpSDNFa2qyo9TypmPVyqxH4getv5l1aDBZQ3JkpJ8cxAiWzEzKFR4E10
 49TbJjXKfSkjjPLPMQcqrsoyB/Ois6R99dzAT+FzaGoCQbXGJ1dSBUfaQ4MCqVesCMIo
 7R4yEVofwZbDenbjuj6hfTqi7qeLn8Gkf0aQ0W8V+NzNUTtNWCiLwAcU9+i8nBfBxN1i
 aXPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vhNL1X1q5NcFvN2K8EIYcmkOuXak8nPvZVNGDqJ5u0c=;
 b=A6D/mri17FB3PUTpJZxZeSjGtChrNu95phl5G5IvavvzS4Ue+oTpg4icEb8sVQTppS
 Zao/Szr2SqJDaytLko+D56YoEiYVEtzEqnyJapAi8Pj8nBr96S35cQ1Qy7uGtOcmmHwR
 x6S0UPK+tlVFZ3M270eCC1EJKjOUhp6INlZVkwFMAp/X8Sr3iyxFdmt5v6iIuhBj0d2U
 BKrgQXU2oI4+piKoIhvc5i0k2f1ISn7SKd8KudaapIctxaVNXLT36gWMdWBm+ZqxrYOR
 fsWfI3qYacUvuVaol/V2zasiZ73uM7lmWbwLjaGNIJtXu1xmouJhroPL/TKMFzZp0Foo
 blAw==
X-Gm-Message-State: AOAM533NUD1h3VCxi3eiyesiolxMFXCtTfTGg2pV7CEom9xlNsQG2SBe
 8VibFJBYTMvdxpQIRtOW8U6Vuw==
X-Google-Smtp-Source: ABdhPJy/VD1VcdDp5UE7jhofG7cpZxBVfQ4WtriMy9A+lszsVJNqiExptjmpyOBm9TPvrcBrm8QvWA==
X-Received: by 2002:a19:a44:: with SMTP id 65mr2240250lfk.69.1592234468265;
 Mon, 15 Jun 2020 08:21:08 -0700 (PDT)
Received: from localhost.localdomain (h-98-128-181-7.NA.cust.bahnhof.se.
 [98.128.181.7])
 by smtp.gmail.com with ESMTPSA id r13sm507045lfp.80.2020.06.15.08.21.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Jun 2020 08:21:07 -0700 (PDT)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Saravana Kannan <saravanak@google.com>, linux-pm@vger.kernel.org
Subject: [PATCH 5/5] cpuidle: psci: Prevent domain idlestates until consumers
 are ready
Date: Mon, 15 Jun 2020 17:20:54 +0200
Message-Id: <20200615152054.6819-6-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200615152054.6819-1-ulf.hansson@linaro.org>
References: <20200615152054.6819-1-ulf.hansson@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_082110_520736_BB42F4CF 
X-CRM114-Status: GOOD (  16.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Depending on the SoC/platform, additional devices may be part of the PSCI
PM domain topology. This is the case with 'qcom,rpmh-rsc' device, for
example, even if this is not yet visible in the corresponding DTS-files.

Without going into too much details, a device like the 'qcom,rpmh-rsc' may
have HW constraints that needs to be obeyed to, before a domain idlestate
can be picked.

Therefore, let's implement the ->sync_state() callback to receive a
notification when all consumers of the PSCI PM domain providers have been
attached/probed to it. In this way, we can make sure all constraints from
all relevant devices, are taken into account before allowing a domain
idlestate to be picked.

Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
---
 drivers/cpuidle/cpuidle-psci-domain.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/cpuidle/cpuidle-psci-domain.c b/drivers/cpuidle/cpuidle-psci-domain.c
index bf527d2bb4b6..b6e9649ab0da 100644
--- a/drivers/cpuidle/cpuidle-psci-domain.c
+++ b/drivers/cpuidle/cpuidle-psci-domain.c
@@ -27,6 +27,7 @@ struct psci_pd_provider {
 };
 
 static LIST_HEAD(psci_pd_providers);
+static bool psci_pd_allow_domain_state;
 
 static int psci_pd_power_off(struct generic_pm_domain *pd)
 {
@@ -36,6 +37,9 @@ static int psci_pd_power_off(struct generic_pm_domain *pd)
 	if (!state->data)
 		return 0;
 
+	if (!psci_pd_allow_domain_state)
+		return -EBUSY;
+
 	/* OSI mode is enabled, set the corresponding domain state. */
 	pd_state = state->data;
 	psci_set_domain_state(*pd_state);
@@ -222,6 +226,15 @@ static void psci_pd_remove_topology(struct device_node *np)
 	psci_pd_init_topology(np, false);
 }
 
+static void psci_cpuidle_domain_sync_state(struct device *dev)
+{
+	/*
+	 * All devices have now been attached/probed to the PM domain topology,
+	 * hence it's fine to allow domain states to be picked.
+	 */
+	psci_pd_allow_domain_state = true;
+}
+
 static const struct of_device_id psci_of_match[] = {
 	{ .compatible = "arm,psci-1.0" },
 	{}
@@ -289,6 +302,7 @@ static struct platform_driver psci_cpuidle_domain_driver = {
 	.driver = {
 		.name = "psci-cpuidle-domain",
 		.of_match_table = psci_of_match,
+		.sync_state = psci_cpuidle_domain_sync_state,
 	},
 };
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
