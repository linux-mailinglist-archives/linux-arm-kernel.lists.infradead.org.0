Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94E4D192A87
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 14:56:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=esr3IDTaGOReBXmIMqUWGZPhOsP87F3gs8Y2VV7A84M=; b=QkYGa/geO5LbES
	l9GOWm4ocH4xHerw0Jir5B7XLchAPg5N7R2UNuQxirBIHqW1ywb28/JoJB6LrScLLfdKeSKtnL5TH
	3V4cRG2WBSOzyxnyBsXZerCsqRPILjJhWCOa5NyIfVUKszq/QLnZktKVv0JWFwpKZ+Fg/k3YteQYy
	u9AK2yZKCiaAT4Di4ln7h0tlIcabkK62GQSHI8tbYaBNYi21s5Icd7Mk/oUOH0oMwU8VZcs7LillY
	Tg5RvW4kk5mDC/Qg4tkTocQ8ESrDF685oG9rtP3dgffpeFaQYMiR4FO/4/umZdRGbLc5UhMWak4os
	yzUKo1M2ogpgUFZdkxWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH6Vf-0000kI-KJ; Wed, 25 Mar 2020 13:55:55 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH6VH-0000bn-Jd
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 13:55:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C25DDFEC;
 Wed, 25 Mar 2020 06:55:29 -0700 (PDT)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 445B83F71E;
 Wed, 25 Mar 2020 06:55:29 -0700 (PDT)
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Eric Biggers <ebiggers@google.com>, Ard Biesheuvel <ardb@kernel.org>
Subject: [PATCH 1/2] arm64: crypto: Consistently enable extension
Date: Wed, 25 Mar 2020 13:55:21 +0000
Message-Id: <20200325135522.7782-2-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200325135522.7782-1-broonie@kernel.org>
References: <20200325135522.7782-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_065531_685510_81702D7E 
X-CRM114-Status: GOOD (  10.91  )
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

Currently most of the crypto files enable the crypto extension using the
.arch directive but crct10dif-ce-core.S uses .cpu instead. Move that over
to .arch for consistency.

Signed-off-by: Mark Brown <broonie@kernel.org>
---
 arch/arm64/crypto/crct10dif-ce-core.S | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/crypto/crct10dif-ce-core.S b/arch/arm64/crypto/crct10dif-ce-core.S
index 5a95c2628fbf..111d9c9abddd 100644
--- a/arch/arm64/crypto/crct10dif-ce-core.S
+++ b/arch/arm64/crypto/crct10dif-ce-core.S
@@ -66,7 +66,7 @@
 #include <asm/assembler.h>
 
 	.text
-	.cpu		generic+crypto
+	.arch		armv8-a+crypto
 
 	init_crc	.req	w19
 	buf		.req	x20
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
