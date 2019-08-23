Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 079B49B26E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 16:50:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=dbmHUSbP09We7006vrDz3ITp54mfimeA+1U7b580VH8=; b=bgO
	C8YU4GBQiEVG1BDanI2C/m8emhkMX+DqhaO/pewTCv/iOgXna0fUjCU58zuWdTbp1LpUuaOIE7dog
	eHk2ZfmIz8oYbQbzjAjAbwm/+h06kRKlLk8xejRnqqeUYyQQIw0h9q04OhVW7Lqv4jm8UaMxfSNf8
	gt+T58pMKq+toqhhTzCGCMVLsPN4Q6ZNU7+gYqr3lr9LTCpgWD4ggh7ab4QBc0XVrCMrrYuBu5NtB
	KrsJZJkWkgH8udgjy3V2ew/ZhELyzeqbX5J7JoSwZM4EdOFgZV44aJcz37p37HzYdWz2EhTrR4fws
	u+WxFLWMSXf1aoa+85zAi8P0o80Mpxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1AtZ-0000YC-4O; Fri, 23 Aug 2019 14:50:29 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i1AtT-0000Xv-3j
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 14:50:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 14C2028;
 Fri, 23 Aug 2019 07:50:22 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 73C423F718;
 Fri, 23 Aug 2019 07:50:21 -0700 (PDT)
From: Will Deacon <will@kernel.org>
To: mark.rutland@arm.com
Subject: [BOOTWRAPPER PATCH] Enable TME for lower exception levels
Date: Fri, 23 Aug 2019 15:50:15 +0100
Message-Id: <20190823145015.15974-1-will@kernel.org>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_075023_197041_0EB2AD1F 
X-CRM114-Status: UNSURE (   7.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

By default, TME is not available to exception levels below EL3, so
enable it in SCR_EL3 if we detect that it is implemented.

Signed-off-by: Will Deacon <will@kernel.org>
---
 arch/aarch64/boot.S | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/aarch64/boot.S b/arch/aarch64/boot.S
index 74705cded338..c2fe92c90297 100644
--- a/arch/aarch64/boot.S
+++ b/arch/aarch64/boot.S
@@ -48,6 +48,13 @@ _start:
 	orr	x0, x0, #(1 << 16)		// AP key enable
 	orr	x0, x0, #(1 << 17)		// AP insn enable
 1:
+	/* Enable TME if present */
+	mrs	x1, id_aa64isar0_el1
+	ubfx	x1, x1, #24, #4
+	cbz	x1, 1f
+
+	orr	x0, x0, #(1 << 34)		// TME enable
+1:
 #ifndef KERNEL_32
 	orr	x0, x0, #(1 << 10)		// 64-bit EL2
 #endif
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
