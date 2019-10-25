Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44779E4F96
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 16:52:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R82gTnegkqP+WW86wZQa8gpDRoKncPNh+x0HusmJU04=; b=PTKhqZtoM63zZR
	oOMhG+PKLfhbGtWmJ4TEUHuQ5cnDY3Z83Joeu6AptzDHdeUYpI8oa68iR0JWFazQMYithUFLin9GO
	EpGX5A9cEiPoSxw3M6tBnGRoTq2wrniC8UWzrTG6F25tfzYEJpx0ITuuYHBQWu2Qxy3HSnXH0n9dT
	1eMu6nooZbPfCcFb9U+TAvD3Uh1eGl1KujIfxvkLqp+RsA1eOtEov8Fydus1iBdo2ChFNdKDIjx0p
	wrRB5yeTNGZ3/urA6E8TZBNoFra8aafLKMX632cHcilTbIF4oaQo9X+ebPffysLpifjwnJrP1p8E9
	5OBB8AQ4jf7jlzM9fLzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO0xS-00014A-RG; Fri, 25 Oct 2019 14:52:54 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO0x2-0000u2-64
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 14:52:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B218D337;
 Fri, 25 Oct 2019 07:52:26 -0700 (PDT)
Received: from e119886-lin.cambridge.arm.com (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5F7943F71A;
 Fri, 25 Oct 2019 07:52:25 -0700 (PDT)
From: Andrew Murray <andrew.murray@arm.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Marc Zyngier <maz@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v1 1/3] arm64: cpufeature: Extract capped fields
Date: Fri, 25 Oct 2019 15:52:17 +0100
Message-Id: <20191025145219.28350-2-andrew.murray@arm.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191025145219.28350-1-andrew.murray@arm.com>
References: <20191025145219.28350-1-andrew.murray@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_075228_263433_82E33463 
X-CRM114-Status: GOOD (  11.00  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
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
 arch/arm64/include/asm/cpufeature.h | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm64/include/asm/cpufeature.h b/arch/arm64/include/asm/cpufeature.h
index 9cde5d2e768f..6b5bbf770969 100644
--- a/arch/arm64/include/asm/cpufeature.h
+++ b/arch/arm64/include/asm/cpufeature.h
@@ -447,6 +447,21 @@ cpuid_feature_extract_unsigned_field(u64 features, int field)
 	return cpuid_feature_extract_unsigned_field_width(features, field, 4);
 }
 
+static inline u64 __attribute_const__
+cpuid_feature_cap_signed_field_width(u64 features, int field, int width,
+				     s64 cap)
+{
+	s64 val = cpuid_feature_extract_signed_field_width(features, field,
+							   width);
+
+	if (val > cap) {
+		features &= ~GENMASK_ULL(field + width - 1, field);
+		features |= cap << field;
+	}
+
+	return features;
+}
+
 static inline u64 arm64_ftr_mask(const struct arm64_ftr_bits *ftrp)
 {
 	return (u64)GENMASK(ftrp->shift + ftrp->width - 1, ftrp->shift);
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
