Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EB9AAD526
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 10:54:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YhSf3n2ZTz5GwslNxMhm/zCTqbVen6p536b4lb3UU9k=; b=C2rnmCu64QVVLS
	/Iwa8NqBh9nzuH35XgI63w+YAttM8geJzsewLT4OXJBfiIuQpGYB2IBLi8RLzn5ogYAum759pxdZG
	xYKkG5RyCLfq9TBHoSKKth4hhLSiW+C5XE+lSNjmda55DFfkGRz6TrgDp9ejW2k1uxJivxTd3GKVP
	nBFn4fTSQfjVj9UC27gt4E3lnStDuHBJFjD4PgNSWoNEcZns1McbT9zrwmrFA0UMN5yT1kQO2YHo0
	mwcLEgaigHrj9b4+J+90RB+YhT1uZ9nTCaVMcDKXpqOeXs3vj3pTDEl5VErLs1g2z72qwSC7QCuPA
	WwzgOWs6gHmCmRWerYzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7FQx-0003N0-MF; Mon, 09 Sep 2019 08:54:03 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7FQf-0003LX-Sc; Mon, 09 Sep 2019 08:53:47 +0000
X-UUID: 861095aafaba4060b8a88ce07922ab73-20190909
X-UUID: 861095aafaba4060b8a88ce07922ab73-20190909
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <walter-zh.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1742872989; Mon, 09 Sep 2019 00:53:43 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 9 Sep 2019 01:53:42 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 9 Sep 2019 16:53:40 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 9 Sep 2019 16:53:40 +0800
From: Walter Wu <walter-zh.wu@mediatek.com>
To: Andrey Ryabinin <aryabinin@virtuozzo.com>, Alexander Potapenko
 <glider@google.com>, Dmitry Vyukov <dvyukov@google.com>, Matthias Brugger
 <matthias.bgg@gmail.com>, Andrew Morton <akpm@linux-foundation.org>, "Martin
 Schwidefsky" <schwidefsky@de.ibm.com>, Will Deacon <will@kernel.org>, "Andrey
 Konovalov" <andreyknvl@google.com>, Arnd Bergmann <arnd@arndb.de>, "Thomas
 Gleixner" <tglx@linutronix.de>, Michal Hocko <mhocko@kernel.org>, Qian Cai
 <cai@lca.pw>
Subject: [PATCH v2 1/2] mm/page_ext: support to record the last stack of page
Date: Mon, 9 Sep 2019 16:53:39 +0800
Message-ID: <20190909085339.25350-1-walter-zh.wu@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_015345_923975_D1E86500 
X-CRM114-Status: UNSURE (   9.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Walter Wu <walter-zh.wu@mediatek.com>, wsd_upstream@mediatek.com,
 linux-kernel@vger.kernel.org, kasan-dev@googlegroups.com, linux-mm@kvack.org,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

KASAN will record last stack of page in order to help programmer
to see memory corruption caused by page.

What is difference between page_owner and our patch?
page_owner records alloc stack of page, but our patch is to record
last stack(it may be alloc or free stack of page).

Signed-off-by: Walter Wu <walter-zh.wu@mediatek.com>
---
 mm/page_ext.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/mm/page_ext.c b/mm/page_ext.c
index 5f5769c7db3b..7ca33dcd9ffa 100644
--- a/mm/page_ext.c
+++ b/mm/page_ext.c
@@ -65,6 +65,9 @@ static struct page_ext_operations *page_ext_ops[] = {
 #if defined(CONFIG_IDLE_PAGE_TRACKING) && !defined(CONFIG_64BIT)
 	&page_idle_ops,
 #endif
+#ifdef CONFIG_KASAN
+	&page_stack_ops,
+#endif
 };
 
 static unsigned long total_usage;
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
