Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 434C21AFB9A
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Apr 2020 17:06:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=pZQ0dd6pnEYVXSIQdIL5rbeh3Y4PPgEpIfECInmUHRE=; b=siriqlsTFEVRvt3gCjdEV4ilZr
	Sl/BdUHWJATOzys5xbXtNVMKqPF7vf40N8nmx4VuXBZNPo+QhA//uUz3TSCA/7Vx97iBRCFK4strt
	kDwz8p8dwuo8/W5msdQj0VbE3Nnj1Mm5GqrSP6hGey8JtPZPMAhUXP7HumwZ+kAtSBmK5/Rf88ZTt
	U8rfoB0NFp650yO/U8N2wydNzgg254mMPF8BMF02eyy7Qh/Ie9IQo6Egowam7tvHxXpLuK4P87q6K
	1ld6VSGJzYfJFKBXhtYjqkIXpSnSVZJHvZl1VjWP5/ussx/Anvtze4xvQaY6POqZe8jzPyEhJrpd5
	UZujDb0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQBWp-0008QF-4P; Sun, 19 Apr 2020 15:06:39 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQBWE-00084Y-Eo
 for linux-arm-kernel@lists.infradead.org; Sun, 19 Apr 2020 15:06:06 +0000
Received: by mail-wr1-x444.google.com with SMTP id d17so8816460wrg.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 19 Apr 2020 08:06:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=5I4MSLTJOBl1Jn2nKk55DTzP4h3HxHPJ2YS3y5/mux8=;
 b=r1YrTjRdErGiKY88e0TcKF3hYB6y0VZNENz9otldapbrRE/o41dcwt/0a256WYmYeN
 XBk+pGCJNEb5GalhEY0/t1CNfs/n3S4rOu3PhmeMla02s/V5kjv0KPTC28KS7fGcgHHg
 Odx52ZNrQmpt8uAu11elsrzgEsbhklPsr6CkakUAH2zDlpIH2q+6rmeNygFOxel5nA8q
 8RYv7pxgUx5GfXsUc7VKqUeSRVvCEawdyye7hdMrNaGJGn+elhofSKrmWFMlx33FXder
 goxz6LQkMOqr22IjN2voIIsTUiuCAX3lDqsGfK+taIr9ArWV+zG0gfixaedq7pWwcPWj
 +KCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=5I4MSLTJOBl1Jn2nKk55DTzP4h3HxHPJ2YS3y5/mux8=;
 b=e79DeRzp2Ra93j9GxZE7n+YTg3q1vxgHXkJksyZgzIOfxLiVgOJOSUPEFQu+RsZLDt
 z7D6DQS/ypAjybDfoD3jKi0sOd1+75/cvkTYDj7D3h+ga7MB6HSf3fYTr3IHyc26oZ7h
 EL+EQm+MaOXmUx9S/HXX/XOpSAwicIe7qEaH4RMSBpdD/TUYa46lT809SBH27RzNCIhL
 1xthtKU3QADrkZ7fHKuOaDwfaSKdEspziNc73EPf5BDBTThAPlmY6g+qiVvFauARcBTq
 JW+oipv/QRn6Yj5VJLRThaPTwVFP96V71CqBXmgLWaS8E0ZWZDWwu95XCm+yQ2W9Y4xi
 y+Bg==
X-Gm-Message-State: AGi0PuYxja8oRfXALQrpzwahrYvlPfDw6Dvge+aoEvCC2qAjwZuCHe17
 xaA2zSORN6q1WJHIMIOCu/67Cw==
X-Google-Smtp-Source: APiQypJQZkht5jaZb1/UjrEqkxLSRTN/YHe1uN80L6ohNNQHDpqFwI7mFtgWoDuegY/ylULabpEmnQ==
X-Received: by 2002:adf:fe45:: with SMTP id m5mr14927300wrs.124.1587308760428; 
 Sun, 19 Apr 2020 08:06:00 -0700 (PDT)
Received: from lmecxl0524.home
 (2a01cb058702ff00947c0d9b78b8fa1e.ipv6.abo.wanadoo.fr.
 [2a01:cb05:8702:ff00:947c:d9b:78b8:fa1e])
 by smtp.gmail.com with ESMTPSA id w12sm25948635wrk.56.2020.04.19.08.05.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 19 Apr 2020 08:05:59 -0700 (PDT)
From: Etienne Carriere <etienne.carriere@linaro.org>
To: linux-kernel@vger.kernel.org
Subject: [RFC PATCH 2/6] firmware: psci: set SMCCC v1.0 conduit and use
 helpers functions
