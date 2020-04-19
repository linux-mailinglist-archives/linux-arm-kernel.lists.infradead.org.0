Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04D6E1AFB9B
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Apr 2020 17:07:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GSj9JtK7Cp7RXbWIAwlQUWQCtG/fvbV+bHwNJ3SJDYY=; b=stn9CWr8CWdF5kQlC7XNVJvG7+
	Yl3MolJBbtt7yaWn49LziLh1aHy9CUqXPSKHg5gt4Y81w4wfE1L8M8hcnzMzcgrW2bZHDfZNruV18
	uUoj38cMkLXvZ1gB/NokqCHvXG52jcj6GQOet/zF1GR95A9zCs4JW9u8ghik0D4iDAbfkAfc4yW4r
	6QbHSL3UYIvG0arJtMxXCHhIA+Y39RJXkXCFwo5ibwUrYQaFSyRJJfm5ZwfppDCqZsGtXooUtZq2z
	6nQxDjLNfJ9jp73R7LJqgsHpUFAN9m9PARtQ3eQhyFnPONtvs7OmiTEeBIipsnkt9MfnRD4/Qfkjy
	6gMOySLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQBXB-0000HR-Fr; Sun, 19 Apr 2020 15:07:01 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQBWH-00087x-T2
 for linux-arm-kernel@lists.infradead.org; Sun, 19 Apr 2020 15:06:08 +0000
Received: by mail-wm1-x344.google.com with SMTP id h2so8017978wmb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 19 Apr 2020 08:06:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=mgJBrbN8ENQqYlA1aIDPfUqg5Ku3KzLaL/T3CN2BzCg=;
 b=dOChkGBXatBUuviw+VQ7NlxwgSe4bulYhXcZnUSRbQzSkY8v2IGYGkp1F67pAW+lHn
 +rKzTGQtt+p0ef5si0UK/1SZ/FtgfisWJ8S8N8YGxJ24TYQfFLmRCmLzG3mO084ovSeM
 /QDwzKFejEYNo8+nvKgNBtbLY1L2w45Tzed+My5voD0yFEofKWUG8PJ9mj6rqp87sAXA
 62LqvCOcn8WBuw6jKOXQ3Dlq6jt6+JC5/4eHv8qlE0djHyL1qoUIK26hitN9stHGipmw
 kJCVk25HCUAoW2+tZVyzZcDalsZwQN4EjYQjDPtS+wbQqXJwkbqs7WBRL2fvSmIebLpY
 Em5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=mgJBrbN8ENQqYlA1aIDPfUqg5Ku3KzLaL/T3CN2BzCg=;
 b=aK4BMC/q1ANBPp1YL/b3x5e8YTqmytxU1Kj2TnO3KULfKzNilR54ZCWYFw3wWyWNm5
 lc2pz9Me5+opDdNS/+RgMvEN5P4R0yyeuLimQcrUmPT8aQXWLBMS4abKTOBwgUN8iBJR
 eg0YFcynqmDGO52qCEPGmZPyHhbCCq/iQalzA7PT/BDcb5zFTNxYg8g7e3tl34TKpacr
 rymc+jbBi3LRlEBisfbcG+ArPWLJX7waOW9aRBHjxPd2goyfoY9dWCSOeLns6oehAqMm
 bHeSIFu6qeIB9pn/WLo3Ycwg8MxoBmqKV8Vzs2UZ75srNmszwyAjVsxY22HXw2yLKXqr
 P66Q==
X-Gm-Message-State: AGi0Pua7IOJQPs0tO0BcJh+5FCzAgYtgxW7zyPZl9hxDhx2Jf4OQFifT
 N7HiEVtl91YxcEt6IWz1SOdLcA==
X-Google-Smtp-Source: APiQypIHYS79qS6Ym7/zsAfw92yZoAhc0D6OXdVNJBvmovHjD1VVezpW6nATF5ItbotHjroDPpo0ng==
X-Received: by 2002:a7b:ca54:: with SMTP id m20mr12078369wml.45.1587308763884; 
 Sun, 19 Apr 2020 08:06:03 -0700 (PDT)
