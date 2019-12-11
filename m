Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C250F11AE3B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 15:48:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=VaXyCRxrii+64+taccjCf5zZVG4F7kN76iT1WL/3L3w=; b=bzJj8TOp/UUCSH8hAvbEfRh1Tn
	ly7ZbwI4BGujxvCRjMiASubPPhN16qurHen2/lnBa7RSmIXNIWWhG764B72WFvGnYuDj5ugIqKYGT
	eEY9YpOd6sKnPo0BKnzZSNZvl5T/laB+zQ7OrmbH3Zj05/CB7O3IpFwY1/z6emqswr07wsyU2a/kC
	nUU4gcFcNKNFyCVvN92YZGHTjfLqKHJ/fN+s+e4DtQ4w/EhT+1n+eq4emujkBl2bn/F05T2ZfLong
	sJ+7AhsEO7zhzAHP16ZzcKGoD2qPT+gvD59VnB9S606PLTpwyxUR3VtcIz7fOWikXnIIgoCyK/P/3
	5AzARdgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if3Hk-0004SV-Qk; Wed, 11 Dec 2019 14:48:16 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if3GR-0003Ch-Ie
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 14:46:59 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20191211144651euoutp0210e19a76a43e195680c62e9023cd64bc~fWGsokQGP1117911179euoutp02C
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Dec 2019 14:46:51 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20191211144651euoutp0210e19a76a43e195680c62e9023cd64bc~fWGsokQGP1117911179euoutp02C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1576075611;
 bh=jPVQGv2B63dkrb4xPXViL+0AtlLT78bLnq0v7ybfs38=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=THjkas/MzYhyi5bxqtCiFaTMibrLiG6/ck6oyH1BG9YDd+R0tv75XJyMeZIH2Z3Uc
 Cqb6KktBqHRIYoiJmozBgSLRRo8su4NtNjz4qtYJyLCPMFdXUie/JzePoGOJ64PTnI
 WCMy3cUoT1Q0+9I6X+VX/ESrMMr24h7OiDpZmNcQ=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20191211144651eucas1p2a3b9c45b1a4754c000c8860c82504333~fWGr_xD2d0794007940eucas1p2Z;
 Wed, 11 Dec 2019 14:46:51 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id E4.2F.61286.B5101FD5; Wed, 11
 Dec 2019 14:46:51 +0000 (GMT)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20191211144650eucas1p221857c5e96ee4b5730fad80e105933ac~fWGroaE5d1014710147eucas1p2R;
 Wed, 11 Dec 2019 14:46:50 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20191211144650eusmtrp26bb810620493b236aed5f8ff33c1102f~fWGrnsfxn0169801698eusmtrp29;
 Wed, 11 Dec 2019 14:46:50 +0000 (GMT)
X-AuditID: cbfec7f2-f0bff7000001ef66-93-5df1015b3e91
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 42.AA.07950.A5101FD5; Wed, 11
 Dec 2019 14:46:50 +0000 (GMT)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20191211144649eusmtip1181d94ddc9fa416ac400580ecdc322e8~fWGq4HQtg0888708887eusmtip19;
 Wed, 11 Dec 2019 14:46:49 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: linux-usb@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 4/4] usb: usb3503: Convert to use GPIO descriptors
