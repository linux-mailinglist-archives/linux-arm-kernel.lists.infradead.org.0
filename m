Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1574A60B99
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 20:56:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FrXniU1Op4pcY0R2/yVboLqJVww5UCd7lNUQtmbP7to=; b=XeGa3EyTsieNhD
	tCWXn1YISAtSOwzQFZEZk6EiM7cfDT2rVZZa7e63plnmk7G4IoRIlgmJS0nXI1cNWqbp8EXrJg/rT
	+sa6hdm/yHIOi0bm2uTLWejcJxVsfxVXQJGrdbd0ssV38zA78eT+6s4U/x/MG6jJcMl+pAbTROyNj
	1enr0oKQcGb34zeMiRZTjVPXEEoMpTXfPyuNgPiyP3MBvHN8L7wBZeDAy4T3ZYII7heIJF77dtvRq
	f4dLsf61SfJdCZ/6MwrC5WWu4NYqgsh3mo56syEqjoQ03OTvogEqnS2TRMfXdgS+cf3GPbf9ZSAMu
	AagGHvOFlxeJ4+E1jlEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjTNg-0005YR-6I; Fri, 05 Jul 2019 18:56:24 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjTNS-0005Xo-Q5
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 18:56:12 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue106 [212.227.15.145]) with ESMTPA (Nemesis) id
 1MFL8J-1hlPCN00kL-00FjKe; Fri, 05 Jul 2019 20:56:02 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: stable@kernel.org
Subject: [PATCH] [STABLE backport 4.9] arm64, vdso: Define vdso_{start,
 end} as array
Date: Fri,  5 Jul 2019 20:55:50 +0200
Message-Id: <20190705185558.3655220-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:9JINqZTxsunxdoxm0iUUSQeQ4/ecEkdB/hce9tuBRM0t29UkQyB
 lwdaoYveWTZgF/lUUJRSrqK5WYjQEc/k/B3bNFv2gb4NGga/CJxMU+NjQfEXT5gqJQt5kuo
 ZIons8w8mls3aB9ApHEnSFneR8RVUzIEHFM6caPOzmfKpEPQ4qNwFkjikgCKvQzq8szf9bK
 I3Y3ygKkOawd/NWlaivqQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:qLH4Ljn1ftU=:7RYumwgeDzndatUw45Gd63
 ankahKZDnMs8XbshANZqkIXJWYw+tKq4O4ySHlOhOuVekatL3/OZ/PWpMIvepxQ4jYTTseMAL
 D2Lwf7INkibOSaGg1/Eoo8ClWXQZ12MdSGun7BrflypAZjXnuqosuMtplMwTkdld2cC5YvLBW
 tYlqcXqfkzMqdcOUpgY40AxRWxkOJj0UZmHF8S2NJqLZp9ako89YdArPE/qAdr0SdM/Xg8mDs
 mMzCZm5VXJbwjskhasHVFRiwYeV3GjBST+hyfwOQ7Frd9Ailqn8DVpZ8dOEIb+VfifAt4Hlz0
 uMLvUpts4xuJFepYSagTZ67NegJrBfAKgVMqeXQGMnzUkK4JqzgpHK/VXRDxeeiiQa+g5Pg7C
 l1MWXr7PQA8AHZc1nTuYg39Ko3PbZJCNKLQZhSy6sTrPLggOQMH9Hdeg3annYY9dbfdgD+Yye
 l7aLSJRiCfUZA53vI51/eLHzCgsVXqAODgvOY+pe2nfVGqElXrv+JTu67RB9Rh3AwhQfBWbrO
 hKbKPCPGB0jPqkFh9DVefMw+lIx75MwDOF5zJJRflQRB+c1+v7Y0R+wj/bKLkVh2hvmgHcyBA
 q1I63aheIZu2AoC+NUmOJtYCq7eTp9TvPDcHzuuP5T9LbqdHsZVUEE9KUj6ibgdS+xOb48tai
 PtDKRxILS9xvJAIvdeesvCglw1pGNbAYZApVwMXppFEHlyzfXN4hnMHpwK2z9Gputf6thSCEK
 ZTG6x/wWfQPWxr+ozBXhNhAklu9pxcSE9y/Gsw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_115611_145853_5C74DD77 
X-CRM114-Status: GOOD (  14.77  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Jisheng Zhang <jszhang@marvell.com>,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Sasha Levin <alexander.levin@microsoft.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Kees Cook <keescook@chromium.org>

Commit dbbb08f500d6146398b794fdc68a8e811366b451 upstream.

Adjust vdso_{start|end} to be char arrays to avoid compile-time analysis
that flags "too large" memcmp() calls with CONFIG_FORTIFY_SOURCE.

Cc: Jisheng Zhang <jszhang@marvell.com>
Acked-by: Catalin Marinas <catalin.marinas@arm.com>
Suggested-by: Mark Rutland <mark.rutland@arm.com>
Signed-off-by: Kees Cook <keescook@chromium.org>
Signed-off-by: Will Deacon <will.deacon@arm.com>
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
Backported to 4.4, which predates the rework from
2077be6783b5 ("arm64: Use __pa_symbol for kernel symbols") and
5a9e3e156ec1 ("arm64: apply __ro_after_init to some objects")
---
 arch/arm64/kernel/vdso.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/kernel/vdso.c b/arch/arm64/kernel/vdso.c
index 97bc68f4c689..908bc5ab94c1 100644
--- a/arch/arm64/kernel/vdso.c
+++ b/arch/arm64/kernel/vdso.c
@@ -36,7 +36,7 @@
 #include <asm/vdso.h>
 #include <asm/vdso_datapage.h>
 
-extern char vdso_start, vdso_end;
+extern char vdso_start[], vdso_end[];
 static unsigned long vdso_pages;
 static struct page **vdso_pagelist;
 
@@ -115,14 +115,14 @@ static int __init vdso_init(void)
 {
 	int i;
 
-	if (memcmp(&vdso_start, "\177ELF", 4)) {
+	if (memcmp(vdso_start, "\177ELF", 4)) {
 		pr_err("vDSO is not a valid ELF object!\n");
 		return -EINVAL;
 	}
 
-	vdso_pages = (&vdso_end - &vdso_start) >> PAGE_SHIFT;
+	vdso_pages = (vdso_end - vdso_start) >> PAGE_SHIFT;
 	pr_info("vdso: %ld pages (%ld code @ %p, %ld data @ %p)\n",
-		vdso_pages + 1, vdso_pages, &vdso_start, 1L, vdso_data);
+		vdso_pages + 1, vdso_pages, vdso_start, 1L, vdso_data);
 
 	/* Allocate the vDSO pagelist, plus a page for the data. */
 	vdso_pagelist = kcalloc(vdso_pages + 1, sizeof(struct page *),
@@ -135,7 +135,7 @@ static int __init vdso_init(void)
 
 	/* Grab the vDSO code pages. */
 	for (i = 0; i < vdso_pages; i++)
-		vdso_pagelist[i + 1] = virt_to_page(&vdso_start + i * PAGE_SIZE);
+		vdso_pagelist[i + 1] = virt_to_page(vdso_start + i * PAGE_SIZE);
 
 	/* Populate the special mapping structures */
 	vdso_spec[0] = (struct vm_special_mapping) {
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
