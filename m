Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63FDD1DA05F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 21:03:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kWbkQ4YhEy6BRbqI+X5s0sQkG1ifFBpar5dIFpDpQ/0=; b=A8y7Ik2d0GuMLC
	A4QYPErwHHaozJE+zJiPhTwjllXqSyYMdIN8Ai5GxtD/msjGxQE2O9VvSAj7Bbrtj/7g5fYroNhlE
	o6U9MgRHz6hADk4pVYyuAW8y6scX+zT6Jp+HlHI3JY7jyuoeqjzULLooPPIFA7Ux+7edbPalU1y6f
	wPrwvgzQA8IAlET8kMNEYb3E6Wh2BTsKeZW1CWYhzLnEUWO2MB3DwYsbk8Eyg7AHJgGCArXJr7kfZ
	bnTMIJrWzdPFolV5fGTJzoAGx9NYPkish6FYlPln1mNqv6+CMBfXL9Zq6TsnjCyAxEhC8nws2SU12
	uCo/5q+uJFaVPP31kyeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb7Vz-0007jz-St; Tue, 19 May 2020 19:03:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb7VK-0007In-RE
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 19:02:24 +0000
Received: from localhost.localdomain
 (laubervilliers-657-1-83-120.w92-154.abo.wanadoo.fr [92.154.90.120])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 82FB320826;
 Tue, 19 May 2020 19:02:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589914938;
 bh=Zs8ZcaZn3yzoZ78qRvdow83AlNV03guZups6sihCi3Y=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ZVHmE2yDqsvYOHDU76sZE25eHDVSFCMl88lzPtimcEnNUhiJ9jvSVrod01iqVG6FJ
 VU9EMswJEBBpOEzub82Z0lkKpIf4pnXOV8FM3re2nCzv07gtW9YfYQqFLmVQ2uG+zB
 yh/fcrxjokDmmYvqzOp9SpoiJTfkl6Udt4IUoZYk=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-crypto@vger.kernel.org
Subject: [RFC/RFT PATCH 1/2] crypto: arm64/aes - align output IV with generic
 CBC-CTS driver
Date: Tue, 19 May 2020 21:02:10 +0200
Message-Id: <20200519190211.76855-2-ardb@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200519190211.76855-1-ardb@kernel.org>
References: <20200519190211.76855-1-ardb@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_120222_039342_632BEADA 
X-CRM114-Status: GOOD (  11.96  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: ebiggers@kernel.org, Stephan Mueller <smueller@chronox.de>,
 Ard Biesheuvel <ardb@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The generic CTS chaining mode wraps the CBC mode driver in a way that
results in the IV buffer referenced by the skcipher request to be
updated with the last block of ciphertext. The arm64 implementation
deviates from this, given that CTS itself does not specify the concept
of an output IV, or how it should be generated, and so it was assumed
that the output IV does not matter.

However, Stephan reports that code exists that relies on this behavior,
and that there is even a NIST validation tool that flags it as
non-compliant [citation needed. Stephan?]

So let's align with the generic implementation here, and return the
penultimate block of ciphertext as the output IV.

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 arch/arm64/crypto/aes-modes.S | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/crypto/aes-modes.S b/arch/arm64/crypto/aes-modes.S
index cf618d8f6cec..80832464df50 100644
--- a/arch/arm64/crypto/aes-modes.S
+++ b/arch/arm64/crypto/aes-modes.S
@@ -275,6 +275,7 @@ AES_FUNC_START(aes_cbc_cts_encrypt)
 	add		x4, x0, x4
 	st1		{v0.16b}, [x4]			/* overlapping stores */
 	st1		{v1.16b}, [x0]
+	st1		{v1.16b}, [x5]
 	ret
 AES_FUNC_END(aes_cbc_cts_encrypt)
 
@@ -291,6 +292,7 @@ AES_FUNC_START(aes_cbc_cts_decrypt)
 	ld1		{v1.16b}, [x1]
 
 	ld1		{v5.16b}, [x5]			/* get iv */
+	st1		{v0.16b}, [x5]
 	dec_prepare	w3, x2, x6
 
 	decrypt_block	v0, w3, x2, x6, w7
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
