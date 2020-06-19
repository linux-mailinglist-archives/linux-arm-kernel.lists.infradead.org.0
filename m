Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC6EB200742
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 12:50:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=I636FWpRdwB1oTe84MTrmeLui8rAuyJgFkqhBef/uYg=; b=BD2HN+haD3dNxd
	gddMy8rMWF+ZWThSDrsWS76lnNS+HRLLMv71j5Az+h3yWilslxPu58dL6SIhNTUTgUHJX7lgck5Zm
	zDPdxzJ4G9WyOpCHzl7tlCkiFXQMFTEaqb9IEBqwrM5WOmy6TN6do4rYdR7nmIu+OxNnJ0GFI0wKt
	kvrlW7fS3ob9WF8fXkk1k8EuuaMqE/0u+AtucTTieYmR4YI42hsRF0aphNyHwLT6ZLnIon30Zi24w
	5SrsHkfNKYJA+QgvWmK3iTB9eW3RygA+rCgbgnb0CWXrL85Pr7yiiDmaQqx0gmy6roxDUbg2BJCn+
	r/F1eiWYujgc0mnGkfZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmEbS-0006vZ-D2; Fri, 19 Jun 2020 10:50:34 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmEVH-0005KG-34
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 10:44:12 +0000
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 57BF814173BCF5B8416D;
 Fri, 19 Jun 2020 18:44:01 +0800 (CST)
Received: from huawei.com (10.67.174.156) by DGGEMS409-HUB.china.huawei.com
 (10.3.19.209) with Microsoft SMTP Server id 14.3.487.0; Fri, 19 Jun 2020
 18:43:52 +0800
From: Chen Tao <chentao107@huawei.com>
To: <paul@pwsan.com>, <tony@atomide.com>
Subject: [PATCH] ARM: OMAP2+: Fix possible memory leak in
 omap_hwmod_allocate_module
Date: Fri, 19 Jun 2020 18:42:40 +0800
Message-ID: <20200619104240.55978-1-chentao107@huawei.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-Originating-IP: [10.67.174.156]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_034411_292939_01D641FF 
X-CRM114-Status: GOOD (  10.90  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.190 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: chentao107@huawei.com, linux-omap@vger.kernel.org, linux@armlinux.org.uk,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix memory leak in omap_hwmod_allocate_module not freeing in
handling error path.

Fixes: 8c87970543b17("ARM: OMAP2+: Add functions to allocate module data from device tree")
Signed-off-by: Chen Tao <chentao107@huawei.com>
---
 arch/arm/mach-omap2/omap_hwmod.c | 14 +++++++++++---
 1 file changed, 11 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-omap2/omap_hwmod.c b/arch/arm/mach-omap2/omap_hwmod.c
index 82706af307de..d2667f28e68e 100644
--- a/arch/arm/mach-omap2/omap_hwmod.c
+++ b/arch/arm/mach-omap2/omap_hwmod.c
@@ -3435,7 +3435,7 @@ static int omap_hwmod_allocate_module(struct device *dev, struct omap_hwmod *oh,
 		regs = ioremap(data->module_pa,
 			       data->module_size);
 		if (!regs)
-			return -ENOMEM;
+			goto out_free_sysc;
 	}
 
 	/*
@@ -3445,13 +3445,13 @@ static int omap_hwmod_allocate_module(struct device *dev, struct omap_hwmod *oh,
 	if (oh->class->name && strcmp(oh->class->name, data->name)) {
 		class = kmemdup(oh->class, sizeof(*oh->class), GFP_KERNEL);
 		if (!class)
-			return -ENOMEM;
+			goto out_unmap;
 	}
 
 	if (list_empty(&oh->slave_ports)) {
 		oi = kcalloc(1, sizeof(*oi), GFP_KERNEL);
 		if (!oi)
-			return -ENOMEM;
+			goto out_free_class;
 
 		/*
 		 * Note that we assume interconnect interface clocks will be
@@ -3478,6 +3478,14 @@ static int omap_hwmod_allocate_module(struct device *dev, struct omap_hwmod *oh,
 	spin_unlock_irqrestore(&oh->_lock, flags);
 
 	return 0;
+
+out_free_class:
+	kfree(class);
+out_unmap:
+	iounmap();
+out_free_sysc:
+	kfree(sysc);
+	return -ENOMEM;
 }
 
 static const struct omap_hwmod_reset omap24xx_reset_quirks[] = {
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
