Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75F1A1E459F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 16:18:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AIVOmE7TlqHBS9Glt451H2RaispnTaxvCMfMrXKarBc=; b=VajL1h4FdjFCWW
	22TpKODqQz2Dr1K4Sos6HPsS0HBADNSJOGxCwVVhVT20l9tnIcL96uBj+NNR838qr5E9nhj1JbVC+
	70AMkksB2IeqbujbYba+fdHg2EcoAioUwWGda7xTM7jjDceHrTd8E4667LoFdZr3VapuWitHpqmjs
	s1ciONYK3bBpcYwPBOddEM1DEFUbnBZUuFSQkkbBUSySPx9KC7tWMsUZD8RbZFP/HudApB9Jirvyt
	Pd/a4T5N++nTX8q5bdC85rU5ZcHZb6Sa9+Pf9zGhDSANdG7/kN3s0AQ8pOTW7wTjH2WNquHVEgRWn
	30wMw0fYWlGX+nyYSk4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdwsz-00038q-0A; Wed, 27 May 2020 14:18:25 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdwpS-0006Da-31
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 14:14:48 +0000
Received: from threadripper.lan ([149.172.98.151]) by mrelayeu.kundenserver.de
 (mreue011 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MPXxi-1jQ7At0vQY-00McXf; Wed, 27 May 2020 16:14:37 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH] arm64: fix clang integrated assembler build
Date: Wed, 27 May 2020 16:14:03 +0200
Message-Id: <20200527141435.1716510-1-arnd@arndb.de>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Provags-ID: V03:K1:7D97oLdlne2qL09g2jgGMc+fbgxIgsEVGqtW3VCiQSLFiFZYW+g
 fn2jFC8fox4CvFLOjk636cGCNApIdf+wHKZhqEFujfdqm2RA4gYBX6NwhZyD2COJG9mMmWc
 hZsygdfgYo/BJ0Kpgn67wE5vUFZRUdL6nV85teYEDlb3akqK8j5BG/d4Xix3+ngCzx8f8Fk
 QtdTh5UFRdMZ4v9ZxpTRA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:nopDGBtTCRY=:gmcT7aGMYwgi+osEwcoJQd
 M7Gi+selGs6VVEavYYgErF6uTZ6bBgfdli88sKgqNPoV0LvojDp5VmIyj+rdciv7gMGj0A7yG
 jsDiTtFH2SJfh7G9T0mVtBLKxjCxcwuRBA3IpHG0Ix0Mc69PlCAi/WhHLq+ulS4Lr2XGvHq+i
 eA+ZilQHHREFYpRTpuJ9UzLbt3crO7IIwk+rIZuIFadfFGdEIrYcveNcP/Mx8s+rISZu+U6fJ
 o966l0cWMOpV7uUKixyQJ0gMm+m68gva1gZofkGPUgIHSZaHr+APCqVB32JERs1Kxh694ljSD
 jfg4u9GwJhba3Gqq0v3ZuyVcZA+bjVgkmONZpObxYgc+EMWanX2BG0+mRqhOR2UsifUB3KzUm
 MAqbVfxh5u/+Yd/wIvs4YR0FaYOCZs2u7VqJhQk5GviOVbJwaxBNTBMUXaQQQVAIeu5e4+QGf
 t9Vunr7FO6GBeg8gS+jJWKY1gpNoyF7sf9FLmbvnzDd9Av8oCauSMuRkkhOgeObnSI++XiJEE
 qbNady/hj5hewA4LQ2EPTinkoYjYimoGhthiKhIWh7LA95VBplavcS1deQ7/kIXn+FDcxCQUK
 9t9W8JPchCM0Q5Cq67VWkxasU2WZJ6OeyGeGtFRh3pICiDj75iXYPhK5rWPROhou2rwiDod/a
 AF5XVDZ6xPZOQcB3bPuIi1NpFtZVahogUzIPTLa7zYcHQYAuYyREDxOL+m1+FuPwuatMfZU8Y
 DDCAknP3KxiYVzUCmkp/UY9UPUCIqRb43sIcaParqPIxnSOG348OK23sPnh9lbzh5HCA7ky13
 hySQO9Htd477w1nEt4Lp3Ht6poAUlCheVhQ1ndjIPxQg+Cl5WU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_071446_443314_669C19DC 
