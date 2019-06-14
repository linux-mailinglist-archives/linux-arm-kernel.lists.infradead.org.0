Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 460E5452E5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 05:26:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HNx7+VLLYM9naswiHW8erBj+S6i3EnRSZLR37q7YcEA=; b=bEGC56qWLudRGL
	gT1agTbGN7twtw+8duoCVv2H/dyzx/lqe8sAB2/yk3zjRG2+1TVq+e38awK4+Of/dLSzg+g0i5yo+
	ukkLy5rQD1YAJ2zygG6IAEKYeXcF8XnzDOT8hnUtsbsEc46kx6YEtLYgkTX2As4xR71qSLzjzVhAQ
	eHNBKAqpkUBrYG/s7QUNRjBXf4JlhEvK93168eeoTS3bsKNHzToRxeV529z0SartAPxdRqKVrEhKu
	Ve6LBrH9UYDCBnFkbWsK/lcQvHTx9Xjf8sSmbC+MpUwVBz/m/N3mhf71qAdaCy2EKFOEff5EMktWz
	do4Jv6et0uk7Miz3syMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbcr2-0006m5-Qg; Fri, 14 Jun 2019 03:26:16 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbceq-0001DT-Gc
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 03:13:42 +0000
Received: by mail-pg1-x541.google.com with SMTP id 20so681504pgr.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 20:13:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8FgYZ0lVoh76yEFRGdkiTuXxRHgDjc15a9Db0UAG0RM=;
 b=lv7ALkokBtCxuF0Pb2QGAynH5EmP6+hWl8YTf/8htRpD/JOpxkK1Xua6Q32p3zAcJG
 MlKJcqsbz1BZt1tqo8tVvOPin1iNWGS1K6vb4+S5DL/w8JwY69CkxhmvsPgybtMSUt2y
 dX4adwqML14qOFeBbRhLQVBoxwaKNGrAXPQWW/CSQmHOJAznIPzo/P9umTzO4khHXPEd
 /ElLjLUlWaRKbTTbi6i8H6WoRILdTuSgwWQy5f5rY2018+96HoUsMaCWeV6KsfoEu/uG
 6NciLkwwDCxmVny3AZfHRF7pM7QkTQpPdnKJQW9w4ut5rsTLsv63X3Z0VD/EfTN1ypud
 hTVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8FgYZ0lVoh76yEFRGdkiTuXxRHgDjc15a9Db0UAG0RM=;
 b=F562Zp+mNBznOkRgdAv2VQZ0GGQvHUsubVTLJ8htyVYb9T5MfgQn08bNv3ysi8Crm6
 xipdzhZB8WFHQzoGCL22h6nyqjzsW4BW+CGPoE1CvELWTUgKUzbxmIcjTYthbwu1J/Td
 1zznKFXsnsEoPDh/7xJ23qaMBrG6FM2TZjKJel3gbnp8wg/I8noE/uNHWRJojB0+k1sU
 w1765+GvwxjjFof8mVnOBeX8YtF3wSGK4iEPvORcCf69TDiUBUHRLIaHa7C9P4M3KPiw
 Sl2V1MutPCdrZtvIcnTV1lFlELMvs0N2cDLluka5OTClRXA640+r1GA/HcMJwjReG9IB
 UR6Q==
X-Gm-Message-State: APjAAAXZ8aj5GX9p32VkJ2KhBZHZziaSfTepIzAxzqUWrPpN4M4mS3+1
 pPyBpM9v3x+F6Po+mSjKC+YwinC9Ars=
X-Google-Smtp-Source: APXvYqyDXM7aoINn+8QnduB+nrz7bywuRlRv2t73TBC3yrYzXbRk5w8bFtjmk/a4c24kE7Z/jM17rg==
X-Received: by 2002:a17:90a:5d0a:: with SMTP id
 s10mr8696027pji.94.1560482019108; 
 Thu, 13 Jun 2019 20:13:39 -0700 (PDT)
Received: from localhost ([122.172.66.84])
 by smtp.gmail.com with ESMTPSA id s15sm1080007pfd.183.2019.06.13.20.13.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 13 Jun 2019 20:13:38 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: linux-arm-kernel@lists.infradead.org,
 Julien Thierry <Julien.Thierry@arm.com>
Subject: [PATCH v4.4 40/45] firmware/psci: Expose SMCCC version through
 psci_ops
