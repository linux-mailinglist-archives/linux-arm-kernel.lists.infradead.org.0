Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D86F112F95
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 17:07:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=voVvsUYSMW5hi6rEsHEzOOKV17l9mTenzxCsJIg8DoU=; b=TsOyHJ7BinBKHH
	9J7rRNFEuZ0THp3VAMl9iRD8rUnLjQhx7VDbsNvmtJeDeeKiZAX6hKlMnfwMcGKkq1Fk5HE1n03DC
	SUN9zoADd4YnSrIVqJn3h8Z1m/1F2HdrTRuNcuMlIhbNsG95KYtRuZwObItxw4jP7dzobIR0TpowV
	CwZO3qNDg8kRS6NQUtY3I1KFmYpsB3w34fUzP4yk4hBpdz5nV8+cU1cN0uRTgnX6K5ZVEXbQ41bam
	/lcDvaRVsdaI5CA8Ah0JhNEavlfWZ+E+MlU0t46dWCb4eNtcQwmCji5wP0/ajyA7kfcUogmhebHpP
	M7fmB/awdgLV6SUNfnPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icXBL-0007hv-Se; Wed, 04 Dec 2019 16:07:15 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icX4O-0007ZF-6Z
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 16:00:18 +0000
Received: by mail-qk1-x742.google.com with SMTP id m188so370102qkc.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 08:00:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=DKzlVpcQACwKyKSnVgM8/kIMtrkAmhYmiL9LEjDkgAw=;
 b=FjadenDBB0WXDBFJdWK7wBZKtljVrQ27er7ggcYbGrfj98oRl7SVlOIDfJ2h9HrPtE
 wIqr2ofYxOfX6BMuSzWrC0sDIpsGXZTC7vbIDEQdASHo2pj94l2BfblVKhs3O6gzASbA
 TGPBNG1idbWrNff4njPvq10uxySF7fBdj4Q7+cq0l2rIGmSJmmB/Tv17w49pIZiQzVvi
 pLKAEc6jvaFbhTyqdG0Wa0MwrLSrQKN8nriHBroKG1N/uBDiekFN9S7NYt9rhWoAbcxY
 jV64qMQvSaCxRqmF56MrsKGlYdwewMjSpycG6KwB9mz9NTuiHu/hZpCYHFV++BqkcGqO
 KIKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DKzlVpcQACwKyKSnVgM8/kIMtrkAmhYmiL9LEjDkgAw=;
 b=AQw/nbx3nKx/LRNgkfQ30TxpQRDdLPHEeqouZCat96ChidJP5aAWCx47LqK2Mvunlk
 SbeQDqCQL99E1z3pAlthFqSqGYmZAN1DPYWBTkciVbeOTY8o3OnPQ8FDI/q4uOfOjIlM
 AT4gr3HryrqNeYn7x/cxp+p8gkT7ocKBHsw42Ts70gQyUo02tsAOBwsFPmbUpe/GBcbh
 ODM0BcVulE48MBQBK94OX4/O68VoXj6qbyXH6cUVDFIMo7YazjYRMyE8KuCsDG54mxmu
 PnuYnqDOd+sWBJsoKdIeYiT4EfLxIJOYon8qKyrToWoYGeVroF/kotES3JF2/Gv+sGww
 NZ5w==
X-Gm-Message-State: APjAAAU502q2sbLMpWjRquhrk1WqnBzSGCQeMersvRbURC891dwotmr2
 4z+iYQw3UQ4ryNWu/9nZAfZHGQ==
X-Google-Smtp-Source: APXvYqzUVnv0sHBRbFLKAkGAwpPFGyFDkQYb6mc2NV6YjM+pV7Ku7ddKMWBd73yxnZ5kCDE4HXkdwA==
X-Received: by 2002:a37:514:: with SMTP id 20mr3503569qkf.321.1575475201461;
 Wed, 04 Dec 2019 08:00:01 -0800 (PST)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id w21sm4177585qth.17.2019.12.04.08.00.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Dec 2019 08:00:00 -0800 (PST)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com, steve.capper@arm.com, rfontana@redhat.com,
 tglx@linutronix.de
Subject: [PATCH v8 14/25] arm64: trans_pgd: pass NULL instead of init_mm to
 *_populate functions
Date: Wed,  4 Dec 2019 10:59:27 -0500
Message-Id: <20191204155938.2279686-15-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191204155938.2279686-1-pasha.tatashin@soleen.com>
References: <20191204155938.2279686-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_080004_537742_C236E7F1 
X-CRM114-Status: UNSURE (   9.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

trans_pgd_* should be independent from mm context because the tables that
are created by this code are used when there are no mm context around, as
it is between kernels. Simply replace mm_init's with NULL.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 arch/arm64/mm/trans_pgd.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/mm/trans_pgd.c b/arch/arm64/mm/trans_pgd.c
index df3a10d36f62..2b02a646101f 100644
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
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