Date: Wed, 11 Dec 2019 15:46:38 +0100
Message-Id: <20191211144638.24676-5-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191211144638.24676-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSaUhUURjlzntv3nNw5DkjeF1KGigryAWjLqWSYfGEjET6k0015XPBlRnX
 /iTuDikmSpNmiYqW+5bOaGkuOamD44JmkFppoImWS4Yams9n9u+c757znXMvl8Ik7whrKjg8
 ilWGK0JlQhHe3LsxeMoPLMud+uoxNDizhaN6TS2BBjqWcJTWXoijpJJaITIa60iU+6dcgBpm
 xgk02vpUiEaThgHSGNsFqLgsBUPVPZMkSkx2QakZZQRqrEkj0UaXUXDBnCn5PYUxdV8rCUaX
 P0kyDRUZQubT+Gsh01FYRTKNpQ+Y5L4OnMlqqgDMasPha6IbIld/NjQ4hlU6ut8RBTXNNJOR
 z53i1vtniQSgt1cDEwrSp2FZTjGpBiJKQr8AcGzTIOTJGoCFKZ2AU0noVQBnJwLVgNpzpHQf
 5zXlAC63aIgDw8v1MZwzCGlnqF5U722yoKsA3MrU4BzB6E0MflxI2VsrpS/B9JphgsM4fRQW
 pGcJOCym3WCHYRvwBe1gZd1bjIs2od1hbmc8twfSUySc07ZjvMYTjpa0EzyWwu/6JpLHtnBH
 91zAG5IA/DJYTfLkIYCjiZr9hPOwW8+1oHbrnYC1rY782AMWJJUD/s5mcGLRnBtjuzCn+THG
 j8UwPVXCq4/BfH3NQWzn0Mh+NQbOf9DsP+kjALOW10E2sMv/H1YEQAWwZKNVYYGsyjmcjXVQ
 KcJU0eGBDvciwhrA7uca2NavaMGvkbtdgKaAzFRc1PJDLiEUMar4sC4AKUxmIdanLsklYn9F
 /H1WGXFbGR3KqrqADYXLLMUuxfNyCR2oiGJDWDaSVf47FVAm1gmAiF9jv32WHrnlsXnWNQAa
 SqdEcQYm08tautC2vWgXaz70ZvqJp2vUZWfCtsAqxnD1kK7HNK/FLLvc1jck8fq01n/55pXq
 wYDGZ4IKey9v77lZn9Bz/WfmrH76OW29d7R55aOd1Y2PFOM+F92KVhql9XnyhZh5Ue96W6Fv
 snEnW4arghTOJzGlSvEXORxtJVgDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrKIsWRmVeSWpSXmKPExsVy+t/xu7pRjB9jDTqeaFqce/ybxWLjjPWs
 Fqf3v2OxaN83l8WiefF6Novz5zewW0z5s5zJYtPja6wWl3fNYbO43HyR0WLG+X1MFouWtTJb
 rD1yl92iqcXYoq1zGavF5nXt7BY/D51nchD0WPz9HrPHhkerWT12zrrL7rFpVSebx51re9g8
 9s9dw+6xeUm9R8vJ/SwefVtWMXp83iQXwBWlZ1OUX1qSqpCRX1xiqxRtaGGkZ2hpoWdkYqln
 aGwea2VkqqRvZ5OSmpNZllqkb5egl7Hl8Tb2gvkGFd9OPWFtYDyu3sXIwSEhYCLReliji5GL
 Q0hgKaPE0yfHmLsYOYHiMhInpzWwQtjCEn+udbFBFH1ilFh9ajNYgk3AUKLrLURCRGADo8SZ
 909YQBLMAk0sEicPqYDYwgKuEh3rLoI1sAioSszu6GMCsXkFbCX2n/nHCLFBXmL1hgPMIBdx
 CthJTDlYCRIWAiq5N+kQ2wRGvgWMDKsYRVJLi3PTc4uN9IoTc4tL89L1kvNzNzECo2jbsZ9b
 djB2vQs+xCjAwajEw7tg+/tYIdbEsuLK3EOMEhzMSiK8x9vexQrxpiRWVqUW5ccXleakFh9i
 NAW6aSKzlGhyPjDC80riDU0NzS0sDc2NzY3NLJTEeTsEDsYICaQnlqRmp6YWpBbB9DFxcEo1
 MKpknr333+BegsOc+Rc3p//yKv4fKy7yJ4zvc3qNimDDs6hMP2XXmflvzFO3b1j3al7Jxcdi
 PZ+nc9sILFq0ZsUBuWU50oUfL3/kfKkw94LmGu/JOy9NFM7Z9OdFrcv869ffP1PdLPfmjahc
 2pH7BuK8xQYCxis2xiZ92/r3TvOOz8ftumqVZj5TYinOSDTUYi4qTgQArFTau7gCAAA=
X-CMS-MailID: 20191211144650eucas1p221857c5e96ee4b5730fad80e105933ac
X-Msg-Generator: CA
X-RootMTR: 20191211144650eucas1p221857c5e96ee4b5730fad80e105933ac
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20191211144650eucas1p221857c5e96ee4b5730fad80e105933ac
References: <20191211144638.24676-1-m.szyprowski@samsung.com>
 <CGME20191211144650eucas1p221857c5e96ee4b5730fad80e105933ac@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_064655_759977_269B0599 
