Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72FD41ABF1
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 May 2019 13:48:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1/CzVWp8JI8BXQCAahdV2vwGrgemkJj0yaJwgHvy/qc=; b=t436zuaH35VDn9
	DrUd9oR8H/M8ADpO63OH+WdiENhzwpxhnYJ9iAjfQXimj+vwjtMPQ3Oo6G2JJ9deXgPAltztRePyw
	ge15m1tgkzvQOZ2/d1XUlgTpK71u24wvFx4FAgwXo+BmkbWS+4GeJNPjZDOriRAOEPMu8n/ehNDXG
	UNvKMr9P1VLzs9OTZ1E0XWkamt+wSV7UETmkHWUQsRZFBQc8eVJ5K1uUM5AyG+MkUBb7S08JrXHJW
	cUIpNgEkU2IqTtIu/Hb1z7o6MDH1Sivs+hAgmrO1NMOF2KrRtzMSk1blErIVzYwnqDXmouz3PqU/l
	VFHoB5PpQe8H77TRgPWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPmyM-00062j-8x; Sun, 12 May 2019 11:48:54 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPmyG-00061u-8E
 for linux-arm-kernel@lists.infradead.org; Sun, 12 May 2019 11:48:49 +0000
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id F4122B53C7888E2F4D59;
 Sun, 12 May 2019 19:48:39 +0800 (CST)
Received: from localhost (10.177.31.96) by DGGEMS409-HUB.china.huawei.com
 (10.3.19.209) with Microsoft SMTP Server id 14.3.439.0; Sun, 12 May 2019
 19:48:33 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <linux@armlinux.org.uk>, <rppt@linux.ibm.com>,
 <akpm@linux-foundation.org>, <geert+renesas@glider.be>,
 <keescook@chromium.org>
Subject: [PATCH] ARM: mm: remove unused variables
Date: Sun, 12 May 2019 19:41:05 +0800
Message-ID: <20190512114105.41792-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.177.31.96]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_044848_519283_2237B599 
X-CRM114-Status: UNSURE (   7.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: YueHaibing <yuehaibing@huawei.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix gcc warnings:

arch/arm/mm/init.c: In function 'mem_init':
arch/arm/mm/init.c:456:13: warning: unused variable 'itcm_end' [-Wunused-variable]
  extern u32 itcm_end;
             ^
arch/arm/mm/init.c:455:13: warning: unused variable 'dtcm_end' [-Wunused-variable]
  extern u32 dtcm_end;
             ^

They are not used any more since
commit 1c31d4e96b8c ("ARM: 8820/1: mm: Stop printing the virtual memory layout")

Signed-off-by: YueHaibing <yuehaibing@huawei.com>
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
