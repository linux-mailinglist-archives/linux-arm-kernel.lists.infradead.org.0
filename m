Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8F6AEB945
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 22:49:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Ki8wxgRiAzFegITllH4mMwtntD8wvOdbTXvwjmI9Aco=; b=RJZ94PWTEezJX821M48SXna9de
	dOf1vO59bVp5XxxhrCX3/Dx5dura+6UBgEVQZdBLS1yggpFrRclf31+SZo5a4uKO4x9yqRwNgEXuL
	bmLPBeA4DuuPRSYDdimhcf7jWgdby/x7KE3T8Np6HEXy1vo4nDG0la6fJmOORoGSTu6O9VvUj44YC
	DKGR7oXM4DtPq6x3/iLJGbNEaQ1Q3n3eZqOG4Gfj37sS3EweLj2vxMhAbqso/8N9A4a5db1Q3076z
	olLZHAZLXjO6PXXz/JwWK5DrrQFcAT0RNoLNXjuY+1YD0E/op9F5WM/bdFDCiDQi6NlTiFDlAFQ4w
	B/CN7hog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQIJi-0003cQ-EI; Thu, 31 Oct 2019 21:49:18 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQIIw-00033E-0k
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 21:48:31 +0000
Received: by mail-wr1-x444.google.com with SMTP id n1so7860074wra.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 31 Oct 2019 14:48:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=xzqhDZ3wBxWeTejy3g7Yk7R2thWi6tiuxZkbkCpQdv8=;
 b=KNStKP8npRtkIO8qLPh43FI9wktn0op3EbYXp5lMuIhlNkWDwzamhQgW9AS9RCFKt8
 6cjrkEfdhyKQAnuwquyQnBOyFSwkiYTcf8uN3/j5x5qUlP934np96J3lnRba8LiQjSK9
 vlGf4rcnr0YZJO0gTpIszvrGWqWq/6vOscT+ty6Gp9O/HOWW6SuaeHtC56AXGegkpuGx
 QT1DgBKLRYxxn+Xd6XSjO0WF8NhsWjLFMGwLCbOdcUU5T/cwTMaJnwesnJvmdTr3K56w
 PWcX9pRqaYMsxLF9wcj+YYfCu1OIUt2cPARzU5Ms7b0j+vYFxf8xnobB8aentQaEbcEe
 eICA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=xzqhDZ3wBxWeTejy3g7Yk7R2thWi6tiuxZkbkCpQdv8=;
 b=RDuPGIs/Axd3W/sROxAQjWTdbz9gBBeFo1gXFssBuZFRVfpHimfDtlZ9yi/2IdXT6S
 bGjtoX8/d4V9JeCZyt2nC8z8FwI1YmC20pOmPK+fSqLAs8H0+1W8JEyLwBDJGwYTLl2v
 7DwR6hqGIEPOBspzTniznD2BU6PjGdhr29cuJFpaWu+4ZN2tKixCHOxmZK5Oxw39KFg2
 LOyNLWTkfiYUpF30FNVqDgtEw/AI7WG8j4QKj7BF7O7OatRIrH5IYwstWhFPCKlxAB6B
 lnRHLAv8tJN55dbSLkjdLrbdmzZ11QdkuexwfqHwyqHoo6MK2NUMTAN36SLZRjvJRpef
 1VBw==
X-Gm-Message-State: APjAAAVFDecq3/P+c5ZheSeQZ4grCV5uWTqhXnRm7f9bybVwdSgHQnxL
 NnS5M2Srkn1Mbl+GA+pjZOULBNby
X-Google-Smtp-Source: APXvYqyehPSBK5AunHvntGf/xcrNSCthFM4C0ew1ZSHWlfDcf/mbogmbMsms2/rj5H3IMD22imLnZA==
X-Received: by 2002:a5d:4803:: with SMTP id l3mr7680925wrq.381.1572558508280; 
 Thu, 31 Oct 2019 14:48:28 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id g184sm5813674wma.8.2019.10.31.14.48.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 31 Oct 2019 14:48:27 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 3/3] arm64: apply ARM64_ERRATUM_843419 workaround for
 Brahma-B53 core
