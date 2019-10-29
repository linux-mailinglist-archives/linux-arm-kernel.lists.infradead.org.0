Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5968E8FC9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 20:17:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=FOR/iG9gm/73SYEkOYOUgsG9DK0wEjXvhH9gEYwj4kk=; b=Yv1
	Cjsp2GEZb2WKg7Kqc5XxkRYlBolNmKZdiAvQkutlp/kLBo2ox6HhgAFE2FaHHADujLYx/o3dPuGwX
	a1Tn+UPvU1G969DriBzkm+E3qrF9OXNStaG1xMBqLm8kBqiaDW1XTietJsdBFFcG1ZigSXll4YYSX
	wOSmsRhvdaDzQswQ+uXmaCRVTD4cv1bIgX89O3gxWy6oyZa5SiXrThPE146Yti+PeFN/bJXWLgJcc
	dgUXJPOhf9MWa9tSS2u8u75GhdHEAu1MbhGfKaEEefba0MQGEkYKVWHFN2rhu2TUL/DFUxdt/ksCr
	VVwtXmPTMhR5o1R+WBmYjMh7wPVoWOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPWzk-0001Xr-FS; Tue, 29 Oct 2019 19:17:32 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPWzN-0001LS-Fc
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 19:17:10 +0000
Received: by mail-wm1-x344.google.com with SMTP id c22so3638876wmd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 12:17:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=lypg9C4ry4DPd4ImOzQhAGtmZAf1Ysh6wu62GTtQEkQ=;
 b=dDjaYRz7Ny2C0svhKXBGm/aXJSNM5l55D8Mofm8aLwCat9G/GlebWTuYPy6lGRWQR+
 RCnLg2bsaKl7wILCPxgLS818zlTieKrNbPSrXSlQJQx9DfQsaT/CS9GhXn3TAZmrYQMp
 C3gou8znUyeyR636z8FRCPuhzYmAcqbCGK07ohlqqT+0eaW2fq3z2W4/NxmZdyykc98x
 zmg6n0+nAq649JaTiUCqi2MsCbPlPWBnxl+JEPLnjDHFyK5pasY5uTp1cTc4ZnhwPTgE
 GQKiLkKSjqU0412o6shY3U2XFX5ap+wf7SI0hb4HuR6MB+JDeyXESQToFlf3I8v1/6Pn
 K40A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=lypg9C4ry4DPd4ImOzQhAGtmZAf1Ysh6wu62GTtQEkQ=;
 b=OEz877/j7eqPdztXg/ltgZQLJgvacuXfVIHwMkkod0m+E7oabYtxIM55i2zR7rFbpE
 2gYaY3sjCySFsnuplVc2pjSqvd02gkLkCOmAT12BdV914VOCjjVY0EOmXyY3d10sRT8f
 6z0aHlNSt32npyZrlbU6zvwK8g6MRnTswV442MsuFLGEnbweVZ/BobPxqaDrzAmsffxZ
 46ZVjDhG1LlFndtUCMt4faNFdCxEYqGaxCaLKWd/p2jWMLi9MFlD4ULMzdyDe/1+8/Y9
 wbmDyGPHcUe7N3gvaIokdTrlMTuIJ4tvUj7mJqIIG8AKSBy8sNAMbG3TS7iGl7v28Pv8
 snaw==
X-Gm-Message-State: APjAAAUZjgTJPUJbhYtmY7+qv4EF2cFoSB1sOMDP9GgQW3xFdxPowONx
 fIu3LfU0W2HiKNpgZXK5QQ+voKFs
X-Google-Smtp-Source: APXvYqz7tv8yAogXi5IzRNfj/AtWXiJGRh//k9cZU8b9Ujrkd3h/ZwCTCfSHqEXRvaIu5YrBFEjT4A==
X-Received: by 2002:a1c:b4c1:: with SMTP id d184mr5192319wmf.37.1572376624942; 
 Tue, 29 Oct 2019 12:17:04 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id 16sm2373674wmj.48.2019.10.29.12.17.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 12:17:03 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: apply ARM64_ERRATUM_845719 workaround for Brahma-B53
 core
