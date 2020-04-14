Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7235C1A78A0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 12:43:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5AiM6OGgBBJmpiDG33MB9sZ3hf60y5H20tFBefSfkoQ=; b=JlGH5yI/7RUj2iTcFpYRwgglW3
	rfOuNkzYjidyIpyh7Sq10mphKiW4jO6h/944veSQPkqImLA42F4XCkvPlMQBzhGlt0C0RJtJyVcBI
	rqKNyGEmXM+lbET4OYLouVoy3e/zWKUQSpG4WB0cZ+dIwSMu/BSIvakIOBY/6qMlgjB15m9iSv9E3
	PR+dnA6HXFHTFfMD6PHvGC+WdJWB/b2q4EoNq05AVJDQ/+UmJYBD6b2A72xbq9vZjCCv+lCdDHoIZ
	yfhx9q7mD/C7Dyb6TlfxDiQuD9odNTfPpsCrLPJMdR9fP+nFkNGoFTUS2GOVl4AFRtxPet08MpCW6
	QamivmCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOJ2Z-0001rQ-5V; Tue, 14 Apr 2020 10:43:39 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOJ1z-0001Tl-AI
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 10:43:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E80CCC14;
 Tue, 14 Apr 2020 03:43:02 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 297FD3F6C4;
 Tue, 14 Apr 2020 03:43:02 -0700 (PDT)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 3/5] arm64: vdso: simplify arch_vdso_type ifdeffery
Date: Tue, 14 Apr 2020 11:42:50 +0100
Message-Id: <20200414104252.16061-4-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200414104252.16061-1-mark.rutland@arm.com>
References: <20200414104252.16061-1-mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_034303_457104_9D1550F0 
X-CRM114-Status: GOOD (  11.96  )
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, vincenzo.frascino@arm.com,
 will@kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently we have some ifdeffery to determine the number of elements in
enum arch_vdso_type as VDSO_TYPES, rather that the usual pattern of
having the enum define this:

| enum foo_type {
|         FOO_TYPE_A,
|         FOO_TYPE_B,
| #ifdef CONFIG_C
|         FOO_TYPE_C,
| #endif
|         NR_FOO_TYPES
| }

... however, given we only use this number to size the vdso_lookup[]
array, this is redundant anyway as the compiler can automatically size
the array to fit all defined elements.

So let's remove the VDSO_TYPES to simplify the code.

At the same time, let's use designated initializers for the array
elements so that these are guarnateed to be at the expected indices,
regardless of how we modify the structure. For clariy the redundant
explicit initialization of the enum elements is dropped.

There should be no functional change as a result of this patch.

Signed-off-by: Mark Rutland <mark.rutland@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>
Cc: Will Deacon <will@kernel.org>
---
 arch/arm64/kernel/vdso.c | 15 +++++----------
 1 file changed, 5 insertions(+), 10 deletions(-)

diff --git a/arch/arm64/kernel/vdso.c b/arch/arm64/kernel/vdso.c
index 263bc6084c71..b4b01ac30112 100644
--- a/arch/arm64/kernel/vdso.c
+++ b/arch/arm64/kernel/vdso.c
@@ -35,16 +35,11 @@ extern char vdso32_start[], vdso32_end[];
 
 /* vdso_lookup arch_index */
 enum arch_vdso_type {
-	ARM64_VDSO = 0,
+	ARM64_VDSO,
 #ifdef CONFIG_COMPAT_VDSO
-	ARM64_VDSO32 = 1,
+	ARM64_VDSO32,
 #endif /* CONFIG_COMPAT_VDSO */
 };
-#ifdef CONFIG_COMPAT_VDSO
-#define VDSO_TYPES		(ARM64_VDSO32 + 1)
-#else
-#define VDSO_TYPES		(ARM64_VDSO + 1)
-#endif /* CONFIG_COMPAT_VDSO */
 
 struct __vdso_abi {
 	const char *name;
@@ -57,14 +52,14 @@ struct __vdso_abi {
 	struct vm_special_mapping *cm;
 };
 
-static struct __vdso_abi vdso_lookup[VDSO_TYPES] __ro_after_init = {
-	{
+static struct __vdso_abi vdso_lookup[] __ro_after_init = {
+	[ARM64_VDSO] = {
 		.name = "vdso",
 		.vdso_code_start = vdso_start,
 		.vdso_code_end = vdso_end,
 	},
 #ifdef CONFIG_COMPAT_VDSO
-	{
+	[ARM64_VDSO32] = {
 		.name = "vdso32",
 		.vdso_code_start = vdso32_start,
 		.vdso_code_end = vdso32_end,
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
