Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51676DAA07
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 12:30:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WjU6FO5Rjq+lVqVeuf7SW4xdjWQHiJ7iYabljXIV0bY=; b=OiPkS79NRltvs5
	34hrIH0pcjC1ARmN+tucgScQtXv09WM/vnrW+2OS0OfqpIESsVW6g1WCBTbhg7kipsDEq2ZuqKLWw
	khWY8ASN2sric/Ot9szg6n7XBYhCAAO50vY0jwTDDl2cqZ2SMEIXsGqBDRb/iY5eFB86qMdVzIztT
	VwIstVwX6cXqI6GfWu1HrODVKNZzmEf+TL80MnuoMgEs8A+zpm0ktTwvLLIW+/XlWP38sufelU0b2
	421PwoThqJBwNYvI+y6deRYn6EAxT0Zafy+6L53BeJkO3XOtbKPaGopJ5bLOqMye43aoXo+07PdJy
	dY3F0DfJxsWEtgsahhBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL33U-0006Vf-Sq; Thu, 17 Oct 2019 10:30:52 +0000
Received: from imap1.codethink.co.uk ([176.9.8.82])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL33N-0006VA-9u
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 10:30:46 +0000
Received: from [167.98.27.226] (helo=rainbowdash.codethink.co.uk)
 by imap1.codethink.co.uk with esmtpsa (Exim 4.84_2 #1 (Debian))
 id 1iL33F-0001d0-Ih; Thu, 17 Oct 2019 11:30:37 +0100
Received: from ben by rainbowdash.codethink.co.uk with local (Exim 4.92.2)
 (envelope-from <ben@rainbowdash.codethink.co.uk>)
 id 1iL33F-0006or-51; Thu, 17 Oct 2019 11:30:37 +0100
From: "Ben Dooks (Codethink)" <ben.dooks@codethink.co.uk>
To: linux-kernel@lists.codethink.co.uk
Subject: [PATCH] tcm: include <asm/tcm.h> for missing declarations
Date: Thu, 17 Oct 2019 11:30:36 +0100
Message-Id: <20191017103036.26170-1-ben.dooks@codethink.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_033045_492733_8657E1AB 
X-CRM114-Status: UNSURE (   8.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [176.9.8.82 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 Russell King <linux@armlinux.org.uk>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The arch/arm/kernel/tcm.c should include <asm/tcm.h>
for declarations of tcm_alloc, tcm_free and other
functions. Fixes the following sparse warnings:

arch/arm/kernel/tcm.c:74:6: warning: symbol 'tcm_alloc' was not declared. Should it be static?
arch/arm/kernel/tcm.c:92:6: warning: symbol 'tcm_free' was not declared. Should it be static?
arch/arm/kernel/tcm.c:98:6: warning: symbol 'tcm_dtcm_present' was not declared. Should it be static?
arch/arm/kernel/tcm.c:104:6: warning: symbol 'tcm_itcm_present' was not declared. Should it be static?

Signed-off-by: Ben Dooks <ben.dooks@codethink.co.uk>
---
Cc: Russell King <linux@armlinux.org.uk>
Cc: linux-arm-kernel@lists.infradead.org
---
 arch/arm/kernel/tcm.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/kernel/tcm.c b/arch/arm/kernel/tcm.c
index 65448d5f26ec..d3a85f01b328 100644
--- a/arch/arm/kernel/tcm.c
+++ b/arch/arm/kernel/tcm.c
@@ -18,6 +18,7 @@
 #include <asm/memory.h>
 #include <asm/system_info.h>
 #include <asm/traps.h>
+#include <asm/tcm.h>
 
 #define TCMTR_FORMAT_MASK	0xe0000000U
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