Date: Tue, 29 Oct 2019 12:16:19 -0700
Message-Id: <20191029191623.17839-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_121709_562482_096B0EDA 
X-CRM114-Status: GOOD (  12.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
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
Cc: Vladimir Murzin <vladimir.murzin@arm.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, John Garry <john.garry@huawei.com>,
 Hanjun Guo <guohanjun@huawei.com>, open list <linux-kernel@vger.kernel.org>,
 Jeremy Linton <jeremy.linton@arm.com>, Zhang Lei <zhang.lei@jp.fujitsu.com>,
 Andre Przywara <andre.przywara@arm.com>, Doug Berger <opendmb@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com, Marc Zyngier <maz@kernel.org>,
 Qian Cai <cai@lca.pw>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Doug Berger <opendmb@gmail.com>

The Broadcom Brahma-B53 core is susceptible to the issue described by
ARM64_ERRATUM_845719 so this commit enables the workaround to be applied
when executing on that core.

Since there are now multiple entries to match, we must convert the
existing ARM64_ERRATUM_845719 into an erratum list.

Signed-off-by: Doug Berger <opendmb@gmail.com>
Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 arch/arm64/include/asm/cputype.h |  2 ++
 arch/arm64/kernel/cpu_errata.c   | 13 +++++++++++--
 2 files changed, 13 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/include/asm/cputype.h b/arch/arm64/include/asm/cputype.h
index b1454d117cd2..aca07c2f6e6e 100644
--- a/arch/arm64/include/asm/cputype.h
+++ b/arch/arm64/include/asm/cputype.h
@@ -79,6 +79,7 @@
 #define CAVIUM_CPU_PART_THUNDERX_83XX	0x0A3
 #define CAVIUM_CPU_PART_THUNDERX2	0x0AF
 
+#define BRCM_CPU_PART_BRAHMA_B53	0x100
 #define BRCM_CPU_PART_VULCAN		0x516
 
 #define QCOM_CPU_PART_FALKOR_V1		0x800
@@ -105,6 +106,7 @@
 #define MIDR_THUNDERX_81XX MIDR_CPU_MODEL(ARM_CPU_IMP_CAVIUM, CAVIUM_CPU_PART_THUNDERX_81XX)
 #define MIDR_THUNDERX_83XX MIDR_CPU_MODEL(ARM_CPU_IMP_CAVIUM, CAVIUM_CPU_PART_THUNDERX_83XX)
 #define MIDR_CAVIUM_THUNDERX2 MIDR_CPU_MODEL(ARM_CPU_IMP_CAVIUM, CAVIUM_CPU_PART_THUNDERX2)
+#define MIDR_BRAHMA_B53 MIDR_CPU_MODEL(ARM_CPU_IMP_BRCM, BRCM_CPU_PART_BRAHMA_B53)
 #define MIDR_BRCM_VULCAN MIDR_CPU_MODEL(ARM_CPU_IMP_BRCM, BRCM_CPU_PART_VULCAN)
 #define MIDR_QCOM_FALKOR_V1 MIDR_CPU_MODEL(ARM_CPU_IMP_QCOM, QCOM_CPU_PART_FALKOR_V1)
 #define MIDR_QCOM_FALKOR MIDR_CPU_MODEL(ARM_CPU_IMP_QCOM, QCOM_CPU_PART_FALKOR)
diff --git a/arch/arm64/kernel/cpu_errata.c b/arch/arm64/kernel/cpu_errata.c
index 6c3b10a41bd8..c065dd48d661 100644
--- a/arch/arm64/kernel/cpu_errata.c
+++ b/arch/arm64/kernel/cpu_errata.c
@@ -737,6 +737,16 @@ static const struct midr_range erratum_1418040_list[] = {
 };
 #endif
 
+#ifdef CONFIG_ARM64_ERRATUM_845719
+static const struct midr_range erratum_845719_list[] = {
+	/* Cortex-A53 r0p[01234] */
+	MIDR_REV_RANGE(MIDR_CORTEX_A53, 0, 0, 4),
+	/* Brahma-B53 r0p[0] */
+	MIDR_REV(MIDR_BRAHMA_B53, 0, 0),
+	{},
+};
+#endif
+
 const struct arm64_cpu_capabilities arm64_errata[] = {
 #ifdef CONFIG_ARM64_WORKAROUND_CLEAN_CACHE
 	{
@@ -777,10 +787,9 @@ const struct arm64_cpu_capabilities arm64_errata[] = {
 #endif
 #ifdef CONFIG_ARM64_ERRATUM_845719
 	{
-	/* Cortex-A53 r0p[01234] */
 		.desc = "ARM erratum 845719",
 		.capability = ARM64_WORKAROUND_845719,
-		ERRATA_MIDR_REV_RANGE(MIDR_CORTEX_A53, 0, 0, 4),
+		ERRATA_MIDR_RANGE_LIST(erratum_845719_list),
 	},
 #endif
 #ifdef CONFIG_CAVIUM_ERRATUM_23154
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