X-CRM114-Status: GOOD (  18.98  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Stefan Agner <stefan@agner.ch>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, Maxime Ripard <mripard@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, Chen-Yu Tsai <wens@csie.org>,
 Andy Gross <agross@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Linus Walleij <linus.walleij@linaro.org>

This converts the USB3503 to pick GPIO descriptors from the
device tree instead of iteratively picking out GPIO number
references and then referencing these from the global GPIO
numberspace.

The USB3503 is only used from device tree among the in-tree
platforms. If board files would still desire to use it they can
provide machine descriptor tables.

Make sure to preserve semantics such as the reset delay
introduced by Stefan.

Cc: Chunfeng Yun <chunfeng.yun@mediatek.com>
Cc: Marek Szyprowski <m.szyprowski@samsung.com>
Cc: Stefan Agner <stefan@agner.ch>
Cc: Krzysztof Kozlowski <krzk@kernel.org>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
[mszyprow: invert the logic behind reset GPIO line]
Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
---
 drivers/usb/misc/usb3503.c            | 94 ++++++++++-----------------
 include/linux/platform_data/usb3503.h |  3 -
 2 files changed, 35 insertions(+), 62 deletions(-)

diff --git a/drivers/usb/misc/usb3503.c b/drivers/usb/misc/usb3503.c
index 72f39a9751b5..116bd789e568 100644
--- a/drivers/usb/misc/usb3503.c
+++ b/drivers/usb/misc/usb3503.c
@@ -7,11 +7,10 @@
 
 #include <linux/clk.h>
 #include <linux/i2c.h>
-#include <linux/gpio.h>
+#include <linux/gpio/consumer.h>
 #include <linux/delay.h>
 #include <linux/slab.h>
 #include <linux/module.h>
-#include <linux/of_gpio.h>
 #include <linux/platform_device.h>
 #include <linux/platform_data/usb3503.h>
 #include <linux/regmap.h>
@@ -47,19 +46,19 @@ struct usb3503 {
 	struct device		*dev;
 	struct clk		*clk;
 	u8	port_off_mask;
-	int	gpio_intn;
-	int	gpio_reset;
-	int	gpio_connect;
+	struct gpio_desc	*intn;
+	struct gpio_desc 	*reset;
+	struct gpio_desc 	*connect;
 	bool	secondary_ref_clk;
 };
 
 static int usb3503_reset(struct usb3503 *hub, int state)
 {
-	if (!state && gpio_is_valid(hub->gpio_connect))
-		gpio_set_value_cansleep(hub->gpio_connect, 0);
+	if (!state && hub->connect)
+		gpiod_set_value_cansleep(hub->connect, 0);
 
-	if (gpio_is_valid(hub->gpio_reset))
-		gpio_set_value_cansleep(hub->gpio_reset, state);
+	if (hub->reset)
+		gpiod_set_value_cansleep(hub->reset, !state);
 
 	/* Wait T_HUBINIT == 4ms for hub logic to stabilize */
 	if (state)
@@ -115,8 +114,8 @@ static int usb3503_connect(struct usb3503 *hub)
 		}
 	}
 
-	if (gpio_is_valid(hub->gpio_connect))
-		gpio_set_value_cansleep(hub->gpio_connect, 1);
+	if (hub->connect)
+		gpiod_set_value_cansleep(hub->connect, 1);
 
 	hub->mode = USB3503_MODE_HUB;
 	dev_info(dev, "switched to HUB mode\n");
@@ -163,13 +162,11 @@ static int usb3503_probe(struct usb3503 *hub)
 	int err;
 	u32 mode = USB3503_MODE_HUB;
 	const u32 *property;
+	enum gpiod_flags flags;
 	int len;
 
 	if (pdata) {
 		hub->port_off_mask	= pdata->port_off_mask;
-		hub->gpio_intn		= pdata->gpio_intn;
-		hub->gpio_connect	= pdata->gpio_connect;
-		hub->gpio_reset		= pdata->gpio_reset;
 		hub->mode		= pdata->initial_mode;
 	} else if (np) {
 		u32 rate = 0;
@@ -230,59 +227,38 @@ static int usb3503_probe(struct usb3503 *hub)
 			}
 		}
 
