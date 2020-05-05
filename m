Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7338E1C5B05
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 17:25:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=e5ELm1/KI/I4o5x9crakHWSaKCzq6r8qgcM1DdpFLhM=; b=b4mvF1NHMqXm0Nzxg9HDc9H/WJ
	v1Lw+8yy400V578HISrtQZaOgT0/FQ6TAQG/eywi+zkF5zFk9HjvyBmCdafBTNpy8G9Ey2hjPMinO
	RCyoNyuXCdroxZtov0EHDImDR0p7suL8gFDGkcs/RS2agfuDJbcbCXJqCfgYSAXnIhbnRbGeTH5ym
	pHFRl7X5VTmgyY4ayC5PvIHuQK8BuNLqvUTKjgEEfW6v8x9xtl4R3MlSPmfSY2FyW2QivnSs00LLk
	P/eJ0Iom0BUH6R75a48CI1QaZCapHJi3E1hqxb5/Qe7vfeZyCp+xbRWeej5WdEbuTf/RhIXzbIC3r
	7gWJhqEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVzRw-0007iW-BL; Tue, 05 May 2020 15:25:36 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVzRp-0007iB-0G
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 15:25:30 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 78E2E1FB;
 Tue,  5 May 2020 08:25:28 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 8BAFB3F68F;
 Tue,  5 May 2020 08:25:27 -0700 (PDT)
From: Dave Martin <Dave.Martin@arm.com>
To: Michael Kerrisk <mtk.manpages@gmail.com>
Subject: [PATCH 1/2] syscall.2: arm: Use real register names for arm/OABI
Date: Tue,  5 May 2020 16:24:39 +0100
Message-Id: <1588692280-15878-2-git-send-email-Dave.Martin@arm.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1588692280-15878-1-git-send-email-Dave.Martin@arm.com>
References: <1588692280-15878-1-git-send-email-Dave.Martin@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_082529_087095_C675D784 
X-CRM114-Status: GOOD (  10.17  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Russell King <linux@armlinux.org.uk>, linux-arm-kernel@lists.infradead.org,
 linux-man@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The arm OABI syscall interface is currently documented in terms of
register name aliases defined by the ARM Procedure Call Standard
(APCS).  However, these don't make sense in the context of a binary
interface that doesn't comply (or need to comply) with APCS.

Use the real architectural register names instead.

The names a1-a4, v1... are just aliases for r0-r3, r4... anyway, so
the interface is just the same regardless of which set of names is
used.

Signed-off-by: Dave Martin <Dave.Martin@arm.com>
---
 man2/syscall.2 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man2/syscall.2 b/man2/syscall.2
index f2b277b..53ab40e 100644
--- a/man2/syscall.2
+++ b/man2/syscall.2
@@ -201,7 +201,7 @@ Arch/ABI	Instruction	System	Ret	Ret	Error	Notes
 _
 alpha	callsys	v0	v0	a4	a3	1, 6
 arc	trap0	r8	r0	-	-
-arm/OABI	swi NR	-	a1	-	-	2
+arm/OABI	swi NR	-	r0	-	-	2
 arm/EABI	swi 0x0	r7	r0	r1	-
 arm64	svc #0	x8	x0	x1	-
 blackfin	excpt 0x0	P0	R0	-	-
@@ -332,7 +332,7 @@ Arch/ABI	arg1	arg2	arg3	arg4	arg5	arg6	arg7	Notes
 _
 alpha	a0	a1	a2	a3	a4	a5	-
 arc	r0	r1	r2	r3	r4	r5	-
-arm/OABI	a1	a2	a3	a4	v1	v2	v3
+arm/OABI	r0	r1	r2	r3	r4	r5	r6
 arm/EABI	r0	r1	r2	r3	r4	r5	r6
 arm64	x0	x1	x2	x3	x4	x5	-
 blackfin	R0	R1	R2	R3	R4	R5	-
-- 
2.1.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
