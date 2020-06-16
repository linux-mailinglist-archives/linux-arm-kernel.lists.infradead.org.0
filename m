Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0684D1FAA97
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 09:57:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5dLHcGZSqAQuysiU789l6fzNh1bLp2gzvVbJMdGwv+Y=; b=cZFPCih2n3Oz4EGgmjwVJzBdIv
	QLoWY1LmObq4DlxSNZa7UDRfND9dofbdGeK9eknF76jWhwn+3LzaOQgJGwh4oNhPpuCplSiULh7iw
	I/AR4prpuAQsqVVPBj33lvCzfU+SSQIjmn71UyNZAInTZEZ0HnGiE8IDNhWU4rSPwsOdIsuiWAixO
	RCVm/0OAgPKFvjACBFrGi71RFHJWhNFhH+s42aggUbG0IClQhyyf+PP7GA/iLWTy3qF9pjrUe77V6
	wSI5Bdf3JH0P7rKmBRjB5TJ+SSEk+oKfehSQI9wxqnUpHYOi1D/zPJAwNqr4CKZA0+7bWNGXFma4k
	LnAlnzng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl6TI-0001HQ-6z; Tue, 16 Jun 2020 07:57:28 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl6Ru-00006o-JP
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 07:56:04 +0000
Received: by mail-pj1-x1042.google.com with SMTP id u8so1062552pje.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 00:56:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=hOFeWxf8l/srSoyQCmE9FGPNMQ1rcx/B9OKWA2Lr1tw=;
 b=jAeqV5HhZyYxsZ6KIgb17STQuBSzaVIfIkrSMQqXQaIfT/6CO29PLWJ41t8hnU2hZ6
 RRlwvDlZ762LVTmAA/TnYh8g2Qz9mmqGZP9VJOMhmuHLLDqAwzOYo5y0M2+PYMo6+Fd4
 hq9WbgYrztbgiLFbhTFTFgpUIaqSg8a1GhgBxFlTYgf/J/hHUnGx+2QqZlBY+J4ASr1T
 uRe9p0Tv+7dA8VR02tJ0/q8G1mKuUzhjB/I0us9MRRnC+D9ag7v8aB+Ylc6YSHSN19Ta
 6Mf3lUNDx5PL5k3VXxcFQcxY6zZfR3xNSHcXXXk373+q6KyZGheOSNoVEnY5aUukplNE
 7jWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=hOFeWxf8l/srSoyQCmE9FGPNMQ1rcx/B9OKWA2Lr1tw=;
 b=YsO+N/sFe3c7OTUc4XlE7oZULeV1/o9AaimxZrAiql55ZEoUdm3Uo0f57g5ejOjhGB
 2kCLGPOBZCY5UDC3IK8xlfsa2lpcVxZLpkvmArh2ZyeIOKr9irZsIMAJKGCJMYgV90WG
 LXdrHVcOOYLIrW5HcydlQCWbtI4rW1wv17IAUC5U4ejNww+ceKUWKVMBInMOZ9x7ceom
 w114+pxOSUzWylN/8u3iLQXtIo7PP/a3GLTTXrKtw2/AHLNrgig2rWf0vdPcLkL3RuXl
 RCwiw/Zd9SPr5DX1gkuPLBW3Vkc2Nh8GV8E9tic3fDOxYmOQ34AKyPcuwQ6PEwovD2JT
 zALA==
X-Gm-Message-State: AOAM531k0Anv8+6xsjQrzjv+CEeon0pD6dpc304wrlc0qYELko5j+gBg
 TLU8Ccl3/54PTOCYkTrmMQelNErr
X-Google-Smtp-Source: ABdhPJwOLCQsaIcJ1fFhE4hHC2egwIAnM+ejAPlFCeoi+Hbz5kYsARxJoXcjq2ZGwtsHiTohUaG5vw==
X-Received: by 2002:a17:90b:3612:: with SMTP id
 ml18mr1671017pjb.153.1592294161414; 
 Tue, 16 Jun 2020 00:56:01 -0700 (PDT)
Received: from laptop.hsd1.wa.comcast.net
 ([2601:600:817f:a132:df3e:521d:99d5:710d])
 by smtp.gmail.com with ESMTPSA id g6sm16168984pfb.164.2020.06.16.00.56.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 00:56:00 -0700 (PDT)
From: Andrei Vagin <avagin@gmail.com>
To: linux-arm-kernel@lists.infradead.org,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Subject: [PATCH 5/6] arm64/vdso: Restrict splitting VVAR VMA
Date: Tue, 16 Jun 2020 00:55:44 -0700
Message-Id: <20200616075545.312684-6-avagin@gmail.com>
X-Mailer: git-send-email 2.17.2
In-Reply-To: <20200616075545.312684-1-avagin@gmail.com>
References: <20200616075545.312684-1-avagin@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_005602_722558_8BC5DD76 
X-CRM114-Status: GOOD (  11.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [avagin[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Thomas Gleixner <tglx@linutronix.de>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>
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
Reviewed-by: Dmitry Safonov <dima@arista.com>
Signed-off-by: Andrei Vagin <avagin@gmail.com>
---
 arch/arm64/kernel/vdso.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm64/kernel/vdso.c b/arch/arm64/kernel/vdso.c
index 21bdd0d74f40..68e021324113 100644
--- a/arch/arm64/kernel/vdso.c
+++ b/arch/arm64/kernel/vdso.c
@@ -226,6 +226,17 @@ static vm_fault_t vvar_fault(const struct vm_special_mapping *sm,
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
 static int __setup_additional_pages(enum vdso_abi abi,
 				    struct mm_struct *mm,
 				    struct linux_binprm *bprm,
@@ -308,6 +319,7 @@ static struct vm_special_mapping aarch32_vdso_maps[] = {
 	[AA32_MAP_VVAR] = {
 		.name = "[vvar]",
 		.fault = vvar_fault,
+		.mremap = vvar_mremap,
 	},
 	[AA32_MAP_VDSO] = {
 		.name = "[vdso]",
@@ -476,6 +488,7 @@ static struct vm_special_mapping aarch64_vdso_maps[] __ro_after_init = {
 	[AA64_MAP_VVAR] = {
 		.name	= "[vvar]",
 		.fault = vvar_fault,
+		.mremap = vvar_mremap,
 	},
 	[AA64_MAP_VDSO] = {
 		.name	= "[vdso]",
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
