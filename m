Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D00CA60B89
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 20:48:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vFJzOr3rrUqvXW5oLP4OfgGLTHQIJNdXEjSVbOsyd8g=; b=NKd5oa12N/3KL9
	khZKqfr1nWNME0OFa8HUrXBf2UPQc6qKuqQMpPwrYHaoP0oCxLZQTvr5N3Wug2TRN8rLn1OctbwhM
	Qq53s8Jw0XlmD02+ZPXHoLUGb3gQZR905NF2oDtd9e3e4fRNJftgLQlDnqxWVT/CdG+oIUsU81srv
	6QFxqDhSBLNvMDVDxAUpMOS0k515mccExHmtibmgN0Ju82EjNh8XDkT4B9iMFqgsVFCtJP4Gopwmi
	IdwpANGXfhAnZLHx69ibWDfw9RBbF1WfACsWsZaDmip/0Y2Fczr7UrksCXHt0UvhTFRjpWLd1lbR1
	h0/xKMOSauui08adFswg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjTFR-0002e5-Oj; Fri, 05 Jul 2019 18:47:53 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjTFE-0002dU-H5
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 18:47:42 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue011 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MVMqF-1i83313Aox-00SRHt; Fri, 05 Jul 2019 20:47:28 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: stable@kernel.org
Subject: [PATCH] [STABLE backport 4.9] arm64, vdso: Define vdso_{start,
 end} as array
Date: Fri,  5 Jul 2019 20:47:20 +0200
Message-Id: <20190705184726.3221252-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:J9Iu2hOBd57Q5rq9Xf8IC+BxgXaa2P4hpSWsU2FjYCLv76+DrHz
 8Om4XxSDxit042SEcgbBJojWhWuX3ms8kLLZ0IhZVAbWrjfxqn/8obfIUTFBf1tZGfwY9Tq
 7O71ICLIT6PSSmGFd3yFRqb/wvZHg9z8RoO6UK3B2dchqEXvDIwdj8MpDQWj0ZOA7iGOaiD
 WYtZrPmhiPbCFUe9IOhPQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:7nP5IUNxmBg=:GluX+cDzMCpvsK0wDxyVon
 hxx8ZemSFuhMU8FOCAU/vUcHFfErh+a2DLTfZEhFl09E4ech10S/X/pne8GbU4hJO4wtlZfxW
 B4xr453d2QYywoHHI6WtnmE7H2elddWjcM+dJPmoZyAyr3/GXEL2Ta7YcPmPzccTT60Ty/5c8
 cpXO64PMiM3/wbUVPR2rCUeJ3+lPAEPFl5H/CKaARIBV4YB1U+O4UMxhGE+F9WZJUfZnyunmo
 jRCWnqQzSdgQlU3kySHD3z4s9t2UK4BfHlMUhbqHzRAoII2EkfxJaeCXGdmkmsGyx78CQY/zg
 TIo5SuwFnGiz+3dIPONQZ1ACL8L3H6xXCRqopgNvt+ComAfC10aDVqsOR/0CmeowEOXNmjpzJ
 UujOFG9NFzJpbDvP/0xYmkDWe5PdcMJbbs7+gcla2IrT5yXdy8Hxk1tJl2GUe3sqZlSfgfAh/
 zBPzcttmBhtgOzvHPGwKUQJVNznDlhPC32eXWN9rrnLQsXe3PlcRIVsun8DpKpzeltTsXcSvE
 5PrBozokZucix/q5igEZRSmSVjqRt+63Nq/3BPJ7ZBb85bbl2NOF9lFxs8WCloOmtTDGeSbOc
 cgwjb3uPJwwdEHFg5+KMGCbnYpDchMfGCjoKbtvYsF2lQAxTUO2hefGi3iSnrPV4TAGmswqmb
 xD5Br6J0U0edvnGCYSx5cp0OF+UJ8EiVdQcw8rlsh7mb9J8TG0C2xmPLgFHKb/9XITIjRIhi3
 Qzf7LN/AO0fw4ug5SdTqBMco7djdJGL32gblgw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_114740_868494_DF3B53F3 
X-CRM114-Status: GOOD (  14.60  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 -0.1 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.135 listed in wl.mailspike.net]
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
 Sasha Levin <sashal@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Sasha Levin <alexander.levin@microsoft.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
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
Backported to 4.9, which is lacking the rework from
2077be6783b5 ("arm64: Use __pa_symbol for kernel symbols")
---
 arch/arm64/kernel/vdso.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/kernel/vdso.c b/arch/arm64/kernel/vdso.c
index c9b9a5a322eb..c0f315ecfa7c 100644
--- a/arch/arm64/kernel/vdso.c
+++ b/arch/arm64/kernel/vdso.c
@@ -37,7 +37,7 @@
 #include <asm/vdso.h>
 #include <asm/vdso_datapage.h>
 
-extern char vdso_start, vdso_end;
+extern char vdso_start[], vdso_end[];
 static unsigned long vdso_pages __ro_after_init;
 
 /*
@@ -124,14 +124,14 @@ static int __init vdso_init(void)
 	int i;
 	struct page **vdso_pagelist;
 
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
@@ -144,7 +144,7 @@ static int __init vdso_init(void)
 
 	/* Grab the vDSO code pages. */
 	for (i = 0; i < vdso_pages; i++)
-		vdso_pagelist[i + 1] = pfn_to_page(PHYS_PFN(__pa(&vdso_start)) + i);
+		vdso_pagelist[i + 1] = pfn_to_page(PHYS_PFN(__pa(vdso_start)) + i);
 
 	vdso_spec[0].pages = &vdso_pagelist[0];
 	vdso_spec[1].pages = &vdso_pagelist[1];
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
