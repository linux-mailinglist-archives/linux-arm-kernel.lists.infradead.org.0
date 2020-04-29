Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E64A71BE9C5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 23:22:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IuKhwbT1wm6BVDiYJVntqeMFGlxx3bdR+L3nap3tU80=; b=SVKXrpSPjZKhnw
	9vrCfMUx39OZ7CR9GlRMZYuZMSw0/iYFxdtPzaD70CCHg4mAvDdCXtbJQ15lw0m9cw/D9aegBh5Q1
	4rsAisYE/quLjS8UZ9UN+F77wJvE4HB57IdpVgs7TctX0Y4R59dyCnp4/tzEKDFvEcrhg500Aka90
	iCqI2/ESE0KQGcxPZrnmOOT3ujX4eYHlLIeqBrQUgvvX9IU2aTe8NlPGSqF82NdBQbGKomxMI8CZ/
	6FMnDhy6X9J7Jy3u8fnwFxO84Sc35aaCrdLDIr8/6gbsQQm9RZMofVfGuRllnfJcXpBklcj4ZOnwK
	cthOftKGd4sKgRHGhnrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTu9l-0001Qk-Ib; Wed, 29 Apr 2020 21:22:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTu7o-0007Mj-Dv
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 21:20:19 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 36C5B20731;
 Wed, 29 Apr 2020 21:20:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588195209;
 bh=4kiTRxfuAUMsKYCp/I0nVTCFGQZpgSSXCXhw0k8kr9M=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=GGe6umc4Rfa2t2Wysld1sottR6fQxVqfis65Hh4sNirCrxIJ8p84cBZDRDALnXM5N
 HZaKvOF3Z/z/uIhgj9FsuG7K2x5uUKufE4eKprmjHquIgKqY1SrJ2qEfXzlJMomvN+
 jVXuV8vc6AmOZRciFc51RyzgA3q7ekpj6TlE1nnM=
From: Mark Brown <broonie@kernel.org>
To: Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>
Subject: [PATCH v2 05/10] arm64: mm: Mark executable text as guarded pages
Date: Wed, 29 Apr 2020 22:16:36 +0100
Message-Id: <20200429211641.9279-6-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200429211641.9279-1-broonie@kernel.org>
References: <20200429211641.9279-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_142012_719969_8F154BA3 
X-CRM114-Status: GOOD (  11.05  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Brown <broonie@kernel.org>, Kees Cook <keescook@chromium.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When the kernel is built for BTI and running on a system which supports
it make all executable text guarded pages to ensure that loadable module
and JITed BPF code is protected by BTI.

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
