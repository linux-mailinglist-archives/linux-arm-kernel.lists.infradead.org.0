Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7F5B1AFB99
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Apr 2020 17:06:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ClokqcA5H4Iob25pNoWurz500JIG/TOR8ooE0lip8uU=; b=OJ5xExColJtU8cikgkePQNn0be
	+45IsxgHK8ha2Ly4KAvja9+c4x3McVacRk1cMZo+9QZ69nY9bgCtQzj5MPykRw1eZW+j/LLaRFna9
	y4W+LmCT8SeNm4tHspoEXXz0HY9j5RaGYtZvRCfDaNU+NvNALiD8FzHKYy0NgB9hDaPKS4K22dfpE
	fCc8mKwmiAdGp+8Nnu2Y+yfOh3ImDMNuaf7C6BWEP2jUPNhzWLOkynLNBor+RQXyF0UQ7ruVeWkpT
	qcv+8ktuvFvSjI2MN+NpDRTEX62JjigX0/PrdAJz4uIyCsDA1gqJv+D+sTXAevMu/ESKfDFk8VLgE
	1fdJ/A2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQBWc-0008Bd-9T; Sun, 19 Apr 2020 15:06:26 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQBWF-00086R-E5
 for linux-arm-kernel@lists.infradead.org; Sun, 19 Apr 2020 15:06:06 +0000
Received: by mail-wr1-x442.google.com with SMTP id g13so6817489wrb.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 19 Apr 2020 08:06:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ObSDf1aLj5u4GmmbiRGYRUxXBmWBTKTJj89dIRLXbuQ=;
 b=FAsKztdL6snh1BvfjbKlo3DppwMhfJGyfvYsvsLDgMAglmASIZERqy/cdA3zJg6Puw
 3HTyEoaVdE6Aa1WsXVffBrI3qn+8dIcyobWayRxzZlgfefMyN2a8IWQITohU4VAeYwBw
 gfCtxfPIGieg2Lh5DvpL9MjAjK2qX0I6Mh5BosntHrUQnST2aCbFysOypsis+dwXkRRk
 3fCEpbPZ0aBHf1S0EZx+fb0TnsSh+TaW4t3lBjmFGDDZ0FL7jVcsG/dKPKn4pKFXQBcA
 T5xZLNbD+nsAoCij2bXT5aaNR373Kr2DrpKwYvPilMJ0UnJoVar/VTx2xatPYLebPqR+
 773g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ObSDf1aLj5u4GmmbiRGYRUxXBmWBTKTJj89dIRLXbuQ=;
 b=crF4VHM5BHemooLzQW058NmeRruCdnHHlBVkt5P8n19iXF2VkzmUWYx8azC1Wcxlny
 ke3ujIfSvqkLatQVQ98tRivVyA47Gair3N7A2KD6to40+kwQ64xCmYFR0PFSo+7EpXit
 9mnlKGTjIJOcb7VH1FgBLne9Du+/0OQRGOhFfxM23Z9fL4ujR/qz4ASaHoNx1PieLqlE
 WKAUtE3/QiXE3yJzLhTztGuhtfpUZmhr/egNbIYkQ5WabP99CxmpW9F+jUDO5V7/qIs/
 oTZ2VrMWXUTOhmmovyiqyX2X/AMS0XIk+FQI1E3OyV5GU3HzHtyVCbP9sWCHDyeAU9IQ
 ITtA==
X-Gm-Message-State: AGi0PuYt/wm48+nXj6/aPdRT9ThkKXy+LrWLsXUZSLZiFDpA+mgtgEcZ
 GnEJfSnoAPZtLltmOtS4Cs+4LA==
X-Google-Smtp-Source: APiQypLkrRiQ4l9Ag27jWuqY2Firc1AQu0LIYqJNeNMNzAN9BhPzlQzcaNCc7h6b2/CA98LcZcj1WQ==
X-Received: by 2002:a5d:6647:: with SMTP id f7mr14854178wrw.41.1587308762199; 
 Sun, 19 Apr 2020 08:06:02 -0700 (PDT)
Received: from lmecxl0524.home
 (2a01cb058702ff00947c0d9b78b8fa1e.ipv6.abo.wanadoo.fr.
 [2a01:cb05:8702:ff00:947c:d9b:78b8:fa1e])
 by smtp.gmail.com with ESMTPSA id w12sm25948635wrk.56.2020.04.19.08.06.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 19 Apr 2020 08:06:01 -0700 (PDT)
