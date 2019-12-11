Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4D1E11AE66
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 15:53:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=VaXyCRxrii+64+taccjCf5zZVG4F7kN76iT1WL/3L3w=; b=MHOcfA+P95Vea5XIvm/Yu6drzE
	rAzlqzm5YgGy/x6uJupokcfFES4Wrq0WSyQslA9cNywtffGKFl392l7AyCmXqV+yi08o6bl3A/1tU
	+plTjsneIQA65FqhLolqzYVxDASTjRgUSF4KngivvV2rbrIc6eMwaLP/q7ugro8YJMm/8a2HHQf8l
	I1mfok2mPvnNoLfItm90UlmN2f4NErq7xH+TPMx2LGgV1h6L2cDHReGgTGeS5we9oV6CclZdrrTTO
	gOU3gGR/xyXRf5N0geCNg2UaZHAK8/vfe/CKt4WAG+1dxBQOXsCgwvC0vw6rpGZdTDhXIGc+2UbVa
	FE7tIuWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if3Mg-0008J0-HC; Wed, 11 Dec 2019 14:53:22 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if3Lt-0007ck-Mq
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 14:52:36 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20191211145232euoutp0151ed6aadac54ed1332b4b51376a41d9a~fWLpv_uCh2410224102euoutp01T
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Dec 2019 14:52:32 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20191211145232euoutp0151ed6aadac54ed1332b4b51376a41d9a~fWLpv_uCh2410224102euoutp01T
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1576075952;
 bh=jPVQGv2B63dkrb4xPXViL+0AtlLT78bLnq0v7ybfs38=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=TZlD07MgoWZDfuTsg4BweOr7qfRfscyfWNlVaMj8jM4AtAS705UX14VUIyxNmgel7
 t6C4clfHXBHh9myAugZPFDBM6EY4VM557YiM1DE5XC+/psmoi/Q9vshlabM71JSF8a
 bthLcRImnMgn0MO+oYvOkoCFetYLvN5SlBiqucNo=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20191211145231eucas1p2a9956cb640d857f75b0b34dc21dd8d01~fWLpReS_k0708607086eucas1p2a;
 Wed, 11 Dec 2019 14:52:31 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 9C.F9.60679.FA201FD5; Wed, 11
 Dec 2019 14:52:31 +0000 (GMT)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20191211145231eucas1p29d4e0ed105274c79682b48a613b45904~fWLo9hIen2291422914eucas1p2X;
 Wed, 11 Dec 2019 14:52:31 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20191211145231eusmtrp218ee9470661b69abcd7c5ca46a1a4e4d~fWLo8wIvs0452204522eusmtrp2V;
 Wed, 11 Dec 2019 14:52:31 +0000 (GMT)
X-AuditID: cbfec7f4-0e5ff7000001ed07-7e-5df102afc19f
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 17.E9.08375.FA201FD5; Wed, 11
 Dec 2019 14:52:31 +0000 (GMT)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20191211145230eusmtip10ed2da4b3dbe05eb5508cef2c0b12703~fWLoORm8Z1208212082eusmtip1u;
 Wed, 11 Dec 2019 14:52:30 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: linux-usb@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 4/4] usb: usb3503: Convert to use GPIO descriptors
