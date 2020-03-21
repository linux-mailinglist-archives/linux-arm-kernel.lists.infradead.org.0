Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3559F18DEE7
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Mar 2020 09:59:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CI9L0ipKZ+Yb10badbNGG+AKeav1xA1hEENGlsSkMzc=; b=N3GPkyZQecD2BT
	Ba3IXkNeGUFMjWWxgIDZKqnQf2X8ghc49mOq3tY8hRWczqj8I080PZE0GdNMKSmtVJxlqFqUxFeXQ
	UHOqpXQqCo1z9D180tDZ4X/eoZLspEtgADxasR8sfzopq3F8ghgBzfJuDxqMoTIhHvJLeS2JDdq+U
	AJPspvr9xAOnFFjBSObr3KjE/+Ok7t6W3hGSz3jItLJSWctH1cb0ybNU1q6slT7Z+c6EhCfTkwPMK
	mRWA9lknsCY8hrMYm+wHAa+/GrvxsVa9HnOl6sE28o6J7ikdXzrw8CWr7HQ8FOaOpNEuiBc2cxjGE
	BzZNXufdWVPk9qGfhkKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFZyX-0005X6-6e; Sat, 21 Mar 2020 08:59:25 +0000
Received: from smtp05.smtpout.orange.fr ([80.12.242.127]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFZyQ-0005W9-FD
 for linux-arm-kernel@lists.infradead.org; Sat, 21 Mar 2020 08:59:20 +0000
Received: from localhost.localdomain ([90.126.162.40]) by mwinf5d62 with ME
 id Gwyl220070scBcy03wytzK; Sat, 21 Mar 2020 09:59:12 +0100
X-ME-Helo: localhost.localdomain
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Sat, 21 Mar 2020 09:59:12 +0100
X-ME-IP: 90.126.162.40
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
To: nsekhar@ti.com,
	bgolaszewski@baylibre.com,
	linux@armlinux.org.uk
Subject: [PATCH] ARM: davinci: dm646x-evm: Simplify error handling in
 'evm_sw_setup()'
Date: Sat, 21 Mar 2020 09:58:36 +0100
Message-Id: <20200321085836.16493-1-christophe.jaillet@wanadoo.fr>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200321_015918_800348_61B3964B 
X-CRM114-Status: GOOD (  17.82  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [80.12.242.127 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [80.12.242.127 listed in wl.mailspike.net]
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
Cc: Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There is no need to call 'gpio_free(evm_sw_gpio[i])' for these error
handling cases, it is already done in the error handling path at label
'out_free'.

Simplify the code and axe a few LoC.

While at it, also explicitly return 0 in the normal path.

Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
---
The code after 'out_free' could also be replace by a single
'evm_sw_teardown()' call, but I'm not a big fan of such construction.

In 'evm_sw_teardown()', the 'gpio_unexport()' call could also be removed
because it is implied by 'gpio_free()'.

Let me now if interested for one or both of these additional clean-up.
---
 arch/arm/mach-davinci/board-dm646x-evm.c | 13 ++++---------
 1 file changed, 4 insertions(+), 9 deletions(-)

diff --git a/arch/arm/mach-davinci/board-dm646x-evm.c b/arch/arm/mach-davinci/board-dm646x-evm.c
index 4600b617f9b4..dd7d60f4139a 100644
--- a/arch/arm/mach-davinci/board-dm646x-evm.c
+++ b/arch/arm/mach-davinci/board-dm646x-evm.c
@@ -267,20 +267,15 @@ static int evm_sw_setup(struct i2c_client *client, int gpio,
 		evm_sw_gpio[i] = gpio++;
 
 		status = gpio_direction_input(evm_sw_gpio[i]);
-		if (status) {
-			gpio_free(evm_sw_gpio[i]);
-			evm_sw_gpio[i] = -EINVAL;
+		if (status)
 			goto out_free;
-		}
 
 		status = gpio_export(evm_sw_gpio[i], 0);
-		if (status) {
-			gpio_free(evm_sw_gpio[i]);
-			evm_sw_gpio[i] = -EINVAL;
+		if (status)
 			goto out_free;
-		}
 	}
-	return status;
+	return 0;
+
 out_free:
 	for (i = 0; i < 4; ++i) {
 		if (evm_sw_gpio[i] != -EINVAL) {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
