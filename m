Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44EA816B15A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 21:58:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=qu9+/cLemG7hcgt1UbM5BF3BFQz6HFp0DIy0ul7cUDQ=; b=JI0AgRqcfit+fZIerhDngTek3l
	/moOtJb3GzFp9wfEheBKobDjGovNnKXF1T50rt/bJkHBPdHIIH1GyYHiKmsVAanyEAuQPHq/dP8b3
	/jnrrNRf3hS/V09FcN81HcmLKZeFG62YFVOEbAaQwIkraLwRP0sJOuT/d+6RVt6Ki3GmJH6SNnhVF
	4ZrHK291V7PXAJblfeX9yZ0IiyBJuOp9WmIb3D08HQgCZZOHb3S9sC+SE44FQxYFwTHAjMimsQqSV
	CJdCOQGgczBnABXVvlQbLTAriomyXXbkIV9TPs7XcTZcdoFhomDc4Ifa32s9pL+9flHcsHXcbzJGq
	AwQSivXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6KoU-0005Ch-Ns; Mon, 24 Feb 2020 20:58:50 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6KnZ-0004T8-I8
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 20:57:58 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1582577877; h=References: In-Reply-To: Message-Id: Date:
 Subject: Cc: To: From: Sender;
 bh=TctPXLPsvJcgTMT7F5sGEItJewqA+o91bSGqIP2xRpQ=;
 b=J3x1SZLhne6N+ViGXfcrBTGY3DhJZ9Af1E4FLcNBMEGGx2Si0NRQ+IKYo3f2bYpooZB7epEj
 FCAMJ9lFo7/MOUrzkxKV5frcfq8WmallOln7HRq0nQmmInfsplhY65XoUeNj9La6ePursV1E
 984PsVtCQkyMf4FM0oJIXVEIVbg=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e5438cc.7f3c9d27e2d0-smtp-out-n01;
 Mon, 24 Feb 2020 20:57:48 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 3D721C433A2; Mon, 24 Feb 2020 20:57:48 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=ham autolearn_force=no version=3.4.0
Received: from eberman-linux.qualcomm.com (i-global254.qualcomm.com
 [199.106.103.254])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: eberman)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 69C6EC447A0;
 Mon, 24 Feb 2020 20:57:47 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 69C6EC447A0
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=eberman@codeaurora.org
From: Elliot Berman <eberman@codeaurora.org>
To: Mark Rutland <mark.rutland@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>
Subject: [PATCH v2 2/3] firmware: psci: Add support for dt-supplied
 SYSTEM_RESET2 type
Date: Mon, 24 Feb 2020 12:57:37 -0800
Message-Id: <1582577858-12410-3-git-send-email-eberman@codeaurora.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1582577858-12410-1-git-send-email-eberman@codeaurora.org>
References: <1582577858-12410-1-git-send-email-eberman@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_125757_464842_B6E6B39B 
X-CRM114-Status: GOOD (  16.86  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Trilok Soni <tsoni@codeaurora.org>, David Collins <collinsd@codeaurora.org>,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Elliot Berman <eberman@codeaurora.org>,
 Prasad Sodagudi <psodagud@codeaurora.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some implementors of PSCI may relax the requirements of the PSCI
architectural warm reset. In order to comply with PSCI specification, a
different reset_type value must be used. The alternate PSCI
SYSTEM_RESET2 may be used in all warm/soft reboot scenarios, replacing
the architectural warm reset.

Signed-off-by: Elliot Berman <eberman@codeaurora.org>
---
 drivers/firmware/psci/psci.c | 22 ++++++++++++++++++----
 include/uapi/linux/psci.h    |  2 ++
 2 files changed, 20 insertions(+), 4 deletions(-)

diff --git a/drivers/firmware/psci/psci.c b/drivers/firmware/psci/psci.c
index 2937d44..8f4609c 100644
--- a/drivers/firmware/psci/psci.c
+++ b/drivers/firmware/psci/psci.c
@@ -90,6 +90,8 @@ static u32 psci_function_id[PSCI_FN_MAX];
 
 static u32 psci_cpu_suspend_feature;
 static bool psci_system_reset2_supported;
+static u32 psci_sys_reset2_reset_param =
+	PSCI_1_1_SYSTEM_RESET2_SYSTEM_WARM_RESET;
 
 static inline bool psci_has_ext_power_state(void)
 {
@@ -272,11 +274,10 @@ static void psci_sys_reset(enum reboot_mode reboot_mode, const char *cmd)
 	if ((reboot_mode == REBOOT_WARM || reboot_mode == REBOOT_SOFT) &&
 	    psci_system_reset2_supported) {
 		/*
-		 * reset_type[31] = 0 (architectural)
-		 * reset_type[30:0] = 0 (SYSTEM_WARM_RESET)
 		 * cookie = 0 (ignored by the implementation)
 		 */
-		invoke_psci_fn(PSCI_FN_NATIVE(1_1, SYSTEM_RESET2), 0, 0, 0);
+		invoke_psci_fn(PSCI_FN_NATIVE(1_1, SYSTEM_RESET2),
+			       psci_sys_reset2_reset_param, 0, 0);
 	} else {
 		invoke_psci_fn(PSCI_0_2_FN_SYSTEM_RESET, 0, 0, 0);
 	}
@@ -493,6 +494,7 @@ typedef int (*psci_initcall_t)(const struct device_node *);
 static int __init psci_0_2_init(struct device_node *np)
 {
 	int err;
+	u32 param;
 
 	err = get_set_conduit_method(np);
 	if (err)
@@ -505,7 +507,19 @@ static int __init psci_0_2_init(struct device_node *np)
 	 * can be carried out according to the specific version reported
 	 * by firmware
 	 */
-	return psci_probe();
+	err = psci_probe();
+	if (err)
+		return err;
+
+	if (psci_system_reset2_supported &&
+	    !of_property_read_u32(np, "arm,psci-sys-reset2-param", &param)) {
+		if ((s32)param > 0)
+			pr_warn("%08x is an invalid architectural reset type.\n",
+				param);
+		psci_sys_reset2_reset_param = param;
+	}
+
+	return 0;
 }
 
 /*
diff --git a/include/uapi/linux/psci.h b/include/uapi/linux/psci.h
index 2fcad1d..d786ec8 100644
--- a/include/uapi/linux/psci.h
+++ b/include/uapi/linux/psci.h
@@ -55,6 +55,8 @@
 #define PSCI_1_0_FN64_SYSTEM_SUSPEND		PSCI_0_2_FN64(14)
 #define PSCI_1_1_FN64_SYSTEM_RESET2		PSCI_0_2_FN64(18)
 
+#define PSCI_1_1_SYSTEM_RESET2_SYSTEM_WARM_RESET	0
+
 /* PSCI v0.2 power state encoding for CPU_SUSPEND function */
 #define PSCI_0_2_POWER_STATE_ID_MASK		0xffff
 #define PSCI_0_2_POWER_STATE_ID_SHIFT		0
-- 
The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
a Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
