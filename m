Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D48E33EF0
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 08:21:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CdyKTDsWa6n+TTJPdQe8c5H+WNNcUsfABvcy3gCl2cw=; b=YFNxgaGu4hA3g5
	BnSsfg4SvcopBGihlc0S7GRcVzVNcIX7WDHX+q+7DmTNg/Q8M8x1qTYHG2QJ5w4twWKGHGySBs0BH
	XF7dNtvHNKiKobPm6GJUpG+fWD3c5gBY+j/nIKAXNTrfExoCy6/3wNf+daV5s8ba5V/sWBSQlMb2L
	suyHi2TQmsVf55D0xIST71i5exN9q8iZUx6F59w3TT3wPxmIWsEMsEUTR+ofLwwN3DVvZeaYa9xHT
	3in7zjPeWMlpugMGJG1Q7Q3LqTV/x0RvWn8e4SthqadX/RSy0B3IL2lOG7rL962hCc0FQ5N2SmIGV
	qXUNDoGPrHmSacM4tt1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY2pW-00063s-1W; Tue, 04 Jun 2019 06:21:54 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY2pN-00063D-Uf
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 06:21:49 +0000
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 138E72D886150BB2774;
 Tue,  4 Jun 2019 14:21:39 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS407-HUB.china.huawei.com
 (10.3.19.207) with Microsoft SMTP Server id 14.3.439.0; Tue, 4 Jun 2019
 14:21:32 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <patches@armlinux.org.uk>
Subject: [PATCH] ARM: mm: remove unused variables
Date: Tue, 4 Jun 2019 14:19:57 +0800
Message-ID: <20190604061957.18704-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
In-Reply-To: <CAJKOXPeDRuvmHG=KUCYiPav2ODT4MC4hEgi5hAsy7s_+v-DB3g@mail.gmail.com>
References: <CAJKOXPeDRuvmHG=KUCYiPav2ODT4MC4hEgi5hAsy7s_+v-DB3g@mail.gmail.com>
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_232147_536112_98D5B241 
X-CRM114-Status: UNSURE (   8.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
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
Cc: keescook@chromium.org, geert+renesas@glider.be,
 YueHaibing <yuehaibing@huawei.com>, linux-kernel@vger.kernel.org,
 krzk@kernel.org, rppt@linux.ibm.com, rmk+kernel@armlinux.org.uk,
 geert@linux-m68k.org, linux@armlinux.org.uk, akpm@linux-foundation.org,
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

Link: https://lkml.org/lkml/2019/5/12/82
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>
---
KernelVersion: 5.2-rc5
 arch/arm/mm/init.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/arch/arm/mm/init.c b/arch/arm/mm/init.c
index be0b42937888..c71ecbb04db8 100644
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
2.20.1



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