Received: from lmecxl0524.home
 (2a01cb058702ff00947c0d9b78b8fa1e.ipv6.abo.wanadoo.fr.
 [2a01:cb05:8702:ff00:947c:d9b:78b8:fa1e])
 by smtp.gmail.com with ESMTPSA id w12sm25948635wrk.56.2020.04.19.08.06.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 19 Apr 2020 08:06:03 -0700 (PDT)
From: Etienne Carriere <etienne.carriere@linaro.org>
To: linux-kernel@vger.kernel.org
Subject: [RFC PATCH 4/6] firmware: arm_sdei: use SMCCC v1.0 helper functions
Date: Sun, 19 Apr 2020 17:05:28 +0200
Message-Id: <20200419150530.20508-5-etienne.carriere@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200419150530.20508-1-etienne.carriere@linaro.org>
References: <20200419150530.20508-1-etienne.carriere@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_080605_998506_5BABD5C0 
X-CRM114-Status: GOOD (  17.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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

Change Arm SDEI firmware driver to use SMCCC v1.0 helper functions.

Functional changes are Arm SDEI firmware driver can find appropriate
set conduit if it does not define one but another device has set
the kernel conduit for SMCCC calls.

Other functional changes are the trace messages emitted at device
probe time that now dev_*() traces instead of pr_*() traces.

Signed-off-by: Etienne Carriere <etienne.carriere@linaro.org>
---
 drivers/firmware/arm_sdei.c | 79 +++++++++++++------------------------
 1 file changed, 27 insertions(+), 52 deletions(-)

diff --git a/drivers/firmware/arm_sdei.c b/drivers/firmware/arm_sdei.c
index 334c8be0c11f..92f8077e0bde 100644
--- a/drivers/firmware/arm_sdei.c
+++ b/drivers/firmware/arm_sdei.c
@@ -34,12 +34,9 @@
 #include <linux/uaccess.h>
 
 /*
- * The call to use to reach the firmware.
+ * The SMCCC cnduit for the call to use to reach the firmware.
  */
-static asmlinkage void (*sdei_firmware_call)(unsigned long function_id,
-		      unsigned long arg0, unsigned long arg1,
-		      unsigned long arg2, unsigned long arg3,
-		      unsigned long arg4, struct arm_smccc_res *res);
+static enum arm_smccc_conduit sdei_firmware_call_conduit;
 
 /* entry point from firmware to arch asm code */
 static unsigned long sdei_entry_point;
@@ -144,14 +141,14 @@ static int invoke_sdei_fn(unsigned long function_id, unsigned long arg0,
 	int err = 0;
 	struct arm_smccc_res res;
 
-	if (sdei_firmware_call) {
+	if (sdei_firmware_call_conduit != SMCCC_CONDUIT_NONE) {
 		sdei_firmware_call(function_id, arg0, arg1, arg2, arg3, arg4,
 				   &res);
 		if (sdei_is_err(&res))
 			err = sdei_to_linux_errno(res.a0);
 	} else {
 		/*
-		 * !sdei_firmware_call means we failed to probe or called
+		 * No SMCCC conduit means we failed to probe or called
 		 * sdei_mark_interface_broken(). -EIO is not an error returned
 		 * by sdei_to_linux_errno() and is used to suppress messages
 		 * from this driver.
@@ -364,7 +361,7 @@ static void sdei_mark_interface_broken(void)
 {
 	pr_err("disabling SDEI firmware interface\n");
 	on_each_cpu(&_ipi_mask_cpu, NULL, true);
-	sdei_firmware_call = NULL;
+	sdei_firmware_call_conduit = SMCCC_CONDUIT_NONE;
 }
 
 static int sdei_platform_reset(void)
@@ -874,23 +871,19 @@ static struct notifier_block sdei_reboot_nb = {
 	.notifier_call = sdei_reboot_notifier,
 };
 
-static void sdei_smccc_smc(unsigned long function_id,
-			   unsigned long arg0, unsigned long arg1,
-			   unsigned long arg2, unsigned long arg3,
-			   unsigned long arg4, struct arm_smccc_res *res)
-{
-	arm_smccc_smc(function_id, arg0, arg1, arg2, arg3, arg4, 0, 0, res);
-}
-NOKPROBE_SYMBOL(sdei_smccc_smc);
 
-static void sdei_smccc_hvc(unsigned long function_id,
-			   unsigned long arg0, unsigned long arg1,
-			   unsigned long arg2, unsigned long arg3,
-			   unsigned long arg4, struct arm_smccc_res *res)
+static asmlinkage void sdei_firmware_call(unsigned long function_id,
+					  unsigned long arg0,
+					  unsigned long arg1,
+					  unsigned long arg2,
+					  unsigned long arg3,
+					  unsigned long arg4,
+					  struct arm_smccc_res *res)
 {
-	arm_smccc_hvc(function_id, arg0, arg1, arg2, arg3, arg4, 0, 0, res);
+	arm_smccc_1_0_invoke(function_id, arg0, arg1, arg2, arg3, arg4,
+			     0, 0, res);
 }
-NOKPROBE_SYMBOL(sdei_smccc_hvc);
+NOKPROBE_SYMBOL(sdei_firmware_call);
 
 int sdei_register_ghes(struct ghes *ghes, sdei_event_callback *normal_cb,
 		       sdei_event_callback *critical_cb)
@@ -959,48 +952,30 @@ int sdei_unregister_ghes(struct ghes *ghes)
 	return err;
 }
 
-static int sdei_get_conduit(struct platform_device *pdev)
+static enum arm_smccc_conduit sdei_get_conduit(struct platform_device *pdev)
 {
-	const char *method;
-	struct device_node *np = pdev->dev.of_node;
-
-	sdei_firmware_call = NULL;
-	if (np) {
-		if (of_property_read_string(np, "method", &method)) {
-			pr_warn("missing \"method\" property\n");
-			return SMCCC_CONDUIT_NONE;
-		}
-
-		if (!strcmp("hvc", method)) {
-			sdei_firmware_call = &sdei_smccc_hvc;
-			return SMCCC_CONDUIT_HVC;
-		} else if (!strcmp("smc", method)) {
-			sdei_firmware_call = &sdei_smccc_smc;
-			return SMCCC_CONDUIT_SMC;
-		}
-
-		pr_warn("invalid \"method\" property: %s\n", method);
+	if (pdev->dev.of_node) {
+		devm_arm_smccc_1_0_set_conduit(pdev->dev);
 	} else if (IS_ENABLED(CONFIG_ACPI) && !acpi_disabled) {
-		if (acpi_psci_use_hvc()) {
-			sdei_firmware_call = &sdei_smccc_hvc;
-			return SMCCC_CONDUIT_HVC;
-		} else {
-			sdei_firmware_call = &sdei_smccc_smc;
-			return SMCCC_CONDUIT_SMC;
-		}
+		if (acpi_psci_use_hvc())
+			arm_smccc_1_0_set_conduit(SMCCC_CONDUIT_HVC);
+		else
+			arm_smccc_1_0_set_conduit(SMCCC_CONDUIT_SMC);
 	}
 
-	return SMCCC_CONDUIT_NONE;
+	sdei_firmware_call_conduit = arm_smccc_1_0_get_conduit();
+
+	return sdei_firmware_call_conduit;
 }
 
 static int sdei_probe(struct platform_device *pdev)
 {
 	int err;
 	u64 ver = 0;
-	int conduit;
+	enum arm_smccc_conduit conduit;
 
 	conduit = sdei_get_conduit(pdev);
-	if (!sdei_firmware_call)
+	if (conduit == SMCCC_CONDUIT_NONE)
 		return 0;
 
 	err = sdei_api_get_version(&ver);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
