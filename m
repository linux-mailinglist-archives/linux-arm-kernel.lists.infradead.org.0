Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A1CF1AA39A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 15:13:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8LVpnq0LQe1m0wqKvsjNDy1HmfG5ek4vnyQTsuLvgzo=; b=qtq1IVOhezNcqP
	LviHV6ikAFQRQh/rTel6oMqlUvgOTDraPU3+8pPjZUx2PjM3mqsvSNL5UqpG0VQMCtKrAp+Sj3DYb
	vqw9LwWLrXbwkIQL4NUAEA225vcgWzIV1rme8KTZaAnz/S2Rg9/9FQuBSf80MgDoO+d0/re1TgmKk
	AA0gCbnR1VzqoK3Iv2COsRUDqnu8uHWSVeLJfGeNx5l9P5/3gy4E6qeErmPM+QYgRZ734tLIZeuyz
	qJJpNGEonpiI6/emZ3HSTPTzniMYLVkHmHAcWOlxPdkjDrjKzdzsf62bM2D6O1GSBtkEBm8tFU/yo
	5yq6Z1Q2YNIt4+qDf1Gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOhrG-0002A3-TD; Wed, 15 Apr 2020 13:13:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOhpm-00014o-Pc
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 13:12:08 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7D2C020857;
 Wed, 15 Apr 2020 13:12:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586956325;
 bh=7DVvrYAVzv8Jh9/guLEJ+zW98MBYnZ70lOBjmYWFR7Q=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=AU6sxgqBZZ6jt7WVaMaijrOn+FOkhRCaSlQ96FhUjFsV3+CoB/6a0zX4XxDv4NxXY
 Z4HyqEhHsWL403W0ZVMvjnN57t5aoMObtfC8cE8FybsKJkmlGrAxbFrN1eS5o5pwRi
 pu4qOeQeztjtffS7iq2YAraVUZqFFlc0oVaLe3Qs=
From: Mark Brown <broonie@kernel.org>
To: Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>
Subject: [PATCH 05/10] arm64: mm: Mark module text as guarded pages
Date: Wed, 15 Apr 2020 14:07:44 +0100
Message-Id: <20200415130750.18645-6-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200415130750.18645-1-broonie@kernel.org>
References: <20200415130750.18645-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_061207_113800_D7E06C84 
X-CRM114-Status: GOOD (  10.98  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
