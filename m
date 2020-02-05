Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACB23153B95
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 00:04:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4Pikwel3Ei400gMdRywJSKZM19PhPhSIHz2Qy+doqkI=; b=HMPOmRWd7YhOEJ
	jCtBBtYYphSxJiHJoJskxZwGEkMbIqLfwDRc2hpNjQBPhrva1oWHBL4DWnkTtOWh3ckn3PECtwoVT
	tdNINlx3aH+Tpd20PBwLFAPKLxciE/QMiK8ArkHdUEP6ezf0UbfnwhVmq3Cb8DokQSiIc3r4eWVGx
	dAE92mSYnEy8GgQWJnDCuXGK++MZUR/ewnpTc9h64ScUljgxRRFOuyULfegl1dO0eCq+JgHfN4Nyg
	KdI6/3nXNBCqmpo0htOJ2WJ1ia/xR4M8V1lqY4uR6d7wraB98aYoP55F5leVAXvaICZuG9hUxsrfO
	sR7GwZ06JrueRv1uVk3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izTii-00025k-PZ; Wed, 05 Feb 2020 23:04:32 +0000
Received: from mail.kmu-office.ch ([2a02:418:6a02::a2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izTic-00025R-IE
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Feb 2020 23:04:28 +0000
Received: from zyt.lan (unknown [IPv6:2a02:169:3df5::564])
 by mail.kmu-office.ch (Postfix) with ESMTPSA id E61CB5C406B;
 Thu,  6 Feb 2020 00:04:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=agner.ch; s=dkim;
 t=1580943862;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:
 content-transfer-encoding:content-transfer-encoding:in-reply-to:
 references; bh=DZNuiK7w/00m3I4pnoL0TtavGvcrDZzYn/LYhbpeC6M=;
 b=DlC/YWxi1nm6AhayCHoS4PbhS1UfiJVXuV/UooWr/VCYqzfV8mgqmpUzDw+AtiRIbkgmEb
 89WbQG0Uzi1j7zI9lSm5F1NtrGq4XtdQkvUWVmO+nGs5WxD6U+vvslVCiSlzR6/vOg0HqW
 wV3eU01xQU7yEBLrNNN92VWNmycp23A=
From: Stefan Agner <stefan@agner.ch>
To: linux@armlinux.org.uk
Subject: [PATCH] ARM: kexec: drop invalid assembly argument
Date: Wed,  5 Feb 2020 23:59:26 +0100
Message-Id: <ab67c7c5a1f96af6d22240e57fc27ba766d4193d.1580943526.git.stefan@agner.ch>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_150426_749805_28E63DEC 
X-CRM114-Status: GOOD (  11.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: clang-built-linux@googlegroups.com, Stefan Agner <stefan@agner.ch>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The tst menomic has only a single #<const> argument in Thumb mode. There
is an ARM variant which allows to write #<const> as #<byte>, #<rot>
which probably is where the current syntax comes from.

It seems that binutils does not care about the additional parameter.
Clang however complains in Thumb2 mode:
arch/arm/kernel/relocate_kernel.S:28:12: error: too many operands for
instruction
 tst r3,#1,0
           ^

Drop the unnecessary parameter. This fixes building this file in Thumb2
mode with the Clang integrated assembler.

Link: https://github.com/ClangBuiltLinux/linux/issues/770
Signed-off-by: Stefan Agner <stefan@agner.ch>
---
 arch/arm/kernel/relocate_kernel.S | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/kernel/relocate_kernel.S b/arch/arm/kernel/relocate_kernel.S
index 7eaa2ae7aff5..72a08786e16e 100644
--- a/arch/arm/kernel/relocate_kernel.S
+++ b/arch/arm/kernel/relocate_kernel.S
@@ -25,26 +25,26 @@ ENTRY(relocate_new_kernel)
 	ldr	r3, [r0],#4
 
 	/* Is it a destination page. Put destination address to r4 */
-	tst	r3,#1,0
+	tst	r3,#1
 	beq	1f
 	bic	r4,r3,#1
 	b	0b
 1:
 	/* Is it an indirection page */
-	tst	r3,#2,0
+	tst	r3,#2
 	beq	1f
 	bic	r0,r3,#2
 	b	0b
 1:
 
 	/* are we done ? */
-	tst	r3,#4,0
+	tst	r3,#4
 	beq	1f
 	b	2f
 
 1:
 	/* is it source ? */
-	tst	r3,#8,0
+	tst	r3,#8
 	beq	0b
 	bic r3,r3,#8
 	mov r6,#1024
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
