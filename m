Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD5DE16311F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 20:59:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MuQ65hUTsbd711qq4vIRWhjxk4Vn/EmeiPN1TGk5nCg=; b=SDpVlyNT/CyX8o
	4qDICkeYGcXeMk0BlUIldu/3PFFDsOCNMkDbG9qPFMrOAe/BL7tUeF1xuDOgW8mM4rMTf9gQt9mXS
	rWp6kXSST5glTevsnw6JEcFXc3unbM23HD2dhbXvvBS3VAB+hf3BHqSBYK6dHUM4IdQa0A7PVGzLV
	ZtqtInz0IopMDqRoy1vknb0JvD6bNky4DurO4fpEN0Z4WOomHAV2sJL5dz2NnQ/bpbXlHc0/6Xl0w
	PQqVR6bJAaf2pfVEsYXkGfBMAj+8XPcwJFCYB/ylv3wfKtjqMrPaKUhZJAbl9I6RfDo/yqwfW2hte
	LqMrHPW+yYsADxV0whkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j491u-0005ij-7H; Tue, 18 Feb 2020 19:59:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j491F-0005RL-WF
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 19:58:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 241B4FEC;
 Tue, 18 Feb 2020 11:58:56 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 98B4F3F68F;
 Tue, 18 Feb 2020 11:58:55 -0800 (PST)
From: Mark Brown <broonie@kernel.org>
To: Herbert Xu <herbert@gondor.apana.org.au>,
 "David S. Miller" <davem@davemloft.net>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Marc Zyngier <maz@kernel.org>, James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: [PATCH 01/18] arm64: crypto: Modernize some extra assembly annotations
Date: Tue, 18 Feb 2020 19:58:25 +0000
Message-Id: <20200218195842.34156-2-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200218195842.34156-1-broonie@kernel.org>
References: <20200218195842.34156-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_115858_078807_1E15BDFF 
X-CRM114-Status: UNSURE (   8.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Ard Biesheuvel <ardb@kernel.org>, Mark Brown <broonie@kernel.org>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org
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
