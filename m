Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99309176258
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 19:20:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7qM9auRudo/08poX8vRnVkk9EGs2C5YyEHJkTfxUdtA=; b=cPPS4Bz715xkSYBHOxzZeTydwz
	Jt8lgyGFn3smh670zKAJ0zlQ0XVBloXUtUI5EHBsWnXZ2+aiXeB0lxHqrWRmuvGnR7U45zOpKU+x+
	JDJ4o9JvWGobC20mFLLmx+D0ZgfdDaRNoSiMZgl2NL6ewOJb6kAcZIW5PlBAqv9+f4uMgG4UDWdON
	0jLKOQRo2K8EcAmsan0N3KgF4SDA84ULyNDRTWvbMTvvdnbQtnhRe6yed1Uk9vrdC7Pgjapnzfyaw
	yLHIfoPdJ9OdKATTUDQpm1XCr9VH6+c8m6sAdbi4G7A504GsAFbRwkXEfAKWXp4n7ZWng3/OQH34J
	nz4QPK5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8pg9-0007wR-Tj; Mon, 02 Mar 2020 18:20:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8pdg-0004uO-Fs
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 18:18:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D9508FEC;
 Mon,  2 Mar 2020 10:17:59 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 00E3B3F6C4;
 Mon,  2 Mar 2020 10:17:58 -0800 (PST)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCHv6 1/3] arm64: cpufeature: Extract capped perfmon fields
Date: Mon,  2 Mar 2020 18:17:50 +0000
Message-Id: <20200302181752.14251-2-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200302181752.14251-1-mark.rutland@arm.com>
References: <20200302181752.14251-1-mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_101800_681465_3DC4A315 
X-CRM114-Status: GOOD (  12.84  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: catalin.marinas@arm.com, will@kernel.org, kvmarm@lists.cs.columbia.edu,
 maz@kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Andrew Murray <andrew.murray@arm.com>

When emulating ID registers there is often a need to cap the version
bits of a feature such that the guest will not use features that the
host is not aware of. For example, when KVM mediates access to the PMU
by emulating register accesses.

Let's add a helper that extracts a performance monitors ID field and
caps the version to a given value.

Fields that identify the version of the Performance Monitors Extension
do not follow the standard ID scheme, and instead follow the scheme
described in ARM DDI 0487E.a page D13-2825 "Alternative ID scheme used
for the Performance Monitors Extension version". The value 0xF means an
IMPLEMENTATION DEFINED PMU is present, and values 0x0-OxE can be treated
the same as an unsigned field with 0x0 meaning no PMU is present.

Signed-off-by: Andrew Murray <andrew.murray@arm.com>
Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
[Mark: rework to handle perfmon fields]
Signed-off-by: Mark Rutland <mark.rutland@arm.com>
---
 arch/arm64/include/asm/cpufeature.h | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/arch/arm64/include/asm/cpufeature.h b/arch/arm64/include/asm/cpufeature.h
index 92ef9539874a..186f4e19207e 100644
--- a/arch/arm64/include/asm/cpufeature.h
+++ b/arch/arm64/include/asm/cpufeature.h
@@ -447,6 +447,29 @@ cpuid_feature_extract_unsigned_field(u64 features, int field)
 	return cpuid_feature_extract_unsigned_field_width(features, field, 4);
 }
 
+/*
+ * Fields that identify the version of the Performance Monitors Extension do
+ * not follow the standard ID scheme. See ARM DDI 0487E.a page D13-2825,
+ * "Alternative ID scheme used for the Performance Monitors Extension version".
+ */
+static inline u64 __attribute_const__
+cpuid_feature_cap_perfmon_field(u64 features, int field, u64 cap)
+{
+	u64 val = cpuid_feature_extract_unsigned_field(features, field);
+	u64 mask = GENMASK_ULL(field + 3, field);
+
+	/* Treat IMPLEMENTATION DEFINED functionality as unimplemented */
+	if (val == 0xf)
+		val = 0;
+
+	if (val > cap) {
+		features &= ~mask;
+		features |= (cap << field) & mask;
+	}
+
+	return features;
+}
+
 static inline u64 arm64_ftr_mask(const struct arm64_ftr_bits *ftrp)
 {
 	return (u64)GENMASK(ftrp->shift + ftrp->width - 1, ftrp->shift);
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
