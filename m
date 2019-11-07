Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02859F3368
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 16:35:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TyArqj2Ng6Z6xLKaRo524J0HBATq2QQQMwPk4iiJ28c=; b=QmyiyzdYESsS6f
	GMQWmMLIVb5DJie/iyCqrljH0PCxrMagtY8Tuc19DcTBp/f5tM5+HHkC70WFgCddsGtnqB1bjkTWN
	E7/W2ZZQTBqYR9SvH6mDMvbAJWuLJ97s3LEBOMj4vw0jcxb4wMT2CZp3GgD6VGtUK1+QybNJkQkPm
	n3lsftC91xjO8YgvT94mY/RzgvhV7cQrTAxv9CcoNaRKdmMAHUvzxfmy8EcdDZdmk6haGf+QUeLcW
	KIKMfw52au37SHRUKkMIsWQhv6ShhqCrrDnL4u2+sclVbOqfW1JOaYAFSyvZJYLlzL5WJcqqpSAz5
	V6LrNKy1VJMekJe+DHzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSjos-0002qK-Km; Thu, 07 Nov 2019 15:35:34 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSjoJ-0001OO-Bt
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 15:35:01 +0000
Received: from localhost (alyon-657-1-975-54.w92-137.abo.wanadoo.fr
 [92.137.17.54]) (Authenticated sender: gregory.clement@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 0296A100007;
 Thu,  7 Nov 2019 15:34:46 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Cristian Birsan <cristian.birsan@microchip.com>,
 Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alan Stern <stern@rowland.harvard.edu>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 1/3] usb: gadget: udc: atmel: Don't use DT to configure end
 point
