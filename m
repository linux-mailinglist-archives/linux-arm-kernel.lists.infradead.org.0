Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CC6F1AFB9C
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Apr 2020 17:07:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=O+hQWYz3hG6RSN9k1X+/lHz5HvwdjEpKP06pcP/2QeI=; b=c2kWgVf/uP9cTpD4BnDh2ytTaJ
	+LTUPuB2c454SYvz+/e/ToGMUy/ZbFbWVF7iOmohX9efei7inpTzTuIr+Sd3JXnoovC8fq27YpCFb
	JHYz9T9sinWBN2ldUDfpibPAuq5qr8AvMFCVKqWFYiTs5vG5nGjYOdRmociWOh3wRhZ++FELqbLNc
	lbeojNAl1CfgepuIsr+Dxn2RxsczxEcu3ervzCBIJsWx6S3ccx25xeLkG0DcSR+B7ynjSTuEQKzT8
	zmgoDb7SxIt5A175Xl5lhikQmVuQxiotEYXT7XuhbPnoJBbJHQ1vEGcVspQZzDzFgErmxuKVpvs+1
	UjyB6kwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQBXV-0000Xa-7p; Sun, 19 Apr 2020 15:07:21 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQBWJ-00089M-7w
 for linux-arm-kernel@lists.infradead.org; Sun, 19 Apr 2020 15:06:13 +0000
Received: by mail-wr1-x442.google.com with SMTP id j2so8831750wrs.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 19 Apr 2020 08:06:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=PlXCkAj7SQ4UkWuPcToquaH1G9B7ruGi30ZWGX4XAOI=;
 b=bSUZ3FZ/E0Yll9mMB7lRuIpfWOJ2UjnTn9Y5kylSnIcCBmpx/1nfXbMiCD57DgznMV
 kmSKROR6KdG6ukdsKOjv6ygoc05kmCMtgbG4HLY9LlKG4AYF836ilgTkc1YmVI3FHUjG
 fZaQzKjN5hXLG5S55dPB4vSgIy713coGDKRGk7VCi4miffBi8/SOMAd4IBZvUESUWaio
 3IzvdC6MbiwnUjFwnMfLg+eyVRYFnFgA0bGKJcuaJHWUhO1UT1IBSqOcXflq+MpR2tAU
 m+8qYq6KqGr30MvoZsQVzyb+az+TKHWLOdz2thY9pjPPbZh4tGfeUu3xJaCtBHXwhdMA
 UEsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=PlXCkAj7SQ4UkWuPcToquaH1G9B7ruGi30ZWGX4XAOI=;
 b=tbPx8DcjKcDMGSWZvcSk0F7686dv5foBLwun2a8c4d6g/IVzB1f0cmBzmOUnNfQ0hX
 RF0LbBAt1JxG3f+wXOZUd2N8Qmdjs6P2qMOb4/+5BUO+v4+eAzK6oii/p8i4Nc8ALLkO
 oUA4fJpRKPWfNHNW53OWnO5BVh3yplkgyFDuLABrAOkg1Yyyo59LpgRHjMf03v3Qqi06
 umJ8ssuSiGWpSx8mrB4i+2FSDy6uutMpofER1jEwYmyaxJ3KYUtQpdgYkj6Cok4UOFVS
 e0EwmyzdJnHQp2FpMJBX0RM1IMcYletoB6vTG1wreEHm3DWIpOcKP9iYKz3ISiZUMxX2
 UOMA==
X-Gm-Message-State: AGi0PuaNMOpZKLb+WBVOZ1lElIj0IUrqPW18t03A2arv5f7yPA16Ca4r
 L24cTCJasV7v0ULFxENIZ33dlw==
X-Google-Smtp-Source: APiQypK4xdmIs7kwsa7WCAqQXbtAO2TeUQmMZY0x3pN8rCZP9NcFL0C2FPOU1tjGn0zBRSXgyKLwpQ==
X-Received: by 2002:adf:c109:: with SMTP id r9mr13905434wre.265.1587308765612; 
 Sun, 19 Apr 2020 08:06:05 -0700 (PDT)
Received: from lmecxl0524.home
 (2a01cb058702ff00947c0d9b78b8fa1e.ipv6.abo.wanadoo.fr.
 [2a01:cb05:8702:ff00:947c:d9b:78b8:fa1e])
 by smtp.gmail.com with ESMTPSA id w12sm25948635wrk.56.2020.04.19.08.06.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 19 Apr 2020 08:06:05 -0700 (PDT)
From: Etienne Carriere <etienne.carriere@linaro.org>
To: linux-kernel@vger.kernel.org
Subject: [RFC PATCH 5/6] firmware: stratix10: use SMCCC v1.0 helper functions
Date: Sun, 19 Apr 2020 17:05:29 +0200
Message-Id: <20200419150530.20508-6-etienne.carriere@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200419150530.20508-1-etienne.carriere@linaro.org>
References: <20200419150530.20508-1-etienne.carriere@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_080607_353711_6A97B74B 
X-CRM114-Status: GOOD (  13.89  )
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