Date: Sun, 19 Apr 2020 17:05:26 +0200
Message-Id: <20200419150530.20508-3-etienne.carriere@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200419150530.20508-1-etienne.carriere@linaro.org>
References: <20200419150530.20508-1-etienne.carriere@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_080602_500274_74BDF446 
X-CRM114-Status: GOOD (  14.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com, michal.simek@xilinx.com,
 tee-dev@lists.linaro.org, Etienne Carriere <etienne.carriere@linaro.org>,
 james.morse@arm.com, sudeep.holla@arm.com, richard.gong@linux.intel.com,
 jens.wiklander@linaro.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Change PSCI driver to use SMCCC v1.0 helper functions. As PSCI device
is initialized before other devices, it sets the SMCCC conduit used
to SMCCC v1.0 compliant calls and other devices can rely on it.

No functional change in the PSCI device itself.

Signed-off-by: Etienne Carriere <etienne.carriere@linaro.org>
---
 drivers/firmware/psci/psci.c | 60 +++++-------------------------------
 include/linux/psci.h         |  1 -
 2 files changed, 8 insertions(+), 53 deletions(-)

diff --git a/drivers/firmware/psci/psci.c b/drivers/firmware/psci/psci.c
index 2937d44b5df4..00bb205cad7c 100644
--- a/drivers/firmware/psci/psci.c
+++ b/drivers/firmware/psci/psci.c
@@ -53,7 +53,6 @@ bool psci_tos_resident_on(int cpu)
 }
 
 struct psci_operations psci_ops = {
-	.conduit = SMCCC_CONDUIT_NONE,
 	.smccc_version = SMCCC_VERSION_1_0,
 };
 
@@ -62,13 +61,9 @@ enum arm_smccc_conduit arm_smccc_1_1_get_conduit(void)
 	if (psci_ops.smccc_version < SMCCC_VERSION_1_1)
 		return SMCCC_CONDUIT_NONE;
 
-	return psci_ops.conduit;
+	return arm_smccc_1_0_get_conduit();
 }
 
-typedef unsigned long (psci_fn)(unsigned long, unsigned long,
-				unsigned long, unsigned long);
-static psci_fn *invoke_psci_fn;
-
 enum psci_function {
 	PSCI_FN_CPU_SUSPEND,
 	PSCI_FN_CPU_ON,
@@ -120,23 +115,14 @@ bool psci_power_state_is_valid(u32 state)
 	return !(state & ~valid_mask);
 }
 
-static unsigned long __invoke_psci_fn_hvc(unsigned long function_id,
-			unsigned long arg0, unsigned long arg1,
-			unsigned long arg2)
+static unsigned long invoke_psci_fn(unsigned long function_id,
+				    unsigned long arg0, unsigned long arg1,
+				    unsigned long arg2)
 {
 	struct arm_smccc_res res;
 
-	arm_smccc_hvc(function_id, arg0, arg1, arg2, 0, 0, 0, 0, &res);
-	return res.a0;
-}
+	arm_smccc_1_0_invoke(function_id, arg0, arg1, arg2, 0, 0, 0, 0, &res);
 
-static unsigned long __invoke_psci_fn_smc(unsigned long function_id,
-			unsigned long arg0, unsigned long arg1,
-			unsigned long arg2)
-{
-	struct arm_smccc_res res;
-
-	arm_smccc_smc(function_id, arg0, arg1, arg2, 0, 0, 0, 0, &res);
 	return res.a0;
 }
 
@@ -229,41 +215,11 @@ static unsigned long psci_migrate_info_up_cpu(void)
 			      0, 0, 0);
 }
 
-static void set_conduit(enum arm_smccc_conduit conduit)
-{
-	switch (conduit) {
-	case SMCCC_CONDUIT_HVC:
-		invoke_psci_fn = __invoke_psci_fn_hvc;
-		break;
-	case SMCCC_CONDUIT_SMC:
-		invoke_psci_fn = __invoke_psci_fn_smc;
-		break;
-	default:
-		WARN(1, "Unexpected PSCI conduit %d\n", conduit);
-	}
-
-	psci_ops.conduit = conduit;
-}
-
 static int get_set_conduit_method(struct device_node *np)
 {
-	const char *method;
-
-	pr_info("probing for conduit method from DT.\n");
-
-	if (of_property_read_string(np, "method", &method)) {
-		pr_warn("missing \"method\" property\n");
+	if (of_arm_smccc_1_0_set_conduit(np))
 		return -ENXIO;
-	}
 
-	if (!strcmp("hvc", method)) {
-		set_conduit(SMCCC_CONDUIT_HVC);
-	} else if (!strcmp("smc", method)) {
-		set_conduit(SMCCC_CONDUIT_SMC);
-	} else {
-		pr_warn("invalid \"method\" property: %s\n", method);
-		return -EINVAL;
-	}
 	return 0;
 }
 
@@ -605,9 +561,9 @@ int __init psci_acpi_init(void)
 	pr_info("probing for conduit method from ACPI.\n");
 
 	if (acpi_psci_use_hvc())
-		set_conduit(SMCCC_CONDUIT_HVC);
+		arm_smccc_1_0_set_conduit(SMCCC_CONDUIT_HVC);
 	else
-		set_conduit(SMCCC_CONDUIT_SMC);
+		arm_smccc_1_0_set_conduit(SMCCC_CONDUIT_SMC);
 
 	return psci_probe();
 }
diff --git a/include/linux/psci.h b/include/linux/psci.h
index a67712b73b6c..9de579a1d237 100644
--- a/include/linux/psci.h
+++ b/include/linux/psci.h
@@ -35,7 +35,6 @@ struct psci_operations {
 	int (*affinity_info)(unsigned long target_affinity,
 			unsigned long lowest_affinity_level);
 	int (*migrate_info_type)(void);
-	enum arm_smccc_conduit conduit;
 	enum smccc_version smccc_version;
 };
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
