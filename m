Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E90E2EB943
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 22:48:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=piZLmGbOJHdwnow7GjaVgjS9WgIGB9M7GXmh48ffEjA=; b=BKyI3RVodPlXGMfL0WVm0OV5vO
	gE+X4RA/ryTl9EfF46zUQwijtjaIV4EjL22gDwZ2xefAXoDoUcmLPDJGqJbvDyXST8EIzymVsFOFi
	UPWM6oFsZsjP7fumXgVdeVS62hi7V4jTACzeeSoubn4otdJI2eBc3864YlZTnravcnyKmxtCSSzFm
	JqP9yKPmT8eS/Q28OIZqGFW9xyGgUcxkkQy5mlWgN8VMAQ2opVaVbiBE5buXmjzz8pm81KNS/JGxJ
	3fr4U20ytjHP9F/eEV303hBc8gFruagMAIwid5G/kF2TOC0CzKjvXHsxP7uvaodWgBNDG4WulFow1
	tQ4Ub8Ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQIJI-00039U-8R; Thu, 31 Oct 2019 21:48:52 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQIIo-0002wS-6F
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 21:48:23 +0000
Received: by mail-wr1-x441.google.com with SMTP id e6so6036883wrw.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 31 Oct 2019 14:48:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ve3LOHXOaREWp3o88DTnyild24rHhjfRfeBuPC+5t3M=;
 b=FanvcEmIjrpvEib4DeOjMcywQ5YoiPsMt2E1MaRu2j5P+pjb0QURqOoKhFzdA1cT8g
 PVQloZnh3ZYYocdAP4KNIYrmIbrz9E1skM8eN6QlWTaLqXz6oHOlC25WVZxIGt9yDhjh
 a+qXdZSXTLbsGQf8VpUnGpfs06hwzXWN3rOH/hXSkhOOunpFMvfhmvJj/WpoiLxaqdN8
 4+1LgclolGv9sfw9NXnwEk15FNjpJOdZ3adry5aTk3py2ffdCLGwRb50OJ3mds2kDDB1
 ouNA8Q1nvjaBCBYchlNlhzRCmgeJftAwDCoVBkuNRBIzfcTxcucMjC2gGsx0DIMk7ySV
 RAAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ve3LOHXOaREWp3o88DTnyild24rHhjfRfeBuPC+5t3M=;
 b=RDtYr0taeYhBCqeXe3GpCZoptZ1rSUrDfZ/2pCGxM/f0viGbaW6RltRfbkn8Cjv048
 spCBMmUFOnoSs5/6OxZAM3F/O/jjM4nPCUBfhD/qyPRH6VT0I+aqQSG7a/pFCwE2bLho
 1nagRY07PK79ZvbBqTN8ThbqeMPLsf0mP71CyLxd5KPCUHBaFF2pgPu9OR1Cvmt1CdS5
 2AD4L4TmnVjsoO2ibBzQx1TJ1PulDEFTfErxHs30LfvMNAYPx8vShYCRpzMG05/lRLdd
 ZLh20AfYuSoI3VRH57i5l9NbuTevyq7LseWcT2AyyMWmNquH64a2uo0ShZfG5oWqAXlx
 iOOw==
X-Gm-Message-State: APjAAAWYhuLqgH9sStvdUEv+V5x9kVY++pJGkLz1GwGlPxDX8xp3ne4q
 Vpibs7McWcTqGs7d3N9JsTeLEnyQ
X-Google-Smtp-Source: APXvYqyc891iyQP05RQpakGQc/2QDPOJzJ1GroEpUNgMx+loVXIWeZMG7nVgs2+XEYEzGuKeYzi/Cw==
X-Received: by 2002:a5d:5288:: with SMTP id c8mr708420wrv.1.1572558500533;
 Thu, 31 Oct 2019 14:48:20 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id g184sm5813674wma.8.2019.10.31.14.48.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 31 Oct 2019 14:48:19 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 1/3] arm64: apply ARM64_ERRATUM_845719 workaround for
 Brahma-B53 core
Date: Thu, 31 Oct 2019 14:47:23 -0700
Message-Id: <20191031214725.1491-2-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191031214725.1491-1-f.fainelli@gmail.com>
References: <20191031214725.1491-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_144822_275178_35A1F063 
X-CRM114-Status: GOOD (  14.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <maz@kernel.org>,
 Vladimir Murzin <vladimir.murzin@arm.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Jonathan Corbet <corbet@lwn.net>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 Jeremy Linton <jeremy.linton@arm.com>, Zhang Lei <zhang.lei@jp.fujitsu.com>,
 Andre Przywara <andre.przywara@arm.com>, Doug Berger <opendmb@gmail.com>,
 Qian Cai <cai@lca.pw>, Hanjun Guo <guohanjun@huawei.com>,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>
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
 Documentation/arm64/silicon-errata.rst |  3 +++
 arch/arm64/include/asm/cputype.h       |  2 ++
 arch/arm64/kernel/cpu_errata.c         | 13 +++++++++++--
 3 files changed, 16 insertions(+), 2 deletions(-)

diff --git a/Documentation/arm64/silicon-errata.rst b/Documentation/arm64/silicon-errata.rst
index ab7ed2fd072f..57757c73ead1 100644
--- a/Documentation/arm64/silicon-errata.rst
+++ b/Documentation/arm64/silicon-errata.rst
@@ -91,6 +91,9 @@ stable kernels.
 | ARM            | MMU-500         | #841119,826419  | N/A                         |
 +----------------+-----------------+-----------------+-----------------------------+
 +----------------+-----------------+-----------------+-----------------------------+
+| Broadcom       | Brahma-B53      | N/A             | ARM64_ERRATUM_845719        |
++----------------+-----------------+-----------------+-----------------------------+
++----------------+-----------------+-----------------+-----------------------------+
 | Cavium         | ThunderX ITS    | #22375,24313    | CAVIUM_ERRATUM_22375        |
 +----------------+-----------------+-----------------+-----------------------------+
 | Cavium         | ThunderX ITS    | #23144          | CAVIUM_ERRATUM_23144        |
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
