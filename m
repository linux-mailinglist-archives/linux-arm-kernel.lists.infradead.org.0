Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A02A6BBD01
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 22:35:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0okwdDH8atGyXDLKmsXAwsEhvwhWi2ugu3PvAyAaaEo=; b=M8tLZZ6UPHiNVM
	+UsVWHG41uxGfJzVdpZkK0RVRqBilhhUpByw2C0Xu0NYUCHo8Lwoioi6R9EZ0Tf+xP89/oNwmwEpD
	oQk5ORlyqbBy/3377LC1oDySB3n2QZmwVjrysb8ohQ8N6rS25jJLoYpqaFXEwkivswu9DyOoOLXMk
	JbkLg/XaVl4d6kUTHauRtn1Sf8eYZtWVjm+cvv/ZJL7v/CeS5gUOr95wLJe/8tRaRjjzh0aYJimlg
	kBK4pbTzrpp9LM2RCZPu2u+DLV5BDsIJdMMYi+F7V2xiAMeoGoGUkpon8Hs1wqqRCmCedC7Pj7oHj
	5gYXdCuRh+DlHaCm4ROA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCV3o-0004Mh-RC; Mon, 23 Sep 2019 20:35:52 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCV2h-0002EG-VT
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 20:34:45 +0000
Received: by mail-pl1-x643.google.com with SMTP id d22so7001341pll.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Sep 2019 13:34:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=3zTijyt8B1oVtT9JT6yCKls7nJQIDBWuYolaWDAK7ic=;
 b=NPdkNIm0wrZOKAEjjebCfOXhVt9BA9UfqiHQ6RuQplwNC6RxIM1b11Cd8A5afWNV07
 O6nrgyrp1NE11jqQQCyB9u5TPHar+d5IM2aGGaZIYmpdW8dv7YMiMNhr1NSeN1HdA17Q
 qA5tfNc/q4JkZV2xI+YaOcH/q+gypgvpqre3Jkl1CqhZ7D587jfQ0Spvdkvxzjv8zD2N
 CRZ62EB12Q0TusTaPfzTP14sUgiy/v1N1+PCc2ulUmZTK1P7yRF5UBuYnlTdZVPkmV33
 LOXk1q2Arz2juRQsSya+z99tARblhJgNSrG3P6W3AXLNVCUaP7uV2C1cIZnhzMYJ/rur
 HjSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3zTijyt8B1oVtT9JT6yCKls7nJQIDBWuYolaWDAK7ic=;
 b=jazzxZoOpmVKxbH2JskkXMjR6EUj6hFa+J4C66aoDjycTYmBBmCZ1aIczT6eMF/5io
 y0FsBHrE0FSf1hrmLHXvINju0uKAoIMfo6W7KKunQBF4o//8sGHJYvMf1lVsSEzvWjBO
 qxiUQolnANi5lVR19Yxt0BRlUV1hWhCBSwiLVFZVc/U5zi3e9NjtExiq++eHuGEEV4Qz
 1yQ8icwzLgTPzyVsxFcLxWJ1zdPmfd/9hAdXWxawIBoV43F8UcSh6yEMj9tTtyilPQ7h
 Q+QJLCnzXDw0dbPq/UKrZ6aWNAOvrHzivpOlp30tk8zzjwrOIEzrwVsJoBDdWfRlwzE8
 bt6g==
X-Gm-Message-State: APjAAAXUjvIKWe+miOC7+uVYUz2iyxU6Wmwg+jXghJKda2ozWvO60GjI
 BUzUVToWhJ9vWK2znv3cvsfehQ==
X-Google-Smtp-Source: APXvYqyM+tozPszKt/AHnpXbGQE8m+WydlkTbUy8bM7XQTkOKWP6qGml1eU2fXHZcpiqnRJpO7UwYA==
X-Received: by 2002:a17:902:ba89:: with SMTP id
 k9mr1747223pls.44.1569270882293; 
 Mon, 23 Sep 2019 13:34:42 -0700 (PDT)
Received: from xakep.corp.microsoft.com (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id n29sm12798676pgm.4.2019.09.23.13.34.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Sep 2019 13:34:41 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com
Subject: [PATCH v5 02/17] arm64: hibernate: pass the allocated pgdp to ttbr0
Date: Mon, 23 Sep 2019 16:34:12 -0400
Message-Id: <20190923203427.294286-3-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190923203427.294286-1-pasha.tatashin@soleen.com>
References: <20190923203427.294286-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_133444_021651_A1134BF9 
X-CRM114-Status: GOOD (  11.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
index e0a7fce0e01c..d52f69462c8f 100644
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
