Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C34891B2CE4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 18:41:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=N2hNcgGRmHtlAJaGu9W+Mydh22mZGcGp7PtrEj/8Sz0=; b=lTYZ6xCr4z4ViFD0tRKNPEzEVp
	klDyTH8IGSGq1OIrcOhieQpMZPz59ug8m6WZwqkYURPbPORP/HSSaLTMqZFGKNRJr4vb11Y8SYXhs
	hIXXn0O09EpPhKS0lQmjXMtf7ZQnC0m5T7W58d1KC8N2DIVYnu8t5T5gSZXvxeNVWsevGWpdgzRID
	5YPKyg1dJ0XF7MRLgpHma4h10NavQShQRtaFI0nyRzoMAjUSvUwqQksQ+SZ6Mj1ElkYTLER+8lYZH
	q4TuA/5ZtETyRjZY4JuRUJh3tQNOOvJT54oLRS3wrMp4Bs0dKgDJYLFbRzQ6oevlaY1LWGYUebuHZ
	VTX9YcAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQvxx-0007p1-Rv; Tue, 21 Apr 2020 16:41:45 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQvvb-0003j2-77
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 16:39:21 +0000
Received: by mail-wm1-x341.google.com with SMTP id 188so4307938wmc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Apr 2020 09:39:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=FwFO/u2aeUUzfosuhBTWahZc0BcOCP6Dfva7x951Kew=;
 b=YsY5MtcynhLjmd4f5oPMFhzDUUL//yZqTVSXr/da17ytsjb18WOt73a2TR/vR9Xx7P
 gppN9LpWP/YEV7OBFcP72H8yYBpKq7lI4GH3eM22Tvobvce4BUEIAbwVjrmDRHMkwMxt
 X+TRM4z001H2b8vQaCwc1UeAtvot0XhM3DmrY7dGZv+jhxr1DvK329tt5RvM4tkHx+CZ
 xXLa71dgImb57W+R1nncyaP/3JdyAH88ME/y/unJ4vMQPpO3PX/iTUdIgc2sOo58iO0Z
 mDwgQEoZecgYjYm8SizcoapcKNC2MGwkE8QCGvZK79GBiFlU9LWQ0SHGdmt5QTBM6IAd
 /6bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=FwFO/u2aeUUzfosuhBTWahZc0BcOCP6Dfva7x951Kew=;
 b=nAQjoKhZv3rjgvytSso7p6302TK/rXctOFMbgsLhJB8gsNetGz9bXbxfZJ1Qusb0C0
 bhS+KWwNba/LSGGnxpCmJjc49DTXcyN5U06H7pI1hNX4/lOnqMHomleiXAQGxF1YO38s
 3nnm3Q0/CDlW0q0Y9pj2ia9Ga3GxyOmab/oNLLOgSequ/H9jZX/q85qgg0IBxsQ0AdMZ
 5VSfEX12SWXd7hJB2vCfSsoThUtBe2elXJ57Csy+nvVQL2UmQpIT2+nzWB5RB54QzjTm
 tAEbqT4It8hLv8Rd1qu86rCUKcTkucvFsSM91ajv/QGqKR+A6XBSnjXEhRJIJiT2twti
 qB5A==
X-Gm-Message-State: AGi0PuY1DbaKhf1AQIyVWJ9HyKFUbFn6NVdZQdS7ccjX45xIFsFia+ep
 /9bZN1JHRIDZzJ9sU0lIJW4ocw==
X-Google-Smtp-Source: APiQypIxKMzeiiJWPN1V8wijRp5361DgD4XkoZLFBW75v7EUbfB74QMNUxM0q98bebRI/tDk5G6hzA==
X-Received: by 2002:a1c:b38b:: with SMTP id c133mr5628173wmf.24.1587487157942; 
 Tue, 21 Apr 2020 09:39:17 -0700 (PDT)
Received: from lmecxl0524.lme.st.com
 (2a01cb058702ff00947c0d9b78b8fa1e.ipv6.abo.wanadoo.fr.
 [2a01:cb05:8702:ff00:947c:d9b:78b8:fa1e])
 by smtp.gmail.com with ESMTPSA id q143sm4389055wme.31.2020.04.21.09.39.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Apr 2020 09:39:17 -0700 (PDT)
From: Etienne Carriere <etienne.carriere@linaro.org>
To: linux-kernel@vger.kernel.org
Subject: [RFC PATCH v2 6/6] firmware: zynqmp: use SMCCC v1.0 helper functions
Date: Tue, 21 Apr 2020 18:38:11 +0200
Message-Id: <20200421163811.22720-7-etienne.carriere@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200421163811.22720-1-etienne.carriere@linaro.org>
References: <20200421163811.22720-1-etienne.carriere@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_093919_375801_28451208 
X-CRM114-Status: GOOD (  13.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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

Change Xilinx Zynmp driver to use Arm SMCCC v1.0 helper functions.

Main functional change is that SMCCC conduit method for ZynqMP
firmware must be consistent with conduit methods registered by
PSCI device that is early probed in case the later is enabled.

Another functional change is an additional info level trace emitted
by the device probe sequence: "probing for conduit method from DT.".

Signed-off-by: Etienne Carriere <etienne.carriere@linaro.org>
---
 drivers/firmware/xilinx/zynqmp.c | 87 ++++----------------------------
 1 file changed, 9 insertions(+), 78 deletions(-)

diff --git a/drivers/firmware/xilinx/zynqmp.c b/drivers/firmware/xilinx/zynqmp.c
index 41b65164a367..f2172978ed4d 100644
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
+	ret = devm_arm_smccc_1_0_set_conduit(dev);
 	if (ret)
 		return ret;
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
