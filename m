Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12038192763
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 12:41:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r20dEyqTi1AlGTJT9TdW7zo1dNf3IVcJv4EOT1S8bCQ=; b=dfKXa6Cm06ODUj
	Ja/ugC0oL4xIVhnHkSrrZP91fSgSn/MIIPq1brmm8UnQyQzZu4EJacx3J6uwn2FV/vGQcuWPOA3Qg
	7vtvkQB8p+bmc6ATmTn/KEOZZHx4csZPOXvpB6iD/PyCoqds9ZTXaYF7Im0ahXmRnUkC9RNXIeBBq
	eOZEXbmSegPLW2RlceVQfT5Hz9aO97K4QbrfIgvNCiz4n26qoYmhB2h2iZWQIdGUc6nDxv5fQMJ+0
	S+gOAdiFPvwptgQJvqV8DWrFIp06jDpOnXuOnKiimjYw/a+sL7ZO2cPVd9xdai3n8gwWxvxjelK/Y
	yZDFAeMrjAiaqUIXFJZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH4Pm-0001UQ-9V; Wed, 25 Mar 2020 11:41:42 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH4PM-0001KQ-22
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 11:41:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7CD6E31B;
 Wed, 25 Mar 2020 04:41:15 -0700 (PDT)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 014E13F71F;
 Wed, 25 Mar 2020 04:41:14 -0700 (PDT)
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Eric Biggers <ebiggers@google.com>, Ard Biesheuvel <ardb@kernel.org>
Subject: [PATCH 1/3] arm64: asm: Provide macro to control enabling
 architecture extensions
Date: Wed, 25 Mar 2020 11:41:08 +0000
Message-Id: <20200325114110.23491-2-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200325114110.23491-1-broonie@kernel.org>
References: <20200325114110.23491-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_044116_141866_08EBC3BE 
X-CRM114-Status: GOOD (  11.32  )
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Brown <broonie@kernel.org>, linux-crypto@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently several assembler files override the default architecture to
enable extensions in order to allow them to implement optimised routines
for systems with those extensions. Since inserting BTI landing pads into
assembler functions will require us to change the default architecture we
need a way to enable extensions without hard coding the architecture.
The assembler has the .arch_extension feature but this was introduced
for arm64 in gas 2.26 which is too modern for us to rely on it.

We could just update the base architecture used by these assembler files
but this would mean the assembler would no longer catch attempts to use
newer instructions so instead introduce a macro which sets the default
architecture centrally.  Doing this will also make our use of .arch and
.cpu to select the base architecture more consistent.

Signed-off-by: Mark Brown <broonie@kernel.org>
---
 arch/arm64/include/asm/linkage.h | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/include/asm/linkage.h b/arch/arm64/include/asm/linkage.h
index ebee3113a62f..e5856c75720b 100644
--- a/arch/arm64/include/asm/linkage.h
+++ b/arch/arm64/include/asm/linkage.h
@@ -20,4 +20,10 @@
 		SYM_FUNC_END(x);		\
 		SYM_FUNC_END_ALIAS(__pi_##x)
 
+/*
+ * Enable additional architecture extensions (eg, for optimized asm
+ * routines).
+ */
+#define ARM64_EXTENSIONS(x) .arch armv8-a+x
+
 #endif
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
