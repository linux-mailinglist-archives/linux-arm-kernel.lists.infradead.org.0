Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D7981A897C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 20:27:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vSjPoxSWq+O2ZhO7xNKZHqIkVkfY3i9sdGYJjC68NAE=; b=INAfoMGhCgmEaw
	t24pERuvnTbSrZb8Pchv4zCNnCnss/4/0/arxVRRVzvS07MZFSsHv0APjwbDi0Hxj4LW/6zbZg35a
	uifVmIRJzadQIb5KWx+Y5xFhZ7KplNxajvKVcaRbJapyBMvAPnWIKf7tzFh6u6p3nSuewNrA7dyG6
	E4X2kQHVGKOeL15La0FJs5WZE9QSiON0heDcIuJghGiVdR6GJ6mFM4Y2ExtjgFpwcUBhsJyVnCL86
	/kvFXlc//ym1qHjDUxs2zuhy3YZm1fVcpBhuuMGZQbQvUFZ+4f+cxsQb9CHNHvDI96OF1yEOtBU3/
	todUh5uw5oNH2dsvELkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOQHl-0005iG-Ms; Tue, 14 Apr 2020 18:27:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOQHf-0005gy-1j
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 18:27:44 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B571720575;
 Tue, 14 Apr 2020 18:27:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586888861;
 bh=II9cIOZWJLtVUfA3Wn84rFv20L4RhCPUPQs7AdZJdNw=;
 h=From:To:Cc:Subject:Date:From;
 b=ynDT8kVAu4ibkwvAgPhVdwsIuPurL9Td552Zm9fQ3zO/drYH887WalclZKd8dK2/X
 //4lfp/f7BDOXUZxp/ojwu9tEzu5vCK15r+zTypUsCEYN6CFYu33NIZ+Ld3HZmfVPR
 cY64/B/gKfzH3krhFRmDHM2yPjFIsr/dgMEc2TgA=
From: Mark Brown <broonie@kernel.org>
To: Herbert Xu <herbert@gondor.apana.org.au>,
 "David S . Miller" <davem@davemloft.net>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Subject: [PATCH] arm64: crypto: Consistently enable extension
Date: Tue, 14 Apr 2020 19:20:08 +0100
Message-Id: <20200414182008.31417-1-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_112743_107244_E6B0CB93 
X-CRM114-Status: GOOD (  10.39  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 linux-arm-kernel@lists.infradead.org, Ard Biesheuvel <ardb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently most of the crypto files enable the crypto extension using the
.arch directive but crct10dif-ce-core.S uses .cpu instead. Move that over
to .arch for consistency.

Signed-off-by: Mark Brown <broonie@kernel.org>
Acked-by: Ard Biesheuvel <ardb@kernel.org>
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
