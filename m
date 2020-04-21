Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AD931B2CDE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 18:41:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3Cp9AsRVlkiRnCCpdHJR+8VVyTtZQsMD4L4BxfAMuLc=; b=HmkdFzs6+52JDdAksYnKyBt1KL
	YrKANcgkQ3StTvUdjfcYSg0iyNFDa7bV2/Ekzmtpr0dxYWF09dlQKcArv4ZkjlUG4NF1R0oF6Bz2G
	ZlLCJuZByzsuyJSUOPX5S26yia4QSyrywqdSrpJf3kIeqDl4b2VUs+PiTJ0Of8+YIipsmHqozjaTy
	1POXk5X3JwCXeH2ov9a4rwoirswLJfDN+CQOc1N7zmM/QIfTMhMSogRip9ftJjgplt+HDuCAF9Onp
	5GAi2kr+aDhrVyWKpyJvBVcKBfR8D/aj2EzpX7J/9XDvlNyfWR2M1J7fSYh1C6jGUX2NtQ1gpbS3I
	fgvjMRHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQvxD-00078M-VU; Tue, 21 Apr 2020 16:40:59 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQvvY-0003g0-O8
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 16:39:18 +0000
Received: by mail-wr1-x441.google.com with SMTP id u13so17200722wrp.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Apr 2020 09:39:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=XETYSm4uP7bMLvF3XXve3QfqSUan+bhGi6fMh9AIGS0=;
 b=cOoLwi1nBGkaJzbd6hFSTZUSFb6exxh61seT1TfNMjcSgFd8lo7YN7qz/tpO60L9/M
 Enc6SKK9s4eyB7pqhh4z8hIffoHVMO9dwt0fi/08ZFN/VSl8Lzpg/90FDl3f/VFiyfAF
 c4EH2nDejCuYKUj6Hv0OpMGKkubaIBo+fW2VVsrCciiZ9X8fBOgkxz1B+N2ifBQUFup+
 8Mb1yCg+IGBYHMqLTiO1kZDWCKsNLDM9FySXnJ9W88g387XLIkXzjDfSiXwNTZpF8WB8
 S/73ElPfyZCiN9FkiyxCEcdepela8wHg29ck/wY27zvDZjjGIxCqeUYxq4+64Uy4xO4b
 JqMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=XETYSm4uP7bMLvF3XXve3QfqSUan+bhGi6fMh9AIGS0=;
 b=bg9hT0J5fpZItL/PkL4X/dhFJp41qfjdplSotc4w2ctUzmyEDq3QVU8BctUFj+n+3d
 kV4gEO7sKysQmrqDixP3FputxXQV4e+L9f7/n2sk9HB4GxOQIWirAe0laTyJ3pgiBZVA
 1MvYnpsVWjro8GX0N0/vVgtUrU7Nh/tKeFK8akehYFbCTqVb4cVlmBZHGXtelWK3N0E+
 ekfKNJl7wsP/z+FaqgnANdD05cA0PxgrFm62tj/hevUYRuhOmE50pv5zAiapuo0ZzWHj
 qVRV848XjyqWwwqtVdP6pIMb4dapetMmxRN9F1mxFqxiAl1Tm0Ns72P5zePdky9M1VG9
 2SVA==
X-Gm-Message-State: AGi0PualyYw5gw9sDO87bPpagxspVHNlCx7tFsC0VjOp/2SKXYnWWdn2
 C3eBaJoKzR5/uJs1gvVoV79R2g==
X-Google-Smtp-Source: APiQypI7JT3311pD+psUEN7y085u4go8Aun9MwUBdg5ZI7jJih77ao3oeCj84EnxhEfJUsEA84dO3g==
X-Received: by 2002:a5d:4109:: with SMTP id l9mr24048869wrp.300.1587487155355; 
 Tue, 21 Apr 2020 09:39:15 -0700 (PDT)
Received: from lmecxl0524.lme.st.com
 (2a01cb058702ff00947c0d9b78b8fa1e.ipv6.abo.wanadoo.fr.
 [2a01:cb05:8702:ff00:947c:d9b:78b8:fa1e])
 by smtp.gmail.com with ESMTPSA id q143sm4389055wme.31.2020.04.21.09.39.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Apr 2020 09:39:14 -0700 (PDT)
From: Etienne Carriere <etienne.carriere@linaro.org>
To: linux-kernel@vger.kernel.org
Subject: [RFC PATCH v2 4/6] firmware: arm_sdei: use SMCCC v1.0 helper functions
Date: Tue, 21 Apr 2020 18:38:09 +0200
Message-Id: <20200421163811.22720-5-etienne.carriere@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200421163811.22720-1-etienne.carriere@linaro.org>
References: <20200421163811.22720-1-etienne.carriere@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_093916_804507_BEC07F46 
X-CRM114-Status: GOOD (  18.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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

Change Arm SDEI firmware driver to use SMCCC v1.0 helper functions.

Main functional change is that Arm SDEI firmware driver can find
appropriate SMCCC conduit if it does not define one but another
device as the PSCI firmware driver has set the kernel conduit for
SMCCC calls.

Other functional changes are the trace messages emitted at device
probe time that are now dev_*() traces instead of pr_*() traces.

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
