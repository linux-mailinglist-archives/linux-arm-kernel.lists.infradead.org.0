Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2642810538A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 14:51:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IoTshEemUyxtAfGJ5AKPPXIB2x7lD4XSGupZV1ftvE4=; b=S2IjkLe9B//qbU
	+QpLe9MoJkgOnnz8n7BYmY+Q+PgOyICUaWI+LUe5OfGkJkVEt2sSk/hAvktfdVVOxdxB/z8JNeuFT
	XnVmz3ygu56F7o8nPCycYSiT1pARmulUXDMpUWjmUXIUkjALNEptM2YxED0lHu6dcI2hnJ9fDB+Z6
	30rjLSXYDRxeaviw8/qaxgIDNfGXBx6+Ok9BGYv2kVa9+U8HPqFLJHmraggJrzX7Sry0N2mqhF9hU
	qqEsCmjfaKHAy6dnThRciKziaCKErlWpkruuWrNjG9kXPEE8LEchIOJHXfRukk5CUtK3c6GcARZFw
	fNH8+woT5JZAhnx++fzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXms8-0001AV-2p; Thu, 21 Nov 2019 13:51:48 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXms0-00019t-EH
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 13:51:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E552EDA7;
 Thu, 21 Nov 2019 05:51:36 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 627163F703;
 Thu, 21 Nov 2019 05:51:36 -0800 (PST)
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH] arm64: mm: Fix column alignment for UXN in kernel_page_tables
Date: Thu, 21 Nov 2019 13:51:32 +0000
Message-Id: <20191121135132.22480-1-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_055140_521251_42ED8C9C 
X-CRM114-Status: GOOD (  10.76  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, Mark Brown <broonie@kernel.org>,
 Laura Abbott <labbott@redhat.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

UXN is the only individual PTE bit other than the PTE_ATTRINDX_MASK ones
which doesn't have both a set and a clear value provided, meaning that the
columns in the table won't all be aligned. The PTE_ATTRINDX_MASK values
are all both mutually exclusive and longer so are listed last to make a
single final column for those values. Ensure everything is aligned by
providing a clear value for UXN.

Signed-off-by: Mark Brown <broonie@kernel.org>
---
 arch/arm64/mm/dump.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/mm/dump.c b/arch/arm64/mm/dump.c
index 4997ce244172..ef4b3ca1e058 100644
--- a/arch/arm64/mm/dump.c
+++ b/arch/arm64/mm/dump.c
@@ -144,6 +144,7 @@ static const struct prot_bits pte_bits[] = {
 		.mask	= PTE_UXN,
 		.val	= PTE_UXN,
 		.set	= "UXN",
+		.clear	= "   ",
 	}, {
 		.mask	= PTE_ATTRINDX_MASK,
 		.val	= PTE_ATTRINDX(MT_DEVICE_nGnRnE),
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
