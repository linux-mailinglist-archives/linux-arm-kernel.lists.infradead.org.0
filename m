Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20FCE1B7BDC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 18:41:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2L6Z1VLLC85ppAk5oD6dnEQ4H8PwUuFRuod8xr18GSo=; b=NU4M4QiYA2c242
	axfUgM/BdjnZ2+9n0Wd2V+6fNqfV+Sc0e4FzAgg4piYdloOPjZ2H2Gg0KXhfSqAm9B5+O0TFCFPq5
	biSN5P+z9XCjSAWzaXd3bytAki1dzfqu10TNA2bdwuIdrEvEajvW3Gpve1NCXeb3FeRBwkDTXD6d1
	DanhilBAUIQCtEOVSqb3jgfOizibpu4By/860tXU/P8u9sSOmBw/20ZAf1dPYcbhsz4i3ilr0Py7y
	mtevxrYvy3j4QBysY8Sy57OZqzC+nICTXPRFsxQK+i+s2Mfep1L6t/ovM0JBzYW8xFnUzzSHY8a+W
	9ffwqhsAqIrv1jHjEjXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS1ON-0004Ja-HM; Fri, 24 Apr 2020 16:41:31 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS1MH-0000Df-KT
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 16:39:23 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id ADA21C14;
 Fri, 24 Apr 2020 09:39:20 -0700 (PDT)
Received: from melchizedek.cambridge.arm.com (melchizedek.cambridge.arm.com
 [10.1.196.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3FB533F68F;
 Fri, 24 Apr 2020 09:39:20 -0700 (PDT)
From: James Morse <james.morse@arm.com>
To: stable@vger.kernel.org
Subject: [stable:PATCH 5/5 v4.19] arm64: Silence clang warning on mismatched
 value/register sizes
Date: Fri, 24 Apr 2020 17:38:45 +0100
Message-Id: <20200424163845.4141-6-james.morse@arm.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20200424163845.4141-1-james.morse@arm.com>
References: <20200424163845.4141-1-james.morse@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_093921_805721_C8F8CE29 
X-CRM114-Status: GOOD (  11.13  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Catalin Marinas <catalin.marinas@arm.com>

[ Upstream commit: 27a22fbdeedd6c5c451cf5f830d51782bf50c3a2 ]

Clang reports a warning on the __tlbi(aside1is, 0) macro expansion since
the value size does not match the register size specified in the inline
asm. Construct the ASID value using the __TLBI_VADDR() macro.

Fixes: 222fc0c8503d ("arm64: compat: Workaround Neoverse-N1 #1542419 for compat user-space")
Reported-by: Nathan Chancellor <natechancellor@gmail.com>
Cc: James Morse <james.morse@arm.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: James Morse <james.morse@arm.com>
---
 arch/arm64/kernel/sys_compat.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/sys_compat.c b/arch/arm64/kernel/sys_compat.c
index 5a9b220aef6c..3ef9d0a3ac1d 100644
--- a/arch/arm64/kernel/sys_compat.c
+++ b/arch/arm64/kernel/sys_compat.c
@@ -48,7 +48,7 @@ __do_compat_cache_op(unsigned long start, unsigned long end)
 			 * The workaround requires an inner-shareable tlbi.
 			 * We pick the reserved-ASID to minimise the impact.
 			 */
-			__tlbi(aside1is, 0);
+			__tlbi(aside1is, __TLBI_VADDR(0, 0));
 			dsb(ish);
 		}
 
-- 
2.26.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
