Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A72F81640AB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 10:44:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8IvLRb37gLzeBc9lblsJWNXBE7Q8VWxOeyFW+Ig70CA=; b=KvzhoKx9lH3ZlLTEh/IsjKYdEa
	bKSjtyUN5+w3DzgrGhPztuZAdBnAJjZ0iPIB4YaL5xIWAN7eODm9T1LN1HoSWamWExRcpbobtufE2
	aNo0KAWjwViLu+G2rzZoKSJIQ9wsBJEZodd9yx9BzyvLpSEd/Y4mg1/xKFqsEcBeeP0PLoCVbQkyX
	X1/0Ze1qkTSsiYbwNmWgSTcwnuvZy5uLPYv/H6LYa5TKsUMb4hjW31LS1I36jMJZA1AaAh+qENTq6
	7w0Yez8KItlmUGrfQiI81ivIVEq+UZluvRQjuTR3rGaX1NwV1jD0wq4NgXWrFo38Sk0s2HBJJoyg4
	6LjB9b1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4LuE-0002K8-UQ; Wed, 19 Feb 2020 09:44:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4LtY-0001wG-Nq
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 09:43:54 +0000
Received: from e123331-lin.home
 (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D563F24673;
 Wed, 19 Feb 2020 09:43:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582105432;
 bh=lFzKo6clSyD9Mf7ZXBNhtebcK98cxJK95ASmc7qCv0A=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=F9Q+7DQ1awwTlQX09DLd8nNQb5ZjSnu+WpmzHjy4nZvjaCi2xkMZtt9CQZ/iInqdf
 LMjgojxE/VsHoeND4tW+uiVOZAL7IRCXt+nv42rA4apeUiqN4v09RaoOLOHU8AS90H
 0gl4230tZ79ryLkkvlJNmq9Fv7pIhI3GYZGyJFPE=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-efi@vger.kernel.org
Subject: [PATCH v2 2/4] efi/arm: pass start and end addresses to
 cache_clean_flush()
Date: Wed, 19 Feb 2020 10:43:38 +0100
Message-Id: <20200219094340.16597-3-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200219094340.16597-1-ardb@kernel.org>
References: <20200219094340.16597-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_014352_793304_60D80F1C 
X-CRM114-Status: UNSURE (   9.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Nicolas Pitre <nico@fluxnic.net>, Tony Lindgren <tony@atomide.com>,
 Marc Zyngier <maz@kernel.org>, Russell King <linux@armlinux.org.uk>,
 Catalin Marinas <catalin.marinas@arm.com>, Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In preparation for turning the decompressor's cache clean/flush
operations into proper by-VA maintenance for v7 cores, pass the
start and end addresses of the regions that need cache maintenance
into cache_clean_flush in registers r0 and r1.

Currently, all implementations of cache_clean_flush ignore these
values, so no functional change is expected as a result of this
patch.

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 arch/arm/boot/compressed/head.S | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm/boot/compressed/head.S b/arch/arm/boot/compressed/head.S
index 6c98d3d2de2f..c11b1b0a3ac6 100644
--- a/arch/arm/boot/compressed/head.S
+++ b/arch/arm/boot/compressed/head.S
@@ -1460,6 +1460,13 @@ ENTRY(efi_stub_entry)
 
 		@ Preserve return value of efi_entry() in r4
 		mov	r4, r0
+		add	r1, r4, #SZ_2M			@ DT end
+		bl	cache_clean_flush
+
+		ldr	r0, [sp]			@ relocated zImage
+		adr	r2, __edata
+		ldr	r1, [r2]
+		add	r1, r1, r2			@ end of image
 		bl	cache_clean_flush
 
 		@ The PE/COFF loader might not have cleaned the code we are
@@ -1489,6 +1496,8 @@ efi_load_fail:
 		ldr	r0, =0x80000001
 		ldmfd	sp!, {ip, pc}
 ENDPROC(efi_stub_entry)
+		.align	2
+__edata:	.long	_edata - .
 #endif
 
 		.align
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
