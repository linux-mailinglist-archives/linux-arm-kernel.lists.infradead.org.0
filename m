Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37A70D79E8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 17:36:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UrzJ/BunIN/l3zYh3Boy+ZF57KLN+bkYk0FMchbPjaQ=; b=ZjkIjDWWFlUnFS
	UsC9msmgmeNPg5Zq7eNo+lkn99L1ftRvbfn7epMNcAg6BU0rLqMpg8W0einnTETnVle5c7Tfk3esy
	P8LruyBVkdPUNlrTlt7UI+31QyTW0VqFCQvawDti/PzR8UfFfHyBfU7c1rDTwl5H/A8OpPh6E26Og
	1dyI2QWCT88iFQ0MDLv+EuhtgjJ8P6zeaDF4wLSa/G1Sg64RfQle7XC3h7OX+WE+tklTwXbkcWgwx
	SKKj0rVSDAHSoBnoBCdz8CU4sSq4FM9os0emqzG++h+2FvFmz0SWGsHp0BiTiXNzbWHmy2/Fq++rz
	6pVRprKvVEd8TjPvh1Sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKOsC-0005J8-O1; Tue, 15 Oct 2019 15:36:32 +0000
Received: from imap1.codethink.co.uk ([176.9.8.82])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKOs3-0005IN-6z
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 15:36:25 +0000
Received: from [167.98.27.226] (helo=rainbowdash.codethink.co.uk)
 by imap1.codethink.co.uk with esmtpsa (Exim 4.84_2 #1 (Debian))
 id 1iKOrw-0006ZY-Ry; Tue, 15 Oct 2019 16:36:16 +0100
Received: from ben by rainbowdash.codethink.co.uk with local (Exim 4.92.2)
 (envelope-from <ben@rainbowdash.codethink.co.uk>)
 id 1iKOrw-0001V2-De; Tue, 15 Oct 2019 16:36:16 +0100
From: "Ben Dooks (Codethink)" <ben.dooks@codethink.co.uk>
To: linux-kernel@lists.codethink.co.uk
Subject: [PATCH] decompressor: fix undeclared items
Date: Tue, 15 Oct 2019 16:36:15 +0100
Message-Id: <20191015153615.5721-1-ben.dooks@codethink.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_083623_402215_66E56FB3 
X-CRM114-Status: GOOD (  10.87  )
X-Spam-Score: 2.5 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [176.9.8.82 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "Ben Dooks \(Codethink\)" <ben.dooks@codethink.co.uk>,
 Russell King <linux@armlinux.org.uk>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The follow items are not declared but also not exported
so use __attribute__((__externally_visible__)) to silence
the following sparse warnings:

 ./include/linux/decompress/mm.h:31:30: warning: symbol 'malloc_ptr' was not declared. Should it be static?
./include/linux/decompress/mm.h:32:20: warning: symbol 'malloc_count' was not declared. Should it be static?
arch/arm/boot/compressed/decompress.c:59:5: warning: symbol 'do_decompress' was not declared. Should it be static?

Signed-off-by: Ben Dooks <ben.dooks@codethink.co.uk>
---
Cc: Russell King <linux@armlinux.org.uk>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
 arch/arm/boot/compressed/decompress.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/compressed/decompress.c b/arch/arm/boot/compressed/decompress.c
index aa075d8372ea..8f4969916151 100644
--- a/arch/arm/boot/compressed/decompress.c
+++ b/arch/arm/boot/compressed/decompress.c
@@ -9,7 +9,7 @@
 #include "misc.h"
 
 #define STATIC static
-#define STATIC_RW_DATA	/* non-static please */
+#define STATIC_RW_DATA	__attribute__((__externally_visible__)) /* non-static please */
 
 /* Diagnostic functions */
 #ifdef DEBUG
@@ -56,7 +56,8 @@ extern char * strchrnul(const char *, int);
 #include "../../../../lib/decompress_unlz4.c"
 #endif
 
-int do_decompress(u8 *input, int len, u8 *output, void (*error)(char *x))
+int __attribute__((__externally_visible__))
+do_decompress(u8 *input, int len, u8 *output, void (*error)(char *x))
 {
 	return __decompress(input, len, NULL, NULL, output, 0, NULL, error);
 }
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
