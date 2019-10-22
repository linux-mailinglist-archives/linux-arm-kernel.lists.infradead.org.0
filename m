Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8FBFE042B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 14:50:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kK9hLkEaHo3pi5sAjG3JwDiRW3U0srf6/B8964Z/z30=; b=ZgkaNWChQ2hB25
	Zjq7H0lVi8fzJTbwqWWVSZEjnt5SiliR6z2FZONdyicF0GhqnvNsZvLSvKz2HfQNi4qoh13PFH1Qb
	8yEZGEhTcGQCyRXCLc7Wh8HEERzmRUVRg6hriod29+tYl2VEbgz0ifJ2h2MZ3Sp61wGlEu6WHI3zO
	y+98lmjl0mqtXg3GnLKd2t2onLdH4LuviBHqCRyD6QbPsBgcYwh9gNwJ+mNDw9v5SBWFzcQAIaYD+
	+4+HKMn7GuutqPfJLzvoIhvb2oslGjkbFuM9WxS+v+aYvYMTJGW/HLdLMqAvfacGUDU4xPb6epf5f
	dYryDe38lXq2yOmbW4ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMtcI-0005h9-HM; Tue, 22 Oct 2019 12:50:26 +0000
Received: from imap1.codethink.co.uk ([176.9.8.82])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMtc9-0005gh-OK
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 12:50:19 +0000
Received: from [167.98.27.226] (helo=rainbowdash.codethink.co.uk)
 by imap1.codethink.co.uk with esmtpsa (Exim 4.84_2 #1 (Debian))
 id 1iMtc0-0002GG-5U; Tue, 22 Oct 2019 13:50:08 +0100
Received: from ben by rainbowdash.codethink.co.uk with local (Exim 4.92.3)
 (envelope-from <ben@rainbowdash.codethink.co.uk>)
 id 1iMtbz-0000zI-En; Tue, 22 Oct 2019 13:50:07 +0100
From: "Ben Dooks (Codethink)" <ben.dooks@codethink.co.uk>
To: linux-kernel@lists.codethink.co.uk
Subject: [PATCH] xen: mm: include <xen/xen-ops.h> for missing declarations
Date: Tue, 22 Oct 2019 13:50:06 +0100
Message-Id: <20191022125006.3746-1-ben.dooks@codethink.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_055017_941882_BA8009A0 
X-CRM114-Status: UNSURE (   9.31  )
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
Cc: xen-devel@lists.xenproject.org,
 "Ben Dooks \(Codethink\)" <ben.dooks@codethink.co.uk>,
 Stefano Stabellini <sstabellini@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Russell King <linux@armlinux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Include <xen/xen-ops.h> for xen_{create,destroy}_contigous_region
call declarations. Fixes the following sparse warnings:

arch/arm/xen/mm.c:119:5: warning: symbol 'xen_create_contiguous_region' was not declared. Should it be static?
arch/arm/xen/mm.c:131:6: warning: symbol 'xen_destroy_contiguous_region' was not declared. Should it be static?

Signed-off-by: Ben Dooks (Codethink) <ben.dooks@codethink.co.uk>
---
Cc: Stefano Stabellini <sstabellini@kernel.org>
Cc: Russell King <linux@armlinux.org.uk>
Cc: xen-devel@lists.xenproject.org
Cc: linux-arm-kernel@lists.infradead.org
---
 arch/arm/xen/mm.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/xen/mm.c b/arch/arm/xen/mm.c
index 38fa917c8585..6feb6b78b13c 100644
--- a/arch/arm/xen/mm.c
+++ b/arch/arm/xen/mm.c
@@ -15,6 +15,7 @@
 #include <xen/interface/grant_table.h>
 #include <xen/interface/memory.h>
 #include <xen/page.h>
+#include <xen/xen-ops.h>
 #include <xen/swiotlb-xen.h>
 
 #include <asm/cacheflush.h>
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
