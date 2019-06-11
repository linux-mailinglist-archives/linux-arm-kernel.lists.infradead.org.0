Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3EE83C376
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 07:43:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Message-ID
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RazHBhJnmKi050Zd2tKsF+15xDD1XeEkfOd90May4r8=; b=pojEaBI+BxEmlc
	brPNAFNzl6nfSziRRiDeqzDpVxMTUZvu9VTnGzSnbu8Frn8Y8pWKYPBLZJBiVJjSaEty4XIrkElCa
	OF48wojdKFqHa36SkC55e9NqiVhctiTqPfxs9rtcaYhz5EIwTj5VhNVFubFVI3byDWvXIQ/diDKNi
	uh9cDzV2THx4KpvgAYlIE0y2hVmcAlhUb+NZsrBzjZgysn5DoEwvpvyeaKj++Wrnx52Wr645RBdRv
	m0VJPs+3X5CshaiLRMByf2ktPkIF8fpNUSdFYkAPH+W/jgIrJ8hi0+IdRUrjIRYC6jLpTa0cc3BHP
	Xe5NeOYgSVBNdUpJrpNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haZZU-0002Wh-Lk; Tue, 11 Jun 2019 05:43:48 +0000
Received: from relmlor2.renesas.com ([210.160.252.172]
 helo=relmlie6.idc.renesas.com)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1haZZL-0002WO-3B
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 05:43:40 +0000
Date: 11 Jun 2019 14:43:34 +0900
X-IronPort-AV: E=Sophos;i="5.60,577,1549897200"; d="scan'208";a="18140971"
Received: from unknown (HELO relmlir5.idc.renesas.com) ([10.200.68.151])
 by relmlie6.idc.renesas.com with ESMTP; 11 Jun 2019 14:43:34 +0900
Received: from morimoto-PC.renesas.com (unknown [10.166.18.140])
 by relmlir5.idc.renesas.com (Postfix) with ESMTP id EAFD24001DC4;
 Tue, 11 Jun 2019 14:43:33 +0900 (JST)
Message-ID: <87imtc6b79.wl-kuninori.morimoto.gx@renesas.com>
From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
To: Linux-ARM <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH] ARM: mm: remove unused dtcm_end / itcm_end
User-Agent: Wanderlust/2.15.9 Emacs/24.5 Mule/6.0
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_224339_301160_3FEEB3E5 
X-CRM114-Status: UNSURE (   8.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.160.252.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Russell King <rmk+kernel@armlinux.org.uk>,
 Kees Cook <keescook@chromium.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>

commit 1c31d4e96b8c ("ARM: 8820/1: mm: Stop printing the virtual
memory layout") removed last user of dtcm_end / itcm_end.
There is no user of these, let's remove.

Fixes: commit 1c31d4e96b8c ("ARM: 8820/1: mm: Stop printing the virtual memory layout")
Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
---
 arch/arm/mm/init.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/arch/arm/mm/init.c b/arch/arm/mm/init.c
index be0b429..c71ecbb 100644
--- a/arch/arm/mm/init.c
+++ b/arch/arm/mm/init.c
@@ -450,12 +450,6 @@ static void __init free_highpages(void)
  */
 void __init mem_init(void)
 {
-#ifdef CONFIG_HAVE_TCM
-	/* These pointers are filled in on TCM detection */
-	extern u32 dtcm_end;
-	extern u32 itcm_end;
-#endif
-
 	set_max_mapnr(pfn_to_page(max_pfn) - mem_map);
 
 	/* this will put all unused low memory onto the freelists */
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
