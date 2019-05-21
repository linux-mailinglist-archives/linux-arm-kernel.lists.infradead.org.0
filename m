Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC80D24D21
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 12:47:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Date:Message-ID
	:To:Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=/gotOiNaHS8nvd0FQkp8nKvYKiB3P4mNCxRRCP+vRV8=; b=tJvZUQXeyQEEJH
	fvf8P5PvQ+r4ODQyF04Lp7KY+ROd5axmjLCfMeDx/f3NWMaTh6Z/PzvJ4fTHk7BLMl5Ba+PB3y6p1
	LoJWhtsOEwee5ipr252vc3/ooNbBCsbfHiPD95YgsUW3hB0/6Tj3ZxIKeISmm9SDY4ZF8u7+LSxBv
	hZi+2VOpl+HlSiQbgbS+y4a9QgfrhRb1GQtuLppU6DpXgK6s9l3M4UnpSFKcU55rSS0mNUJl8ZJ95
	J7ELLxJmpjFBfYyk+bJ3R49fuLOO2URCb+ozNFkhw7WadG5/MUp01GvNJnXKWPa3PmmPUtGLybNzN
	XNsUqksWG90NvDHrKrzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT2Id-0006iQ-6K; Tue, 21 May 2019 10:47:15 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT2IV-0006gG-43
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 10:47:09 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190521104704euoutp02430b49c5e9ecc00ee2326eafe88cdff8~grPGTqFJf1205512055euoutp02L
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 May 2019 10:47:04 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190521104704euoutp02430b49c5e9ecc00ee2326eafe88cdff8~grPGTqFJf1205512055euoutp02L
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1558435624;
 bh=vQno20hUkZmhifVARxLJWy7RbMpjq90Z0tVRxBtH4n8=;
 h=From:Subject:To:Cc:Date:References:From;
 b=AeDr8IS/O+lN0F3Sj2flEfE0+bmL+kZaa3S4giydP4guwkYJaD90K4o0XhX0+/zkH
 29tlUtkZB0HkMQqmfiEtHwC9cbuhRAa/5YnVMAiFzn+bnWFbz5yHAF2FgJEr6t4it1
 javfLc+thLvprINwEd8FE5FQRv/qAe7mE8I6uBgw=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190521104704eucas1p14b5f9ab0a0bc5e903728df820de21c68~grPF4Njr-1139911399eucas1p16;
 Tue, 21 May 2019 10:47:04 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 92.54.04298.727D3EC5; Tue, 21
 May 2019 11:47:03 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190521104703eucas1p2c1b6163a4ff9bb4d6caed325a4d0ee23~grPFKd54O0490104901eucas1p2s;
 Tue, 21 May 2019 10:47:03 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190521104703eusmtrp167559fd1883421c3d769812772bf4af1~grPE61d5t1258812588eusmtrp1W;
 Tue, 21 May 2019 10:47:03 +0000 (GMT)
X-AuditID: cbfec7f2-3615e9c0000010ca-d5-5ce3d72752c7
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id D7.44.04140.727D3EC5; Tue, 21
 May 2019 11:47:03 +0100 (BST)
