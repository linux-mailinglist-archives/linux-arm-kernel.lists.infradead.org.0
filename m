Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 197A14580F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 10:58:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1UnE897yXZbkM9bF9FPbZyAF6bJCDieSCgQwQvCvtyE=; b=mWaA2uEquWLrde
	MNQ5wktTgn+st3SYsuMQVBVuXraHQc/gTf34z6EDOsS2CkU+j9VmV6Y2QlNw6Wv9lj4wNvHHOSud3
	k1QFDz9xPa3TvFEkVM5Dx7PjqnE46JjsD78H2IeejkrD6lWX77eX/YLubJQxJ8IwY8JY9sHNBTu2i
	+N5ciIazVThQ4jReTGxNcXra0A6V8yvDfnQD+s5Ky+SYutZhEiYzGY23spFy4YNPz/+Gc1/+S7Ff4
	XCxQJj9wXacc8jOU3pw6rsKnK12blQdtYgpRbikI3F3vQF/WEJF7Aamp/P1BXK7LA0TeAFfWUlhHY
	cCaZqjxZSb1KV3j7QToQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbi2l-0001Zw-Rk; Fri, 14 Jun 2019 08:58:43 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbi2W-0001Xo-RF
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 08:58:30 +0000
Received: by mail-wr1-x442.google.com with SMTP id p13so1624059wru.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 01:58:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nQzfi5pCNjbWy0L+GM97E8S0hKWGfnv4Ct4OLdEoTWQ=;
 b=ygwDU90/bi1g10z7gM0VCKByS/vE0RY0Mqms4KLT+5oQ8yni0T9alBS4/LbqjjUU8O
 CMduCLq82OBf0/FCW23pRrjy6MPK3NlzWhoH2X2Kx0CLV8aegxIuYVPevaekx8eHrss1
 2SsMq88cy1p8HtUW4cQ2/e6dTbgSu/GBTp5TI5V2dUrTXe+7OJOUBrkdFyYnltCRimqR
 grgDVsfyIznazMBGeb/RtN+LCMdoksG65JataHHx8nXm9CigDVyvIA5ne0TRENQz3BVl
 fgX4hegRPe7emSbCUv+wQJZP8+VsTYA+Eaf1zHePeoAuTmsOtbHKRWfi2ktbxcpBxAcs
 9chg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nQzfi5pCNjbWy0L+GM97E8S0hKWGfnv4Ct4OLdEoTWQ=;
 b=q3YEIXKMPsiwlPMWW5TuDteivHp8KFimjTOlwfPdKH2nVW/zKg4hP+yA1PyqS4d9mP
 h89wQ0NPBNZvedqMyoMVZmcLi448bfHp2JozNHbhYwPHNHqw+xgkgIyhc3s8NDy+b8Go
 w4s7DswMS3hTUqILhYbWrdmPPYuYkrBS5Ty5xJFxIOP60Fi1lcilDLse7mKyg5Bm00a+
 3n3JikOVjS3pvUSM6H6Y3qwJ1w18d9St+48YcF/NtCJ2MBiIpE8CVsxe4wu33Rhy/Qbr
 W6iDYdjyV+JGT4dcYMU8Pxuzvkebg6GKqDNbVMSiEdQkO48wJtR4eYbkC9+2ykihxry8
 pWMw==
X-Gm-Message-State: APjAAAUwFx6TkbUfi23Peen9OyCdQm5ocdkQwegn9oi5YJuMgSX2/qIo
 v6jgzNPIzT7hRXgZVtAQeU8Ryg==
X-Google-Smtp-Source: APXvYqw485uYVt+kqDbpQ0wxUDiPbGSM8KdkwxJABu2kHY2ceJEAOlsM1vw93IQ0cwpPB9fhmy66qw==
X-Received: by 2002:adf:a749:: with SMTP id e9mr64394856wrd.64.1560502706508; 
 Fri, 14 Jun 2019 01:58:26 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id c2sm2178672wrf.75.2019.06.14.01.58.25
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 14 Jun 2019 01:58:25 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: balbi@kernel.org
Subject: [PATCH v2] usb: dwc3: meson-g12a: Add support for IRQ based OTG
 switching