Date: Fri, 14 Jun 2019 08:38:23 +0530
Message-Id: <c5cd47362213c8f61cbb1ef99b7c2e2ac7158d72.1560480942.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1560480942.git.viresh.kumar@linaro.org>
References: <cover.1560480942.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_201340_561329_37919804 
X-CRM114-Status: GOOD (  14.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Viresh Kumar <viresh.kumar@linaro.org>, Will Deacon <will.deacon@arm.com>,
 stable@vger.kernel.org, mark.brown@arm.com,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@arm.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Marc Zyngier <marc.zyngier@arm.com>

commit e78eef554a912ef6c1e0bbf97619dafbeae3339f upstream.

Since PSCI 1.0 allows the SMCCC version to be (indirectly) probed,
let's do that at boot time, and expose the version of the calling
convention as part of the psci_ops structure.

Acked-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Reviewed-by: Robin Murphy <robin.murphy@arm.com>
Tested-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
[ v4.4: Included arm-smccc.h ]
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 drivers/firmware/psci.c | 28 ++++++++++++++++++++++++++++
 include/linux/psci.h    |  6 ++++++
 2 files changed, 34 insertions(+)

diff --git a/drivers/firmware/psci.c b/drivers/firmware/psci.c
index 7b2665f6b38d..0809a48e8089 100644
--- a/drivers/firmware/psci.c
+++ b/drivers/firmware/psci.c
@@ -13,6 +13,7 @@
 
 #define pr_fmt(fmt) "psci: " fmt
 
+#include <linux/arm-smccc.h>
 #include <linux/errno.h>
 #include <linux/linkage.h>
 #include <linux/of.h>
@@ -56,6 +57,7 @@ bool psci_tos_resident_on(int cpu)
 
 struct psci_operations psci_ops = {
 	.conduit = PSCI_CONDUIT_NONE,
+	.smccc_version = SMCCC_VERSION_1_0,
 };
 
 typedef unsigned long (psci_fn)(unsigned long, unsigned long,
@@ -320,6 +322,31 @@ static void __init psci_init_migrate(void)
 	pr_info("Trusted OS resident on physical CPU 0x%lx\n", cpuid);
 }
 
+static void __init psci_init_smccc(void)
+{
+	u32 ver = ARM_SMCCC_VERSION_1_0;
+	int feature;
+
+	feature = psci_features(ARM_SMCCC_VERSION_FUNC_ID);
+
+	if (feature != PSCI_RET_NOT_SUPPORTED) {
+		u32 ret;
+		ret = invoke_psci_fn(ARM_SMCCC_VERSION_FUNC_ID, 0, 0, 0);
+		if (ret == ARM_SMCCC_VERSION_1_1) {
+			psci_ops.smccc_version = SMCCC_VERSION_1_1;
+			ver = ret;
+		}
+	}
+
+	/*
+	 * Conveniently, the SMCCC and PSCI versions are encoded the
+	 * same way. No, this isn't accidental.
+	 */
+	pr_info("SMC Calling Convention v%d.%d\n",
+		PSCI_VERSION_MAJOR(ver), PSCI_VERSION_MINOR(ver));
+
+}
+
 static void __init psci_0_2_set_functions(void)
 {
 	pr_info("Using standard PSCI v0.2 function IDs\n");
@@ -368,6 +395,7 @@ static int __init psci_probe(void)
 	psci_init_migrate();
 
 	if (PSCI_VERSION_MAJOR(ver) >= 1) {
+		psci_init_smccc();
 		psci_init_cpu_suspend();
 		psci_init_system_suspend();
 	}
diff --git a/include/linux/psci.h b/include/linux/psci.h
index e071a1b8ddb5..e5c3277bfd78 100644
--- a/include/linux/psci.h
+++ b/include/linux/psci.h
@@ -30,6 +30,11 @@ enum psci_conduit {
 	PSCI_CONDUIT_HVC,
 };
 
+enum smccc_version {
+	SMCCC_VERSION_1_0,
+	SMCCC_VERSION_1_1,
+};
+
 struct psci_operations {
 	u32 (*get_version)(void);
 	int (*cpu_suspend)(u32 state, unsigned long entry_point);
@@ -40,6 +45,7 @@ struct psci_operations {
 			unsigned long lowest_affinity_level);
 	int (*migrate_info_type)(void);
 	enum psci_conduit conduit;
+	enum smccc_version smccc_version;
 };
 
 extern struct psci_operations psci_ops;
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
