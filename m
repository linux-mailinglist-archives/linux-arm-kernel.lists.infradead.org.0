Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47E3B178D8C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 10:37:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=657YX2BzWsrFzySjwfoUnqYffHSGa2Aagilgcu3N7CM=; b=CGUz8rMNIgpPn1
	R8ugckiefJ2sFwuGU5OdJ8IJeVsXIx+s4H0Rl17NkAZFpNzosvQ9K8GqTKKqau5d56cswBYcugBPl
	ciF239YXKPYiYJkn/l1m9Kw/YPuLUpG3u8cZz2xDQWm/fqhILTUBxb5tPsVs8JyI5Kyazeg3u59lM
	hFhSPgyQdSd/OUDNxCXVE2RYPFYTCyMqhwVbGd4qdiqAV3LDuSzfG1c5TggeeY4h4BwsVsQi+f9Ze
	0uyLr/BZF0BayhjANL/MCU6uIJFyGhWSQeEawTQOY5jGrO216C5NNzssY8ic46KhsrxKDhZw+AFGS
	gWy/V4++zpgBbxd4lnnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9QSb-0007WM-Kv; Wed, 04 Mar 2020 09:37:01 +0000
Received: from poy.remlab.net ([2001:41d0:2:5a1a::]
 helo=ns207790.ip-94-23-215.eu)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9QS8-0007GC-SA
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Mar 2020 09:36:34 +0000
Received: from basile.remlab.net (ip6-localhost [IPv6:::1])
 by ns207790.ip-94-23-215.eu (Postfix) with ESMTP id 273E25FD7F
 for <linux-arm-kernel@lists.infradead.org>;
 Wed,  4 Mar 2020 10:36:32 +0100 (CET)
From: =?UTF-8?q?R=C3=A9mi=20Denis-Courmont?= <remi@remlab.net>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/3] arm64: shrink the tramp_alias macro
Date: Wed,  4 Mar 2020 11:36:30 +0200
Message-Id: <20200304093631.191200-2-remi@remlab.net>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_013633_076871_CF73B5E4 
X-CRM114-Status: UNSURE (   9.36  )
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

Aliases should be negative 48-bits values. They can be generated with
3 instructions: MOVN (lsl 32), MOVK (lsl 1) and MOVK.

So far, the mov_q macro set bits 63-12, and a separate ADD instruction
sets the low 12 bits. This patch takes the last MOVK out of the mov_q
macro, and merges it with the ADD instruction. (This depends on the
earlier mov_q patch.)

Signed-off-by: Remi Denis-Courmont <remi.denis.courmont@huawei.com>
---
 arch/arm64/kernel/entry.S | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
index 20259e6a2fd7..ae99bf8bb0ae 100644
--- a/arch/arm64/kernel/entry.S
+++ b/arch/arm64/kernel/entry.S
@@ -120,8 +120,8 @@ alternative_else_nop_endif
 	.endm
 
 	.macro tramp_alias, dst, sym
-	mov_q	\dst, TRAMP_VALIAS
-	add	\dst, \dst, #(\sym - .entry.tramp.text)
+	mov_q	\dst, (TRAMP_VALIAS | 0xffff)
+	movk	\dst, #(TRAMP_VALIAS + \sym - .entry.tramp.text) & 0xffff
 	.endm
 
 	// This macro corrupts x0-x3. It is the caller's duty
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
