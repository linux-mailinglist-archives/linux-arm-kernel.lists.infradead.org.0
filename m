Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E44DB7B5A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 15:57:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=97M7d4n6h/hszhTBXEGbtslPa8OMsFVQLdnZ4IVUDyA=; b=hbZrVnW3qNuKUN
	B2eXI+d5qJZWiKVpk6DkZU4MjcweVwq6y7yYkZaDzm5ZFDJqGfEwiWDbSD+VUJF667uMcmD6K2Rld
	5xtfJr9XHcUw2DJzRLFIYRsNiWgMay7hbDnwHp7nlp1l+pK7s7Nzo7i/Pam8sYg00nuD/55zYOhBi
	L3yYQnBiCNRMDUOAlr1Lh26l1NAMERYA1dSfJTdxF3Lk7Id9M2oPYqlrjrXEb0XaLYsWR8gDcK86z
	2zYZgtb7UJQ32zuMj0LIWRqyk5kbqWceEmVOxsnq3MwERQGbIOQ0cOs+PuDTomVRiiuAOGs99AJiM
	Oy3mlOnVkkBBMPlAlN6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAwwM-0003Rv-VE; Thu, 19 Sep 2019 13:57:47 +0000
Received: from mout.web.de ([212.227.15.4])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAww5-0003Qy-P1
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 13:57:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1568901419;
 bh=2itNaQy+sSJmv7IRFrgbQVOCGiABDW1aTMQwerda4Ho=;
 h=X-UI-Sender-Class:To:From:Subject:Cc:Date;
 b=j3Ukc1hyBl+sj7qOjIoMpGLxE32dB++axrHRW614ZXkE7SayBfou536TFyFKb00SQ
 36C5ofQJhq7jhSTojs6+mBhwJJCC3gHnpgf7qgI86L4u2OtXaG/i562jFyewNO/9t/
 EyJ3rEIJ2xzIo+EtrowIinY0X6qyw+It/VqYrJJI=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.2] ([93.132.191.36]) by smtp.web.de (mrweb001
 [213.165.67.108]) with ESMTPSA (Nemesis) id 0McFgl-1iStie0G07-00Jalj; Thu, 19
 Sep 2019 15:56:59 +0200
To: linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Arnd Bergmann <arnd@arndb.de>, Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>,
 Stephen Boyd <swboyd@chromium.org>, Sylvain Lemieux
 <slemieux.tyco@gmail.com>, Vladimir Zapolskiy <vz@mleia.com>,
 Wei Yongjun <weiyongjun1@huawei.com>