Change Stratix 10 firmware driver to use SMCCC v1.0 helper function.

Main functional change is that SMCCC conduit for the device is ensured
being consistent with the method used by PSCI firmware.

Another functional change is a additional info trace in the device
probed sequence: "probing for conduit method from DT.".

Signed-off-by: Etienne Carriere <etienne.carriere@linaro.org>
---
 drivers/firmware/stratix10-svc.c | 97 +++-----------------------------
 1 file changed, 9 insertions(+), 88 deletions(-)

diff --git a/drivers/firmware/stratix10-svc.c b/drivers/firmware/stratix10-svc.c
index d5f0769f3761..132f05f2bcc8 100644
--- a/drivers/firmware/stratix10-svc.c
+++ b/drivers/firmware/stratix10-svc.c
@@ -41,10 +41,6 @@
 /* stratix10 service layer clients */
 #define STRATIX10_RSU				"stratix10-rsu"
 
-typedef void (svc_invoke_fn)(unsigned long, unsigned long, unsigned long,
-			     unsigned long, unsigned long, unsigned long,
-			     unsigned long, unsigned long,
-			     struct arm_smccc_res *);
 struct stratix10_svc_chan;
 
 /**
@@ -60,7 +56,6 @@ struct stratix10_svc {
  * @sync_complete: state for a completion
  * @addr: physical address of shared memory block
  * @size: size of shared memory block
- * @invoke_fn: function to issue secure monitor or hypervisor call
  *
  * This struct is used to save physical address and size of shared memory
  * block. The shared memory blocked is allocated by secure monitor software
@@ -73,7 +68,6 @@ struct stratix10_svc_sh_memory {
 	struct completion sync_complete;
 	unsigned long addr;
 	unsigned long size;
-	svc_invoke_fn *invoke_fn;
 };
 
 /**
@@ -126,7 +120,6 @@ struct stratix10_svc_data {
  * @svc_fifo: a queue for storing service message data
  * @complete_status: state for completion
  * @svc_fifo_lock: protect access to service message data queue
- * @invoke_fn: function to issue secure monitor call or hypervisor call
  *
  * This struct is used to create communication channels for service clients, to
  * handle secure monitor or hypervisor call.
@@ -142,7 +135,6 @@ struct stratix10_svc_controller {
 	struct kfifo svc_fifo;
 	struct completion complete_status;
 	spinlock_t svc_fifo_lock;
-	svc_invoke_fn *invoke_fn;
 };
 
 /**
@@ -206,8 +198,8 @@ static void svc_thread_cmd_data_claim(struct stratix10_svc_controller *ctrl,
 
 	pr_debug("%s: claim back the submitted buffer\n", __func__);
 	do {
-		ctrl->invoke_fn(INTEL_SIP_SMC_FPGA_CONFIG_COMPLETED_WRITE,
-				0, 0, 0, 0, 0, 0, 0, &res);
+		arm_smccc_1_0_invoke(INTEL_SIP_SMC_FPGA_CONFIG_COMPLETED_WRITE,
+				     0, 0, 0, 0, 0, 0, 0, &res);
 
 		if (res.a0 == INTEL_SIP_SMC_STATUS_OK) {
 			if (!res.a1) {
@@ -256,8 +248,8 @@ static void svc_thread_cmd_config_status(struct stratix10_svc_controller *ctrl,
 
 	count_in_sec = FPGA_CONFIG_STATUS_TIMEOUT_SEC;
 	while (count_in_sec) {
-		ctrl->invoke_fn(INTEL_SIP_SMC_FPGA_CONFIG_ISDONE,
-				0, 0, 0, 0, 0, 0, 0, &res);
+		arm_smccc_1_0_invoke(INTEL_SIP_SMC_FPGA_CONFIG_ISDONE,
+				     0, 0, 0, 0, 0, 0, 0, &res);
 		if ((res.a0 == INTEL_SIP_SMC_STATUS_OK) ||
 		    (res.a0 == INTEL_SIP_SMC_FPGA_CONFIG_STATUS_ERROR))
 			break;
@@ -420,7 +412,7 @@ static int svc_normal_to_secure_thread(void *data)
 			 __func__, (unsigned int)a0, (unsigned int)a1);
 		pr_debug(" a2=0x%016x\n", (unsigned int)a2);
 
-		ctrl->invoke_fn(a0, a1, a2, 0, 0, 0, 0, 0, &res);
+		arm_smccc_1_0_invoke(a0, a1, a2, 0, 0, 0, 0, 0, &res);
 
 		pr_debug("%s: after SMC call -- res.a0=0x%016x",
 			 __func__, (unsigned int)res.a0);
@@ -540,8 +532,8 @@ static int svc_normal_to_secure_shm_thread(void *data)
 	struct arm_smccc_res res;
 
 	/* SMC or HVC call to get shared memory info from secure world */
