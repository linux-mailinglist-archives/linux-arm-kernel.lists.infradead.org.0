Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7477B195E8E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 20:22:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8LVpnq0LQe1m0wqKvsjNDy1HmfG5ek4vnyQTsuLvgzo=; b=n6RC/jJOBFdS/6
	aoo/kOStsh1yMWMqq5jvYJMaHQef5bv0IedVp87SV7OgWIaJENRi7ldqyJtNqy+x+UeOJgHBchNPi
	U2BGCh3Sbx2rW3i6SVfQQU9YRsvhQaKpgD7/J0JGkzDkfxzITDO9VF8uwqqkaaSVoR2slAZZxTGdg
	4gRgr7vDVwJJKUbxRlEf4e21ngpNJOayXqDCKcZYXlAiZp3dJtCEYHL9OIOxIsyYEKzBzB84pmLiF
	znw5xonD3gq5IslkXZWW9y7ol1+TXyLqsOhhp2u5C2qp2xGsKSUlwiDNw+9TRko9oFl5nTAGMrg8n
	SpnFZqoMTzsvQ8CxQ0Tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHuZ3-0002xM-JE; Fri, 27 Mar 2020 19:22:45 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHuXm-0001gI-J7
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 19:21:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 380C1101E;
 Fri, 27 Mar 2020 12:21:26 -0700 (PDT)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AE4443F71E;
 Fri, 27 Mar 2020 12:21:25 -0700 (PDT)
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH 4/5] arm64: mm: Mark module text as guarded pages
Date: Fri, 27 Mar 2020 19:21:06 +0000
Message-Id: <20200327192107.18394-5-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200327192107.18394-1-broonie@kernel.org>
References: <20200327192107.18394-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_122126_687514_053DF128 
X-CRM114-Status: GOOD (  10.23  )
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Brown <broonie@kernel.org>, Kees Cook <keescook@chromium.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When the kernel is built for BTI and running on a system which supports
it extend guard page coverage to include executable code from loadable
modules.

Signed-off-by: Mark Brown <broonie@kernel.org>
---
 arch/arm64/mm/pageattr.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/mm/pageattr.c b/arch/arm64/mm/pageattr.c
index 250c49008d73..bde08090b838 100644
--- a/arch/arm64/mm/pageattr.c
+++ b/arch/arm64/mm/pageattr.c
@@ -126,13 +126,13 @@ int set_memory_nx(unsigned long addr, int numpages)
 {
 	return change_memory_common(addr, numpages,
 					__pgprot(PTE_PXN),
-					__pgprot(0));
+					__pgprot(PTE_MAYBE_GP));
 }
 
 int set_memory_x(unsigned long addr, int numpages)
 {
 	return change_memory_common(addr, numpages,
-					__pgprot(0),
+					__pgprot(PTE_MAYBE_GP),
 					__pgprot(PTE_PXN));
 }
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
