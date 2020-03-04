Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EB04178D83
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 10:34:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kOWIElKJk3oZvPz3aXErGQEz6T2wOdeAQuqOA2FXo9A=; b=Lt+0r3ZFlJmQYo
	Df4d0OsgW/JRnw7Ntwo01JTD2k9PW0AYG5pD747aRsAqtcVnQIK+mFDhvZZrotDeY3oqnoGv+oOMB
	69Ps9UON7LnX0l/ReHQOZQ2Tcun8ealDdZiz6V0+8niZqTTQO1u5CrsUH1SD2XbBeAtIkftjpptuo
	l/Rcu9www0s2e8yctlzYZ3Zrff7vTp5I2qVyv0eJoz8XsVnoXW1ou17cDlt5eZH26/cyvCDxgVpWY
	ZlNhpx53JRGVjC2ui4Gyb1Sj/qSWJ1NO1migaWQIvz3LkWzHEMy09Ph78tDb+r+kHjaXVM7cGy33F
	+fEG968TPMC96UmN8WMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9QQK-00053Q-O8; Wed, 04 Mar 2020 09:34:40 +0000
Received: from poy.remlab.net ([2001:41d0:2:5a1a::]
 helo=ns207790.ip-94-23-215.eu)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9QQD-00052d-L7
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Mar 2020 09:34:35 +0000
Received: from basile.remlab.net (ip6-localhost [IPv6:::1])
 by ns207790.ip-94-23-215.eu (Postfix) with ESMTP id 317E85FBB0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed,  4 Mar 2020 10:34:19 +0100 (CET)
From: =?UTF-8?q?R=C3=A9mi=20Denis-Courmont?= <remi@remlab.net>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: relax jump label ASM constraints
Date: Wed,  4 Mar 2020 11:34:19 +0200
Message-Id: <20200304093419.190879-1-remi@remlab.net>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_013433_843276_5383B896 
X-CRM114-Status: UNSURE (   8.33  )
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

The static key address is stored in the jump label table. It needs to
be a run-time constant. However, it does not need to be a constant
suitable for expansion as an immediate value, given that it is
expanded in a full 64-bits (.quad) statement.

Signed-off-by: Remi Denis-Courmont <remi.denis.courmont@huawei.com>
---
 arch/arm64/include/asm/jump_label.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/include/asm/jump_label.h b/arch/arm64/include/asm/jump_label.h
index cea441b6aa5d..dcc0a32f073b 100644
--- a/arch/arm64/include/asm/jump_label.h
+++ b/arch/arm64/include/asm/jump_label.h
@@ -25,7 +25,7 @@ static __always_inline bool arch_static_branch(struct static_key *key,
 		 "	.long		1b - ., %l[l_yes] - .	\n\t"
 		 "	.quad		%c0 - .			\n\t"
 		 "	.popsection				\n\t"
-		 :  :  "i"(&((char *)key)[branch]) :  : l_yes);
+		 :  :  "S"(&((char *)key)[branch]) :  : l_yes);
 
 	return false;
 l_yes:
@@ -42,7 +42,7 @@ static __always_inline bool arch_static_branch_jump(struct static_key *key,
 		 "	.long		1b - ., %l[l_yes] - .	\n\t"
 		 "	.quad		%c0 - .			\n\t"
 		 "	.popsection				\n\t"
-		 :  :  "i"(&((char *)key)[branch]) :  : l_yes);
+		 :  :  "S"(&((char *)key)[branch]) :  : l_yes);
 
 	return false;
 l_yes:
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
