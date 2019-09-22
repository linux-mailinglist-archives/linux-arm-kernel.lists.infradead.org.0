Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AC2BBA191
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 22 Sep 2019 10:49:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Baqy18cy2UC8liijjsW2G3JX52n0S9aQKXKJMklZzXU=; b=aNMd8sMqWmNlCQ
	dIu7dTvk2VM8yDRTJk0FIhLhERu7+Of2gSzaDlbHCBamy/xHkAGuflcxtR/TP+csBaVfnVUnzLjAR
	pdVqxmUtO0LEm9VhqkwPTfTaKutJwnHq60DNNdCnDRcQ8a9KRL5FqAGz9ZA5TUwQiNay9nnCt9Sq2
	rB+jY/bJykbWHC+WnPyaR+XjvNNKx6tySwYzdi8OaUHxfHgXtOR7dqsA3+3SVjRlZhCrklXf9EcfC
	16+SgfsMIiAhhueaMQiWAaHYxJNkAX/6M85ydY2cPsivg77+H6MqmBunJd3MSVqc5ry9Q6TF1zAsb
	TSqrCsNMlvvVtu/apZOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBxYC-0001MA-B1; Sun, 22 Sep 2019 08:49:00 +0000
Received: from mout.web.de ([212.227.17.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBxXx-0001Ln-Ut
 for linux-arm-kernel@lists.infradead.org; Sun, 22 Sep 2019 08:48:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1569142110;
 bh=1IMwv0qhLGo+oSbw8+SiiHtK+s+teR0BEJvkeVWbEdI=;
 h=X-UI-Sender-Class:To:From:Subject:Cc:Date;
 b=GfB12LUbKf/dmHLeOeLbSq3vbMq9p5sMRFseqdPQGJDQz9jhdpFPk50EbjtBYmC4y
 WX1w7+LGKftwU3MoMRB0kt9WoJr4+hFW2pJ30uPWvWYRvnQM7hiuKJWRGpfwochWLt
 T39dFUl22MvcpkYYNcu6zfO/ruiBFYz+ZQjn/c5g=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.2] ([2.244.8.78]) by smtp.web.de (mrweb101
 [213.165.67.124]) with ESMTPSA (Nemesis) id 0LcPf8-1hk0r53G6A-00jsEf; Sun, 22
 Sep 2019 10:48:29 +0200
To: dmaengine@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Dan Williams <dan.j.williams@intel.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Vinod Koul <vkoul@kernel.org>
From: Markus Elfring <Markus.Elfring@web.de>
Subject: [PATCH] dmaengine: at_xdmac: Use devm_platform_ioremap_resource() in
 at_xdmac_probe()
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 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 FEE=
Message-ID: <377247f3-b53a-a9d9-66c7-4b8515de3809@web.de>
Date: Sun, 22 Sep 2019 10:48:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
Content-Language: en-US
X-Provags-ID: V03:K1:zFvPVHfL+9MKnsU04xQlToyp1Y9bukoHPwtl1wNYkS5z+Vp/FlX
 jkZ8OtfJmur4QSD/As5+wKaR+vTrh1PLv4fR5EsLcfW7NhuJa/vquyuYBU73nl7UsSDSisq
 8g7JYQChu4NY+361AIZsh/cwXW2EEUoGZh8Xn8geftBNgtXlpUbyGZY4Ftasmolsshky2Ho
 hY10l3Rfh1AVpheI36ABg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:4Kk8+spbMhU=:2wcqXb0patGfUIOtf8WPcE
 yhgyAO3Rg79FXhwCRBILFR1iy0dWw4s+CYMnftZAkypH6zH1FTDjFTxGW+cTdm2XLpRW81vBe
 GdFFRsNoCYMhGR8wGbkOd54uTZzC5dV38CsvRAIxg3ObZQBl9pHmIjd9wpKEOGPVq23570mZa
 Z8WZA8zGaBBdPTqLzJpQJYZhgL2kQPQUOWCKwhMy6f9DZ0AUEN+8N7a7c+24E5hhjs+c5PrQy
 Zrd+4XgMXkVEfza7FKpFUEOJ/qFOmdFoYIzTB47Z4pbgAEbg1XIEh1ZuinKJn4HEySJK+snaB
 ro3dsA/r7SoiDZTA/LyV0tTyj6GMOI72dfDgbILCuh0llkWk7VvOLFuAQmj37Mm0+CLx7RM/i
 BC0nQzx5ZCvoxK2eYqVaeiqn3rwvOgf7FLgbtfxs1Py5Ei0ruVgyRlc6PzT2UPc0a8gxDFsLy
 kGOHDRQLaFKHBja9tYug6iyIZz4M+FSTmkb8m0ZJ43pDSqE5lrlR0kTgd5gfIMYNji8TS3m8/
 /d7Vu4YZ2M5JZ4YXDLw2JZ+FqqJx2hZuWmCwm7sHlFPItvTiiwuffiJqT0zUhun8cAiu48CAf
 gD62+tqaEgkedNPRuq4Ve5Dgx2C+Isyz20Gja7M7A/2tCDIfzEwyriPT/qYQj2BccUNnYefal
 jJT6+ocPVWjMMG0wRkCYlxO+z7k4Gca8lsFwFt49PtSHdD35UQcR33ZNZMvqp/zmkttIhhFdO
 bzjbkakz1ReL+nCAIojvmyTNATgQfCY6sR8ye4sPxDYCIiJSe9NHY4aYXL/bLo4RJV1IoA4Bq
 p13iZHqSxRrTpI9qJt/nI8hbkOObhGtHP38JNpOvD8jTAs1RsiHRbnZ+j1ntk/lwo9ia7DT9W
 GO9HctJR6l4zGMcBxUiUMrLmLUpE3UEZce3o4EyrRYERkE0znJen1aI/z4udH37/7uu1lRC/8
 TqUq0FsEO2wNqe8yGYkTySVtChUN+x1+Uk2e5/EjI0TaycrpYCxoDjw8qNiVIjXLqVNZXRMos
 XTcWVaGlQniwb4sCJGsu5Wwa5qssxlAIy9hX/rNuC/5ZPVp3Bxt0OYE0BZ2jmpz2GSaFLF4hy
 dNDwQDZeSI52RA6UXtUKKyLw8tAAS0MXiDNuN7+kPqtXFneXg5aRvoh79G/AqTDXvxUtcyV9S
 XR3dsqQDd/NeTTkfFwmKnyoBHi1/EAgu9EoxOyjC6NOv6YI+Vi3NRH0I701DKzZv/Pj7OiZ3u
 i3Of/p1KINn3TX7/QNoAoLmsVO0ANn9nt7N8RfJ8+RpRnYaK+LaZDdrPLfmY=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190922_014846_329883_A3B92D02 
X-CRM114-Status: GOOD (  10.18  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (markus.elfring[at]web.de)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.11 listed in list.dnswl.org]
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
Cc: Nicolas Ferre <nicolas.ferre@atmel.com>, kernel-janitors@vger.kernel.org,
 LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Markus Elfring <elfring@users.sourceforge.net>
Date: Sun, 22 Sep 2019 10:37:31 +0200

Simplify this function implementation by using a known wrapper function.

This issue was detected by using the Coccinelle software.

Signed-off-by: Markus Elfring <elfring@users.sourceforge.net>
---
 drivers/dma/at_xdmac.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/dma/at_xdmac.c b/drivers/dma/at_xdmac.c
index b58ac720d9a1..f71c9f77d405 100644
--- a/drivers/dma/at_xdmac.c
+++ b/drivers/dma/at_xdmac.c
@@ -1957,21 +1957,16 @@ static int atmel_xdmac_resume(struct device *dev)

 static int at_xdmac_probe(struct platform_device *pdev)
 {
-	struct resource	*res;
 	struct at_xdmac	*atxdmac;
 	int		irq, size, nr_channels, i, ret;
 	void __iomem	*base;
 	u32		reg;

-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	if (!res)
-		return -EINVAL;
-
 	irq = platform_get_irq(pdev, 0);
 	if (irq < 0)
 		return irq;

-	base = devm_ioremap_resource(&pdev->dev, res);
+	base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(base))
 		return PTR_ERR(base);

--
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