Date: Thu,  7 Nov 2019 16:31:26 +0100
Message-Id: <20191107153128.11038-2-gregory.clement@bootlin.com>
X-Mailer: git-send-email 2.24.0.rc1
In-Reply-To: <20191107153128.11038-1-gregory.clement@bootlin.com>
References: <20191107153128.11038-1-gregory.clement@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_073459_677163_5BBE14D6 
X-CRM114-Status: GOOD (  16.85  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Gregory CLEMENT <gregory.clement@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The endpoint configuration used to be stored in the device tree,
however the configuration depend on the "version" of the controller
itself.

This information is already documented by the compatible string. It
then possible to just rely on the compatible string and completely
remove the full ep configuration done in the device tree as it was
already the case for all the other USB device controller.

Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>
---
 drivers/usb/gadget/udc/atmel_usba_udc.c | 112 +++++++++++++++---------
 drivers/usb/gadget/udc/atmel_usba_udc.h |  12 +++
 2 files changed, 84 insertions(+), 40 deletions(-)

diff --git a/drivers/usb/gadget/udc/atmel_usba_udc.c b/drivers/usb/gadget/udc/atmel_usba_udc.c
index 86ffc8307864..2db833caeb09 100644
--- a/drivers/usb/gadget/udc/atmel_usba_udc.c
+++ b/drivers/usb/gadget/udc/atmel_usba_udc.c
@@ -2040,10 +2040,56 @@ static const struct usba_udc_errata at91sam9g45_errata = {
 	.pulse_bias = at91sam9g45_pulse_bias,
 };
 
+static const struct usba_ep_config ep_config_sam9[] __initconst = {
+	{ .nr_banks = 1 },				/* ep 0 */
+	{ .nr_banks = 2, .can_dma = 1, .can_isoc = 1 },	/* ep 1 */
+	{ .nr_banks = 2, .can_dma = 1, .can_isoc = 1 },	/* ep 2 */
+	{ .nr_banks = 3, .can_dma = 1 },		/* ep 3 */
+	{ .nr_banks = 3, .can_dma = 1 },		/* ep 4 */
+	{ .nr_banks = 3, .can_dma = 1, .can_isoc = 1 },	/* ep 5 */
+	{ .nr_banks = 3, .can_dma = 1, .can_isoc = 1 },	/* ep 6 */
+};
+
+static const struct usba_ep_config ep_config_sama5[] __initconst = {
+	{ .nr_banks = 1 },				/* ep 0 */
+	{ .nr_banks = 3, .can_dma = 1, .can_isoc = 1 },	/* ep 1 */
+	{ .nr_banks = 3, .can_dma = 1, .can_isoc = 1 },	/* ep 2 */
+	{ .nr_banks = 2, .can_dma = 1, .can_isoc = 1 },	/* ep 3 */
+	{ .nr_banks = 2, .can_dma = 1, .can_isoc = 1 },	/* ep 4 */
+	{ .nr_banks = 2, .can_dma = 1, .can_isoc = 1 },	/* ep 5 */
+	{ .nr_banks = 2, .can_dma = 1, .can_isoc = 1 },	/* ep 6 */
+	{ .nr_banks = 2, .can_dma = 1, .can_isoc = 1 },	/* ep 7 */
+	{ .nr_banks = 2, .can_isoc = 1 },		/* ep 8 */
+	{ .nr_banks = 2, .can_isoc = 1 },		/* ep 9 */
+	{ .nr_banks = 2, .can_isoc = 1 },		/* ep 10 */
+	{ .nr_banks = 2, .can_isoc = 1 },		/* ep 11 */
+	{ .nr_banks = 2, .can_isoc = 1 },		/* ep 12 */
+	{ .nr_banks = 2, .can_isoc = 1 },		/* ep 13 */
+	{ .nr_banks = 2, .can_isoc = 1 },		/* ep 14 */
+	{ .nr_banks = 2, .can_isoc = 1 },		/* ep 15 */
+};
+
+static const struct usba_udc_config udc_at91sam9rl_cfg = {
+	.errata = &at91sam9rl_errata,
+	.config = ep_config_sam9,
+	.num_ep = ARRAY_SIZE(ep_config_sam9),
+};
+
+static const struct usba_udc_config udc_at91sam9g45_cfg = {
+	.errata = &at91sam9g45_errata,
+	.config = ep_config_sam9,
+	.num_ep = ARRAY_SIZE(ep_config_sam9),
+};
+
+static const struct usba_udc_config udc_sama5d3_cfg = {
+	.config = ep_config_sama5,
+	.num_ep = ARRAY_SIZE(ep_config_sama5),
+};
+
 static const struct of_device_id atmel_udc_dt_ids[] = {
-	{ .compatible = "atmel,at91sam9rl-udc", .data = &at91sam9rl_errata },
-	{ .compatible = "atmel,at91sam9g45-udc", .data = &at91sam9g45_errata },
-	{ .compatible = "atmel,sama5d3-udc" },
+	{ .compatible = "atmel,at91sam9rl-udc", .data = &udc_at91sam9rl_cfg },
+	{ .compatible = "atmel,at91sam9g45-udc", .data = &udc_at91sam9g45_cfg },
+	{ .compatible = "atmel,sama5d3-udc", .data = &udc_sama5d3_cfg },
 	{ /* sentinel */ }
 };
 
@@ -2052,18 +2098,19 @@ MODULE_DEVICE_TABLE(of, atmel_udc_dt_ids);
 static struct usba_ep * atmel_udc_of_init(struct platform_device *pdev,
 						    struct usba_udc *udc)
 {
-	u32 val;
 	struct device_node *np = pdev->dev.of_node;
 	const struct of_device_id *match;
 	struct device_node *pp;
 	int i, ret;
 	struct usba_ep *eps, *ep;
+	const struct usba_udc_config *udc_config;
 
 	match = of_match_node(atmel_udc_dt_ids, np);
 	if (!match)
 		return ERR_PTR(-EINVAL);
 
-	udc->errata = match->data;
+	udc_config = match->data;
+	udc->errata = udc_config->errata;
 	udc->pmc = syscon_regmap_lookup_by_compatible("atmel,at91sam9g45-pmc");
 	if (IS_ERR(udc->pmc))
 		udc->pmc = syscon_regmap_lookup_by_compatible("atmel,at91sam9rl-pmc");
@@ -2079,8 +2126,7 @@ static struct usba_ep * atmel_udc_of_init(struct platform_device *pdev,
 
 	if (fifo_mode == 0) {
 		pp = NULL;
-		while ((pp = of_get_next_child(np, pp)))
-			udc->num_ep++;
+		udc->num_ep = udc_config->num_ep;
 		udc->configured_ep = 1;
 	} else {
 		udc->num_ep = usba_config_fifo_table(udc);
@@ -2097,52 +2143,38 @@ static struct usba_ep * atmel_udc_of_init(struct platform_device *pdev,
 
 	pp = NULL;
 	i = 0;
-	while ((pp = of_get_next_child(np, pp)) && i < udc->num_ep) {
+	while (i < udc->num_ep) {
+		const struct usba_ep_config *ep_cfg = &udc_config->config[i];
+
 		ep = &eps[i];
 
-		ret = of_property_read_u32(pp, "reg", &val);
-		if (ret) {
-			dev_err(&pdev->dev, "of_probe: reg error(%d)\n", ret);
-			goto err;
-		}
-		ep->index = fifo_mode ? udc->fifo_cfg[i].hw_ep_num : val;
+		ep->index = fifo_mode ? udc->fifo_cfg[i].hw_ep_num : i;
+
+		/* Only the first EP is 64 bytes */
+		if (ep->index == 0)
+			ep->fifo_size = 64;
+		else
+			ep->fifo_size = 1024;
 
-		ret = of_property_read_u32(pp, "atmel,fifo-size", &val);
-		if (ret) {
-			dev_err(&pdev->dev, "of_probe: fifo-size error(%d)\n", ret);
-			goto err;
-		}
 		if (fifo_mode) {
-			if (val < udc->fifo_cfg[i].fifo_size) {
+			if (ep->fifo_size < udc->fifo_cfg[i].fifo_size)
 				dev_warn(&pdev->dev,
-					 "Using max fifo-size value from DT\n");
-				ep->fifo_size = val;
-			} else {
+					 "Using default max fifo-size value\n");
+			else
 				ep->fifo_size = udc->fifo_cfg[i].fifo_size;
-			}
-		} else {
-			ep->fifo_size = val;
 		}
 
-		ret = of_property_read_u32(pp, "atmel,nb-banks", &val);
-		if (ret) {
-			dev_err(&pdev->dev, "of_probe: nb-banks error(%d)\n", ret);
-			goto err;
-		}
+		ep->nr_banks = ep_cfg->nr_banks;
 		if (fifo_mode) {
-			if (val < udc->fifo_cfg[i].nr_banks) {
+			if (ep->nr_banks < udc->fifo_cfg[i].nr_banks)
 				dev_warn(&pdev->dev,
-					 "Using max nb-banks value from DT\n");
-				ep->nr_banks = val;
-			} else {
+					 "Using default max nb-banks value\n");
+			else
 				ep->nr_banks = udc->fifo_cfg[i].nr_banks;
-			}
-		} else {
-			ep->nr_banks = val;
 		}
 
-		ep->can_dma = of_property_read_bool(pp, "atmel,can-dma");
-		ep->can_isoc = of_property_read_bool(pp, "atmel,can-isoc");
+		ep->can_dma = ep_cfg->can_dma;
+		ep->can_isoc = ep_cfg->can_isoc;
 
 		sprintf(ep->name, "ep%d", ep->index);
 		ep->ep.name = ep->name;
diff --git a/drivers/usb/gadget/udc/atmel_usba_udc.h b/drivers/usb/gadget/udc/atmel_usba_udc.h
index a0225e4543d4..48e332439ed5 100644
--- a/drivers/usb/gadget/udc/atmel_usba_udc.h
+++ b/drivers/usb/gadget/udc/atmel_usba_udc.h
@@ -290,6 +290,12 @@ struct usba_ep {
 #endif
 };
 
+struct usba_ep_config {
+	u8					nr_banks;
+	unsigned int				can_dma:1;
+	unsigned int				can_isoc:1;
+};
+
 struct usba_request {
 	struct usb_request			req;
 	struct list_head			queue;
@@ -307,6 +313,12 @@ struct usba_udc_errata {
 	void (*pulse_bias)(struct usba_udc *udc);
 };
 
+struct usba_udc_config {
+	const struct usba_udc_errata *errata;
+	const struct usba_ep_config *config;
+	const int num_ep;
+};
+
 struct usba_udc {
 	/* Protect hw registers from concurrent modifications */
 	spinlock_t lock;
-- 
2.24.0.rc1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
