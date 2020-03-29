Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C986819704C
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Mar 2020 22:33:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UAn1ke8Nn/SuFBjDpPk64lNRiWimdVMJGmys6eOC/Dw=; b=dcyCUfj+jO5da2
	UOsRFftpvaIKvFrA9I7wy0Uy14lIBWoqPVQsOl90AvW87saCBGg3ANdnDm17tjHEBfypdP2EbC67z
	Oprju7w+4Rb0LMVS5bebwqeFLo3EaMqxpMrOVnz4lbPhfmMWoukaOnMKuI46rXWV4fzbyB3H/LBCj
	eR6sYDh9DqYD0vFpH3kSi8s+7fzWc8VvSP/xA9eA40xgnKvuV1vqZkulusT1L6IwdDWvrIFzDC5d9
	E87A/j5ISz4mOOw86zurpNY5Au0qbNxPFQT+2sq0kRCkx6Y5xpgfHhjIhB1i+iqnJvYg3pcOjSn7B
	22wom8yZj9+YWUAzowIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIecb-0002q9-56; Sun, 29 Mar 2020 20:33:29 +0000
Received: from mail.kmu-office.ch ([2a02:418:6a02::a2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIecS-0002oz-3J
 for linux-arm-kernel@lists.infradead.org; Sun, 29 Mar 2020 20:33:21 +0000
Received: from zyt.lan (unknown [IPv6:2a02:169:3df5::564])
 by mail.kmu-office.ch (Postfix) with ESMTPSA id 31BFD5C0208;
 Sun, 29 Mar 2020 22:33:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=agner.ch; s=dkim;
 t=1585513997;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:
 content-transfer-encoding:content-transfer-encoding:in-reply-to:
 references; bh=WMqksSgxVOthWzaH63j2MuQI5jeE8U6IXhHfj4YbpXI=;
 b=yHWrWNpJUOPcgE+eGxUW0uIkdkKgg+ZAMnJpyS+wLPZ3FC6LWIVx+8d5ANApGyLOvsbMd/
 JrGNWDN2sbHPxUoxIhppR4cQ3MfIpdLT1lyeJEU25HGo+crkf35tMj5gHqIbSoFke3kPOP
 6rh5HcfsftSGTs4wV7BrK906IpepgB0=
From: Stefan Agner <stefan@agner.ch>
To: tony@atomide.com
Subject: [PATCH] ARM: OMAP2+: drop unnecessary adrl
Date: Sun, 29 Mar 2020 22:33:14 +0200
Message-Id: <5a6807f19fd69f2de6622c794639cc5d70b9563a.1585513949.git.stefan@agner.ch>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Spam: Yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200329_133320_291069_9D697DF9 
X-CRM114-Status: GOOD (  10.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux@armlinux.org.uk, Stefan Agner <stefan@agner.ch>,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The adrl instruction has been introduced with commit dd31394779aa ("ARM:
omap3: Thumb-2 compatibility for sleep34xx.S"), back when this assembly
file was considerably longer. Today adr seems to have enough reach, even
when inserting about 60 instructions between the use site and the label.
Replace adrl with conventional adr instruction.

This allows to build this file using Clang's integrated assembler (which
does not support the adrl pseudo instruction).

Link: https://github.com/ClangBuiltLinux/linux/issues/430
Signed-off-by: Stefan Agner <stefan@agner.ch>
---
 arch/arm/mach-omap2/sleep34xx.S | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-omap2/sleep34xx.S b/arch/arm/mach-omap2/sleep34xx.S
index ac1324c6453b..c4e97d35c310 100644
--- a/arch/arm/mach-omap2/sleep34xx.S
+++ b/arch/arm/mach-omap2/sleep34xx.S
@@ -72,7 +72,7 @@ ENTRY(enable_omap3630_toggle_l2_on_restore)
 	stmfd	sp!, {lr}	@ save registers on stack
 	/* Setup so that we will disable and enable l2 */
 	mov	r1, #0x1
-	adrl	r3, l2dis_3630_offset	@ may be too distant for plain adr
+	adr	r3, l2dis_3630_offset
 	ldr	r2, [r3]		@ value for offset
 	str	r1, [r2, r3]		@ write to l2dis_3630
 	ldmfd	sp!, {pc}	@ restore regs and return
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
