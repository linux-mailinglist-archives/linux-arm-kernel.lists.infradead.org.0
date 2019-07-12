Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3769866696
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 07:46:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HNx7+VLLYM9naswiHW8erBj+S6i3EnRSZLR37q7YcEA=; b=NbnCxf5On/9KtD
	lffabLN+HiCBQp3Trh6dd0TWY55uJC1z1ot56sl/azA6H/gvkqe7OeLWZ5hzfEszj5HgDfFGz4jM4
	fLyWmRs+MpnJgFcCd8bhCVbTwbsT9U+7EeWnqCUjSyus3V95I6oMqMvwle++jH/ZgRE7ad9eadS25
	SGUcXS1R9+u4pbchNJtbzUfPXm/qP9vNoqhQvyxsuZDH9xRie4Hyoi+6qbgnWNFHSRe0SK7jjhV0C
	iuPujGg5tonu7qHb92wt02iWaxZGJf4VaFPKpbfv+X5ICJX4dJ+qhI2Zbamksgs+hqioXXvKOPVLa
	ArLCIQeOx6Kt7EMFdfnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hloOT-00070Q-2B; Fri, 12 Jul 2019 05:46:53 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlo8p-0002kB-TG
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 05:30:45 +0000
Received: by mail-pl1-x641.google.com with SMTP id b3so4208208plr.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jul 2019 22:30:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8FgYZ0lVoh76yEFRGdkiTuXxRHgDjc15a9Db0UAG0RM=;
 b=uXGGypMHVt8OBJK0oz1SIqeyivCTwb+XosVqZO6Z8pfXIWt3o9Wse0MliB8FJK7coj
 i9zDUx0ssuhIq5bOu1lXzTuwwGoV/cD3u+E+njn76T5BvHXKUm2mKq9DJ9v0NaHXafh1
 xwS3cCczzJUArfTjM38b4vB7QivwtkEkDa+Z7k7BJXIjHGE8S1lnPd7GmGCI+/6RfWa2
 gV5qZ6dfkwSAF6u5lem0YH7L9RG1d2OKyrWCNhZbDfsBt1q5ZG9zF61cQJhOgEpLSqb7
 87zCh43s6vgHb6eZiBjhnREIh4CkzuMShDQt7xfDoKjO7CTAqyP0bKUIyYOzhfk6AVy7
 8PKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8FgYZ0lVoh76yEFRGdkiTuXxRHgDjc15a9Db0UAG0RM=;
 b=r0D0wh4C7IgqYcYsheFoj+bk7K0CbK03oWUPBU077N0STKMoqfecXdO2Z/IPzWPGBw
 slQ3wuKd8T0zgke5cWWsMdwO/DS+eNvw0cU9Al72/7O79Xlvr1YsLZMZUHqBtZlAFC7m
 nno3Orza9IgJ6kX+S88zxZlptZEHkG0Htwe9u1ijajJ1g5R4HCXV8YPRFb+GqQxYgTud
 7hhaBKVuLz3R8p5u7v/VPuS8cb2MAcXGQPqocnL5GJJjbctEZpSqjWDENN2OO3ErZyfh
 6NEifaLkaEioXXHDfIQqtZP1eVOWOj9JE/i+5ucewGVqYs2UOSzBMACxEIcH0249uEzT
 O0xw==
X-Gm-Message-State: APjAAAWZlBo2cSenY23wbZAnREKguWEGqC+gH+tA7uzeIC6jkTWWM1F1
 e8Y7kJd98xLL4XuSFDhgo3LSfw==
X-Google-Smtp-Source: APXvYqxs8UJgggtAwgQjkHpcRT3vYvVXaP1JzuNj82P3Zg5LujFIIGV7U3Q0NXeD7H0YgE5qz2yCug==
X-Received: by 2002:a17:902:a40c:: with SMTP id
 p12mr9159340plq.146.1562909443260; 
 Thu, 11 Jul 2019 22:30:43 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id n19sm7333448pfa.11.2019.07.11.22.30.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 11 Jul 2019 22:30:42 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org,
	Julien Thierry <Julien.Thierry@arm.com>
Subject: [PATCH v4.4 V2 38/43] firmware/psci: Expose SMCCC version through
 psci_ops
Date: Fri, 12 Jul 2019 10:58:26 +0530
Message-Id: <420f2392296122b9a375194e74d212422b00d673.1562908075.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1562908074.git.viresh.kumar@linaro.org>
References: <cover.1562908074.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_223043_984816_DD19A7BC 
X-CRM114-Status: GOOD (  14.50  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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
