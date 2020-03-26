Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C3EB1936EE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 04:27:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sqsd7kdu4eh4kyHnKU6i6zWuZB2WkqSQlYVcKlUFoZA=; b=u4NNd39Obaectm
	XviSezQhkIdO9sdrQ6Rx65/iMOpGqvIgBeFaSTfhNb82UiK/0TlFJQpAns5bCqSBMllA+jTHv/Frc
	Rf2ezhhN/uQbqaubcs0PmKv67P8M6zTTzbKi6/2tQ/CubRhTXnvnN3xDxvcg5eRZPMCxi6G8/Cwnw
	anfAKzIBmdADKRoMJw5ezPXIVgFAeJrlB7t9FmroA4+QunbRW4pdOBs1Y76uLjacbkWs00EqcaY75
	on46wRo74IO7CK+WiXty/uI1FpITqBYReCFLYImBmOT/EUDDJ6QzGfxc6APkq8vvOqzoUI1hyjE9w
	Vr/0w1jHa8vzfQvU3PZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHJBQ-0007d0-7z; Thu, 26 Mar 2020 03:27:52 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHJ8C-0004Y1-0a
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 03:24:33 +0000
Received: by mail-qk1-x742.google.com with SMTP id o10so5064825qki.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Mar 2020 20:24:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references;
 bh=ze3FGBZb0nSlBTYQ3vDSCVsFtbgdtnnRlj5C751EbXw=;
 b=f49DFHwQ6bD5X4T6UQG6qlTqIEvg3jahXGHW4JpCoTMg2jEaJI6BxNqCBdECJgFfK3
 4TI/epxBM6OVNuRhLYFo4jmICLO5LM/VcYhlagkyOCPXmvQqG/tUrcW4UrajjCAg3J/i
 nu7t0GPzghw7vKGqT3E0eKZZeIjB4VojCzJnaIgkNWWAZRv4BINCOVe4mktc2HxfAPAe
 d45QCBnsMTjafOfsfWeFhzYbdxSqDyDUiATTddFL1b8T7FNgG01/VsZ9jk/wxRoHr4+P
 9TVuZAZ9WR4x9gl4ppCWZP8/njPwv+C03K7zIiScDSoiqbgSeE1NpbS4WGKA4syFVN0f
 NWaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references;
 bh=ze3FGBZb0nSlBTYQ3vDSCVsFtbgdtnnRlj5C751EbXw=;
 b=nkFP0OKAG3PiNvX2zG8oqmiPMj5OA8kSc/PmmohW24JSfKzUXlrW5anDhOqq+kQkQf
 o9DVtPANz7q1M8EphYT0zLnJ3H4WFN1cIf66OPVYrLHtCiAa4vaoaQSS4HsrKsdNT3iI
 3zTACP81LXbW/3gwAyo3QKp+fQkieUAvtGlhPoRT6KpG6cTDWl/at0oe6gDTlDFjKs9c
 T3Y/jOvJBnewK9iPQ5oREzM7yXQATlT53uRNac55HVRwE2lRO89cbscpSsUuV63w3XX1
 A29sbkabDFmnHuDh350/JUWNJNLkFfJc4Ur8I+EcBfJfQt5o4Qyg3t0k6qzgeUda7Hmu
 XZeA==
X-Gm-Message-State: ANhLgQ3iWpdbH2xEP5ouHvRFyDAKvIMoW6VJcRx2c1BH05Z3cLtsY8GR
 tFqRPHCejUTlOJXquSw09m1Dfw==
X-Google-Smtp-Source: ADFU+vtdrLXfDGYEC5WyjNqxKQP1AFgGN296Vf8D65tgrkwFasA1en9oG0QpvaU+6qDqbwwX7VAE7Q==
X-Received: by 2002:a37:63c5:: with SMTP id x188mr6282164qkb.276.1585193070601; 
 Wed, 25 Mar 2020 20:24:30 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id u4sm620034qka.35.2020.03.25.20.24.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Mar 2020 20:24:30 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org, maz@kernel.org,
 james.morse@arm.com, vladimir.murzin@arm.com, matthias.bgg@gmail.com,
 bhsharma@redhat.com, linux-mm@kvack.org, mark.rutland@arm.com,
 steve.capper@arm.com, rfontana@redhat.com, tglx@linutronix.de,
 selindag@gmail.com
