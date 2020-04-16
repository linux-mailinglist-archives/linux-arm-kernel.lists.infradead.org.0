Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D5A41AB743
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 07:28:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0E2VdaAgrETpYPgcXfGXHP7GKRDKppbAVxDAsBpB3bk=; b=jInp2fQafY0YMH+HHKjPrLSOn3
	D/+WRtqwo8vtNisIuerup6VgBh+bs4O+za06yfLtj+o7KQVjdDXiDhtu456t2Sy9VGjopm5k+taXw
	NGqOIlkOr7tMgfNVyhF+byfwEfS1NeIiC3mb1oLsUufTDd5vU2+PvaSefscdHwXwU/OY3RbaC8dkK
	V3A9SsTDiZnfMx4h8x3i83SSnjLguLmZ2vQS0mIr3kYxe4oiRIUDUoZHLn9DbqXeMWvpkXK7QROF8
	7xtoI8xCFpfZ9lzonM7OUyk+c0mhkbQ9eqgVDsl+ltjs8e74XQzCl9VuhIqXJ65RdLAZ5sCzcVkC5
	6bdshDzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOx4U-0007zg-Ow; Thu, 16 Apr 2020 05:28:18 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOx33-0006iG-Gd
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 05:26:51 +0000
Received: by mail-pj1-x1044.google.com with SMTP id a22so874532pjk.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Apr 2020 22:26:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=AEQhnnrMzAKTzUbyWrr7Pn4129iWSFF1XGDPYTPl2Oo=;
 b=sWvjSCgNi/pGxJ8po/5HgKguAxlQRy+wCBCGw8arJtEyunm27lNPBjARK9WhHOxtuN
 PCDJQbLfnmWLVk1MnPOlWVYUs97/Wy2E8cJHx8x/J01Ub27iy/U2s/wFJUeZQRgmeG6v
 nv6a2yjc5r19eVoqvfywnonahteeHbS/nJzY6SiJKvzAhSQXJxZaHeUUHOzp4rvfXg3o
 PhvP8YF87YuawnruPOYOd55HhIJc6LsLXSgAe3BY+WNbTr2TY+NJAmMfjbXZj3G8Fn3G
 u8lJSQ928A4dYFDNmfcwgxQJf16qA6B0PT+kT6jmI2cbwspu1P46Q26TJ6FqsuI8L+cW
 HfbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=AEQhnnrMzAKTzUbyWrr7Pn4129iWSFF1XGDPYTPl2Oo=;
 b=i0q6Z0voIGIKgd8Nou+KI6DM2JLzUxBdOs3aHM5BiOQ+4nZuorTzvKGyS3KQM5cJvU
 mLDBcqOoVOp7pOOnD2OKH50qXy/+UCU/hexwRD+5mle88/VY1t/Js+HxxuoGB7dWP8W4
 zHOdTFOpApIfv4F2lsx0DDqUMFUKtESt2oxZm6DGMkAz2TH/c+IJFbY1i91yfGT2VaL1
 LxyeBW/rX0xlRiV/1vtEq+I2ANO78qSjYh7BEGj/QxyYg4YOQ7pok5Tl66L+Nkws6W7t
 Sl/EYww4x9QUASWJ8HjnRuKYnQ7nDP4EfGBhn6cm9sHrU940oxnLZV3Qpolf/jjEBg/G
 WM+w==
X-Gm-Message-State: AGi0PuYs+eLbtsyOtr3fSSDqNkxAmkbjr6b2M4Yv99/FOt7nu4lOtEPH
 aEMFspNBsHX/R9StL/9YS2SrDEMUMtM=
X-Google-Smtp-Source: APiQypIgTAWtfPtyJjPPgrd+7oA27QM8CD3i2vxGeg9P6ikV7cBNyesXqbfzDxy45o2NIKtFDcNuEQ==
X-Received: by 2002:a17:90a:a402:: with SMTP id
 y2mr3199895pjp.55.1587014807867; 
 Wed, 15 Apr 2020 22:26:47 -0700 (PDT)
Received: from laptop.hsd1.wa.comcast.net
 ([2601:600:817f:a132:df3e:521d:99d5:710d])
 by smtp.gmail.com with ESMTPSA id c21sm53699pjr.2.2020.04.15.22.26.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2020 22:26:47 -0700 (PDT)
From: Andrei Vagin <avagin@gmail.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Subject: [PATCH 5/6] arm64/vdso: Restrict splitting VVAR VMA
Date: Wed, 15 Apr 2020 22:26:17 -0700
Message-Id: <20200416052618.804515-6-avagin@gmail.com>
X-Mailer: git-send-email 2.17.2
In-Reply-To: <20200416052618.804515-1-avagin@gmail.com>
References: <20200416052618.804515-1-avagin@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_222649_639746_C595DE98 
X-CRM114-Status: GOOD (  12.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [avagin[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Dmitry Safonov <dima@arista.com>,
 linux-kernel@vger.kernel.org, Andrei Vagin <avagin@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Forbid splitting VVAR VMA resulting in a stricter ABI and reducing the
amount of corner-cases to consider while working further on VDSO time
namespace support.

As the offset from timens to VVAR page is computed compile-time, the pages
in VVAR should stay together and not being partically mremap()'ed.

Reviewed-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
Signed-off-by: Andrei Vagin <avagin@gmail.com>
---
 arch/arm64/kernel/vdso.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm64/kernel/vdso.c b/arch/arm64/kernel/vdso.c
index fb32c6f76078..c003f7ee383a 100644
--- a/arch/arm64/kernel/vdso.c
+++ b/arch/arm64/kernel/vdso.c
@@ -235,6 +235,17 @@ static vm_fault_t vvar_fault(const struct vm_special_mapping *sm,
 	return vmf_insert_pfn(vma, vmf->address, pfn);
 }
 
+static int vvar_mremap(const struct vm_special_mapping *sm,
+		       struct vm_area_struct *new_vma)
+{
+	unsigned long new_size = new_vma->vm_end - new_vma->vm_start;
+
+	if (new_size != VVAR_NR_PAGES * PAGE_SIZE)
+		return -EINVAL;
+
+	return 0;
+}
+
 static int __setup_additional_pages(enum arch_vdso_type arch_index,
 				    struct mm_struct *mm,
 				    struct linux_binprm *bprm,
@@ -315,6 +326,7 @@ static struct vm_special_mapping aarch32_vdso_spec[C_PAGES] = {
 	{
 		.name = "[vvar]",
 		.fault = vvar_fault,
+		.mremap = vvar_mremap,
 	},
 	{
 		.name = "[vdso]",
@@ -497,6 +509,7 @@ static struct vm_special_mapping vdso_spec[A_PAGES] __ro_after_init = {
 	{
 		.name	= "[vvar]",
 		.fault = vvar_fault,
+		.mremap = vvar_mremap,
 	},
 	{
 		.name	= "[vdso]",
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