Date: Wed, 11 Dec 2019 15:52:26 +0100
Message-Id: <20191211145226.25074-1-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191211145054.24835-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSbUhTYRjtvfdu97q8dZuWbyoJ04oiP0p/vFBJQdEFiYqQPmjVzS4qbdN2
 tTIKl1/psLAvnCtTpmi41DVl5QitZY6UnGZZP9qkNMpKLbSPVWTOu+rfOec55zkvLw+Fy52S
 UCpdk8VrNZxKIZURti6vK7oZ+6yM6/oSh3qHfxLolqFZgno6xgl0tr2SQPk1zVLkcllIdPlX
 PYasw4MSNGC/JkUD+f0AGVztGDLVFeKosdNNoryCeFRUUidBLU1nSeR1uLANC9iabx6ctbw2
 S9g2o5tkrQ0lUvbl4F0p21F5k2RbanPZgkcdBHu+tQGwk9Yl22V7ZesO86r0Y7w2NvGgLK11
 2EZmVsWd+No9ItEB53I9CKAgkwCN7W9JPZBRcuYGgNPecj+ZAvD89wmpSCYBHPU+wP5GfvcU
 A3FQD+C3kRfEv8jHztJZl5RZDfVj+tl4MHMTwJ/nDLMunPmBQ9tgvdTnCmI2w+KmfokeUBTB
 LIWXdFE+mWbWw/F3X/x1EdBsuYf7cACTCPVfm2b3QMZDwrc6CyGaNsFnFWYg4iD43tlKijgc
 TrdVYWIgH8BXvY2kSEoBHMgz+BNr4QOn+AqcWQGb7bGivBG6XX2kT4bMPPhibIFPxmfgRVs5
 Lso0LC6Si+5l0Ohs+ld7v+8JLmIWjr0Z8X/qBQB7Hk9iZSDC+L+sGoAGEMJnC+pUXlij4Y/H
 CJxayNakxqRkqK1g5rx6fjun7gD7r0MOwFBAEUhX355QyiXcMSFH7QCQwhXBtLNoXCmnD3M5
 J3ltxgFttooXHCCMIhQhdLxpVClnUrks/gjPZ/Lav1OMCgjVgZxF8bmh+zdsNqmcIQ7OfCUJ
 O+05NWydjKwtCxvN3b4wKqlqzu2I3YGmwsiq8aHd7+d/oqe9arB8bvIOYVsFHbuTdBt2bY36
 3pj5NFl5JuVhRMLJzIK+xXn20x/o50MtXFr6vsIwY2G4fm709bCSikVBsYqrezo0qd1HPcSq
 ZVtcCkJI41avxLUC9wcefK5VWgMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrOIsWRmVeSWpSXmKPExsVy+t/xu7rrmT7GGtzbJmlx7vFvFouNM9az
 Wpze/47Fon3fXBaL5sXr2SzOn9/AbjHlz3Imi02Pr7FaXN41h83icvNFRosZ5/cxWSxa1sps
 sfbIXXaLphZji7bOZawWm9e1s1v8PHSeyUHQY/H3e8weGx6tZvXYOesuu8emVZ1sHneu7WHz
 2D93DbvH5iX1Hi0n97N49G1ZxejxeZNcAFeUnk1RfmlJqkJGfnGJrVK0oYWRnqGlhZ6RiaWe
 obF5rJWRqZK+nU1Kak5mWWqRvl2CXsaWx9vYC+YbVHw79YS1gfG4ehcjJ4eEgInEv9MdjF2M
 XBxCAksZJfacOskMkZCRODmtgRXCFpb4c62LDaLoE6NEx915jCAJNgFDia63EAkRgQ2MEmfe
 P2EBcZgFmlgkps56zARSJSzgKtGx7iLQKA4OFgFVickNKiBhXgFbiXcvvjJBbJCXWL3hANhm
 TgE7ia5v61hAbCGgmk+329gmMPItYGRYxSiSWlqcm55bbKhXnJhbXJqXrpecn7uJERhJ2479
 3LyD8dLG4EOMAhyMSjy8C7a/jxViTSwrrsw9xCjBwawkwnu87V2sEG9KYmVValF+fFFpTmrx
 IUZToJsmMkuJJucDozyvJN7Q1NDcwtLQ3Njc2MxCSZy3Q+BgjJBAemJJanZqakFqEUwfEwen
 VAOjR/2TMxUGveEMRbwyb9b13JF/s3SmYdfz5wkFoRYaKlpFky7usv/mGrKtx8eQQeifyOG0
 4p/mht+UJp3K//F7XmHPrDlHfz/a1Gy87fObF7XHi6zv/8kIMuF573ecY4mpWiHbf+VmhV6H
 4xr+Nx155WudUjZ9FzF6aHj3mIL094h10adVeR8rsRRnJBpqMRcVJwIADZ77troCAAA=
X-CMS-MailID: 20191211145231eucas1p29d4e0ed105274c79682b48a613b45904
X-Msg-Generator: CA
X-RootMTR: 20191211145231eucas1p29d4e0ed105274c79682b48a613b45904
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20191211145231eucas1p29d4e0ed105274c79682b48a613b45904
References: <20191211145054.24835-1-m.szyprowski@samsung.com>
 <CGME20191211145231eucas1p29d4e0ed105274c79682b48a613b45904@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_065233_963747_19D7CA54 
X-CRM114-Status: GOOD (  18.48  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
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
