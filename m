Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BB4E1F9C2C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 17:47:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=osaoWgI09UCuboG0wcHL68+VmLkmLrDp5bYwCoUY+mI=; b=cPdBtXEq/osQzr
	dY9PXboBjOg5VLGNCTcX27GTi6pNIEHVbhtxMYM120a/4JE7DYWVlJy3hkGKksZ94ifVh6KNl+5AX
	DzfIPGSlJFQI0tKlrTe7RdpZ+3CCsg0IKJ7Dd6gCb8gnV3w62Vq0hKnI844p2NMbWrlRhXU4hgzqW
	zkpxHmcKBnqRRJSmj/0pujrr8UggoSSPpPy2q7xfZ+39WP/6YObYQFfKPC2MjUJtxEL9h1m/8Vie0
	IzZtLsR7yR26W12WvVkVGflRIa3TYx0+WTyjnIGqLerSfBkrfXlvOshxOna7BxUPQRycezrvshumA
	hoWIMuoc90FMslUKy6dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkrK3-00056G-Dj; Mon, 15 Jun 2020 15:46:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkrJv-00055t-LQ
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 15:46:48 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B99752078E;
 Mon, 15 Jun 2020 15:46:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592236006;
 bh=mOdryVWCSlXWUQwfvORIfsM5LR1LWmNAkPV8Qpghcgw=;
 h=From:To:Cc:Subject:Date:From;
 b=mrB+NJp40b7toqMzf4ih+w6AbfqQtzJC7zBZo66z4SFs073qPmuY7SPLt3Ox7q8yB
 nE8r9cf/N8qeKMKZL16PIJCDr8ORiu9qfHq+PGRWLLg+ASu6L4Y16YqTFm8FsW9vez
 FfUw4tazwfH4vPChoeaEYRZmvynisF9hM3zgzARI=
From: Will Deacon <will@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: pgtable: Clear the GP bit for non-executable kernel
 pages
Date: Mon, 15 Jun 2020 16:46:42 +0100
Message-Id: <20200615154642.3579-1-will@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_084647_719639_2CA4DC4B 
X-CRM114-Status: GOOD (  11.93  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, Will Deacon <will@kernel.org>,
 Mark Brown <broonie@kernel.org>, kernel-team@android.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Commit cca98e9f8b5e ("mm: enforce that vmap can't map pages executable")
introduced 'pgprot_nx(prot)' for arm64 but colliding silently with the
BTI support during the merge window, which endeavours to clear the GP
bit for non-executable kernel mappings in set_memory_nx().

For consistency between the two APIs, clear the GP bit in pgprot_nx().

Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Mark Brown <broonie@kernel.org>
Signed-off-by: Will Deacon <will@kernel.org>
---
 arch/arm64/include/asm/pgtable.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/pgtable.h b/arch/arm64/include/asm/pgtable.h
index 6dbd267ab931..758e2d1577d0 100644
--- a/arch/arm64/include/asm/pgtable.h
+++ b/arch/arm64/include/asm/pgtable.h
@@ -416,7 +416,7 @@ static inline pmd_t pmd_mkdevmap(pmd_t pmd)
 	__pgprot((pgprot_val(prot) & ~(mask)) | (bits))
 
 #define pgprot_nx(prot) \
-	__pgprot_modify(prot, 0, PTE_PXN)
+	__pgprot_modify(prot, PTE_MAYBE_GP, PTE_PXN)
 
 /*
  * Mark the prot value as uncacheable and unbufferable.
-- 
2.27.0.290.gba653c62da-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