Date: Fri, 14 Jun 2019 10:58:24 +0200
Message-Id: <20190614085824.23307-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_015828_933475_4DFCFEFB 
X-CRM114-Status: GOOD (  13.90  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support for the OTG ID change interrupt to switch between Host
and Device mode.

Tested on the Hardkernel Odroid-N2 board.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 drivers/usb/dwc3/dwc3-meson-g12a.c | 36 +++++++++++++++++++++++++-----
 1 file changed, 31 insertions(+), 5 deletions(-)

diff --git a/drivers/usb/dwc3/dwc3-meson-g12a.c b/drivers/usb/dwc3/dwc3-meson-g12a.c
index 2aec31a2eacb..bca7e92a10e9 100644
--- a/drivers/usb/dwc3/dwc3-meson-g12a.c
+++ b/drivers/usb/dwc3/dwc3-meson-g12a.c
@@ -11,9 +11,7 @@
  * - Control registers for each USB2 Ports
  * - Control registers for the USB PHY layer
  * - SuperSpeed PHY can be enabled only if port is used
- *
- * TOFIX:
- * - Add dynamic OTG switching with ID change interrupt
+ * - Dynamic OTG switching with ID change interrupt
  */
 
 #include <linux/module.h>
@@ -348,6 +346,22 @@ static enum usb_role dwc3_meson_g12a_role_get(struct device *dev)
 		USB_ROLE_HOST : USB_ROLE_DEVICE;
 }
 
+static irqreturn_t dwc3_meson_g12a_irq_thread(int irq, void *data)
+{
+	struct dwc3_meson_g12a *priv = data;
+	enum phy_mode otg_id;
+
+	otg_id = dwc3_meson_g12a_get_id(priv);
+	if (otg_id != priv->otg_phy_mode) {
+		if (dwc3_meson_g12a_otg_mode_set(priv, otg_id))
+			dev_warn(priv->dev, "Failed to switch OTG mode\n");
+	}
+
+	regmap_update_bits(priv->regmap, USB_R5, USB_R5_ID_DIG_IRQ, 0);
+
+	return IRQ_HANDLED;
+}
+
 static struct device *dwc3_meson_g12_find_child(struct device *dev,
 						const char *compatible)
 {
@@ -374,7 +388,7 @@ static int dwc3_meson_g12a_probe(struct platform_device *pdev)
 	void __iomem *base;
 	struct resource *res;
 	enum phy_mode otg_id;
-	int ret, i;
+	int ret, i, irq;
 
 	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
 	if (!priv)
@@ -436,6 +450,19 @@ static int dwc3_meson_g12a_probe(struct platform_device *pdev)
 	/* Get dr_mode */
 	priv->otg_mode = usb_get_dr_mode(dev);
 
+	if (priv->otg_mode == USB_DR_MODE_OTG) {
+		/* Ack irq before registering */
+		regmap_update_bits(priv->regmap, USB_R5,
+				   USB_R5_ID_DIG_IRQ, 0);
+
+		irq = platform_get_irq(pdev, 0);
+		ret = devm_request_threaded_irq(&pdev->dev, irq, NULL,
+						dwc3_meson_g12a_irq_thread,
+						IRQF_ONESHOT, pdev->name, priv);
+		if (ret)
+			return ret;
+	}
+
 	dwc3_meson_g12a_usb_init(priv);
 
 	/* Init PHYs */
@@ -460,7 +487,6 @@ static int dwc3_meson_g12a_probe(struct platform_device *pdev)
 
 	/* Setup OTG mode corresponding to the ID pin */
 	if (priv->otg_mode == USB_DR_MODE_OTG) {
-		/* TOFIX Handle ID mode toggling via IRQ */
 		otg_id = dwc3_meson_g12a_get_id(priv);
 		if (otg_id != priv->otg_phy_mode) {
 			if (dwc3_meson_g12a_otg_mode_set(priv, otg_id))
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