X-CRM114-Status: GOOD (  14.92  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.130 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Arnd Bergmann <arnd@arndb.de>, clang-built-linux@googlegroups.com,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Alexios Zavras <alexios.zavras@intel.com>, Enrico Weigelt <info@metux.net>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

clang and gas seem to interpret the symbols in memmove.S and
memset.S differently, such that clang does not make them
'weak' as expected, which leads to a linker error, with both
ld.bfd and ld.lld:

ld.lld: error: duplicate symbol: memmove
>>> defined at common.c
>>>            kasan/common.o:(memmove) in archive mm/built-in.a
>>> defined at memmove.o:(__memmove) in archive arch/arm64/lib/lib.a

ld.lld: error: duplicate symbol: memset
>>> defined at common.c
>>>            kasan/common.o:(memset) in archive mm/built-in.a
>>> defined at memset.o:(__memset) in archive arch/arm64/lib/lib.a

Copy the exact way these are written in memcpy_64.S, which does
not have the same problem.

I don't know why this makes a difference, and it would be good
to have someone with a better understanding of assembler internals
review it.

It might be either a bug in the kernel or a bug in the assembler,
no idea which one. My patch makes it work with all versions of
clang and gcc, which is probably helpful even if it's a workaround
for a clang bug.

Cc: stable@vger.kernel.org
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
---
 arch/arm64/lib/memcpy.S  | 3 +--
 arch/arm64/lib/memmove.S | 3 +--
 arch/arm64/lib/memset.S  | 3 +--
 3 files changed, 3 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/lib/memcpy.S b/arch/arm64/lib/memcpy.S
index e0bf83d556f2..dc8d2a216a6e 100644
--- a/arch/arm64/lib/memcpy.S
+++ b/arch/arm64/lib/memcpy.S
@@ -56,9 +56,8 @@
 	stp \reg1, \reg2, [\ptr], \val
 	.endm
 
-	.weak memcpy
 SYM_FUNC_START_ALIAS(__memcpy)
-SYM_FUNC_START_PI(memcpy)
+SYM_FUNC_START_WEAK_PI(memcpy)
 #include "copy_template.S"
 	ret
 SYM_FUNC_END_PI(memcpy)
diff --git a/arch/arm64/lib/memmove.S b/arch/arm64/lib/memmove.S
index 02cda2e33bde..1035dce4bdaf 100644
--- a/arch/arm64/lib/memmove.S
+++ b/arch/arm64/lib/memmove.S
@@ -45,9 +45,8 @@ C_h	.req	x12
 D_l	.req	x13
 D_h	.req	x14
 
-	.weak memmove
 SYM_FUNC_START_ALIAS(__memmove)
-SYM_FUNC_START_PI(memmove)
+SYM_FUNC_START_WEAK_PI(memmove)
 	cmp	dstin, src
 	b.lo	__memcpy
 	add	tmp1, src, count
diff --git a/arch/arm64/lib/memset.S b/arch/arm64/lib/memset.S
index 77c3c7ba0084..a9c1c9a01ea9 100644
--- a/arch/arm64/lib/memset.S
+++ b/arch/arm64/lib/memset.S
@@ -42,9 +42,8 @@ dst		.req	x8
 tmp3w		.req	w9
 tmp3		.req	x9
 
-	.weak memset
 SYM_FUNC_START_ALIAS(__memset)
-SYM_FUNC_START_PI(memset)
+SYM_FUNC_START_WEAK_PI(memset)
 	mov	dst, dstin	/* Preserve return value.  */
 	and	A_lw, val, #255
 	orr	A_lw, A_lw, A_lw, lsl #8
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