-	sh_mem->invoke_fn(INTEL_SIP_SMC_FPGA_CONFIG_GET_MEM,
-			  0, 0, 0, 0, 0, 0, 0, &res);
+	arm_smccc_1_0_invoke(INTEL_SIP_SMC_FPGA_CONFIG_GET_MEM,
+			     0, 0, 0, 0, 0, 0, 0, &res);
 	if (res.a0 == INTEL_SIP_SMC_STATUS_OK) {
 		sh_mem->addr = res.a1;
 		sh_mem->size = res.a2;
@@ -661,73 +653,6 @@ svc_create_memory_pool(struct platform_device *pdev,
 	return genpool;
 }
 
-/**
- * svc_smccc_smc() - secure monitor call between normal and secure world
- * @a0: argument passed in registers 0
- * @a1: argument passed in registers 1
- * @a2: argument passed in registers 2
- * @a3: argument passed in registers 3
- * @a4: argument passed in registers 4
- * @a5: argument passed in registers 5
- * @a6: argument passed in registers 6
- * @a7: argument passed in registers 7
- * @res: result values from register 0 to 3
- */
-static void svc_smccc_smc(unsigned long a0, unsigned long a1,
-			  unsigned long a2, unsigned long a3,
-			  unsigned long a4, unsigned long a5,
-			  unsigned long a6, unsigned long a7,
-			  struct arm_smccc_res *res)
-{
-	arm_smccc_smc(a0, a1, a2, a3, a4, a5, a6, a7, res);
-}
-
-/**
- * svc_smccc_hvc() - hypervisor call between normal and secure world
- * @a0: argument passed in registers 0
- * @a1: argument passed in registers 1
- * @a2: argument passed in registers 2
- * @a3: argument passed in registers 3
- * @a4: argument passed in registers 4
- * @a5: argument passed in registers 5
- * @a6: argument passed in registers 6
- * @a7: argument passed in registers 7
- * @res: result values from register 0 to 3
- */
-static void svc_smccc_hvc(unsigned long a0, unsigned long a1,
-			  unsigned long a2, unsigned long a3,
-			  unsigned long a4, unsigned long a5,
-			  unsigned long a6, unsigned long a7,
-			  struct arm_smccc_res *res)
-{
-	arm_smccc_hvc(a0, a1, a2, a3, a4, a5, a6, a7, res);
-}
-
-/**
- * get_invoke_func() - invoke SMC or HVC call
- * @dev: pointer to device
- *
- * Return: function pointer to svc_smccc_smc or svc_smccc_hvc.
- */
-static svc_invoke_fn *get_invoke_func(struct device *dev)
-{
-	const char *method;
-
-	if (of_property_read_string(dev->of_node, "method", &method)) {
-		dev_warn(dev, "missing \"method\" property\n");
-		return ERR_PTR(-ENXIO);
-	}
-
-	if (!strcmp(method, "smc"))
-		return svc_smccc_smc;
-	if (!strcmp(method, "hvc"))
-		return svc_smccc_hvc;
-
-	dev_warn(dev, "invalid \"method\" property: %s\n", method);
-
-	return ERR_PTR(-EINVAL);
-}
-
 /**
  * stratix10_svc_request_channel_byname() - request a service channel
  * @client: pointer to service client
@@ -979,20 +904,17 @@ static int stratix10_svc_drv_probe(struct platform_device *pdev)
 	struct stratix10_svc_sh_memory *sh_memory;
 	struct stratix10_svc *svc;
 
-	svc_invoke_fn *invoke_fn;
 	size_t fifo_size;
 	int ret;
 
-	/* get SMC or HVC function */
-	invoke_fn = get_invoke_func(dev);
-	if (IS_ERR(invoke_fn))
+	/* get SMC or HVC conduit */
+	if (arm_smccc_1_0_set_device_conduit(&pdev->dev))
 		return -EINVAL;
 
 	sh_memory = devm_kzalloc(dev, sizeof(*sh_memory), GFP_KERNEL);
 	if (!sh_memory)
 		return -ENOMEM;
 
-	sh_memory->invoke_fn = invoke_fn;
 	ret = svc_get_sh_memory(pdev, sh_memory);
 	if (ret)
 		return ret;
@@ -1017,7 +939,6 @@ static int stratix10_svc_drv_probe(struct platform_device *pdev)
 	controller->chans = chans;
 	controller->genpool = genpool;
 	controller->task = NULL;
-	controller->invoke_fn = invoke_fn;
 	init_completion(&controller->complete_status);
 
 	fifo_size = sizeof(struct stratix10_svc_data) * SVC_NUM_DATA_IN_FIFO;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
