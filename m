Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01DF410FDAA
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 13:31:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:From:To:
	Subject:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AJVtVp+J+dEO0NpqUqqXQNNLuGa6dLOKJ+fR3jtZ7hM=; b=jAWYofVBvJ5pXe
	I9H6CLXIYQM7nkD3F5JX3Hofyo/tXXPeDAWjeSpql+/5kVUR+5CUG6J6hkhW2M1HkA4PSgFmfwpX4
	Ajmzx2bbC9Su8VXOQQj0kdqIQ7OzGU7v7hWN8U6y/egMxOQ0mWKT63iVHfiEaF6wtM5YUobMEaxOy
	lCYjahUqf8xCHQbPVns6W/kU2VWJu52J7xlV7XD7omXm+iQzbQ0CDSinQhfDys252QAGSjsJ3TkMM
	GEw/n35gJtFzGbQGtxYp7qNXoLh3ijzM8GP1V1NXtbY/fjKshrBXeToKTrG6hs1HNyMB6e3gGUEro
	2Yekcdob2FHX9TI0kEZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic7Kj-0001Sw-MC; Tue, 03 Dec 2019 12:31:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic7KW-0001SK-L1; Tue, 03 Dec 2019 12:31:02 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 127E52073C;
 Tue,  3 Dec 2019 12:30:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575376259;
 bh=4bPoHww62PiAifL9wchSjqkMtb4cUfKs/nolfKBokxk=;
 h=Subject:To:Cc:From:Date:From;
 b=j/GH6XF20vW2yLEZJk09oFfKGzC1K829y6CayX2nmVKV6Jjc2zyhpflx4P7ediHgm
 Hf3XKlbGQQR/BuTeH5LY0zObVjYa0lVDWnv5uQtJZl4rTutUPnFERIOreiiluBi4Iy
 29m5FGPywEZ8UXw/LaMTYlgS+yQd57bw/3s8aR3A=
Subject: Patch "mtd: rawnand: atmel: fix possible object reference leak" has
 been added to the 4.14-stable tree
To: alexandre.belloni@bootlin.com, bbrezillon@kernel.org,
 computersforpeace@gmail.com, dwmw2@infradead.org, gregkh@linuxfoundation.org,
 lee.jones@linaro.org, linux-arm-kernel@lists.infradead.org,
 linux-mtd@lists.infradead.org, ludovic.desroches@microchip.com,
 marek.vasut@gmail.com, miquel.raynal@bootlin.com, nicolas.ferre@microchip.com,
 richard@nod.at, tudor.ambarus@microchip.com, yellowriver2010@hotmail.com
From: <gregkh@linuxfoundation.org>
Date: Tue, 03 Dec 2019 13:30:43 +0100
Message-ID: <1575376243232191@kroah.com>
MIME-Version: 1.0
X-stable: commit
X-Patchwork-Hint: ignore 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_043100_729076_9E58316E 
X-CRM114-Status: GOOD (  14.93  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: stable-commits@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


This is a note to let you know that I've just added the patch titled

    mtd: rawnand: atmel: fix possible object reference leak

to the 4.14-stable tree which can be found at:
    http://www.kernel.org/git/?p=linux/kernel/git/stable/stable-queue.git;a=summary

The filename of the patch is:
     mtd-rawnand-atmel-fix-possible-object-reference-leak.patch
and it can be found in the queue-4.14 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.


From a12085d13997ed15f745f33a0e01002541160179 Mon Sep 17 00:00:00 2001
From: Wen Yang <yellowriver2010@hotmail.com>
Date: Thu, 7 Feb 2019 03:50:55 +0000
Subject: mtd: rawnand: atmel: fix possible object reference leak

From: Wen Yang <yellowriver2010@hotmail.com>

commit a12085d13997ed15f745f33a0e01002541160179 upstream.

of_find_device_by_node() takes a reference to the struct device
when it finds a match via get_device, there is no need to call
get_device() twice.
We also should make sure to drop the reference to the device
taken by of_find_device_by_node() on driver unbind.

Fixes: f88fc122cc34 ("mtd: nand: Cleanup/rework the atmel_nand driver")
Signed-off-by: Wen Yang <yellowriver2010@hotmail.com>
Suggested-by: Boris Brezillon <bbrezillon@kernel.org>
Reviewed-by: Boris Brezillon <bbrezillon@kernel.org>
Reviewed-by: Miquel Raynal <miquel.raynal@bootlin.com>
Acked-by: Miquel Raynal <miquel.raynal@bootlin.com>
Cc: Tudor Ambarus <tudor.ambarus@microchip.com>
Cc: Boris Brezillon <bbrezillon@kernel.org>
Cc: Miquel Raynal <miquel.raynal@bootlin.com>
Cc: Richard Weinberger <richard@nod.at>
Cc: David Woodhouse <dwmw2@infradead.org>
Cc: Brian Norris <computersforpeace@gmail.com>
Cc: Marek Vasut <marek.vasut@gmail.com>
Cc: Nicolas Ferre <nicolas.ferre@microchip.com>
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: Ludovic Desroches <ludovic.desroches@microchip.com>
Cc: linux-mtd@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
Signed-off-by: Lee Jones <lee.jones@linaro.org>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

---
 drivers/mtd/nand/atmel/pmecc.c |   21 +++++++++++++++------
 1 file changed, 15 insertions(+), 6 deletions(-)

--- a/drivers/mtd/nand/atmel/pmecc.c
+++ b/drivers/mtd/nand/atmel/pmecc.c
@@ -875,23 +875,32 @@ static struct atmel_pmecc *atmel_pmecc_g
 {
 	struct platform_device *pdev;
 	struct atmel_pmecc *pmecc, **ptr;
+	int ret;
 
 	pdev = of_find_device_by_node(np);
-	if (!pdev || !platform_get_drvdata(pdev))
+	if (!pdev)
 		return ERR_PTR(-EPROBE_DEFER);
+	pmecc = platform_get_drvdata(pdev);
+	if (!pmecc) {
+		ret = -EPROBE_DEFER;
+		goto err_put_device;
+	}
 
 	ptr = devres_alloc(devm_atmel_pmecc_put, sizeof(*ptr), GFP_KERNEL);
-	if (!ptr)
-		return ERR_PTR(-ENOMEM);
-
-	get_device(&pdev->dev);
-	pmecc = platform_get_drvdata(pdev);
+	if (!ptr) {
+		ret = -ENOMEM;
+		goto err_put_device;
+	}
 
 	*ptr = pmecc;
 
 	devres_add(userdev, ptr);
 
 	return pmecc;
+
+err_put_device:
+	put_device(&pdev->dev);
+	return ERR_PTR(ret);
 }
 
 static const int atmel_pmecc_strengths[] = { 2, 4, 8, 12, 24, 32 };


Patches currently in stable-queue which might be from yellowriver2010@hotmail.com are

queue-4.14/mtd-rawnand-atmel-fix-possible-object-reference-leak.patch

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