From: Etienne Carriere <etienne.carriere@linaro.org>
To: linux-kernel@vger.kernel.org
Subject: [RFC PATCH 3/6] tee: optee: use SMCCC v1.0 helper functions
Date: Sun, 19 Apr 2020 17:05:27 +0200
Message-Id: <20200419150530.20508-4-etienne.carriere@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200419150530.20508-1-etienne.carriere@linaro.org>
References: <20200419150530.20508-1-etienne.carriere@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_080603_494114_7961109D 
X-CRM114-Status: GOOD (  17.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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

Change OP-TEE driver to use SMCCC v1.0 helper function.

No functional change but initialization traces that are changed
from pr_*() traces the device dev_*() traces and info trace
"probing for conduit method." being replaced with trace
"probing for conduit method from DT."

Signed-off-by: Etienne Carriere <etienne.carriere@linaro.org>
---
 drivers/tee/optee/call.c          | 14 ++---
 drivers/tee/optee/core.c          | 85 ++++++++-----------------------
 drivers/tee/optee/optee_private.h |  4 +-
 3 files changed, 30 insertions(+), 73 deletions(-)

diff --git a/drivers/tee/optee/call.c b/drivers/tee/optee/call.c
index cf2367ba08d6..706e7814a401 100644
--- a/drivers/tee/optee/call.c
+++ b/drivers/tee/optee/call.c
@@ -137,9 +137,9 @@ u32 optee_do_call_with_arg(struct tee_context *ctx, phys_addr_t parg)
 	while (true) {
 		struct arm_smccc_res res;
 
-		optee->invoke_fn(param.a0, param.a1, param.a2, param.a3,
-				 param.a4, param.a5, param.a6, param.a7,
-				 &res);
+		arm_smccc_1_0_invoke(param.a0, param.a1, param.a2, param.a3,
+				     param.a4, param.a5, param.a6, param.a7,
+				     &res);
 
 		if (res.a0 == OPTEE_SMC_RETURN_ETHREAD_LIMIT) {
 			/*
@@ -395,8 +395,8 @@ void optee_enable_shm_cache(struct optee *optee)
 	while (true) {
 		struct arm_smccc_res res;
 
-		optee->invoke_fn(OPTEE_SMC_ENABLE_SHM_CACHE, 0, 0, 0, 0, 0, 0,
-				 0, &res);
+		arm_smccc_1_0_invoke(OPTEE_SMC_ENABLE_SHM_CACHE,
+				     0, 0, 0, 0, 0, 0, 0, &res);
 		if (res.a0 == OPTEE_SMC_RETURN_OK)
 			break;
 		optee_cq_wait_for_completion(&optee->call_queue, &w);
@@ -421,8 +421,8 @@ void optee_disable_shm_cache(struct optee *optee)
 			struct optee_smc_disable_shm_cache_result result;
 		} res;
 
-		optee->invoke_fn(OPTEE_SMC_DISABLE_SHM_CACHE, 0, 0, 0, 0, 0, 0,
-				 0, &res.smccc);
+		arm_smccc_1_0_invoke(OPTEE_SMC_DISABLE_SHM_CACHE,
+				     0, 0, 0, 0, 0, 0, 0, &res.smccc);
 		if (res.result.status == OPTEE_SMC_RETURN_ENOTAVAIL)
 			break; /* All shm's freed */
 		if (res.result.status == OPTEE_SMC_RETURN_OK) {
diff --git a/drivers/tee/optee/core.c b/drivers/tee/optee/core.c
index 99698b8a3a74..f3bc657d1e97 100644
--- a/drivers/tee/optee/core.c
+++ b/drivers/tee/optee/core.c
@@ -335,11 +335,11 @@ static const struct tee_desc optee_supp_desc = {
 	.flags = TEE_DESC_PRIVILEGED,
 };
 
-static bool optee_msg_api_uid_is_optee_api(optee_invoke_fn *invoke_fn)
+static bool optee_msg_api_uid_is_optee_api(void)
 {
 	struct arm_smccc_res res;
 
-	invoke_fn(OPTEE_SMC_CALLS_UID, 0, 0, 0, 0, 0, 0, 0, &res);
+	arm_smccc_1_0_invoke(OPTEE_SMC_CALLS_UID, 0, 0, 0, 0, 0, 0, 0, &res);
 
 	if (res.a0 == OPTEE_MSG_UID_0 && res.a1 == OPTEE_MSG_UID_1 &&
 	    res.a2 == OPTEE_MSG_UID_2 && res.a3 == OPTEE_MSG_UID_3)
@@ -347,7 +347,7 @@ static bool optee_msg_api_uid_is_optee_api(optee_invoke_fn *invoke_fn)
 	return false;
 }
 
-static void optee_msg_get_os_revision(optee_invoke_fn *invoke_fn)
+static void optee_msg_get_os_revision(void)
 {
 	union {
 		struct arm_smccc_res smccc;
@@ -358,8 +358,8 @@ static void optee_msg_get_os_revision(optee_invoke_fn *invoke_fn)
 		}
 	};
 
-	invoke_fn(OPTEE_SMC_CALL_GET_OS_REVISION, 0, 0, 0, 0, 0, 0, 0,
-		  &res.smccc);
+	arm_smccc_1_0_invoke(OPTEE_SMC_CALL_GET_OS_REVISION,
+			     0, 0, 0, 0, 0, 0, 0, &res.smccc);
 
 	if (res.result.build_id)
 		pr_info("revision %lu.%lu (%08lx)", res.result.major,
@@ -368,14 +368,15 @@ static void optee_msg_get_os_revision(optee_invoke_fn *invoke_fn)
 		pr_info("revision %lu.%lu", res.result.major, res.result.minor);
 }
 
-static bool optee_msg_api_revision_is_compatible(optee_invoke_fn *invoke_fn)
+static bool optee_msg_api_revision_is_compatible(void)
 {
 	union {
 		struct arm_smccc_res smccc;
 		struct optee_smc_calls_revision_result result;
 	} res;
 
-	invoke_fn(OPTEE_SMC_CALLS_REVISION, 0, 0, 0, 0, 0, 0, 0, &res.smccc);
+	arm_smccc_1_0_invoke(OPTEE_SMC_CALLS_REVISION,
+			     0, 0, 0, 0, 0, 0, 0, &res.smccc);
 
 	if (res.result.major == OPTEE_MSG_REVISION_MAJOR &&
 	    (int)res.result.minor >= OPTEE_MSG_REVISION_MINOR)
@@ -383,8 +384,7 @@ static bool optee_msg_api_revision_is_compatible(optee_invoke_fn *invoke_fn)
 	return false;
 }
 
-static bool optee_msg_exchange_capabilities(optee_invoke_fn *invoke_fn,
-					    u32 *sec_caps)
+static bool optee_msg_exchange_capabilities(u32 *sec_caps)
 {
 	union {
 		struct arm_smccc_res smccc;
@@ -400,8 +400,8 @@ static bool optee_msg_exchange_capabilities(optee_invoke_fn *invoke_fn,
 	if (!IS_ENABLED(CONFIG_SMP) || nr_cpu_ids == 1)
 		a1 |= OPTEE_SMC_NSEC_CAP_UNIPROCESSOR;
 
-	invoke_fn(OPTEE_SMC_EXCHANGE_CAPABILITIES, a1, 0, 0, 0, 0, 0, 0,
-		  &res.smccc);
+	arm_smccc_1_0_invoke(OPTEE_SMC_EXCHANGE_CAPABILITIES, a1,
+			     0, 0, 0, 0, 0, 0, &res.smccc);
 
 	if (res.result.status != OPTEE_SMC_RETURN_OK)
 		return false;
@@ -437,8 +437,7 @@ static struct tee_shm_pool *optee_config_dyn_shm(void)
 	return rc;
 }
 
-static struct tee_shm_pool *
-optee_config_shm_memremap(optee_invoke_fn *invoke_fn, void **memremaped_shm)
+static struct tee_shm_pool *optee_config_shm_memremap(void **memremaped_shm)
 {
 	union {
 		struct arm_smccc_res smccc;
@@ -455,7 +454,8 @@ optee_config_shm_memremap(optee_invoke_fn *invoke_fn, void **memremaped_shm)
 	void *rc;
 	const int sz = OPTEE_SHM_NUM_PRIV_PAGES * PAGE_SIZE;
 
-	invoke_fn(OPTEE_SMC_GET_SHM_CONFIG, 0, 0, 0, 0, 0, 0, 0, &res.smccc);
+	arm_smccc_1_0_invoke(OPTEE_SMC_GET_SHM_CONFIG,
+			     0, 0, 0, 0, 0, 0, 0, &res.smccc);
 	if (res.result.status != OPTEE_SMC_RETURN_OK) {
 		pr_err("static shm service not available\n");
 		return ERR_PTR(-ENOENT);
@@ -515,45 +515,6 @@ optee_config_shm_memremap(optee_invoke_fn *invoke_fn, void **memremaped_shm)
 	return rc;
 }
 
-/* Simple wrapper functions to be able to use a function pointer */
-static void optee_smccc_smc(unsigned long a0, unsigned long a1,
-			    unsigned long a2, unsigned long a3,
-			    unsigned long a4, unsigned long a5,
-			    unsigned long a6, unsigned long a7,
-			    struct arm_smccc_res *res)
-{
-	arm_smccc_smc(a0, a1, a2, a3, a4, a5, a6, a7, res);
-}
-
-static void optee_smccc_hvc(unsigned long a0, unsigned long a1,
-			    unsigned long a2, unsigned long a3,
-			    unsigned long a4, unsigned long a5,
-			    unsigned long a6, unsigned long a7,
-			    struct arm_smccc_res *res)
-{
-	arm_smccc_hvc(a0, a1, a2, a3, a4, a5, a6, a7, res);
-}
-
-static optee_invoke_fn *get_invoke_func(struct device *dev)
-{
-	const char *method;
-
-	pr_info("probing for conduit method.\n");
-
-	if (device_property_read_string(dev, "method", &method)) {
-		pr_warn("missing \"method\" property\n");
-		return ERR_PTR(-ENXIO);
-	}
-
-	if (!strcmp("hvc", method))
-		return optee_smccc_hvc;
-	else if (!strcmp("smc", method))
-		return optee_smccc_smc;
-
-	pr_warn("invalid \"method\" property: %s\n", method);
-	return ERR_PTR(-EINVAL);
-}
-
 static int optee_remove(struct platform_device *pdev)
 {
 	struct optee *optee = platform_get_drvdata(pdev);
@@ -586,7 +547,6 @@ static int optee_remove(struct platform_device *pdev)
 
 static int optee_probe(struct platform_device *pdev)
 {
-	optee_invoke_fn *invoke_fn;
 	struct tee_shm_pool *pool = ERR_PTR(-EINVAL);
 	struct optee *optee = NULL;
 	void *memremaped_shm = NULL;
@@ -594,23 +554,23 @@ static int optee_probe(struct platform_device *pdev)
 	u32 sec_caps;
 	int rc;
 
-	invoke_fn = get_invoke_func(&pdev->dev);
-	if (IS_ERR(invoke_fn))
-		return PTR_ERR(invoke_fn);
+	rc = devm_arm_smccc_1_0_set_conduit(&pdev->dev);
+	if (rc)
+		return rc;
 
-	if (!optee_msg_api_uid_is_optee_api(invoke_fn)) {
+	if (!optee_msg_api_uid_is_optee_api()) {
 		pr_warn("api uid mismatch\n");
 		return -EINVAL;
 	}
 
-	optee_msg_get_os_revision(invoke_fn);
+	optee_msg_get_os_revision();
 
-	if (!optee_msg_api_revision_is_compatible(invoke_fn)) {
+	if (!optee_msg_api_revision_is_compatible()) {
 		pr_warn("api revision mismatch\n");
 		return -EINVAL;
 	}
 
-	if (!optee_msg_exchange_capabilities(invoke_fn, &sec_caps)) {
+	if (!optee_msg_exchange_capabilities(&sec_caps)) {
 		pr_warn("capabilities mismatch\n");
 		return -EINVAL;
 	}
@@ -625,7 +585,7 @@ static int optee_probe(struct platform_device *pdev)
 	 * If dynamic shared memory is not available or failed - try static one
 	 */
 	if (IS_ERR(pool) && (sec_caps & OPTEE_SMC_SEC_CAP_HAVE_RESERVED_SHM))
-		pool = optee_config_shm_memremap(invoke_fn, &memremaped_shm);
+		pool = optee_config_shm_memremap(&memremaped_shm);
 
 	if (IS_ERR(pool))
 		return PTR_ERR(pool);
@@ -636,7 +596,6 @@ static int optee_probe(struct platform_device *pdev)
 		goto err;
 	}
 
-	optee->invoke_fn = invoke_fn;
 	optee->sec_caps = sec_caps;
 
 	teedev = tee_device_alloc(&optee_desc, NULL, pool, optee);
diff --git a/drivers/tee/optee/optee_private.h b/drivers/tee/optee/optee_private.h
index d9c5037b4e03..e186e318e157 100644
--- a/drivers/tee/optee/optee_private.h
+++ b/drivers/tee/optee/optee_private.h
@@ -69,8 +69,7 @@ struct optee_supp {
  * struct optee - main service struct
  * @supp_teedev:	supplicant device
  * @teedev:		client device
- * @invoke_fn:		function to issue smc or hvc
- * @call_queue:		queue of threads waiting to call @invoke_fn
+ * @call_queue:		queue of threads waiting to invoke secure world
  * @wait_queue:		queue of threads from secure world waiting for a
  *			secure world sync object
  * @supp:		supplicant synchronization struct for RPC to supplicant
@@ -82,7 +81,6 @@ struct optee_supp {
 struct optee {
 	struct tee_device *supp_teedev;
 	struct tee_device *teedev;
-	optee_invoke_fn *invoke_fn;
 	struct optee_call_queue call_queue;
 	struct optee_wait_queue wait_queue;
 	struct optee_supp supp;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