-		hub->gpio_intn	= of_get_named_gpio(np, "intn-gpios", 0);
-		if (hub->gpio_intn == -EPROBE_DEFER)
-			return -EPROBE_DEFER;
-		hub->gpio_connect = of_get_named_gpio(np, "connect-gpios", 0);
-		if (hub->gpio_connect == -EPROBE_DEFER)
-			return -EPROBE_DEFER;
-		hub->gpio_reset = of_get_named_gpio(np, "reset-gpios", 0);
-		if (hub->gpio_reset == -EPROBE_DEFER)
-			return -EPROBE_DEFER;
 		of_property_read_u32(np, "initial-mode", &mode);
 		hub->mode = mode;
 	}
 
-	if (hub->port_off_mask && !hub->regmap)
-		dev_err(dev, "Ports disabled with no control interface\n");
-
-	if (gpio_is_valid(hub->gpio_intn)) {
-		int val = hub->secondary_ref_clk ? GPIOF_OUT_INIT_LOW :
-						   GPIOF_OUT_INIT_HIGH;
-		err = devm_gpio_request_one(dev, hub->gpio_intn, val,
-					    "usb3503 intn");
-		if (err) {
-			dev_err(dev,
-				"unable to request GPIO %d as interrupt pin (%d)\n",
-				hub->gpio_intn, err);
-			return err;
-		}
-	}
-
-	if (gpio_is_valid(hub->gpio_connect)) {
-		err = devm_gpio_request_one(dev, hub->gpio_connect,
-				GPIOF_OUT_INIT_LOW, "usb3503 connect");
-		if (err) {
-			dev_err(dev,
-				"unable to request GPIO %d as connect pin (%d)\n",
-				hub->gpio_connect, err);
-			return err;
-		}
-	}
-
-	if (gpio_is_valid(hub->gpio_reset)) {
-		err = devm_gpio_request_one(dev, hub->gpio_reset,
-				GPIOF_OUT_INIT_LOW, "usb3503 reset");
+	if (hub->secondary_ref_clk)
+		flags = GPIOD_OUT_LOW;
+	else
+		flags = GPIOD_OUT_HIGH;
+	hub->intn = devm_gpiod_get_optional(dev, "intn", flags);
+	if (IS_ERR(hub->intn))
+		return PTR_ERR(hub->intn);
+	if (hub->intn)
+		gpiod_set_consumer_name(hub->intn, "usb3503 intn");
+
+	hub->connect = devm_gpiod_get_optional(dev, "connect", GPIOD_OUT_LOW);
+	if (IS_ERR(hub->connect))
+		return PTR_ERR(hub->connect);
+	if (hub->connect)
+		gpiod_set_consumer_name(hub->connect, "usb3503 connect");
+
+	hub->reset = devm_gpiod_get_optional(dev, "reset", GPIOD_OUT_HIGH);
+	if (IS_ERR(hub->reset))
+		return PTR_ERR(hub->reset);
+	if (hub->reset) {
 		/* Datasheet defines a hardware reset to be at least 100us */
 		usleep_range(100, 10000);
-		if (err) {
-			dev_err(dev,
-				"unable to request GPIO %d as reset pin (%d)\n",
-				hub->gpio_reset, err);
-			return err;
-		}
+		gpiod_set_consumer_name(hub->reset, "usb3503 reset");
 	}
 
+	if (hub->port_off_mask && !hub->regmap)
+		dev_err(dev, "Ports disabled with no control interface\n");
+
 	usb3503_switch_mode(hub, hub->mode);
 
 	dev_info(dev, "%s: probed in %s mode\n", __func__,
diff --git a/include/linux/platform_data/usb3503.h b/include/linux/platform_data/usb3503.h
index e049d51c1353..d01ef97ddf36 100644
--- a/include/linux/platform_data/usb3503.h
+++ b/include/linux/platform_data/usb3503.h
@@ -17,9 +17,6 @@ enum usb3503_mode {
 struct usb3503_platform_data {
 	enum usb3503_mode	initial_mode;
 	u8	port_off_mask;
-	int	gpio_intn;
-	int	gpio_connect;
-	int	gpio_reset;
 };
 
 #endif
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
