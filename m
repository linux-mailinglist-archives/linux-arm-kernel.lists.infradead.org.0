Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3B81ADE84
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 20:13:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/whCcRRCFEtbt2hzb8Sw+/vjHn2bxxe/y8Tlz6AtowE=; b=Mm36cdMrO/LjWq
	Hdmpsnbj2gFG5GC6qGip4hZSLb7ryg6y2Yujo7ByB9ya5zhA2EXAiCVK+mHXb2cqqO+gl2ghCofwn
	ANk3B6BBKusLJObrZ0mfPIuqvmm1bfS8hTQt13bNyEla+S2nf1ac2R5kqzsRJP/8uaLYtXoZM98Qn
	9hU23kGe58DHxfU/DBix8gJCpvmEFxydMB0bC53cb1k92TB0da67HIt5CVM2fqPogSR8GTIBG3oFl
	KckG5zCst3s6FPOZ/C8E4ubvYvpP/gfc6/5Cc/Xdak1uKFC7zzYQ8hA3pqX+0IKZRPZYgnnxF3Ofk
	7juwbvoFqEHLkyHx43jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7OA7-0000Qd-Oi; Mon, 09 Sep 2019 18:13:15 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7O9L-0008Ht-Jy
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 18:12:29 +0000
Received: by mail-qt1-x842.google.com with SMTP id o12so17315688qtf.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Sep 2019 11:12:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=KdFLASV7D2idWllIjItORA3EXDrjQlb3wnbM2/KPLUA=;
 b=OkCmWbdatFX5LAIn2tZSLcvkwIY8ATYEygi2Y5l77xTfEmsig7FuHjhR+Tc515QvuB
 euMog6/tyZCybSHTwlh79lmWstJtQD3RSy5kH+1xIfPremKMTqJWefDoRzxNP2TLUsUs
 A8mnkxLDs8vT8FE9iLekjK4ByYIMB1NN3YTPldP3X2f9sUKe/mLymg0KFvbKoyLBs/Gn
 j9lDolC3WKF+dc5DLnUZsHk8vVHh9Gj4g3oIHklgpDlJwdONuTr8iJNBwEwkKdeX1KU4
 g1KI3/6zAlekor5jSiDFbhluVvtrCqObj12PpnCxo2VKSdot0KUik0DDJKcvZWQxzbaN
 LhxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KdFLASV7D2idWllIjItORA3EXDrjQlb3wnbM2/KPLUA=;
 b=qwEC7Ei88JYCly1qIEwuCVmkwTAC1R5wTBJU3YYKJ1Uf5bL5k9BhxDjyLEwxLSOyaF
 yljrUUSi79WUaOugPJ/7oXt/buYV8F3nL7BROvxF8JRkXWxDoRaVb6PE7WBLXEWoVpQv
 vfqfVU5pm4aiytsXLz12kCre8mtotjIWt6vgv+Nj2zdH8kOA/6LvXBpkscBjtc2BQnfx
 Q+txPAG9RoJy1WwnN1Y2thdFJN5COc6NwJ/+1C1xP7KBgZir6Kc83iLN5b0gCyKxMUnM
 1+v0dDSgI5So0h+0YcjQzFusyFTSLAn/ZWVlmKM6v0A9dnxhsbAj+gjq0Kda1nyopCcN
 ml0g==
X-Gm-Message-State: APjAAAWtikvUPlrYoeVJbxo0H2m+UbTSX78NcrgkhYTJZZMS0YLef7XE
 2sFV00DJl+38nGut9DtyxUFPyg==
X-Google-Smtp-Source: APXvYqwN9aenhg2yxq0xot4VzXYd6PfSrS/JrN5n4RjN+y0s2BVwk+1HvDraVw9P1etriXpA8qtInA==
X-Received: by 2002:a0c:e64e:: with SMTP id c14mr15415087qvn.17.1568052746853; 
 Mon, 09 Sep 2019 11:12:26 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id q8sm5611310qtj.76.2019.09.09.11.12.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Sep 2019 11:12:26 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com
Subject: [PATCH v4 02/17] arm64: hibernate: pass the allocated pgdp to ttbr0
Date: Mon,  9 Sep 2019 14:12:06 -0400
Message-Id: <20190909181221.309510-3-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190909181221.309510-1-pasha.tatashin@soleen.com>
References: <20190909181221.309510-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_111227_697870_9F8E205F 
X-CRM114-Status: GOOD (  11.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ttbr0 should be set to the beginning of pgdp, however, currently
in create_safe_exec_page it is set to pgdp after pgd_offset_raw(),
which works by accident.

Fixes: 0194e760f7d2 ("arm64: hibernate: avoid potential TLB conflict")

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 arch/arm64/kernel/hibernate.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/kernel/hibernate.c b/arch/arm64/kernel/hibernate.c
index 9341fcc6e809..025221564252 100644
--- a/arch/arm64/kernel/hibernate.c
+++ b/arch/arm64/kernel/hibernate.c
@@ -201,6 +201,7 @@ static int create_safe_exec_page(void *src_start, size_t length,
 				 gfp_t mask)
 {
 	int rc = 0;
+	pgd_t *trans_pgd;
 	pgd_t *pgdp;
 	pud_t *pudp;
 	pmd_t *pmdp;
@@ -215,7 +216,8 @@ static int create_safe_exec_page(void *src_start, size_t length,
 	memcpy((void *)dst, src_start, length);
 	__flush_icache_range(dst, dst + length);
 
-	pgdp = pgd_offset_raw(allocator(mask), dst_addr);
+	trans_pgd = allocator(mask);
+	pgdp = pgd_offset_raw(trans_pgd, dst_addr);
 	if (pgd_none(READ_ONCE(*pgdp))) {
 		pudp = allocator(mask);
 		if (!pudp) {
@@ -262,7 +264,7 @@ static int create_safe_exec_page(void *src_start, size_t length,
 	 */
 	cpu_set_reserved_ttbr0();
 	local_flush_tlb_all();
-	write_sysreg(phys_to_ttbr(virt_to_phys(pgdp)), ttbr0_el1);
+	write_sysreg(phys_to_ttbr(virt_to_phys(trans_pgd)), ttbr0_el1);
 	isb();
 
 	*phys_dst_addr = virt_to_phys((void *)dst);
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
