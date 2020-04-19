Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE5281AFB9D
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Apr 2020 17:07:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=G6+JjLChu3+BZFu9nTqcJZx+lbIP23OVF/2rn+QuKLQ=; b=pxTxfuInjGH7ktxRc1XLkQvodj
	YNKx08+gfhlZxZiBwbSZwiCPuGui0rMvfVJredOGYx/oGEOLZz8fj8XCbLZMNR1Jf9E0dKfDDdGZ8
	X4408nYShWxHu77yW4VzI3JBWUfNVfZiGz46+a5hCee5HoRS9VjI9rdevsrbwRjgR6yLMbTrz4w8t
	BHvQ7V/bsXT0w992qCzpybn/3SZ+DUSI/Yhiyi1uLuZbp/b0qRu2vL8N8Dki5nnoEEOQtkO+kUDKT
	RvegFrD4YrkTbaDOH/+mgYy+U+AZGVds3o/mJxaHrJRnRg5HntQ6VtxnTj/O9BdLf8liF9ECAaMcG
	lxjfCGiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQBXm-0000mM-Fr; Sun, 19 Apr 2020 15:07:38 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQBWK-0008Ap-E2
 for linux-arm-kernel@lists.infradead.org; Sun, 19 Apr 2020 15:06:13 +0000
Received: by mail-wr1-x443.google.com with SMTP id i10so8824164wrv.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 19 Apr 2020 08:06:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Y6PiqSVV9dpQAqOqd+uh/E8t5jyLRFjga9Ph1jhDag8=;
 b=FOV0ezYfjjl9Ks/imkXxFXr8IJNLzQ7xwIGz5OftsX4B5vGc3mutSwNxF4+k3rruRx
 mhqwouVVHCQI1zzVmlFUnANaD5qlC/XcxHZSsnK73DRZB0w9NxY2FaqPuas2f6beqtfW
 A9CSX+/O2lSNUzKnyhoT1mv005X/uD9AUhN+DV5GvIUDbI95k44IJI/15/3fsJAjTbLz
 ewBDortR1gTg2CD5bBHvWce5gplQNHJav2f9TaH44ROQVb6RIvVqCJFiK0KIohrswMpd
 gDk4tQs7rm4reCvV4J4hoDnnKX8cT2y7vnTW57C3dVB2iwIa9zJZm5aM2YsKvQHJ0jJN
 OiPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Y6PiqSVV9dpQAqOqd+uh/E8t5jyLRFjga9Ph1jhDag8=;
 b=UE9rsSzYMjuwgzh/wDpQgTB54Vd3Nxs/wFPP4+9xig2GOn0mbzINBNbl6CXkzpbzeY
 yWmJRfa2RgQAAz8N1gzNxbvQ9UnfoaPt2lYwrC/224MJ6L/WtRkZr7Pr8qV1nN98jiT6
 Fw32dGR43uo5UVauI29RW+eX3syC9isnhVstV402YZPSTWOH7RVNXFcwTmUStKo8irTa
 NmNgFQJc3Wyn2SBcqRNzCwTJ8HYTh1Z65DFyx2bUe6Tjgc2cwUWYdbHQyGpMqWIkO5u4
 JILUt/A385QmKgdNEabzvh7yZv885L0om111bn2wUI9I5JMvPJ3rcy11P9bNBurB13mG
 zwZg==
X-Gm-Message-State: AGi0PuYOKiMXojNzGZd/cEZIVzISeZBWw3lg+yOf0R5nK+oVUMQ6diyh
 8+dJFkgec7J+kwfh90FJVAzylw==
X-Google-Smtp-Source: APiQypI3G+DRojbxMZCQ/3C6Vsl76B2MCQNsmSARPJUTNIz3W6+yGt8+Kwu0fi2IVqFrot5M1S+9Lw==
X-Received: by 2002:a5d:4306:: with SMTP id h6mr13372859wrq.234.1587308767273; 
 Sun, 19 Apr 2020 08:06:07 -0700 (PDT)
Received: from lmecxl0524.home
 (2a01cb058702ff00947c0d9b78b8fa1e.ipv6.abo.wanadoo.fr.
 [2a01:cb05:8702:ff00:947c:d9b:78b8:fa1e])
 by smtp.gmail.com with ESMTPSA id w12sm25948635wrk.56.2020.04.19.08.06.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 19 Apr 2020 08:06:06 -0700 (PDT)
From: Etienne Carriere <etienne.carriere@linaro.org>
To: linux-kernel@vger.kernel.org
Subject: [RFC PATCH 6/6] firmware: zynqmp: use SMCCC v1.0 helper functions
Date: Sun, 19 Apr 2020 17:05:30 +0200
Message-Id: <20200419150530.20508-7-etienne.carriere@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200419150530.20508-1-etienne.carriere@linaro.org>
References: <20200419150530.20508-1-etienne.carriere@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_080608_491970_403BCEFF 
X-CRM114-Status: GOOD (  13.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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

Change Xilinx Zynmp driver to use Arm SMCCC v1.0 helper functions
and ensure platform consistency on SMCCC conduit method.

Main functional change is that SMCCC conduit method for ZynqMP
firmware must be consistent with conduit methods registered by
PSCI device that is early probed.

Another functional change is an addition info trace emitted by the
device probe sequence: "probing for conduit method from DT.".

Signed-off-by: Etienne Carriere <etienne.carriere@linaro.org>
---
 drivers/firmware/xilinx/zynqmp.c | 87 ++++----------------------------
 1 file changed, 9 insertions(+), 78 deletions(-)

diff --git a/drivers/firmware/xilinx/zynqmp.c b/drivers/firmware/xilinx/zynqmp.c
index 41b65164a367..1fdc468c9204 100644
--- a/drivers/firmware/xilinx/zynqmp.c
+++ b/drivers/firmware/xilinx/zynqmp.c
@@ -63,51 +63,11 @@ static int zynqmp_pm_ret_code(u32 ret_status)
 	}
 }
 
