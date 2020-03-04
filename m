Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51EE1178D87
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 10:36:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lYgi+lluFrZHLaD/102HlkoaXZ6WjXGkCNEtsxv1ln0=; b=sFuWeuy1D/icrU
	Jzl7VY5DLnKx9pnq063X4iwbm6oSS6CkcUp+2kp4ejJkIonOx3ftQVy+06nZ9vrmmoePGuCPgppDe
	5qTODUG8nv/nsD1wcQkA/OIaTOYnH6gGzX4+6M5KwZvJu5twicp4Lhegf3w+VXs+Z/KE9earBHoVY
	4+lUE9YA5lPR62jijT0QYtkXryvAZQ6f0HgtJi2vWGbpKkTIF9MfFZqoiKcMWGTu221qDqU//b1W4
	ymKoT/4w41e6Zd5jUk0q96ZZVm1iUWSsMDCJ0NDCM3zahdSQZuIuZxf+BUgBNyIMC69LslwCfSwL9
	1n7IfxlQChhtOSKuXVMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9QRa-0006pM-DV; Wed, 04 Mar 2020 09:35:58 +0000
Received: from poy.remlab.net ([2001:41d0:2:5a1a::]
 helo=ns207790.ip-94-23-215.eu)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9QRP-0006oT-Nl
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Mar 2020 09:35:50 +0000
Received: from basile.remlab.net (ip6-localhost [IPv6:::1])
 by ns207790.ip-94-23-215.eu (Postfix) with ESMTP id B2C4F5FBB0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed,  4 Mar 2020 10:35:46 +0100 (CET)
From: =?UTF-8?q?R=C3=A9mi=20Denis-Courmont?= <remi@remlab.net>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: remove gratuitious/stray .ltorg stanzas
Date: Wed,  4 Mar 2020 11:35:46 +0200
Message-Id: <20200304093546.191052-1-remi@remlab.net>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_013549_256590_D204A55B 
X-CRM114-Status: UNSURE (   8.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Remi Denis-Courmont <remi.denis.courmont@huawei.com>

There are no applicable literals above them.

Signed-off-by: Remi Denis-Courmont <remi.denis.courmont@huawei.com>
---
 arch/arm64/kernel/head.S          | 1 -
 arch/arm64/kernel/hibernate-asm.S | 2 --
 2 files changed, 3 deletions(-)

diff --git a/arch/arm64/kernel/head.S b/arch/arm64/kernel/head.S
index fbc7e7fe4b3b..873eada595a5 100644
--- a/arch/arm64/kernel/head.S
+++ b/arch/arm64/kernel/head.S
@@ -404,7 +404,6 @@ __create_page_tables:
 
 	ret	x28
 ENDPROC(__create_page_tables)
-	.ltorg
 
 /*
  * The following fragment of code is executed with the MMU enabled.
diff --git a/arch/arm64/kernel/hibernate-asm.S b/arch/arm64/kernel/hibernate-asm.S
index 38bcd4d4e43b..6532105b3e32 100644
--- a/arch/arm64/kernel/hibernate-asm.S
+++ b/arch/arm64/kernel/hibernate-asm.S
@@ -110,8 +110,6 @@ ENTRY(swsusp_arch_suspend_exit)
 	cbz	x24, 3f		/* Do we need to re-initialise EL2? */
 	hvc	#0
 3:	ret
-
-	.ltorg
 ENDPROC(swsusp_arch_suspend_exit)
 
 /*
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
