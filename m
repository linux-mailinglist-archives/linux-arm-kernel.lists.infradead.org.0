Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AA6714A336
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 12:45:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=EtQYY2NZcY6IM92i+0UNandf74hpmgptiUk7zOOpzLs=; b=Z15g2Jy8FgsqhWjGsvbZQgnXgL
	Y9aSt/UOtyeRNijvkweWuP3DOlO/sKNuHez4+COGo6UHByOhQrLEpnHnRWHNwbAzkGwZq1w87ksvg
	Htv+tzVf2FsSDKIM61pQtJVJ2MqMeiw+ULqTkwVtV08pjzqi1dcBKSQfCmu9OKQv/1Vl2aqvLpADo
	VQyan2QPcKu2+T8CfbOUpi/51q8a7o4fMYgAtuBR6pcvNZsxSawgoZfugFXkzqViajcwIQhUvE9VF
	r+d9QkSiPoUbFMr+xeusw8tDF50R9FvCG99EvEJgzO8GK0kvEO01RnarAo20NYkoHQuKGrhD2mAUI
	O1gYFyWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw2pW-0004H1-0o; Mon, 27 Jan 2020 11:45:22 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw2oz-00049E-Fh
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 11:44:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CA43830E;
 Mon, 27 Jan 2020 03:44:48 -0800 (PST)
Received: from e119976-lin.cambridge.arm.com (e119976-lin.cambridge.arm.com
 [10.1.196.248])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id ADBE13F52E;
 Mon, 27 Jan 2020 03:44:47 -0800 (PST)
From: Andrew Murray <andrew.murray@arm.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Marc Zyngier <maz@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v5 1/3] arm64: cpufeature: Extract capped fields
Date: Mon, 27 Jan 2020 11:44:27 +0000
Message-Id: <1580125469-23887-2-git-send-email-andrew.murray@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1580125469-23887-1-git-send-email-andrew.murray@arm.com>
References: <1580125469-23887-1-git-send-email-andrew.murray@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_034449_588482_94E94B72 
X-CRM114-Status: GOOD (  10.80  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Andrew Murray <andrew.murray@arm.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, Suzuki.Poulose@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When emulating ID registers there is often a need to cap the version
bits of a feature such that the guest will not use features that do
not yet exist.

Let's add a helper that extracts a field and caps the version to a
given value.

Signed-off-by: Andrew Murray <andrew.murray@arm.com>
---
 arch/arm64/include/asm/cpufeature.h | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/include/asm/cpufeature.h b/arch/arm64/include/asm/cpufeature.h
index 4261d55..1462fd1 100644
--- a/arch/arm64/include/asm/cpufeature.h
+++ b/arch/arm64/include/asm/cpufeature.h
@@ -447,6 +447,22 @@ cpuid_feature_extract_unsigned_field(u64 features, int field)
 	return cpuid_feature_extract_unsigned_field_width(features, field, 4);
 }
 
+static inline u64 __attribute_const__
+cpuid_feature_cap_signed_field_width(u64 features, int field, int width,
+				     s64 cap)
+{
+	s64 val = cpuid_feature_extract_signed_field_width(features, field,
+							   width);
+	u64 mask = GENMASK_ULL(field + width - 1, field);
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
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
