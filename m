Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7895B7D743
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 10:20:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4Tb6lLJaz2ZVakSy4Knqmqaad25btOTIJa6H1Qs7XH4=; b=rJc/UZVHN8Z6JS
	yF1122lGO2baGXWPWATlcPWIguB/yc3pOwINqrVqOoHl2xNmIf055pgSwWIl1419hreuZ7NsKOZCi
	IzYTUpqlF9kjJu/FPXczbPvAd6GEyWP0MoswiRm4VMHUBvkgeogLsAiKtEd/spd8pcGRewzLYNfTU
	woK0mU4LFVbQaI7OUoeqRjO0jb8EX0/q+9mpuvCQKXr/rEGnEXjasaDtcnMdbQ4hnNv5SH3FYE4YI
	eUvJrzucJo+F3taIdtHTzvUtb6CpuPaTOAgEMJ8IDoZEiOyvBXWq5OmPkdDCRJyIOJnW7+4I8YDnr
	XriZlIt9Egco35jEjYLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht6KT-0002av-WE; Thu, 01 Aug 2019 08:20:54 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht6JR-0000Ke-TV
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 08:19:51 +0000
Received: by mail-pf1-x441.google.com with SMTP id i189so33607155pfg.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 01:19:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lhetsf/v1WHqsODDPiuS8lCaAlBwJqZTnWnIuf4OhuE=;
 b=IeSrybNXM1FIuaHjdY8UGbg00YzSWruFMn1J7qNAW3drOxKc0UR8dxZDM5PD/UwY9x
 crfCdf8Q/xTPuaVROFU/r8eIsG9JXSdJGbjUk2DQH+rIPUUK8C3VNg2wcYriMmtqGNJT
 7j4NI63W+dSuf3NJWh0T7mG2Cw8wSakGtzWws8D97SnvRP6mpWDaG62Q8ukYZh3xNWAS
 bHT+s5u0WQ5XjcbNpFziJfAkntmqjT2wtaDVQ0RzER6/blMnFCrZhvS1x/2b6IzqPe2o
 t8qPEVYRxsRguSB7/QUcvmTdeatQF8Of3ll29ZRRZ4t3FmlNSiDoNElGjxoS23J1Irhp
 k1wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lhetsf/v1WHqsODDPiuS8lCaAlBwJqZTnWnIuf4OhuE=;
 b=FQPli0i3BCATbkih1PIsKeF6TMM32qHYXCbH4HRwliXgZGA4WlZeuWZlo2vp/bXAdm
 oIXNOzCaUtdrYHXzmcCXVKgajQdmgE69viLIrkSrOaQqF76ozrj2Rfxrnbl3eu48iGL/
 tWgYjJUvFBCS02PhRByuwQPsJdetPOk30cpG4t5lkyvdrYbTg6uqBAzktCKVreO+KBAY
 IrAffUd9mWtIlW62CX2mS8p5q3ZFwOP/3Z+HzccOZ/eNFWP6WjuGjEJClAgQx3wN+nZH
 2+P+X2I8PEKkP3tWp2WKfPhZNrYA/kczSs7GmtWAvvbYFmw1yrUGETuRmo9rXr/hhRe7
 KSbA==
X-Gm-Message-State: APjAAAVqFivsARn/dHr+Q6mbY2VnU2JA5wBiaBUAXr7QQVJ+Lc8DG5w0
 tQn12QVZkF5KVysPTvZQJ5OdYw==
X-Google-Smtp-Source: APXvYqzwaezWIvdwv0H5ugpgJ6JrKb46pj+oO7T+aNheVkzhLn/9E35sO38a1NI/m7ezUfYyfu5Mhw==
X-Received: by 2002:a17:90a:1ac5:: with SMTP id
 p63mr7090797pjp.25.1564647588607; 
 Thu, 01 Aug 2019 01:19:48 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id f64sm74385803pfa.115.2019.08.01.01.19.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 01 Aug 2019 01:19:48 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org
