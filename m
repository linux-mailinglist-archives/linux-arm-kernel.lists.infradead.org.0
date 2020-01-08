Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE5401348AB
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 17:58:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HHCLdG8SE2IHW2fXStUaZ0sI8Tzew8T6MGaA5KeXmKk=; b=l0EoGCeyzH1Wgu
	TdShdTwzQqapLMj31MGWX0beb7O8s21gl22Ov1c3yVAw/TF3EwLTTwnIbYDP8oSyncgqmvT4i9KSn
	M9GXr0h5VEWcwEwcF+MDmYvIGkt1aoBIoNjyBylqQIN23+88QriCtjxW6gitmku+7yMpDXPdT8r6l
	WGkB5ZS3xq8zzaqhObLPdN9y/PywOPlhUZZ8cuvpANsJWApBrSB1cWAhzPag+xu8n3S+ntWN/81hr
	9z8mjvS7hDrkAnSd/NJDjMTFFQh8eQ8bwnx24aG6a8KrjGVmQ9Fi3UwZStbbhi78NEHFK4A0KX23i
	BVCJUsDt+tP892DeSDBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipEek-0000D8-G3; Wed, 08 Jan 2020 16:58:06 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipEeb-0000CW-Sc
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 16:57:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 919CA1FB;
 Wed,  8 Jan 2020 08:57:55 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EFD253F534;
 Wed,  8 Jan 2020 08:57:54 -0800 (PST)
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>
Subject: [PATCH] arm64: asm: Remove ENDPIPROC()
Date: Wed,  8 Jan 2020 16:57:52 +0000
Message-Id: <20200108165752.22043-1-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_085757_965390_7F2D7D98 
X-CRM114-Status: UNSURE (   7.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Brown <broonie@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now all the users have been removed delete the definition of ENDPIPROC()
to ensure we don't acquire any new users.

Signed-off-by: Mark Brown <broonie@kernel.org>
---

For the for-next/asm-annotations branch.

 arch/arm64/include/asm/assembler.h | 11 -----------
 1 file changed, 11 deletions(-)

diff --git a/arch/arm64/include/asm/assembler.h b/arch/arm64/include/asm/assembler.h
index 2cc0dd8bd9f7..24f590095273 100644
--- a/arch/arm64/include/asm/assembler.h
+++ b/arch/arm64/include/asm/assembler.h
@@ -461,17 +461,6 @@ USER(\label, ic	ivau, \tmp2)			// invalidate I line PoU
 	b.ne	9998b
 	.endm
 
-/*
- * Annotate a function as position independent, i.e., safe to be called before
- * the kernel virtual mapping is activated.
- */
-#define ENDPIPROC(x)			\
-	.globl	__pi_##x;		\
-	.type 	__pi_##x, %function;	\
-	.set	__pi_##x, x;		\
-	.size	__pi_##x, . - x;	\
-	ENDPROC(x)
-
 /*
  * Annotate a function as being unsuitable for kprobes.
  */
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
