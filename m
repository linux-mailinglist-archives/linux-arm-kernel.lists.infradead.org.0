Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B517F1B2CDC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 18:40:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=rzgMxc09z2X7aWlGW6K2UeGUgVhvoiKN79ldVGkxRFA=; b=CrVwQFXhbmyx51lQQlAcK9djb0
	7CcH+IWZ/c3AY1Gw1xA00ThwhIKm5az73kCR8oodgK8vQdeZmjzGr0HdNhr3NuKVK3rBbZk9jjYwu
	LIYWicMoGTyKLIcCg4oFuaEf+3os/tQEW/6Vi1KWLR/5dmhbKhjvZxFilvgvoloPH0RC2cYZ46D0S
	qzq5zsfxlJfV23kkHezYa5rwXnjtZM/AZHH21YgkMyT+tF4wHAlol0l1RUMrLdXbCNOO627dPykgt
	pPHT+rpgYZVCmW5dbCzz3/6nWdAckbblnL7FaZOLZgDclRmA7kVDwUvUWbfb/Xp9tPXrW2OfeIa6u
	OhrHGf0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQvwf-0005AB-Rd; Tue, 21 Apr 2020 16:40:25 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQvvW-0003ef-1g
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 16:39:15 +0000
Received: by mail-wr1-x442.google.com with SMTP id b11so17172055wrs.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Apr 2020 09:39:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=T4RV+W5A0WTJfrEJC2MWNCKclGhSBwoQ8rtDkcyUPgc=;
 b=wVPOFqokqQHtu5wiekfE2ea3FnkoODS0MoRFNeU6Cy8cLP/Gka9g3IOQyGPya52nKW
 dtHlqR1XERO8CxEXPHnzUq8rNDxWO+sQbF1SJ5fgyxwTtDagIWKtuEXoaBR6CRTISQUi
 Bmb81B7Zff+oZFfXP+cA4vI6jYlBN3fuJrKlTipGYZcQVIi5rXCcNAH971uPVW5808p1
 mkB5w4uWieapIl3w53xy1k+78Inex2fsGyWiE0/cCZ+zS7wh3zOWMDo3SbKJ3CttXl/U
 RJnXtJwvEJ7fkSeUEVCpkYuRGEnEj7U90BONzq4y2yLFy8mbtjoTrTY5u87++tbqf1sj
 Fzxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=T4RV+W5A0WTJfrEJC2MWNCKclGhSBwoQ8rtDkcyUPgc=;
 b=UhSMBBvZNci7NWDmlPNmXwJ2gvniTh1ABrM9qg7p+kOyrkgr+P6qYK5kvtwyL8J/eL
 Wo9ZBQOKxSv3Bw8tBCMquWU5EsHzhEfJ63roKlNFrEeeOQeWZJSX622UbSvv/0uBimdU
 2qnpKhIFumUPD4gcfNriJet4/ePAvyrTfEcVxesH22XmrOhAtEpzafOTvRgl02nkxdlY
 oGbnYdwSziaSEKFa9qfCF4HtusCslcZ7468vU+avrwN8XYBoH9fvulU9vI9vsVRsrHyD
 cyzOU/RBkOHLdwqIXZk0MmBWlFjlbH1mBYthSOBy+OO3XSuO1jaf+QcHvNuph07QdPfT
 Ss5w==
X-Gm-Message-State: AGi0PubghsESp6JRJpzGMZIBSqp5rrIfrYsT6iDEwI1Nm55SJ9WXK+U/
 TFSUagD+aBUyKy0VpdyvNNIeFg==
X-Google-Smtp-Source: APiQypJB4EHuOBE2fjZUyPlp6XB8p0fICrWtA3qUbKT84ynEufetpvCrJ1PQHxE7SnDYkjlldnfmbw==
X-Received: by 2002:a5d:66ce:: with SMTP id k14mr26717757wrw.73.1587487152764; 
 Tue, 21 Apr 2020 09:39:12 -0700 (PDT)
Received: from lmecxl0524.lme.st.com
 (2a01cb058702ff00947c0d9b78b8fa1e.ipv6.abo.wanadoo.fr.
 [2a01:cb05:8702:ff00:947c:d9b:78b8:fa1e])
 by smtp.gmail.com with ESMTPSA id q143sm4389055wme.31.2020.04.21.09.39.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Apr 2020 09:39:12 -0700 (PDT)
From: Etienne Carriere <etienne.carriere@linaro.org>
To: linux-kernel@vger.kernel.org
Subject: [RFC PATCH v2 2/6] firmware: psci: set SMCCC v1.0 conduit and use
 helpers functions
Date: Tue, 21 Apr 2020 18:38:07 +0200
Message-Id: <20200421163811.22720-3-etienne.carriere@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200421163811.22720-1-etienne.carriere@linaro.org>
References: <20200421163811.22720-1-etienne.carriere@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_093914_103510_EA261275 
X-CRM114-Status: GOOD (  14.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
for SMCCC calls and other devices can rely on it.

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
