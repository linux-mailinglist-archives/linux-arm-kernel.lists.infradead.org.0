Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B475111DDB
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 23:59:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bh8zMmU9DID41lI/OHX2ar/Jc0E2Ha+rEF6eIaOu8ps=; b=g/7oPuuZ0Drfr9
	1gsABAsahHZmgSgycqA1KucynsSJ6Yc51IxZFMuLLqlN6x8EjcHf2n71BI+2gIK8SvI3iYqgYdgYh
	x2vgjUQoMVP+VHuRxO3z9jPY9ZFZ61QaabhLL9rQN69zPIYp7EsgWcwOmjuYFZB/j+ngp9Eij+Y/z
	pVEPYwELYRG69jjpPdIn539RQiDrzpyNF0iON3Wj/pwb63u2/bEMj4Tgt5c6x3XB4WCpHWVDJ7Rpa
	dQ62hFios4i8SGw+11v4JPxuosI1jibgz1GR9o1TRyTy/z5uCn5y+u+Qzh5mxQN13F1OIrD4EL892
	LfSbgoRioEBN29actTCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icH8Y-0008R5-A6; Tue, 03 Dec 2019 22:59:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icH8Q-0008Pf-Vz; Tue, 03 Dec 2019 22:59:12 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C7A7C20803;
 Tue,  3 Dec 2019 22:59:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575413943;
 bh=xse6kgt5T0zLm987FtTsfxKSnjkyBAkCk5p8frhNgPk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=rNsVxxg7d6RWxHbd7kPIZSKh44YDZuYotn+fTLSZ7sRFEcBdWJJxVUfUClMxnSgf5
 7VFD5keOghIau6mncYXeoW4wfl108IXYgjt68aIiyJQjGmPPg0CacDkmV/GH91FrNj
 fjaOdtKDntK9KXfKEHmBt2A5KZlnWii6GTdDkq4A=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 4.19 299/321] mtd: rawnand: atmel: fix possible object
 reference leak
Date: Tue,  3 Dec 2019 23:36:05 +0100
Message-Id: <20191203223442.705005398@linuxfoundation.org>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191203223427.103571230@linuxfoundation.org>
References: <20191203223427.103571230@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_145911_077799_F0CA2AA5 
X-CRM114-Status: GOOD (  14.98  )
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Boris Brezillon <bbrezillon@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Wen Yang <yellowriver2010@hotmail.com>, stable@vger.kernel.org,
 Richard Weinberger <richard@nod.at>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-mtd@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 Lee Jones <lee.jones@linaro.org>, Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>, Marek Vasut <marek.vasut@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

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
 drivers/mtd/nand/raw/atmel/pmecc.c |   21 +++++++++++++++------
 1 file changed, 15 insertions(+), 6 deletions(-)

--- a/drivers/mtd/nand/raw/atmel/pmecc.c
+++ b/drivers/mtd/nand/raw/atmel/pmecc.c
@@ -876,23 +876,32 @@ static struct atmel_pmecc *atmel_pmecc_g
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



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
