Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF09D1BC5BE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 18:50:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5AiM6OGgBBJmpiDG33MB9sZ3hf60y5H20tFBefSfkoQ=; b=Ga8vGYPKd3h/NvKFEveNJUjLgA
	3wgPgU7UTqNjmMKYW7fpfTkWZMJmwXCHtgM5qaJyRSTyKD6EEh0kA25e+d4sqW68yq8x/Dd4Fw0LY
	4TM0SMng5XL3zfUOqF7OsrJAU23We/FIb0YHu6/owvHiPWCxYDlYNR2fZ1MLSs/uTpgKc2rUywCYZ
	zzYUpUHm8B2mYPidTq+qzM9R7y1LMTUJTyQgCjPZXaw9HdgOJU+7Vq6rNy8/Hhia4OP+3dQu+ed7J
	Hi4wFerwJg4uH/YTTVhKx+rUaLxbPxp9zTEpLlFwatLXzwQlUtsvTIPDqVSJliAhsZrn5EFor0HLa
	BQTdUVaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTTRD-0004my-E0; Tue, 28 Apr 2020 16:50:27 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTTQI-0004Ek-OM
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 16:49:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DE44A101E;
 Tue, 28 Apr 2020 09:49:29 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 20AFC3F305;
 Tue, 28 Apr 2020 09:49:29 -0700 (PDT)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	will@kernel.org
Subject: [PATCHv2 2/4] arm64: vdso: simplify arch_vdso_type ifdeffery
Date: Tue, 28 Apr 2020 17:49:19 +0100
Message-Id: <20200428164921.41641-3-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200428164921.41641-1-mark.rutland@arm.com>
References: <20200428164921.41641-1-mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_094930_851353_B88D8D4E 
X-CRM114-Status: GOOD (  12.03  )
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, vincenzo.frascino@arm.com
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