From: Markus Elfring <Markus.Elfring@web.de>
Subject: [PATCH] usb: gadget: udc: lpc32xx: Use
 devm_platform_ioremap_resource() in lpc32xx_udc_probe()
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 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 FEE=
Message-ID: <6671a08a-fb20-f15e-5dbd-8b6b710e0ef9@web.de>
Date: Thu, 19 Sep 2019 15:56:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
Content-Language: en-US
X-Provags-ID: V03:K1:EwaVOO2O/6UCooJydUvagzMuaCL7LXccGb10TPm0rB8mt6OXn3Z
 oHiuBc/IH4SluhKLR8NN0B7YR18T3/zG2bw2QWQ58+3WaxtWpJ2GCvUvPCazbAjxvLwNsde
 Ss8zTpmitBV9ARsXa3p4/U8K1gDbkYlCC0qxYL7s4Ih69a/ThQ3/7qxQMeQ8r7ZJg5Uzf/S
 tTUKTB+vMoHSmLZqVlBZQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:t4gytpA5OsI=:XDaN0S3/D9dLDXnd560fpe
 gwmPoNGF07dsIq1UEj+eDDoHV65kRfLGx2lemSwpADFpvoTEbxFVqaDyucBUYMULwbXbAdACV
 tGpTzluQ7y6esAObxfTP9rJGxxv/Byi2Eu8DrNfzrWFnqhtJbLk/kGE4PF2M9k7nkSNfeCVCO
 Zn47dLVi+/cBY6sUBs5i4e4h7qb6tZPMCQdmry97x5Y5Raaypb57LMYU/2op7uSWlnO3Bs7Dk
 W7bmfzuutAYcFGed+mTBQvY8F+ZszVULlIaiPDl343WCyKRuUkyW4dcodRydHGGo/RjDcGlfs
 GaUSkJ+E4RLkkgM5HfWy5+gBzOrUMphRMUe6s/DvVEM1I+cvn5XSXDw2JJyWBxeEmyJKic17I
 Q4v8RTXkhsV4sUZT7SauKp25uTLs/4yvmCfHR05hIrDf7kA6Y/jhXH8uHTRX5DCNQSEdNoM+Z
 KsLFvjcQWezCInDm3Sb4vJwiFeo6OOHNP6OKg4WoGEpVyXjta4cWfH0EHZ6/8kSxOno2ofKr/
 XkgMaQhLJXuagh4SQ3VGnCP7OKTtiu9/tNapzpnfc4GoyUVQHjja8NVo13878oXPMTyKr2VCi
 xE7NQGFNQsYnQOL8BCjzauWaUm48bcCjK3fWPm8q2Ot64SU7D2O/MIlQSIWCRBPYKtLQlhHAa
 9+Tvs9oIEeKm9Ww9+8RNchQnG6XILtBvdYBZjFB6g3l0SiD9Eeko2xKkaEF2V5b6T0zZ+bdnJ
 tk6puhjWOwJRSe8urnPq8Z+arvbpqCbji7v8kpQ3gwijwrwJqqiWdxKyi+bM6ddSY1S7wU9ab
 rpUYfbrNNM0ydCa9f4dX2/a/iBzOdRv2ir6zFY5kVKnqcZk7wKgzrvrvjFagqAS/bs3smHpO0
 utSHQZNbmOYk/ZAo+UB299y2ROvvQLwMr88x2ZsUUyJ/Xx1XmwLmgo9MmA8bM9g03USxA9P3h
 b9UnlCOuHyKGoRuUDS68U6Ds3fRWrpdZq+0nlwB4HJ8eF7m8V2UfX52sZc0sxVTfvL5k9/Lg9
 WvmPAVkdYAaSCv9ikwcseGnHg5ikqOcLqY6iEHJ6UQ+XtBVwhcmyErcolrKtxPGxE7da+UKTw
 0w6i9vf51sYqA2G5uwV+Em1jZrMn4rlDrRIZWgoP97ZLA0uJ7HleKozrbNKyMT6sq/PDtLNTZ
 Nek/k7KZxWdJqvzvJNqdlDrKBeSL+yldAM5kzNVEjLFsMaGwYCl27cq94Hj3QLcOPxrrCeEGn
 x88lAbzqOFb79Dxo6h4k0LyftDy/o8TLvl0PVslMLbeSN9Bv74cOWlonQd1M=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_065730_143559_7E57F645 
X-CRM114-Status: GOOD (  11.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.4 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (markus.elfring[at]web.de)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 kernel-janitors@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 Himanshu Jha <himanshujha199640@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Markus Elfring <elfring@users.sourceforge.net>
Date: Thu, 19 Sep 2019 15:47:24 +0200

Simplify this function implementation by using a known wrapper function.

This issue was detected by using the Coccinelle software.

Signed-off-by: Markus Elfring <elfring@users.sourceforge.net>
---
 drivers/usb/gadget/udc/lpc32xx_udc.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/usb/gadget/udc/lpc32xx_udc.c b/drivers/usb/gadget/udc/lpc32xx_udc.c
index b3e073fb88c6..0ed3fd8c6610 100644
--- a/drivers/usb/gadget/udc/lpc32xx_udc.c
+++ b/drivers/usb/gadget/udc/lpc32xx_udc.c
@@ -3000,7 +3000,6 @@ static int lpc32xx_udc_probe(struct platform_device *pdev)
 	struct device *dev = &pdev->dev;
 	struct lpc32xx_udc *udc;
 	int retval, i;
-	struct resource *res;
 	dma_addr_t dma_handle;
 	struct device_node *isp1301_node;

@@ -3048,9 +3047,6 @@ static int lpc32xx_udc_probe(struct platform_device *pdev)
 	 *  IORESOURCE_IRQ, USB device interrupt number
 	 *  IORESOURCE_IRQ, USB transceiver interrupt number
 	 */
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	if (!res)
-		return -ENXIO;

 	spin_lock_init(&udc->lock);

@@ -3061,7 +3057,7 @@ static int lpc32xx_udc_probe(struct platform_device *pdev)
 			return udc->udp_irq[i];
 	}

-	udc->udp_baseaddr = devm_ioremap_resource(dev, res);
+	udc->udp_baseaddr = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(udc->udp_baseaddr)) {
 		dev_err(udc->dev, "IO map failure\n");
 		return PTR_ERR(udc->udp_baseaddr);
--
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
