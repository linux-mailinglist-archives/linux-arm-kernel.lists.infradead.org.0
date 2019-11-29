Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 034DF1967A8
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Mar 2020 17:46:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Date:
	From:Message-Id:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=1WmRyRNyJnwV+2OMps3TTzAxi0rzTi46rRUsulkW0nI=; b=sZv
	52kkCT3DDZNA5vqil5JDvOSKSG2XehaV5OuUlaI9gQyt+O71nsPZ6I4jT1W6/2LPQqWnp8D91ZW28
	mwbsJ0Bp5cDplHAgZi1OwSKnW8ktHoopv7061KzYnbZ9lbkAo7Z49luEw0CdU0SEFsLOEGAC7XTtr
	q3/A7HkA9dOj45M4XzWXYrH+afGxLr/++CPtOaVq8r+5bsgLloZ3Fn3ZEuoZMle82DyCACK5G1tCo
	t4calSHjbLHIO6zhxSzaugr9f2iQbUPGdt9KiGpL/5hZEkv2Q7Y/ii9YRL90JIfNORThgdgpPs9CH
	2Ml1qUERpRhqM1faMV9+jVYRfr5SEQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIEam-0006CO-Ow; Sat, 28 Mar 2020 16:45:52 +0000
Received: from mx.sdf.org ([205.166.94.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIEaP-00064p-JW
 for linux-arm-kernel@lists.infradead.org; Sat, 28 Mar 2020 16:45:31 +0000
Received: from sdf.org (IDENT:lkml@sdf.lonestar.org [205.166.94.16])
 by mx.sdf.org (8.15.2/8.14.5) with ESMTPS id 02SGhPA6013630
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits) verified NO);
 Sat, 28 Mar 2020 16:43:26 GMT
Received: (from lkml@localhost)
 by sdf.org (8.15.2/8.12.8/Submit) id 02SGhPfO016133;
 Sat, 28 Mar 2020 16:43:25 GMT
Message-Id: <202003281643.02SGhPfO016133@sdf.org>
From: George Spelvin <lkml@sdf.org>
Date: Fri, 29 Nov 2019 18:57:36 -0500
Subject: [RFC PATCH v1 48/50] arch/arm/kernel/process.c: Use
 get_random_max32() for sigpage_addr()
To: linux-kernel@vger.kernel.org, lkml@sdf.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200328_094530_161045_BADDBF96 
X-CRM114-Status: UNSURE (   7.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.1 (++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.166.94.20 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 2.1 DATE_IN_PAST_96_XX     Date: is 96 hours or more before Received:
 date
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Dmitry Safonov <0x7f454c46@gmail.com>,
 Nathan Lynch <nathan_lynch@mentor.com>, Russell King <linux@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Which is faster and less biased than get_random_int() % range

Signed-off-by: George Spelvin <lkml@sdf.org>
Cc: Nathan Lynch <nathan_lynch@mentor.com>
Cc: Dmitry Safonov <0x7f454c46@gmail.com>
Cc: Russell King <linux@armlinux.org.uk>
Cc: linux-arm-kernel@lists.infradead.org
---
 arch/arm/kernel/process.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/kernel/process.c b/arch/arm/kernel/process.c
index 46e478fb5ea20..9f2556be33505 100644
--- a/arch/arm/kernel/process.c
+++ b/arch/arm/kernel/process.c
@@ -391,7 +391,7 @@ static unsigned long sigpage_addr(const struct mm_struct *mm,
 
 	slots = ((last - first) >> PAGE_SHIFT) + 1;
 
-	offset = get_random_int() % slots;
+	offset = get_random_max32(slots);
 
 	addr = first + (offset << PAGE_SHIFT);
 
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
