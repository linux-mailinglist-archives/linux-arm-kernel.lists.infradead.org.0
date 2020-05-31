Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DD6A1E962B
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 31 May 2020 09:37:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5F4hBprXKUH4obirI49IHi2Q6P/QxB0c/4ixQljc8hg=; b=ijgXR5aNlsGtmd
	tJNVi02RGejflCTXtYk1/1pgLOvtQvaN0N+4fNJhjfUZrepTy8FarnwlQJ2+kmjWXTKU7S/kyUkHC
	9MThLlbJZURgaEheIRsItQceOMaAKaE02fg08tkeVdcm+dQjN6BCyByFuUl72PwI1XjlbOGiMHTmH
	PhUKmRrVnehQSy5kYH9XrrEjNEOU99IWZ/bMcHcCmjVWzFxCFiCXptfYBd/fyjHF0kxmMOOxoSJ94
	0gAO9CodVr66jqjZFa1ejKXGYN4vaioCuY/QXxup7Vb9Wq6iMQIMSS/k6ZBFWe0suUdsLTx6vKlUG
	Qu4hkrw+dEM5uXGFgAPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfIXS-0006wM-GS; Sun, 31 May 2020 07:37:46 +0000
Received: from smtp10.smtpout.orange.fr ([80.12.242.132]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfIXK-0006vm-8B
 for linux-arm-kernel@lists.infradead.org; Sun, 31 May 2020 07:37:40 +0000
Received: from localhost.localdomain ([93.23.14.245]) by mwinf5d45 with ME
 id lKdN220075HDzGl03KdP5C; Sun, 31 May 2020 09:37:28 +0200
X-ME-Helo: localhost.localdomain
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Sun, 31 May 2020 09:37:28 +0200
X-ME-IP: 93.23.14.245
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
To: daniel@zonque.org, haojian.zhuang@gmail.com, robert.jarzmik@free.fr,
 linus.walleij@linaro.org
Subject: [PATCH] pinctrl: pxa: pxa2xx: Remove 'pxa2xx_pinctrl_exit()' which is
 unused and broken
Date: Sun, 31 May 2020 09:37:16 +0200
Message-Id: <20200531073716.593343-1-christophe.jaillet@wanadoo.fr>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200531_003738_568150_EDC03540 
X-CRM114-Status: GOOD (  13.44  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [80.12.242.132 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [80.12.242.132 listed in wl.mailspike.net]
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
Cc: linux-gpio@vger.kernel.org,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Commit 6d33ee7a0534 ("pinctrl: pxa: Use devm_pinctrl_register() for pinctrl registration")
has turned a 'pinctrl_register()' into 'devm_pinctrl_register()' in
'pxa2xx_pinctrl_init()'.
However, the corresponding 'pinctrl_unregister()' call in
'pxa2xx_pinctrl_exit()' has not been removed.

This is not an issue, because 'pxa2xx_pinctrl_exit()' is unused.
Remove it now to avoid some wondering in the future and save a few LoC.

Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
---
If some some reason the function should be kept, at least it should be
only 'return 0;'
---
 drivers/pinctrl/pxa/pinctrl-pxa2xx.c | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/drivers/pinctrl/pxa/pinctrl-pxa2xx.c b/drivers/pinctrl/pxa/pinctrl-pxa2xx.c
index bddf2c5dd3bf..eab029a21643 100644
--- a/drivers/pinctrl/pxa/pinctrl-pxa2xx.c
+++ b/drivers/pinctrl/pxa/pinctrl-pxa2xx.c
@@ -425,15 +425,6 @@ int pxa2xx_pinctrl_init(struct platform_device *pdev,
 }
 EXPORT_SYMBOL_GPL(pxa2xx_pinctrl_init);
 
-int pxa2xx_pinctrl_exit(struct platform_device *pdev)
-{
-	struct pxa_pinctrl *pctl = platform_get_drvdata(pdev);
-
-	pinctrl_unregister(pctl->pctl_dev);
-	return 0;
-}
-EXPORT_SYMBOL_GPL(pxa2xx_pinctrl_exit);
-
 MODULE_AUTHOR("Robert Jarzmik <robert.jarzmik@free.fr>");
 MODULE_DESCRIPTION("Marvell PXA2xx pinctrl driver");
 MODULE_LICENSE("GPL v2");
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
