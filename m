Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A3C71B2CDD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 18:40:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ToOXzPgsGrCQhEZ7449JmVUfxSvVS9jqnLoDDbzqSoQ=; b=hL4MRwVXLI3EAxGMiFof+6YujX
	2GXoin+rjgwSDwdHNazBuGZr5eTM2txxDOQJPXqtQhYQ/6tmhH5l9mICkWy8hFh5oCAiBdoFXInla
	8bGg7YORVqW5nw1rlfSdkTbjJGrk9y9klCDgacgGna94vzQhZ2NEGJo6x8MXP9n5cvmt7Lm6Ok4S1
	E4JSbu4z5IcaxuYUiy+gPKdW8WQI204cb7NX/mq/x9M02TRXPYLSto/Cgf+li3hffaNv5XwA8dmmy
	8/SA/CezmisGFG3N3ZlcOOm1Ggr9UntoCgtDjhlZTrO7D9I4XC6+hcYo8FV10RdZoZgqbNB4skVgz
	v93zBYiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQvws-0006tI-Tf; Tue, 21 Apr 2020 16:40:38 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQvvX-0003fR-E9
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 16:39:17 +0000
Received: by mail-wm1-x342.google.com with SMTP id e26so4281349wmk.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Apr 2020 09:39:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=eNMW0723PRTk8SHiVowiqXotmpYrzhuUlH7clt9K0M4=;
 b=vOVyM4ZhNMPbc1/jcM5e96H2h6ACrZJBl0g5HozhzJCNQdqCV2hiBp8dhDJbPntQXT
 Yf+EZUxPInG4zWowEWt5iRLJdqREC5TrgxzY11jEXkoqRtQcfeIvpIOmhyYkrUv84D3P
 a3IuOhsMfVmvUk7+/65QQUV0Rv1MHi+b8mDT6K6y2bD05qROshuLEZOgRQBpSM6SvH0B
 K7Irpxn+s4RCFyJO1I9w8RekmnMDWbtIyHaNuxq6EWwdv1sphZkMZSNtl/FkTd2CTZqn
 TkX9BK4Wx98oOTZiAK4ANvDJ9JrzNrQL4YpzUizLcGexhAKCu5AzopsgZv932S3e7NRm
 KGig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=eNMW0723PRTk8SHiVowiqXotmpYrzhuUlH7clt9K0M4=;
 b=HxxKfOzj3g7eymtlzSnBAyaULG3celD3tjyIyJ9KLbBBwp0Pn8w9IDdlswfeaZSDED
 OAHRd/bAL2qyYwxFjV+aTpIiqAedWXMsNwU8wC4vOdZlRME+IapQ+umjgyIoMip/XlVT
 YX10+fz0s9vtULtlO7KBfal18GDJC2yukbCbiMChga9EXmYUNkG8LHOgI7eZHsSY1Wm4
 8DOuVyV17zOI+ZSZp5Jh5DbieNndCQAdz43sMuaimXdfw3Iy7KNUDur7fYxpZE9JMg7K
 vgiMYNhb53MkStqBtDHXz2wxvQzO0Og4GmbBmpgthDWqRI6UW2fE0fGRZmA38g9wdtpy
 FWRQ==
X-Gm-Message-State: AGi0PuYwZ4UA/Z5vMHIs44z8YBG5MfXguHIdxtmEOQE6QJzd8oH3RIo6
 LaKMv8BdlPf/gHkEbuyO5xHUwA==
X-Google-Smtp-Source: APiQypJbAFp4oFhCH7gC6OJ8uPpIm2eG7o9NA/Qwy2WOXRcDAKfuF5xrPsRLCBOLf647bj6qrOnNnw==
X-Received: by 2002:a7b:c1da:: with SMTP id a26mr5446790wmj.125.1587487154078; 
 Tue, 21 Apr 2020 09:39:14 -0700 (PDT)
Received: from lmecxl0524.lme.st.com
 (2a01cb058702ff00947c0d9b78b8fa1e.ipv6.abo.wanadoo.fr.
 [2a01:cb05:8702:ff00:947c:d9b:78b8:fa1e])
 by smtp.gmail.com with ESMTPSA id q143sm4389055wme.31.2020.04.21.09.39.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Apr 2020 09:39:13 -0700 (PDT)
From: Etienne Carriere <etienne.carriere@linaro.org>
To: linux-kernel@vger.kernel.org
Subject: [RFC PATCH v2 3/6] tee: optee: use SMCCC v1.0 helper functions
Date: Tue, 21 Apr 2020 18:38:08 +0200
Message-Id: <20200421163811.22720-4-etienne.carriere@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200421163811.22720-1-etienne.carriere@linaro.org>
References: <20200421163811.22720-1-etienne.carriere@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_093915_472685_5018F9DD 
X-CRM114-Status: GOOD (  17.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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

Change OP-TEE driver to use SMCCC v1.0 helper functions.

No functional change but initialization traces that are changed
from pr_*() traces the device dev_*() traces and info level trace
"probing for conduit method." being replaced with trace
"probing for conduit method from DT.".

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
