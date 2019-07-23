Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5662D71719
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 13:30:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ocVVystx7JXvQEZEg/QRfcP8tBUuIh9d+vAbMd7Tmd4=; b=kMF0t601yu2Ytx
	XmYTkUVeBp1AysfOoAseVdFTUqXLRUlbBcvH2Ukpn59ft6WWcQu55h63RMsfOAnQRhOkmg9Uf9/7w
	taDSTbSj8of50qp0/eOsJLkFszgMNDkKCs2QtYjkIq+62fQmk68d3Or6eo3ajkJ+zDNc+xG2Gj4ub
	DGNqvvTG4LhqgosjZJjD8ShE59yWmu8PJ3dG9tB1qI5w7Idlsn3yPFaRwrnSp6u7+VXDyuZUU5rrf
	koASS9x4AV8x4NauHTMllte6Cv4UJsYRfPW0FGmuB14RNt1fReGr8tiThgL9ymUnkzZ06UgnjYNwC
	5hUj9Fc5z8Ke2r1mqFDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpszb-0002cI-W4; Tue, 23 Jul 2019 11:30:04 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hpsy2-0000nt-Vw
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 11:28:28 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 898EA808C;
 Tue, 23 Jul 2019 11:28:51 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH 4/8] bus: ti-sysc: Fix using configured sysc mask value
Date: Tue, 23 Jul 2019 04:28:07 -0700
Message-Id: <20190723112811.44381-5-tony@atomide.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190723112811.44381-1-tony@atomide.com>
References: <20190723112811.44381-1-tony@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_042827_149190_80660348 
X-CRM114-Status: UNSURE (   7.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>,
 Dave Gerlach <d-gerlach@ti.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Peter Ujfalusi <peter.ujfalusi@ti.com>, Faiz Abbas <faiz_abbas@ti.com>,
 Keerthy <j-keerthy@ti.com>, linux-arm-kernel@lists.infradead.org,
 Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We have cases where there are no softreset bits like with am335x lcdc.
In that case ti,sysc-mask = <0> needs to be handled properly.

Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 drivers/bus/ti-sysc.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/bus/ti-sysc.c b/drivers/bus/ti-sysc.c
--- a/drivers/bus/ti-sysc.c
+++ b/drivers/bus/ti-sysc.c
@@ -1692,10 +1692,7 @@ static int sysc_init_sysc_mask(struct sysc *ddata)
 	if (error)
 		return 0;
 
-	if (val)
-		ddata->cfg.sysc_val = val & ddata->cap->sysc_mask;
-	else
-		ddata->cfg.sysc_val = ddata->cap->sysc_mask;
+	ddata->cfg.sysc_val = val & ddata->cap->sysc_mask;
 
 	return 0;
 }
-- 
2.21.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
