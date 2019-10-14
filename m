Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A45CCD658F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 16:48:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pO/gPAv8N/IvYkapmp07nAq5hQdU8FARpOisjTpNQ+4=; b=kcpfNsmtZqA0BZ
	FAagJb+I7Rzg3/wEJQEwiByNaMnAmybR5IIR3bbrh4sZoe3OshiMd5yPqQQnqFvaZDxjqkqrouwpC
	o6YRhpiBWOHuHIsHwgu1hmsI3jjiluhkJ08SDmZbAt/LsGCkc+1AAhrP53y7GJ+KQz4SWW7f8jIcx
	Eto8yBqGfXscV8mnzVnMXjgdskPvA6tYX01ZF182TnnRHwjffzreotqIB2+7bdxxDfSuhgLi742o9
	gKE37HtCe1FicBnT0fzulZAApv4nEhaqfVnMz5H7SB8t54eBjKfkVYxqULCQziVFpn79YJQGLOREA
	9RX9OdklLlraEv6bX+Ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK1eK-0008A1-CT; Mon, 14 Oct 2019 14:48:40 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK1eB-00089D-6B
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 14:48:32 +0000
Received: by mail-qk1-x742.google.com with SMTP id h126so16094932qke.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 14 Oct 2019 07:48:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=JbF4z6Po+L7uELtvdMJOGe3JlbdY9qB4rUYqWGj1Jjo=;
 b=apn9r32Fkdb3gKR0IDz6l0B6b5jFruaQ2x60IIBI0cQZGzTpLbDfFHfuKgL1o7ISE+
 9+kiU11Ir/MaJLMRI2nGXGNB06/xK/rVMoyKR3GBpkOl/oWCF5py7YGV7C6rVCkNiekq
 Om8BY5kGZRUGGL2KbCZi4qznGAoTxdccQzG7K1XVZuDx7S7qOGjsOVEij7vfRMrXZVpp
 owCvJsrg4XBKRBiVJl2WJo7USRaojC8T5yEREMLQ/bWiDouDNqP0LXddoTYhtHAYQbeM
 3G+STd63oOBvztiAZV4llOLahw/ncibKbdMzdfpuFhx8i3rfFJjLNDAHvWh+TzL0h1oP
 710A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=JbF4z6Po+L7uELtvdMJOGe3JlbdY9qB4rUYqWGj1Jjo=;
 b=byat1TyQiwZoz7I/p6cHDeXlLh03I3NQ0K+a363VOh8UaNImp2qQ1FbQBMLlqAUYH/
 hmkYxgvmuzj4Ibw8zEBYDzIqwEGwl3gWq4NeYhMiWJgr9Hgbz7MqDvADMgx/eHvOcTZr
 ziK9WZ8sq6lsNHbs5hmxonHa/hFkqWPBwfirTiguz4ZCsOTFyzlCLzh8/eYdf5xpVnCG
 rgJI6FbXN4sJzzkI6Ea1R7M67NWasi3nANj0+cL9NKI/KuqU3nFACIS95dQLO1yNwtRv
 SskoBTC9BZtQJUSaQMEOrfhyO6Hw41q3GmUyqF+646suWyJh77xwfb8yG24V1civcWOe
 9GzQ==
X-Gm-Message-State: APjAAAXUvhm11Ao/eyMdgtPOJwzx63aSQwNm+1r+6YMC1BEN3g4UDhzY
 VuP7sWlZWFNzs87iMb21zg/k7g==
X-Google-Smtp-Source: APXvYqy2fGQKFYZ7/E+TOArAVSi2bDSBKCavlDZJ5/ZyDDWiVT4LH6C1CIF02J7b7Y3Nzqe0Zo08hQ==
X-Received: by 2002:a37:67cb:: with SMTP id
 b194mr29937925qkc.238.1571064507496; 
 Mon, 14 Oct 2019 07:48:27 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id h29sm10517230qtb.46.2019.10.14.07.48.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Oct 2019 07:48:26 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 linux-kernel@vger.kernel.org, catalin.marinas@arm.com, will@kernel.org,
 steve.capper@arm.com, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 mark.rutland@arm.com, tglx@linutronix.de
Subject: [PATCH] arm64: hibernate: check pgd table allocation
Date: Mon, 14 Oct 2019 10:48:24 -0400
Message-Id: <20191014144824.159061-1-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_074831_232514_7BEA1C3E 
X-CRM114-Status: GOOD (  11.48  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There is a bug in create_safe_exec_page(), when page table is allocated
it is not checked that table is allocated successfully:

But it is dereferenced in: pgd_none(READ_ONCE(*pgdp)).  Check that
allocation was successful.

Fixes: 82869ac57b5d ("arm64: kernel: Add support for hibernate/suspend-to-disk")

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 arch/arm64/kernel/hibernate.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/hibernate.c b/arch/arm64/kernel/hibernate.c
index e0a7fce0e01c..a96b2921d22c 100644
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
@@ -215,7 +216,13 @@ static int create_safe_exec_page(void *src_start, size_t length,
 	memcpy((void *)dst, src_start, length);
 	__flush_icache_range(dst, dst + length);
 
-	pgdp = pgd_offset_raw(allocator(mask), dst_addr);
+	trans_pgd = allocator(mask);
+	if (!trans_pgd) {
+		rc = -ENOMEM;
+		goto out;
+	}
+
+	pgdp = pgd_offset_raw(trans_pgd, dst_addr);
 	if (pgd_none(READ_ONCE(*pgdp))) {
 		pudp = allocator(mask);
 		if (!pudp) {
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
