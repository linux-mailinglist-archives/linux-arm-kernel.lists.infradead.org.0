Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4824E952
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 19:37:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SqxKoI/qNBLPwze2YK5c0yTHy58hJx5RPjxn4ZZeRPs=; b=V2h7aVw1lS7OhX
	ziekzxx/KAxCVVGszkeuIhrYEwREzMsDvHymACEk7iER23/M1OAn2jnSH1PbUs8oFXev+haMiqhVa
	pkbvxwt0LjR2FPrKFAyvTrAXLeIO4gNeiGuNTziLLTNZ4LoJEsYTykYhjqFygEzxEu+IyK1FSMmnN
	yUXMOMFtquLJumJhTHKvV2+tkh02It6Mvr9se5kwI5XYLNIDLxAZFZun8od+G+YalgmeMksK6TsOZ
	aTlNnbMBd0YFWyan50SQOfSg437ogu4vpVQ4T0qtbUMJANj87DMWhHN8LMV7lZ2bJVylAtgKnVAXN
	VBzRKOJ/fP3fMd4doaYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLADx-0005NC-Vn; Mon, 29 Apr 2019 17:37:53 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLADS-00059U-Sa
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 17:37:24 +0000
Received: by mail-qk1-x742.google.com with SMTP id c190so6441419qke.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Apr 2019 10:37:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=nvnWUGFqH95OBjKoRYHHb96ddSAj8nCyrjhcWgd3CDw=;
 b=bWqiVcnRj/Vd97tx4zyzrejGtpdVMQ0UFD0o2qJcWQuAZWnEdAnWyaipWP7zob7o7A
 Ra51WcsiMK0BC++h98ACNGCqNIarwvYtJ3lra2c1TvmHnCpdbTI9DbavgqP02S8hREFq
 LCxSytLcGt4FNW0WQwaKw8MgwCHevGQdNX7rBwHLxXLy3gl2QM7p4s1nZfSUXOnkZmoQ
 Lbkbn5qnpvsavdq7H6Pl5mNpf5BoMl7fgZH8dvuMMOnkI7LityhmwMH9qoQEdsyiW4HO
 U7nUa71zuLcBnM19Hz5IxvBgN4C7x1yA3bC63zEGy4YKBuCdNPvOl/l+ODb/t6l1Bdqa
 +hdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nvnWUGFqH95OBjKoRYHHb96ddSAj8nCyrjhcWgd3CDw=;
 b=ZNqquNHBJ33L7r1qUf2nvydwH0PsoqxjpPgVYB+08F1KWdTzJoLfEzcugSK2Pun1pb
 XvOt3xivpfgPwytR9KVDw+lIdDN7b637s1YAHmcNbZvSRmIFuALruNFF/aYKLGT98VlD
 EEqDyBvSUc28z3oO8csS7hPEl+NncpAObWrhqMFjMe8mkr6isksFDhIh146UJKSB1Coc
 1b5zdlEjI/ldEhWpFDTLH5t3Av6XveFUlOGC/o+R6cdlNPChHq4XFotpvSq320BIhPCB
 UwHPaYQl1mh9ZPuV8GegmeNT1Y4yGUssgUWmI9gdmEjPshRHcKjwvl2Gw8j4cOCrklwW
 +lUw==
X-Gm-Message-State: APjAAAWcG8LttMoUMYAfsrFTqdPWVNL3cDCtpab8GnEfUyoETAnlnIat
 Xr39W+5NAJH8yg+CCpqs5hVuHA==
X-Google-Smtp-Source: APXvYqyDR1sXcSEAZU/tvwIMNEhwty8wwd269Y2/rO40JCaUuY3rcPAbpIdrHEQc/6u+v7vtffq0yA==
X-Received: by 2002:a37:a514:: with SMTP id o20mr15647617qke.41.1556559441746; 
 Mon, 29 Apr 2019 10:37:21 -0700 (PDT)
Received: from ovpn-121-162.rdu2.redhat.com
 (pool-71-184-117-43.bstnma.fios.verizon.net. [71.184.117.43])
 by smtp.gmail.com with ESMTPSA id 74sm4710182qta.15.2019.04.29.10.37.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 29 Apr 2019 10:37:21 -0700 (PDT)
From: Qian Cai <cai@lca.pw>
To: catalin.marinas@arm.com,
	will.deacon@arm.com
Subject: [PATCH 2/2] arm64: remove pte_unmap_nested()
Date: Mon, 29 Apr 2019 13:37:02 -0400
Message-Id: <20190429173702.31389-2-cai@lca.pw>
X-Mailer: git-send-email 2.20.1 (Apple Git-117)
In-Reply-To: <20190429173702.31389-1-cai@lca.pw>
References: <20190429173702.31389-1-cai@lca.pw>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_103722_945583_FB5DEAC0 
X-CRM114-Status: UNSURE (   9.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Qian Cai <cai@lca.pw>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Due to the commit ece0e2b6406a ("mm: remove pte_*map_nested()"),
pte_unmap_nested() is not used anymore.

Signed-off-by: Qian Cai <cai@lca.pw>
---
 arch/arm64/include/asm/pgtable.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/include/asm/pgtable.h b/arch/arm64/include/asm/pgtable.h
index 74ebe9693714..7543e345e078 100644
--- a/arch/arm64/include/asm/pgtable.h
+++ b/arch/arm64/include/asm/pgtable.h
@@ -488,7 +488,6 @@ static inline void pte_unmap(pte_t *pte) { }
 
 #define pte_offset_map(dir,addr)	pte_offset_kernel((dir), (addr))
 #define pte_offset_map_nested(dir,addr)	pte_offset_kernel((dir), (addr))
-#define pte_unmap_nested(pte)		do { } while (0)
 
 #define pte_set_fixmap(addr)		((pte_t *)set_fixmap_offset(FIX_PTE, addr))
 #define pte_set_fixmap_offset(pmd, addr)	pte_set_fixmap(pte_offset_phys(pmd, addr))
-- 
2.20.1 (Apple Git-117)


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
