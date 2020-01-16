Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD7F413F47C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 19:50:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=QDd/Nn2cpn6/IqqfoZp5EzOguq2DofSJrgyAcekqauk=; b=qgMm1vxp/1FyO+mPuNxtepxBSI
	ORfKdbkI3U9i6/jyV1HPtSMuw+dKxeVoau5Pf0EZLWAwwfvNZzLcNxzTjcC7tq/SfCmVlFeqnJrXn
	rnNdbFv+EUYr9JbFAVvOjS3BiAUi/it6u8lDb3g2fw7HpuZKr9Y6GG/3Xb7lZWcF4sNKQUC2gvWFE
	VDQpCiaSxaTNZ9sUy7F2eAGXwba5onmA1Ar+sT7keXhoZ6SqcLX3v43+J70lI8J/RBgruTi6j4PQo
	/D47ELIP75g5tVCcw2/2RaLZuzVb2Mw1ZuP4G+PCtm8f7QI9gMECQ0PiJBts9N3LaC+iGjLUQXFd0
	QDDrMsgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isADT-0005V5-IT; Thu, 16 Jan 2020 18:50:03 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is9zp-0005s5-Py
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 18:36:03 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EB7CF13A1;
 Thu, 16 Jan 2020 10:35:56 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 0A4503F534;
 Thu, 16 Jan 2020 10:35:55 -0800 (PST)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org, will@kernel.org,
 catalin.marinas@arm.com
Subject: [PATCH 2/5] arm64: assembler: remove smp_dmb macro
Date: Thu, 16 Jan 2020 18:35:45 +0000
Message-Id: <20200116183548.39411-3-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200116183548.39411-1-mark.rutland@arm.com>
References: <20200116183548.39411-1-mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_103557_917867_0F476B5D 
X-CRM114-Status: UNSURE (   7.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, james.morse@arm.com, anshuman.khandual@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

These days arm64 kernels are always SMP, and thus smp_dmb is an
overly-long way of writing dmb. Naturally, no-one uses it.

Remove the unused macro.

Signed-off-by: Mark Rutland <mark.rutland@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
---
 arch/arm64/include/asm/assembler.h | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/arch/arm64/include/asm/assembler.h b/arch/arm64/include/asm/assembler.h
index 5f8a2772baeb..995362adaac0 100644
--- a/arch/arm64/include/asm/assembler.h
+++ b/arch/arm64/include/asm/assembler.h
@@ -80,13 +80,6 @@
 	.endm
 
 /*
- * SMP data memory barrier
- */
-	.macro	smp_dmb, opt
-	dmb	\opt
-	.endm
-
-/*
  * RAS Error Synchronization barrier
  */
 	.macro  esb
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