-static noinline int do_fw_call_fail(u64 arg0, u64 arg1, u64 arg2,
-				    u32 *ret_payload)
-{
-	return -ENODEV;
-}
-
-/*
- * PM function call wrapper
- * Invoke do_fw_call_smc or do_fw_call_hvc, depending on the configuration
- */
-static int (*do_fw_call)(u64, u64, u64, u32 *ret_payload) = do_fw_call_fail;
-
-/**
- * do_fw_call_smc() - Call system-level platform management layer (SMC)
- * @arg0:		Argument 0 to SMC call
- * @arg1:		Argument 1 to SMC call
- * @arg2:		Argument 2 to SMC call
- * @ret_payload:	Returned value array
- *
- * Invoke platform management function via SMC call (no hypervisor present).
- *
- * Return: Returns status, either success or error+reason
- */
-static noinline int do_fw_call_smc(u64 arg0, u64 arg1, u64 arg2,
-				   u32 *ret_payload)
-{
-	struct arm_smccc_res res;
-
-	arm_smccc_smc(arg0, arg1, arg2, 0, 0, 0, 0, 0, &res);
-
-	if (ret_payload) {
-		ret_payload[0] = lower_32_bits(res.a0);
-		ret_payload[1] = upper_32_bits(res.a0);
-		ret_payload[2] = lower_32_bits(res.a1);
-		ret_payload[3] = upper_32_bits(res.a1);
-	}
-
-	return zynqmp_pm_ret_code((enum pm_ret_status)res.a0);
-}
-
 /**
- * do_fw_call_hvc() - Call system-level platform management layer (HVC)
- * @arg0:		Argument 0 to HVC call
- * @arg1:		Argument 1 to HVC call
- * @arg2:		Argument 2 to HVC call
+ * do_fw_call() - Call system-level platform management layer
+ * @arg0:		Argument 0 to HVC/SMC call
+ * @arg1:		Argument 1 to HVC/SMC call
+ * @arg2:		Argument 2 to HVC/SMC call
  * @ret_payload:	Returned value array
  *
  * Invoke platform management function via HVC
@@ -116,12 +76,13 @@ static noinline int do_fw_call_smc(u64 arg0, u64 arg1, u64 arg2,
  *
  * Return: Returns status, either success or error+reason
  */
-static noinline int do_fw_call_hvc(u64 arg0, u64 arg1, u64 arg2,
-				   u32 *ret_payload)
+static noinline int do_fw_call(u64 arg0, u64 arg1, u64 arg2, u32 *ret_payload)
 {
 	struct arm_smccc_res res;
 
-	arm_smccc_hvc(arg0, arg1, arg2, 0, 0, 0, 0, 0, &res);
+	if (arm_smccc_1_0_invoke(arg0, arg1, arg2, 0, 0, 0, 0, 0, &res) ==
+	    SMCCC_CONDUIT_NONE)
+		return -ENODEV;
 
 	if (ret_payload) {
 		ret_payload[0] = lower_32_bits(res.a0);
@@ -287,36 +248,6 @@ static int zynqmp_pm_get_trustzone_version(u32 *version)
 	return ret;
 }
 
-/**
- * get_set_conduit_method() - Choose SMC or HVC based communication
- * @np:		Pointer to the device_node structure
- *
- * Use SMC or HVC-based functions to communicate with EL2/EL3.
- *
- * Return: Returns 0 on success or error code
- */
-static int get_set_conduit_method(struct device_node *np)
-{
-	const char *method;
-
-	if (of_property_read_string(np, "method", &method)) {
-		pr_warn("%s missing \"method\" property\n", __func__);
-		return -ENXIO;
-	}
-
-	if (!strcmp("hvc", method)) {
-		do_fw_call = do_fw_call_hvc;
-	} else if (!strcmp("smc", method)) {
-		do_fw_call = do_fw_call_smc;
-	} else {
-		pr_warn("%s Invalid \"method\" property: %s\n",
-			__func__, method);
-		return -EINVAL;
-	}
-
-	return 0;
-}
-
 /**
  * zynqmp_pm_query_data() - Get query data from firmware
  * @qdata:	Variable to the zynqmp_pm_query_data structure
@@ -790,7 +721,7 @@ static int zynqmp_firmware_probe(struct platform_device *pdev)
 	}
 	of_node_put(np);
 
-	ret = get_set_conduit_method(dev->of_node);
+	ret = devm_arm_smccc_set_conduit(dev);
 	if (ret)
 		return ret;
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
