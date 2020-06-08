Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5985B1F25E1
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 01:35:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zo5auW5HWvlZoWPTgQHCs6+z7fzGkpgR32bH/m4t/U8=; b=qIcZqqFyErc3On
	kMrzf7RoIFkr8dWQ8e1cxTnbPGLu+yf/UpONa27BSJkzHx5xU124fN3gR2YDEEO28DgNYooC9dzS7
	b7SwFnHyOtYKjGWUafUqlXqKOYcEOzw58iK1ijV/vBHwSz+8ecpltmsMlxB9giYG0O6jIceklIIfA
	Ccl4w5XkQYr1XbGeLPVbNsH0ZJzGavcVf0Kdl/kDfu6QvyCbD8olmm9tlUZWFamiOSGyZ45qkcL1M
	vASq1bgou7sURbWxR3elrfEKpGMSqG/hqSG9CEHGVvLnes2iG5ZoLMGBomwnbSZYHIuYW0luUxtw5
	JefbZsroM3JeUNfa1TAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiRIB-00018x-Ao; Mon, 08 Jun 2020 23:34:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiR20-0004kf-FX
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 23:18:19 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 643162088E;
 Mon,  8 Jun 2020 23:18:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591658296;
 bh=4MGp3GhSPRW69gWgo1kGqYevai5ODOUvvSzkzf6cRa4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=JjL78svF+OXpefNn6lMuyKORGsyuLI2/Wv9pWgYxPj7Rly14Jh2JNfV9cnNg5vTIc
 L5s/Uo8wno69jAlFwv6V2w4Vtf5jYtdvzvemdKuXtrE7/DaBOUhntRqV4RO+VIWO+k
 3AeXH89UbBqNFjfypkNYKZafIbjLeWnuskccksTU=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.6 299/606] ARM: uaccess: integrate uaccess_save and
 uaccess_restore
Date: Mon,  8 Jun 2020 19:07:04 -0400
Message-Id: <20200608231211.3363633-299-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200608231211.3363633-1-sashal@kernel.org>
References: <20200608231211.3363633-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_161816_542563_2D9CAE8D 
X-CRM114-Status: UNSURE (   9.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sasha Levin <sashal@kernel.org>, Russell King <rmk+kernel@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Russell King <rmk+kernel@armlinux.org.uk>

[ Upstream commit 8ede890b0bcebe8c760aacfe20e934d98c3dc6aa ]

Integrate uaccess_save / uaccess_restore macros into the new
uaccess_entry / uaccess_exit macros respectively.

Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/include/asm/uaccess-asm.h | 30 +++++++++++++-----------------
 1 file changed, 13 insertions(+), 17 deletions(-)

diff --git a/arch/arm/include/asm/uaccess-asm.h b/arch/arm/include/asm/uaccess-asm.h
index d475e3e8145d..e46468b91eaa 100644
--- a/arch/arm/include/asm/uaccess-asm.h
+++ b/arch/arm/include/asm/uaccess-asm.h
@@ -67,30 +67,23 @@
 #endif
 	.endm
 
-	.macro	uaccess_save, tmp
 #ifdef CONFIG_CPU_SW_DOMAIN_PAN
-	mrc	p15, 0, \tmp, c3, c0, 0
-	str	\tmp, [sp, #SVC_DACR]
-#endif
-	.endm
-
-	.macro	uaccess_restore
-#ifdef CONFIG_CPU_SW_DOMAIN_PAN
-	ldr	r0, [sp, #SVC_DACR]
-	mcr	p15, 0, r0, c3, c0, 0
+#define DACR(x...)	x
+#else
+#define DACR(x...)
 #endif
-	.endm
 
 	/*
 	 * Save the address limit on entry to a privileged exception and
 	 * if using PAN, save and disable usermode access.
 	 */
 	.macro	uaccess_entry, tsk, tmp0, tmp1, tmp2, disable
-	ldr	\tmp0, [\tsk, #TI_ADDR_LIMIT]
-	mov	\tmp1, #TASK_SIZE
-	str	\tmp1, [\tsk, #TI_ADDR_LIMIT]
-	str	\tmp0, [sp, #SVC_ADDR_LIMIT]
-	uaccess_save \tmp0
+	ldr	\tmp1, [\tsk, #TI_ADDR_LIMIT]
+	mov	\tmp2, #TASK_SIZE
+	str	\tmp2, [\tsk, #TI_ADDR_LIMIT]
+ DACR(	mrc	p15, 0, \tmp0, c3, c0, 0)
+ DACR(	str	\tmp0, [sp, #SVC_DACR])
+	str	\tmp1, [sp, #SVC_ADDR_LIMIT]
 	.if \disable
 	uaccess_disable \tmp0
 	.endif
@@ -99,8 +92,11 @@
 	/* Restore the user access state previously saved by uaccess_entry */
 	.macro	uaccess_exit, tsk, tmp0, tmp1
 	ldr	\tmp1, [sp, #SVC_ADDR_LIMIT]
-	uaccess_restore
+ DACR(	ldr	\tmp0, [sp, #SVC_DACR])
 	str	\tmp1, [\tsk, #TI_ADDR_LIMIT]
+ DACR(	mcr	p15, 0, \tmp0, c3, c0, 0)
 	.endm
 
+#undef DACR
+
 #endif /* __ASM_UACCESS_ASM_H__ */
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