Subject: [PATCH ARM32 v4.4 V2 05/47] firmware/psci: Expose PSCI conduit
Date: Thu,  1 Aug 2019 13:45:49 +0530
Message-Id: <9af0ed2a4a54549532931e98643daa5ed274ac8f.1564646727.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1564646727.git.viresh.kumar@linaro.org>
References: <cover.1564646727.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_011950_000333_8C736BFA 
X-CRM114-Status: GOOD (  13.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Julien Thierry <Julien.Thierry@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Viresh Kumar <viresh.kumar@linaro.org>, guohanjun@huawei.com,
 Will Deacon <will.deacon@arm.com>, mark.brown@arm.com,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Marc Zyngier <marc.zyngier@arm.com>

commit 09a8d6d48499f93e2abde691f5800081cd858726 upstream.

In order to call into the firmware to apply workarounds, it is
useful to find out whether we're using HVC or SMC. Let's expose
this through the psci_ops.

Acked-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Reviewed-by: Robin Murphy <robin.murphy@arm.com>
Tested-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 drivers/firmware/psci.c | 28 +++++++++++++++++++++++-----
 include/linux/psci.h    |  7 +++++++
 2 files changed, 30 insertions(+), 5 deletions(-)

diff --git a/drivers/firmware/psci.c b/drivers/firmware/psci.c
index 290f8982e7b3..7b2665f6b38d 100644
--- a/drivers/firmware/psci.c
+++ b/drivers/firmware/psci.c
@@ -54,7 +54,9 @@ bool psci_tos_resident_on(int cpu)
 	return cpu == resident_cpu;
 }
 
-struct psci_operations psci_ops;
+struct psci_operations psci_ops = {
+	.conduit = PSCI_CONDUIT_NONE,
+};
 
 typedef unsigned long (psci_fn)(unsigned long, unsigned long,
 				unsigned long, unsigned long);
@@ -187,6 +189,22 @@ static unsigned long psci_migrate_info_up_cpu(void)
 			      0, 0, 0);
 }
 
+static void set_conduit(enum psci_conduit conduit)
+{
+	switch (conduit) {
+	case PSCI_CONDUIT_HVC:
+		invoke_psci_fn = __invoke_psci_fn_hvc;
+		break;
+	case PSCI_CONDUIT_SMC:
+		invoke_psci_fn = __invoke_psci_fn_smc;
+		break;
+	default:
+		WARN(1, "Unexpected PSCI conduit %d\n", conduit);
+	}
+
+	psci_ops.conduit = conduit;
+}
+
 static int get_set_conduit_method(struct device_node *np)
 {
 	const char *method;
@@ -199,9 +217,9 @@ static int get_set_conduit_method(struct device_node *np)
 	}
 
 	if (!strcmp("hvc", method)) {
-		invoke_psci_fn = __invoke_psci_fn_hvc;
+		set_conduit(PSCI_CONDUIT_HVC);
 	} else if (!strcmp("smc", method)) {
-		invoke_psci_fn = __invoke_psci_fn_smc;
+		set_conduit(PSCI_CONDUIT_SMC);
 	} else {
 		pr_warn("invalid \"method\" property: %s\n", method);
 		return -EINVAL;
@@ -463,9 +481,9 @@ int __init psci_acpi_init(void)
 	pr_info("probing for conduit method from ACPI.\n");
 
 	if (acpi_psci_use_hvc())
-		invoke_psci_fn = __invoke_psci_fn_hvc;
+		set_conduit(PSCI_CONDUIT_HVC);
 	else
-		invoke_psci_fn = __invoke_psci_fn_smc;
+		set_conduit(PSCI_CONDUIT_SMC);
 
 	return psci_probe();
 }
diff --git a/include/linux/psci.h b/include/linux/psci.h
index 04b4d92c7791..e071a1b8ddb5 100644
--- a/include/linux/psci.h
+++ b/include/linux/psci.h
@@ -24,6 +24,12 @@ bool psci_tos_resident_on(int cpu);
 bool psci_power_state_loses_context(u32 state);
 bool psci_power_state_is_valid(u32 state);
 
+enum psci_conduit {
+	PSCI_CONDUIT_NONE,
+	PSCI_CONDUIT_SMC,
+	PSCI_CONDUIT_HVC,
+};
+
 struct psci_operations {
 	u32 (*get_version)(void);
 	int (*cpu_suspend)(u32 state, unsigned long entry_point);
@@ -33,6 +39,7 @@ struct psci_operations {
 	int (*affinity_info)(unsigned long target_affinity,
 			unsigned long lowest_affinity_level);
 	int (*migrate_info_type)(void);
+	enum psci_conduit conduit;
 };
 
 extern struct psci_operations psci_ops;
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
