Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8013A6666C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 07:39:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T7e+eJi4s9KVLZ8DuWfzK4MJ1almm9M0BRCRnGc95xw=; b=C+EL1/UD7A4q03
	rrgCLKrleTglfZ+9uOdML5l1bd8KHJPHzgCid4rT1qgPcLWQyGqOMYZmlEMduHHgoADCR/XpdIo8y
	GOfzu4fCEB3SI4i+vtQwoCColrPH3KFDsac05Opcap4y8yvJrB9YYr3tWfQivLosimB+3b5FJetRC
	eTEW889sRztWEEMB1TvYhD8tD1pbUw/IT3n6WbAoAMnaFmg0ofMFUqFlovMqd7LtCU0BzrtO/9mnQ
	Lu8RMeg8rPiGYXbtAffRvxdgrCw/H7qe4AJMqumjn2/Zj6pDYZPowfBsahJWunxNI1l2l8RayijXS
	FmnNeMqyo+TApPRRbHlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hloH3-0008RM-Jm; Fri, 12 Jul 2019 05:39:13 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlo85-0000x6-9K
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 05:30:00 +0000
Received: by mail-pl1-x643.google.com with SMTP id c2so4182579plz.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jul 2019 22:29:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=tUK8ETga6k61l9Q+/z8rY6SIV6XG+DcjRuCd/1NWAIQ=;
 b=vcn+efFxVGF43UW996/RLB57/10XNju0qvaz5vdpRO72mRWLognFPo8qNtfpDPW9wZ
 +DUC8+warFb6QT7+oyWClKHjq1x7Wdfo/aWYabcKjOvy9OJC5YSJLHk+Llkcrc7PWLNw
 hEObSZdPSOj+qbesZy64H0GPnYB6dgzZRM2wUTE4OIVBekAlkk0plooX5qMEs3+kRGNP
 9WoLlzDe3UrNFGBGNAdvAzewknxhut+DtRloIv+azJdI5Tv09g+h7znmIT8vJW20Vp58
 lJCGPzQBWY/ou0OEARyGbcmhlPcwvASHjZQ8uArpijAbiTbcBAYX19zR0HC7G4vD6pmU
 s8FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=tUK8ETga6k61l9Q+/z8rY6SIV6XG+DcjRuCd/1NWAIQ=;
 b=h7UZbK9PQP0Sj1+jICJuuKDEM7uPKfmomWIht5dvsC3i72R9JlJLCTUeOi72H5+rwu
 j4dIn9LQro7SqiFY8r43lskrGTXf7vcfpj6JhcZXoiPB7zQhXruZ/6UA6mC3RFw4o/jB
 hAhmKUhUccE0qU8G4+4XsPmcIE1JczWffO2RyLxA9L8hAHX8kC5cH2o+nA5xRf7zmo2B
 ZfJInvIzBzqj8VK6128LLllg9XA/6kbShp19+iaaxd0fwASPIDzYxDo0Q2DWmgEGw65g
 7DQYhabzil9UA6218AFtFvzQy9IYtcl924VROhQyLHZ1VT1+UIen3ArOI5mrfgiYO2nl
 KTxQ==
X-Gm-Message-State: APjAAAXE4xZ8xzgJBiy7/+fHBLlH9n2yT5wkOHouCVFyE3SOn9mLlw7e
 qMV0RzaWajO1BTGI7Fxv8LKJVQ==
X-Google-Smtp-Source: APXvYqyFy4JQLOEnN7RL+n089tjGGTAVoGRatUOhx6aRRb96/JSuBrLDS9AjVFHFT73LqhEQLwtr7Q==
X-Received: by 2002:a17:902:aa95:: with SMTP id
 d21mr8772502plr.185.1562909395725; 
 Thu, 11 Jul 2019 22:29:55 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id f6sm7757419pga.50.2019.07.11.22.29.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 11 Jul 2019 22:29:55 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org,
	Julien Thierry <Julien.Thierry@arm.com>
Subject: [PATCH v4.4 V2 21/43] drivers/firmware: Expose psci_get_version
 through psci_ops structure
Date: Fri, 12 Jul 2019 10:58:09 +0530
Message-Id: <c34816cb2f4ef72596cb59b28f0aa06d79cfb548.1562908075.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1562908074.git.viresh.kumar@linaro.org>
References: <cover.1562908074.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_222957_544167_C2D60A71 
X-CRM114-Status: GOOD (  11.75  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Viresh Kumar <viresh.kumar@linaro.org>, Will Deacon <will.deacon@arm.com>,
 mark.brown@arm.com, Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Will Deacon <will.deacon@arm.com>

commit d68e3ba5303f7e1099f51fdcd155f5263da8569b upstream.

Entry into recent versions of ARM Trusted Firmware will invalidate the CPU
branch predictor state in order to protect against aliasing attacks.

This patch exposes the PSCI "VERSION" function via psci_ops, so that it
can be invoked outside of the PSCI driver where necessary.

Acked-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Signed-off-by: Will Deacon <will.deacon@arm.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 drivers/firmware/psci.c | 2 ++
 include/linux/psci.h    | 1 +
 2 files changed, 3 insertions(+)

diff --git a/drivers/firmware/psci.c b/drivers/firmware/psci.c
index ae70d2485ca1..290f8982e7b3 100644
--- a/drivers/firmware/psci.c
+++ b/drivers/firmware/psci.c
@@ -305,6 +305,8 @@ static void __init psci_init_migrate(void)
 static void __init psci_0_2_set_functions(void)
 {
 	pr_info("Using standard PSCI v0.2 function IDs\n");
+	psci_ops.get_version = psci_get_version;
+
 	psci_function_id[PSCI_FN_CPU_SUSPEND] =
 					PSCI_FN_NATIVE(0_2, CPU_SUSPEND);
 	psci_ops.cpu_suspend = psci_cpu_suspend;
diff --git a/include/linux/psci.h b/include/linux/psci.h
index 12c4865457ad..04b4d92c7791 100644
--- a/include/linux/psci.h
+++ b/include/linux/psci.h
@@ -25,6 +25,7 @@ bool psci_power_state_loses_context(u32 state);
 bool psci_power_state_is_valid(u32 state);
 
 struct psci_operations {
+	u32 (*get_version)(void);
 	int (*cpu_suspend)(u32 state, unsigned long entry_point);
 	int (*cpu_off)(u32 state);
 	int (*cpu_on)(unsigned long cpuid, unsigned long entry_point);
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
