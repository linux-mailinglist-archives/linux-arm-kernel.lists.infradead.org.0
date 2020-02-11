Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1511A158E55
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 13:21:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MuQ65hUTsbd711qq4vIRWhjxk4Vn/EmeiPN1TGk5nCg=; b=F/4XC5AkopvjT5
	PDRglxIK3vP7VD1bj+LTvoqFBrBsWf/BtOOkOBTMTMS6hzLP79VxYCoveA05Fhw49R0Wokuj2CpU8
	0XJLQhqtpfbDws0i1pzuLCMwlzMPithTqsc73xfb/mO3LivgEF9QyUudhgZQGbec7gowu5f8MfvaC
	J32mmFD9rLXoB36mrzpXTwgXXNxw9Ez6uu1GA1SpDjUcVUQ42+lOA6zJtxRNC8FZPbmhkC5IucxsP
	rZGfhizfWO2c2HScGdlIoJALfmN8CxkBttcKAO1QHOl2QIMokt23//a7VD0u1QqYPAOmHfOAj9Jq5
	9Wv09+K/8eaFMUCg+Dkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1UXO-0000PY-FF; Tue, 11 Feb 2020 12:21:10 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1UXH-0000MI-B0
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 12:21:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7E04D1FB;
 Tue, 11 Feb 2020 04:21:00 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 022603F6CF;
 Tue, 11 Feb 2020 04:20:59 -0800 (PST)
From: Mark Brown <broonie@kernel.org>
To: Herbert Xu <herbert@gondor.apana.org.au>,
 "David S. Miller" <davem@davemloft.net>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Subject: [PATCH 1/2] arm64: crypto: Modernize some extra assembly annotations
Date: Tue, 11 Feb 2020 12:20:52 +0000
Message-Id: <20200211122053.6079-1-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_042103_424468_A3A1FDB2 
X-CRM114-Status: UNSURE (   8.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Brown <broonie@kernel.org>, linux-crypto@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Ard Biesheuvel <ardb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A couple of functions were missed in the modernisation of assembly macros,
update them too.

Signed-off-by: Mark Brown <broonie@kernel.org>
Reviewed-by: Ard Biesheuvel <ardb@kernel.org>
---
 arch/arm64/crypto/ghash-ce-core.S | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/crypto/ghash-ce-core.S b/arch/arm64/crypto/ghash-ce-core.S
index 084c6a30b03a..6b958dcdf136 100644
--- a/arch/arm64/crypto/ghash-ce-core.S
+++ b/arch/arm64/crypto/ghash-ce-core.S
@@ -587,20 +587,20 @@ CPU_LE(	rev		w8, w8		)
 	 *			  struct ghash_key const *k, u64 dg[], u8 ctr[],
 	 *			  int rounds, u8 tag)
 	 */
-ENTRY(pmull_gcm_encrypt)
+SYM_FUNC_START(pmull_gcm_encrypt)
 	pmull_gcm_do_crypt	1
-ENDPROC(pmull_gcm_encrypt)
+SYM_FUNC_END(pmull_gcm_encrypt)
 
 	/*
 	 * void pmull_gcm_decrypt(int blocks, u8 dst[], const u8 src[],
 	 *			  struct ghash_key const *k, u64 dg[], u8 ctr[],
 	 *			  int rounds, u8 tag)
 	 */
-ENTRY(pmull_gcm_decrypt)
+SYM_FUNC_START(pmull_gcm_decrypt)
 	pmull_gcm_do_crypt	0
-ENDPROC(pmull_gcm_decrypt)
+SYM_FUNC_END(pmull_gcm_decrypt)
 
-pmull_gcm_ghash_4x:
+SYM_FUNC_START_LOCAL(pmull_gcm_ghash_4x)
 	movi		MASK.16b, #0xe1
 	shl		MASK.2d, MASK.2d, #57
 
@@ -681,9 +681,9 @@ pmull_gcm_ghash_4x:
 	eor		XL.16b, XL.16b, T2.16b
 
 	ret
-ENDPROC(pmull_gcm_ghash_4x)
+SYM_FUNC_END(pmull_gcm_ghash_4x)
 
-pmull_gcm_enc_4x:
+SYM_FUNC_START_LOCAL(pmull_gcm_enc_4x)
 	ld1		{KS0.16b}, [x5]			// load upper counter
 	sub		w10, w8, #4
 	sub		w11, w8, #3
@@ -746,7 +746,7 @@ pmull_gcm_enc_4x:
 	eor		INP3.16b, INP3.16b, KS3.16b
 
 	ret
-ENDPROC(pmull_gcm_enc_4x)
+SYM_FUNC_END(pmull_gcm_enc_4x)
 
 	.section	".rodata", "a"
 	.align		6
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