Subject: [PATCH v9 05/18] arm64: trans_pgd: pass NULL instead of init_mm to
 *_populate functions
Date: Wed, 25 Mar 2020 23:24:07 -0400
Message-Id: <20200326032420.27220-6-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200326032420.27220-1-pasha.tatashin@soleen.com>
References: <20200326032420.27220-1-pasha.tatashin@soleen.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_202432_174136_12AF9DDA 
X-CRM114-Status: UNSURE (   9.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

trans_pgd_* should be independent from mm context because the tables that
are created by this code are used when there are no mm context around, as
it is between kernels. Simply replace mm_init's with NULL.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 arch/arm64/mm/trans_pgd.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/mm/trans_pgd.c b/arch/arm64/mm/trans_pgd.c
index c16ae4e2b496..37d7d1c60f65 100644
--- a/arch/arm64/mm/trans_pgd.c
+++ b/arch/arm64/mm/trans_pgd.c
@@ -67,7 +67,7 @@ static int copy_pte(struct trans_pgd_info *info, pmd_t *dst_pmdp,
 	dst_ptep = trans_alloc(info);
 	if (!dst_ptep)
 		return -ENOMEM;
-	pmd_populate_kernel(&init_mm, dst_pmdp, dst_ptep);
+	pmd_populate_kernel(NULL, dst_pmdp, dst_ptep);
 	dst_ptep = pte_offset_kernel(dst_pmdp, start);
 
 	src_ptep = pte_offset_kernel(src_pmdp, start);
@@ -90,7 +90,7 @@ static int copy_pmd(struct trans_pgd_info *info, pud_t *dst_pudp,
 		dst_pmdp = trans_alloc(info);
 		if (!dst_pmdp)
 			return -ENOMEM;
-		pud_populate(&init_mm, dst_pudp, dst_pmdp);
+		pud_populate(NULL, dst_pudp, dst_pmdp);
 	}
 	dst_pmdp = pmd_offset(dst_pudp, start);
 
@@ -126,7 +126,7 @@ static int copy_pud(struct trans_pgd_info *info, pgd_t *dst_pgdp,
 		dst_pudp = trans_alloc(info);
 		if (!dst_pudp)
 			return -ENOMEM;
-		pgd_populate(&init_mm, dst_pgdp, dst_pudp);
+		pgd_populate(NULL, dst_pgdp, dst_pudp);
 	}
 	dst_pudp = pud_offset(dst_pgdp, start);
 
@@ -218,7 +218,7 @@ int trans_pgd_map_page(struct trans_pgd_info *info, pgd_t *trans_pgd,
 		pudp = trans_alloc(info);
 		if (!pudp)
 			return -ENOMEM;
-		pgd_populate(&init_mm, pgdp, pudp);
+		pgd_populate(NULL, pgdp, pudp);
 	}
 
 	pudp = pud_offset(pgdp, dst_addr);
@@ -226,7 +226,7 @@ int trans_pgd_map_page(struct trans_pgd_info *info, pgd_t *trans_pgd,
 		pmdp = trans_alloc(info);
 		if (!pmdp)
 			return -ENOMEM;
-		pud_populate(&init_mm, pudp, pmdp);
+		pud_populate(NULL, pudp, pmdp);
 	}
 
 	pmdp = pmd_offset(pudp, dst_addr);
@@ -234,7 +234,7 @@ int trans_pgd_map_page(struct trans_pgd_info *info, pgd_t *trans_pgd,
 		ptep = trans_alloc(info);
 		if (!ptep)
 			return -ENOMEM;
-		pmd_populate_kernel(&init_mm, pmdp, ptep);
+		pmd_populate_kernel(NULL, pmdp, ptep);
 	}
 
 	ptep = pte_offset_kernel(pmdp, dst_addr);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
