Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EAD88BB49
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 16:18:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=XuLEW/0vu9RLP+CckUUvv62ALqZTCiARiG8aszELwVA=; b=BVWtJHJHhcSal1d76wVYiIoTSz
	R8vt03BeO9F9JAYCCGKHdUkoxArrAWXkKpalKss/6bu0Iw53UJoWPEe3JnbZTmh4/iZ19w5DWEbaJ
	PTHhbzrMJOv1zSXOAXBGZqKl/rFeVR2HrGJ2ZyEMmL0sAEl7KYiij/TvkjXmzJWWZ1Y9M8QeLSNWV
	OXU6xzVKKRAr0rai6Sk1Z428UX2/vibLipcRP0vjHoi0waT7Cf6COxrvN+xdfmPmbtsBe/RR5YlLj
	24u66whShhUfEtmmoUP6NycY4gZiS4el5HDIyAJTz2Iy5CE8ga3ARsgcALFPLPcQdcAs64OBzDmHU
	IUxVXlAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxXdZ-0005kA-ER; Tue, 13 Aug 2019 14:18:57 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hxXbV-0004z1-Pb
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 14:16:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 889C71576;
 Tue, 13 Aug 2019 07:16:46 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id CE5FF3F706;
 Tue, 13 Aug 2019 07:16:45 -0700 (PDT)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/3] arm64: constify aarch64_insn_encoding_class[]
Date: Tue, 13 Aug 2019 15:16:38 +0100
Message-Id: <20190813141639.13476-3-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190813141639.13476-1-mark.rutland@arm.com>
References: <20190813141639.13476-1-mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_071650_037570_116A65E2 
X-CRM114-Status: GOOD (  10.87  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, will.deacon@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The aarch64_insn_encoding_class[] array contains compile-time constant
data, and is never intentionally modified, so let's mark it as const.

Signed-off-by: Mark Rutland <mark.rutland@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will.deacon@arm.com>
---
 arch/arm64/kernel/insn.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/insn.c b/arch/arm64/kernel/insn.c
index 84b059ed04fc..d801a7094076 100644
--- a/arch/arm64/kernel/insn.c
+++ b/arch/arm64/kernel/insn.c
@@ -26,7 +26,7 @@
 #define AARCH64_INSN_N_BIT	BIT(22)
 #define AARCH64_INSN_LSL_12	BIT(22)
 
-static int aarch64_insn_encoding_class[] = {
+static const int aarch64_insn_encoding_class[] = {
 	AARCH64_INSN_CLS_UNKNOWN,
 	AARCH64_INSN_CLS_UNKNOWN,
 	AARCH64_INSN_CLS_UNKNOWN,
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