Received: from [106.120.51.71] (unknown [106.120.51.71]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190521104702eusmtip25d8dd0574a912089ec3d01d6ece3f592~grPEcYX2z2274322743eusmtip22;
 Tue, 21 May 2019 10:47:02 +0000 (GMT)
From: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Subject: [PATCH v2] video: fbdev: imxfb: add COMPILE_TEST support
To: linux-fbdev@vger.kernel.org, dri-devel@lists.freedesktop.org
Message-ID: <33fc4837-599d-0d5c-c530-58b283c4c095@samsung.com>
Date: Tue, 21 May 2019 12:47:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA01Sa0gUYRTt25mdHZdWxlXxZqa0ZGXlC6QmC1Hyx/jLiKJFpdpyckVdZce3
 P9Io0+3h+7UJPjLNDUw38YUvVnIrwyzTzBSfkQZmuAkqabmOkv/Ouffcc++BS2LSbqE9Ga6K
 ZdUqRaSMEONNvav9rkc+z4R4FA2cpD8tLxL01FAgrStoxWn9zLCQfv3ol5DWrNVi9GBbKUGv
 N+txeq7Rjv6ak4d8xUyrdlzE6HWZBDNx3yhgXlbdYhp+tgiYrHUPxqR3PC8KEp8NZSPD41m1
 u881sXJsuhqPKSQSF6dvo1RULNQgCxIoL8iuNIk0SExKqWcIlkseCnjyG8HG03khT0wI6u92
 iHZGFt7NIr5Rg6Dk1TjBkwUEmsIyZFYRlDfk3NNtYWvKDwz9o7gZ21C+kD+SvbUQowYF0LPa
 viWSUD6Qm9spMGOccoaxplLCjG0pOUz01gt5jRW8KZndMsIoOxidLRPw2AmaF0oxsylQnSJY
 rVncHCY3iT8YMo/zZ1vDD2PjdgQH6Mt7gPP6OgTrGXPbw80IavI2CF51BnqMH4RmI4xygRdt
 7nzZDxoqv237W8LIghV/gyXkNhVhfFkCGelSXn0Y6qvriZ21mtbabQkDjV0HstFB7a5g2l3B
 tLuCaf+fUI5wHbJj47ioMJbzVLEJbpwiiotThbndiI7So82/6tswLrWg5Y/XDYgikWyvRJk/
 HSIVKuK5pCgDAhKT2Uj63m6WJKGKpGRWHX1VHRfJcga0n8RldpKUPZPBUipMEctGsGwMq97p
 CkgL+1QUMVBFflnzku1r4Cw6l5zqht+fmJrf473qGuBB3rTyHxNHP3ZdKmAPPTel+6S1Jzte
 8JRPXszBO/RBRtWdLjrFI68YrUQ6uLQF6c4FnEqQ//0zGZyUtnJ09jL6nrhoqy72x4rL9fL+
 7sArjMNExRNlg0XWkG2W1ll+Otm6ouySDOeUCs9jmJpT/AOgeW9rUwMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrFIsWRmVeSWpSXmKPExsVy+t/xe7rq1x/HGHRfYba48vU9m8XDq/4W
 q6buZLHY9Pgaq8WJvg+sFl2/VjJbXN41h83i7/ZNLBYvtohb3J44mdGBy2PnrLvsHptWdbJ5
 3O8+zuSxeUm9x8Z3O5g8+v8aeHzeJBfAHqVnU5RfWpKqkJFfXGKrFG1oYaRnaGmhZ2RiqWdo
 bB5rZWSqpG9nk5Kak1mWWqRvl6CXcefRMpaCaWwV7x81MTYwzmDtYuTkkBAwkXh75gljFyMX
 h5DAUkaJOXuXMXcxcgAlZCSOry+DqBGW+HOtiw2i5jWjxMYlR1lAEmwCVhIT21cxgtjCAo4S
 h87dAouLCDhITLkxgR2kgVngKpPEo/0LwbbxCthJTJq0jwnEZhFQlbizbQ4biC0qECFx5v0K
 FogaQYmTM5+A2cwC6hJ/5l1ihrDFJW49mc8EYctLbH87h3kCo8AsJC2zkLTMQtIyC0nLAkaW
 VYwiqaXFuem5xUZ6xYm5xaV56XrJ+bmbGIHxtu3Yzy07GLveBR9iFOBgVOLhzZjyKEaINbGs
 uDL3EKMEB7OSCO/pU0Ah3pTEyqrUovz4otKc1OJDjKZAD01klhJNzgemgrySeENTQ3MLS0Nz
 Y3NjMwslcd4OgYMxQgLpiSWp2ampBalFMH1MHJxSDYw15yQ6Lrilxlq9PPt8vvk7p52+O771
 /tZ7xRTH1av2sI+9YFGYAqNS6WQ77ZZfT+5eepQkyTnLTlwg7vcHwbLGZz+MdDn/8a5nM8n9
 xf1IbjWPV9Uzpy8P1TdzFSiXbPE2ZDszNU7llE35wRdJzJ69/w/qs37r2s/Akr9z2aIXb5Z8
 n+VSNl+JpTgj0VCLuag4EQD1VV9czQIAAA==
X-CMS-MailID: 20190521104703eucas1p2c1b6163a4ff9bb4d6caed325a4d0ee23
X-Msg-Generator: CA
X-RootMTR: 20190521104703eucas1p2c1b6163a4ff9bb4d6caed325a4d0ee23
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190521104703eucas1p2c1b6163a4ff9bb4d6caed325a4d0ee23
References: <CGME20190521104703eucas1p2c1b6163a4ff9bb4d6caed325a4d0ee23@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_034707_569581_547CF18B 
X-CRM114-Status: GOOD (  13.24  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add COMPILE_TEST support to imxfb driver for better compile
testing coverage.

Signed-off-by: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
---
v2: add missing HAVE_CLK && HAS IOMEM dependencies (noted by Uwe)

drivers/video/fbdev/Kconfig |    3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

Index: b/drivers/video/fbdev/Kconfig
===================================================================
--- a/drivers/video/fbdev/Kconfig
+++ b/drivers/video/fbdev/Kconfig
@@ -331,7 +331,8 @@ config FB_SA1100
 
 config FB_IMX
 	tristate "Freescale i.MX1/21/25/27 LCD support"
-	depends on FB && ARCH_MXC
+	depends on FB && HAVE_CLK && HAS_IOMEM
+	depends on ARCH_MXC || COMPILE_TEST
 	select LCD_CLASS_DEVICE
 	select FB_CFB_FILLRECT
 	select FB_CFB_COPYAREA

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
