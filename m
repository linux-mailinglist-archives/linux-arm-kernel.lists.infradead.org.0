Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4400122CF5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 14:34:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CXuHu5ExeLbKGPynaexipWIN4fw05717Ho6P6pwC4Z4=; b=dG3o8VW3p20sX+
	C2R3kwACpRpef1rmH1O0TmqUcC9JKC75tJYmWYhH14lCGZmWkUV8XvqcUEQuunExsXIa1djip2eww
	qvCJnjnO7Tc5deuGxHyWvgtl0MkzYVDNjx0adCQ6KDaEEoeIUn6c447HmxSfxa9KHLh9fR17kHxuU
	uHaZUBykuTHmWfYvqU09y36swfA4i6aJdIYYRR8NplFjMT3dWaPWnbj6cCuBfz7FJQ71QFXM+brD6
	V8ilBqHTEkR/cw/AZypePwQwjvPMeUuGF4dqAbwU5hN/XKgTQKtCOfa5EyTbI3iX63FA/ktY1VoOt
	WR9gBs1fyv5vFmksFXgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihCzx-0007kO-Qu; Tue, 17 Dec 2019 13:34:49 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihCzo-0007jP-OD
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 13:34:43 +0000
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 3BF1EBC5B25D3D4192AA;
 Tue, 17 Dec 2019 21:34:31 +0800 (CST)
Received: from huawei.com (10.175.127.16) by DGGEMS405-HUB.china.huawei.com
 (10.3.19.205) with Microsoft SMTP Server id 14.3.439.0; Tue, 17 Dec 2019
 21:34:21 +0800
From: Pan Zhang <zhangpan26@huawei.com>
To: <zhangpan26@huawei.com>, <hushiyuan@huawei.com>,
 <catalin.marinas@arm.com>, <will@kernel.org>, <gregkh@linuxfoundation.org>,
 <willy@infradead.org>, <tglx@linutronix.de>, <ard.biesheuvel@arm.com>,
 <anshuman.khandual@arm.com>
Subject: [PATCH] mm: change_memory_common: add spaces for `*` operator
Date: Tue, 17 Dec 2019 21:34:04 +0800
Message-ID: <1576589644-23293-1-git-send-email-zhangpan26@huawei.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.175.127.16]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_053441_792644_F6A1E5FC 
X-CRM114-Status: GOOD (  10.12  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Leaves one space before and after a binary operator both, it may be more elegant.

Signed-off-by: Pan Zhang <zhangpan26@huawei.com>
---
 arch/arm64/mm/pageattr.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/mm/pageattr.c b/arch/arm64/mm/pageattr.c
index 9ce7bd9..250c490 100644
--- a/arch/arm64/mm/pageattr.c
+++ b/arch/arm64/mm/pageattr.c
@@ -54,7 +54,7 @@ static int change_memory_common(unsigned long addr, int numpages,
 				pgprot_t set_mask, pgprot_t clear_mask)
 {
 	unsigned long start = addr;
-	unsigned long size = PAGE_SIZE*numpages;
+	unsigned long size = PAGE_SIZE * numpages;
 	unsigned long end = start + size;
 	struct vm_struct *area;
 	int i;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
