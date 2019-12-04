Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DD76112F70
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 17:03:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ExYgKxPYtOv42XmdSiPSkEydD840Z3gbefB/NDoiV1w=; b=QA81xrPK6JBhM6
	8vDXl9yTsiKXNko3WtEwUU9lJggk1AXv3c8qh6/KgtCa1rGt4Wo1L0Yl2N+MaI88fCSPnqIdAsbno
	j9z2cgla0T/xAoxptYX4i2y4caw6pv8XniXATymVB8W48rr8p7uo8xMmgRsQiB3VodjpXcEc4daTE
	BnMNf+TCk6BbxuVx05Z+MIMRB+wFVh7V0Oh1NQGfTAhUMAgFQIWC+BWpnCEbEMFjiyll0g6QAdp6N
	mo9MQ7g62ZK9I0C4j6iBtpsgiJKQ3xLps1rdPRrY7Pg7dbNdcBBVCordkNSkrTyhQ+NuxG56wZ9ky
	d/Q+R8HZOfGoK+zGXl1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icX7h-00038V-U2; Wed, 04 Dec 2019 16:03:29 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icX4F-0007OG-A7
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 16:00:01 +0000
Received: by mail-qk1-x743.google.com with SMTP id k6so364578qki.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 07:59:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=fVYvb4CPMnyIVG1hgy1MDDfoLwRyTtZYsYaQvsi8498=;
 b=dZgMVj5phzD4WJ2lOv72Eli/7A96+5Gpb3Ad7wS4GpAFxm3R0rC/e/T/q93LuYYwPm
 4Uz5Q8I/DWN0wNungTmuJGHv9zyRMvbTlDr5/OzwP5GoC30b30nMCyYmFdgSAwxtMCMr
 s6GVlkYLM0/inwraONhs7ey8QePReOKIsyMKUfWui2nc3itEsnkD96RTEB8rvLSAdnIE
 gtTPLG5LSyobuU4GMuMU/5vT8Hc9i1eSaNPjx2L0ArP8dc3LXawEBRgI5ydHEvRBT4TF
 bSgRb+cyZ1GQ1BQQp9DFLSr5KzZM+QJWqW7HmPTzU/iVWuCWZJxYtxCvbzaIsVERIBY1
 MihQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fVYvb4CPMnyIVG1hgy1MDDfoLwRyTtZYsYaQvsi8498=;
 b=kOf6NIkYoOcROo+J5fELUx/RmJPGp8o/EVHRzy5uPZHTyn3z4bkX426HghVeyyXPFf
 irCl4+mQc1+ujzSY1cLLxM8lhZceOemGRgRoIf+Yj9aaUeltmlhzfAVDRjNTX22xkAd/
 Be1WC0xQHHpMhCZHO/slkBt9z1YXEyCVDfbH/bQwFc5izMeyMSSgAPpkAAe49ngigu9t
 djtogbJnT+64kxlwDsoZv0GK+B7psn+0x4j+aBD8La28B3gRU/vnts5pNmhmx5M9+agy
 c4G7uoei0utDPB/ZdBavpBjXJslUEwDmS0YOaMMLhphSxAzhQIhjVuRR389ODfP5dxpD
 5qkw==
X-Gm-Message-State: APjAAAX7D/yOSVIN1Ac0alS4CzIrLXR/F9B/gdOcaFKOTn6bNNyK2xSj
 IYOq1BmxSAdwiikmvWNlOpGNKQ==
X-Google-Smtp-Source: APXvYqw8jqG/hkE99HXXnyk9J4EEotNsFaWyu6oqW81IWVO4OQqs2JZQD9LGJEKBgl2Hhffa8MbTdw==
X-Received: by 2002:a05:620a:1459:: with SMTP id
 i25mr2498599qkl.36.1575475192642; 
 Wed, 04 Dec 2019 07:59:52 -0800 (PST)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id w21sm4177585qth.17.2019.12.04.07.59.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Dec 2019 07:59:52 -0800 (PST)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com, steve.capper@arm.com, rfontana@redhat.com,
 tglx@linutronix.de
Subject: [PATCH v8 08/25] arm64: hibernate: rename dst to page in
 create_safe_exec_page
Date: Wed,  4 Dec 2019 10:59:21 -0500
Message-Id: <20191204155938.2279686-9-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191204155938.2279686-1-pasha.tatashin@soleen.com>
References: <20191204155938.2279686-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_075955_399539_F3944DAA 
X-CRM114-Status: GOOD (  10.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
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

create_safe_exec_page() allocates a safe page and maps it at a
specific location, also this function returns the physical address
of newly allocated page.

The destination VA, and PA are specified in arguments: dst_addr,
phys_dst_addr

However, within the function it uses "dst" which has unsigned long
type, but is actually a pointers in the current virtual space. This
is confusing to read.

Rename dst to more appropriate page (page that is created), and also
change its time to "void *"

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
Reviewed-by: James Morse <james.morse@arm.com>
---
 arch/arm64/kernel/hibernate.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/kernel/hibernate.c b/arch/arm64/kernel/hibernate.c
index 83c41a2f8400..1ca8af685e96 100644
--- a/arch/arm64/kernel/hibernate.c
+++ b/arch/arm64/kernel/hibernate.c
@@ -198,18 +198,18 @@ static int create_safe_exec_page(void *src_start, size_t length,
 				 unsigned long dst_addr,
 				 phys_addr_t *phys_dst_addr)
 {
+	void *page = (void *)get_safe_page(GFP_ATOMIC);
 	pgd_t *trans_pgd;
 	pgd_t *pgdp;
 	pud_t *pudp;
 	pmd_t *pmdp;
 	pte_t *ptep;
-	unsigned long dst = get_safe_page(GFP_ATOMIC);
 
-	if (!dst)
+	if (!page)
 		return -ENOMEM;
 
-	memcpy((void *)dst, src_start, length);
-	__flush_icache_range(dst, dst + length);
+	memcpy(page, src_start, length);
+	__flush_icache_range((unsigned long)page, (unsigned long)page + length);
 
 	trans_pgd = (void *)get_safe_page(GFP_ATOMIC);
 	if (!trans_pgd)
@@ -240,7 +240,7 @@ static int create_safe_exec_page(void *src_start, size_t length,
 	}
 
 	ptep = pte_offset_kernel(pmdp, dst_addr);
-	set_pte(ptep, pfn_pte(virt_to_pfn(dst), PAGE_KERNEL_EXEC));
+	set_pte(ptep, pfn_pte(virt_to_pfn(page), PAGE_KERNEL_EXEC));
 
 	/*
 	 * Load our new page tables. A strict BBM approach requires that we
@@ -259,7 +259,7 @@ static int create_safe_exec_page(void *src_start, size_t length,
 	write_sysreg(phys_to_ttbr(virt_to_phys(trans_pgd)), ttbr0_el1);
 	isb();
 
-	*phys_dst_addr = virt_to_phys((void *)dst);
+	*phys_dst_addr = virt_to_phys(page);
 
 	return 0;
 }
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
