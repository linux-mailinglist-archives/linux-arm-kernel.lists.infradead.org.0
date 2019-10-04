Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D17ACBC6E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 15:59:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=JUvVyUpNGbEe3xgjBlPtb8lpwOcBVfFsFGvjfs3+bcE=; b=QkR
	gWnvZwzd6bO/WRe3IuUV2+/+DM0zLe6Afy+96KwW/x0loCWt2OFJpMPfkr6UZCo3/g+ycfT4nY8fi
	Y8ruuNbfVOCmNK4uP4oiKjt8kRCDnL/9v5EULA9ldVqgFjcsPGmKyo25hFx/xt5ypBzgWXpm/IZMe
	Kvs7UaUTt8+0M+BcRtesczTRGuez1B/yrsBde7MHACMOO/u0K41aUxaCBPl+QNxDfAhi7ccGK7Q2q
	SrCrlRXeZLhOZaqTn7YHOSpsz+0X3ynF6CgHcuOFzGzNxu+0BfVmLQ8n1+Wq2X1QH97ekW8pQikf0
	xs/ZbEvuWx6myW7UvEbGXwS2XTPpHSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGO6l-0008Ei-Ci; Fri, 04 Oct 2019 13:58:59 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGO6f-0008E8-1c
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 13:58:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AF69815A1;
 Fri,  4 Oct 2019 06:58:51 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id C6CE43F739;
 Fri,  4 Oct 2019 06:58:50 -0700 (PDT)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: mm: fix spurious fault detection
Date: Fri,  4 Oct 2019 14:58:47 +0100
Message-Id: <20191004135847.39326-1-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_065853_129475_81BA85CA 
X-CRM114-Status: GOOD (  13.68  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Robin Murphy <robin.murphy@arm.com>,
 James Morse <james.morse@arm.com>, Will Deacon <will.deacon@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When detecting a spurious EL1 translation fault, we attempt to compare
ESR_EL1.DFSC with PAR_EL1.FST. We erroneously use FIELD_PREP() to
extract PAR_EL1.FST, when we should be using FIELD_GET().

In the wise words of Robin Murphy:

| FIELD_GET() is a UBFX, FIELD_PREP() is a BFI

Using FIELD_PREP() means that that dfsc & ESR_ELx_FSC_TYPE is always
zero, and hence not equal to ESR_ELx_FSC_FAULT. Thus we detect any
unhandled translation fault as spurious.

... so let's use FIELD_GET() to ensure we don't decide all translation
faults are spurious. ESR_EL1.DFSC occupies bits [5:0], and requires no
shifting.

Fixes: 42f91093b043332a ("arm64: mm: Ignore spurious translation faults taken from the kernel")
Signed-off-by: Mark Rutland <mark.rutland@arm.com>
Reported-by: Robin Murphy <robin.murphy@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: James Morse <james.morse@arm.com>
Cc: Will Deacon <will.deacon@kernel.org>
---
 arch/arm64/mm/fault.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/mm/fault.c b/arch/arm64/mm/fault.c
index 115d7a0e4b08..b0074b91913b 100644
--- a/arch/arm64/mm/fault.c
+++ b/arch/arm64/mm/fault.c
@@ -266,7 +266,7 @@ static bool __kprobes is_spurious_el1_translation_fault(unsigned long addr,
 	 * If we got a different type of fault from the AT instruction,
 	 * treat the translation fault as spurious.
 	 */
-	dfsc = FIELD_PREP(SYS_PAR_EL1_FST, par);
+	dfsc = FIELD_GET(SYS_PAR_EL1_FST, par);
 	return (dfsc & ESR_ELx_FSC_TYPE) != ESR_ELx_FSC_FAULT;
 }
 
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
