Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0F6B136CFE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 13:24:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oXxeDYuYhU0/xYoP2LD0lj8DQgbSdBqM+qEYAXysRFY=; b=KMfaWxyUJArxdu
	jR59igC9q3bh9HI2B0dkBn/HrBTF8vLygx7/3H8iqvAvXh16iA/BYhb/Gu37AxXyylYRcYYuWx6fx
	Pg0btS9LIGDh+BxaNxAmvv6wtQ1+o/Fln9vavJknBOudJ6cMksvTEvRbDzBEboZTjzrkZeRGzHxQ1
	MboGbfw6HAFvI5GGnmQZiB7ZxGhoYQqm14n0x2UvrrteIC3aPdOLEjhWk2ijv4VproQrzzq8JZIdK
	T0jFfchzsnCgxeePpoM5TdHqJLAwhAecUCxMNqT2ptui8diBYEZ1vDHVrQyWT/pp5IOwE/Xr5zxnk
	FrklZST3x058HrKRAdYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iptLA-0006ru-KT; Fri, 10 Jan 2020 12:24:36 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iptKR-0006I5-RP
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 12:23:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3E33E1063;
 Fri, 10 Jan 2020 04:23:51 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BBC6F3F534;
 Fri, 10 Jan 2020 04:23:50 -0800 (PST)
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>
Subject: [PATCH v10 3/3] arm64: Use v8.5-RNG entropy for KASLR seed
Date: Fri, 10 Jan 2020 12:23:41 +0000
Message-Id: <20200110122341.8445-4-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200110122341.8445-1-broonie@kernel.org>
References: <20200110122341.8445-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_042351_941475_D7747DA2 
X-CRM114-Status: GOOD (  10.87  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, Mark Brown <broonie@kernel.org>,
 Richard Henderson <richard.henderson@linaro.org>,
 linux-arm-kernel@lists.infradead.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When seeding KALSR on a system where we have architecture level random
number generation make use of that entropy, mixing it in with the seed
passed by the bootloader. Since this is run very early in init before
feature detection is complete we open code rather than use archrandom.h.

Signed-off-by: Mark Brown <broonie@kernel.org>
---
 arch/arm64/kernel/kaslr.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/kernel/kaslr.c b/arch/arm64/kernel/kaslr.c
index 2a11a962e571..53b8a4ee64ff 100644
--- a/arch/arm64/kernel/kaslr.c
+++ b/arch/arm64/kernel/kaslr.c
@@ -120,6 +120,17 @@ u64 __init kaslr_early_init(u64 dt_phys)
 		return 0;
 	}
 
+	/*
+	 * Mix in any entropy obtainable architecturally, open coded
+	 * since this runs extremely early.
+	 */
+	if (__early_cpu_has_rndr()) {
+		unsigned long raw;
+
+		if (__arm64_rndr(&raw))
+			seed ^= raw;
+	}
+
 	if (!seed) {
 		kaslr_status = KASLR_DISABLED_NO_SEED;
 		return 0;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