Date: Thu, 31 Oct 2019 14:47:25 -0700
Message-Id: <20191031214725.1491-4-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191031214725.1491-1-f.fainelli@gmail.com>
References: <20191031214725.1491-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_144830_144579_D4738D42 
X-CRM114-Status: GOOD (  14.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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
 Florian Fainelli <f.fainelli@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Jonathan Corbet <corbet@lwn.net>,
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 Jeremy Linton <jeremy.linton@arm.com>, Zhang Lei <zhang.lei@jp.fujitsu.com>,
 Andre Przywara <andre.przywara@arm.com>,
 Vladimir Murzin <vladimir.murzin@arm.com>, Qian Cai <cai@lca.pw>,
 Hanjun Guo <guohanjun@huawei.com>, Doug Berger <opendmb@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Broadcom Brahma-B53 core is susceptible to the issue described by
ARM64_ERRATUM_843419 so this commit enables the workaround to be applied
when executing on that core.

Since there are now multiple entries to match, we must convert the
existing ARM64_ERRATUM_843419 into an erratum list and use
cpucap_multi_entry_cap_matches to match our entries.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 Documentation/arm64/silicon-errata.rst |  2 ++
 arch/arm64/kernel/cpu_errata.c         | 23 ++++++++++++++++++++---
 2 files changed, 22 insertions(+), 3 deletions(-)

diff --git a/Documentation/arm64/silicon-errata.rst b/Documentation/arm64/silicon-errata.rst
index 57757c73ead1..7b9afffac3a7 100644
--- a/Documentation/arm64/silicon-errata.rst
+++ b/Documentation/arm64/silicon-errata.rst
@@ -93,6 +93,8 @@ stable kernels.
 +----------------+-----------------+-----------------+-----------------------------+
 | Broadcom       | Brahma-B53      | N/A             | ARM64_ERRATUM_845719        |
 +----------------+-----------------+-----------------+-----------------------------+
+| Broadcom       | Brahma-B53      | N/A             | ARM64_ERRATUM_843419        |
++----------------+-----------------+-----------------+-----------------------------+
 +----------------+-----------------+-----------------+-----------------------------+
 | Cavium         | ThunderX ITS    | #22375,24313    | CAVIUM_ERRATUM_22375        |
 +----------------+-----------------+-----------------+-----------------------------+
diff --git a/arch/arm64/kernel/cpu_errata.c b/arch/arm64/kernel/cpu_errata.c
index 9b1ba1f489ac..64e0f7810fba 100644
--- a/arch/arm64/kernel/cpu_errata.c
+++ b/arch/arm64/kernel/cpu_errata.c
@@ -749,6 +749,23 @@ static const struct midr_range erratum_845719_list[] = {
 };
 #endif
 
+#ifdef CONFIG_ARM64_ERRATUM_843419
+static const struct arm64_cpu_capabilities erratum_843419_list[] = {
+	{
+		/* Cortex-A53 r0p[01234] */
+		.matches = is_affected_midr_range,
+		ERRATA_MIDR_REV_RANGE(MIDR_CORTEX_A53, 0, 0, 4),
+		MIDR_FIXED(0x4, BIT(8)),
+	},
+	{
+		/* Brahma-B53 r0p[0] */
+		.matches = is_affected_midr_range,
+		ERRATA_MIDR_REV(MIDR_BRAHMA_B53, 0, 0),
+	},
+	{},
+};
+#endif
+
 const struct arm64_cpu_capabilities arm64_errata[] = {
 #ifdef CONFIG_ARM64_WORKAROUND_CLEAN_CACHE
 	{
@@ -780,11 +797,11 @@ const struct arm64_cpu_capabilities arm64_errata[] = {
 #endif
 #ifdef CONFIG_ARM64_ERRATUM_843419
 	{
-	/* Cortex-A53 r0p[01234] */
 		.desc = "ARM erratum 843419",
 		.capability = ARM64_WORKAROUND_843419,
-		ERRATA_MIDR_REV_RANGE(MIDR_CORTEX_A53, 0, 0, 4),
-		MIDR_FIXED(0x4, BIT(8)),
+		.type = ARM64_CPUCAP_LOCAL_CPU_ERRATUM,
+		.matches = cpucap_multi_entry_cap_matches,
+		.match_list = erratum_843419_list,
 	},
 #endif
 #ifdef CONFIG_ARM64_ERRATUM_845719
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
