Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD95CFE533
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 19:46:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Ev2W98bnpp9pSmLpVAP+rz/M5E7e41UOQe6CB7CFzZw=; b=AoN4Jk4DuR7l3QW4/5e0Zf603N
	IM4HksVfV/yFuDYpo59gPU62XE8DgCtGpn4I6e7T3ybrGp1eiuG9RjzRhTyUOiuDhnvnrqfu9ig51
	IU+I5MMe/AWBzNgy8w2hRu+JQKFFemtvavhxFq0ChQLke5tWeI3HIIkdhh2j/a0rwPyJw6JsdnYlJ
	RTK41tBHHbvpKeY1ODlTuRyW1ybKwoeRm0He+/X1i4T157VBzwNYVIMlmxS8qPQvPomPIvt/595Hy
	wYJpn8l/ivf/FbKXypByQRHjcyZZS7+Ou3qRX7574TVpr7YYfWZ+q9r21e85drpA5O0EbTar18JFX
	1BZ6hM6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVgcG-0007tc-WD; Fri, 15 Nov 2019 18:46:45 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVgZX-0003mG-DC
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 18:43:57 +0000
Received: by mail-wm1-x343.google.com with SMTP id z26so10613760wmi.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 Nov 2019 10:43:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=MFlnOn0CAyQafh0Ou2lpY54Ga03K/6YVfFICBBVyXck=;
 b=mr86IiEkh6BMzmVhCk3kgov07rgov4gwotKNoFw+me9PSEVD86+veJHoXHDyaY8vle
 BaSP7G7ZjnZP0j9WMGLdxvykaNUocXqaCCXUSci7TRPOeFbN8HUtxpvVemnzyHPURVFT
 gghQLhflIrHtxfkRBv2xTBRdBYxUN7U8WGNiK6rRri+yCgTJU3ISFKtJa9W7ukJA9Yj/
 NFbLkEWxlIfTTkh732tcDcrFebUHb9sA17rVudEFd5Y+3KdkQXfGusVgx/WMjI/EETGt
 l5dg4b5SzcCPARD4+RHCKSuSBBE0zDEfaEn44ojlOhuEb/QFhRiIF4moOzz5ibPCQKGs
 u31g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=MFlnOn0CAyQafh0Ou2lpY54Ga03K/6YVfFICBBVyXck=;
 b=o473UAdy49XJYSgBC12sBqzPr8gGliKtYgtLVU4HI9Pd8iVyh2cXtx+3JKmokiVcgg
 U8+UEDbNkx2xniZDYkN3rmtgv9S5QVmsJqUlxdRo+dgt8O/UDMhSSuXUEE2/SYsbQMbC
 4S+Bl/Xx9Q9SrDM5CSMDbXGxVpnqZEbV2c9AXbIW7Ixj0ZkloDdYk+XPur6ICoKv/nPI
 VoNfN7nwBCc8blsRsXsLK/+A5tR7ZlHhD+9cL5yBiW8bCDVQ2c0/bOEBNewzAjWV3Rp+
 J5/nD8FZJmQjc0QZj2tUQURpYks4ssbSd0+j5Zcxv0Rhup9+w/ZoCQ+yloo/5NgEMwO+
 3kcw==
X-Gm-Message-State: APjAAAVwIwIt4RewYLXJ0p/axv6aXvmayPDNAtMd17zeFjNCFIH7abe5
 r97jq4ZzD3dbyCe/vj5m9Jg=
X-Google-Smtp-Source: APXvYqw3Oh5ANrOKWgIZchBUqjbmhrA+8Tx4boW7ZEkB/jUJhDm2lKldwdzgc97981Uz5S5BPS488g==
X-Received: by 2002:a1c:dd06:: with SMTP id u6mr17059416wmg.109.1573843433848; 
 Fri, 15 Nov 2019 10:43:53 -0800 (PST)
Received: from stbsrv-and-01.and.broadcom.net ([192.19.231.250])
 by smtp.gmail.com with ESMTPSA id g138sm2620989wmg.11.2019.11.15.10.43.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Nov 2019 10:43:53 -0800 (PST)
From: Al Cooper <alcooperx@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 11/13] phy: usb: bdc: Fix occasional failure with BDC on
 7211
Date: Fri, 15 Nov 2019 13:42:21 -0500
Message-Id: <20191115184223.41504-12-alcooperx@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191115184223.41504-1-alcooperx@gmail.com>
References: <20191115184223.41504-1-alcooperx@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_104355_489792_506621CA 
X-CRM114-Status: GOOD (  18.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alcooperx[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>, Al Cooper <alcooperx@gmail.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com,
 Srinath Mannam <srinath.mannam@broadcom.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The BDC "Read Transaction Size" needs to be changed from 1024
bytes to 256 bytes to prevent occasional transaction failures.

Signed-off-by: Al Cooper <alcooperx@gmail.com>
---
 .../phy/broadcom/phy-brcm-usb-init-synopsis.c | 18 +++++++++++++++
 drivers/phy/broadcom/phy-brcm-usb-init.h      |  1 +
 drivers/phy/broadcom/phy-brcm-usb.c           | 23 +++++++++++++++----
 3 files changed, 38 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/broadcom/phy-brcm-usb-init-synopsis.c b/drivers/phy/broadcom/phy-brcm-usb-init-synopsis.c
index fe3f653c64a7..c6504649d307 100644
--- a/drivers/phy/broadcom/phy-brcm-usb-init-synopsis.c
+++ b/drivers/phy/broadcom/phy-brcm-usb-init-synopsis.c
@@ -70,6 +70,11 @@
 #define USB_GMDIOCSR	0
 #define USB_GMDIOGEN	4
 
+/* Register definitions for the BDC EC block in 7211b0 */
+#define BDC_EC_AXIRDA			0x0c
+#define   BDC_EC_AXIRDA_RTS_MASK			0xf0000000
+#define   BDC_EC_AXIRDA_RTS_SHIFT			28
+
 
 static void usb_mdio_write_7211b0(struct brcm_usb_init_params *params,
 				  uint8_t addr, uint16_t data)
@@ -198,6 +203,7 @@ static void usb_init_common_7211b0(struct brcm_usb_init_params *params)
 {
 	void __iomem *ctrl = params->regs[BRCM_REGS_CTRL];
 	void __iomem *usb_phy = params->regs[BRCM_REGS_USB_PHY];
+	void __iomem *bdc_ec = params->regs[BRCM_REGS_BDC_EC];
 	int timeout_ms = PHY_LOCK_TIMEOUT_MS;
 	u32 reg;
 
@@ -230,6 +236,18 @@ static void usb_init_common_7211b0(struct brcm_usb_init_params *params)
 
 	usb_init_common(params);
 
+	/*
+	 * The BDC controller will get occasional failures with
+	 * the default "Read Transaction Size" of 6 (1024 bytes).
+	 * Set it to 4 (256 bytes).
+	 */
+	if ((params->mode != USB_CTLR_MODE_HOST) && bdc_ec) {
+		reg = brcm_usb_readl(bdc_ec + BDC_EC_AXIRDA);
+		reg &= ~BDC_EC_AXIRDA_RTS_MASK;
+		reg |= (0x4 << BDC_EC_AXIRDA_RTS_SHIFT);
+		brcm_usb_writel(reg, bdc_ec + BDC_EC_AXIRDA);
+	}
+
 	/*
 	 * Disable FSM, otherwise the PHY will auto suspend when no
 	 * device is connected and will be reset on resume.
diff --git a/drivers/phy/broadcom/phy-brcm-usb-init.h b/drivers/phy/broadcom/phy-brcm-usb-init.h
index 66363b04d778..570bd9d8c9ec 100644
--- a/drivers/phy/broadcom/phy-brcm-usb-init.h
+++ b/drivers/phy/broadcom/phy-brcm-usb-init.h
@@ -19,6 +19,7 @@ enum brcmusb_reg_sel {
 	BRCM_REGS_XHCI_GBL,
 	BRCM_REGS_USB_PHY,
 	BRCM_REGS_USB_MDIO,
+	BRCM_REGS_BDC_EC,
 	BRCM_REGS_MAX
 };
 
diff --git a/drivers/phy/broadcom/phy-brcm-usb.c b/drivers/phy/broadcom/phy-brcm-usb.c
index c82d7ec15334..cc5763ace3ad 100644
--- a/drivers/phy/broadcom/phy-brcm-usb.c
+++ b/drivers/phy/broadcom/phy-brcm-usb.c
@@ -36,6 +36,7 @@ struct value_to_name_map {
 struct match_chip_info {
 	void *init_func;
 	u8 required_regs[BRCM_REGS_MAX + 1];
+	u8 optional_reg;
 };
 
 static struct value_to_name_map brcm_dr_mode_to_name[] = {
@@ -71,7 +72,7 @@ struct brcm_usb_phy_data {
 };
 
 static s8 *node_reg_names[BRCM_REGS_MAX] = {
-	"crtl", "xhci_ec", "xhci_gbl", "usb_phy", "usb_mdio"
+	"crtl", "xhci_ec", "xhci_gbl", "usb_phy", "usb_mdio", "bdc_ec"
 };
 
 static irqreturn_t brcm_usb_phy_wake_isr(int irq, void *dev_id)
@@ -271,6 +272,7 @@ static struct match_chip_info chip_info_7211b0 = {
 		BRCM_REGS_USB_MDIO,
 		-1,
 	},
+	.optional_reg = BRCM_REGS_BDC_EC,
 };
 
 static struct match_chip_info chip_info_7445 = {
@@ -300,7 +302,8 @@ static const struct of_device_id brcm_usb_dt_ids[] = {
 
 static int brcm_usb_get_regs(struct platform_device *pdev,
 			     enum brcmusb_reg_sel regs,
-			     struct  brcm_usb_init_params *ini)
+			     struct  brcm_usb_init_params *ini,
+			     bool optional)
 {
 	struct resource *res;
 
@@ -317,7 +320,13 @@ static int brcm_usb_get_regs(struct platform_device *pdev,
 				return 0;
 		}
 		if (res == NULL) {
-			dev_err(&pdev->dev, "can't get %s base address\n",
+			if (optional) {
+				dev_dbg(&pdev->dev,
+					"Optional reg %s not found\n",
+					node_reg_names[regs]);
+				return 0;
+			}
+			dev_err(&pdev->dev, "can't get %s base addr\n",
 				node_reg_names[regs]);
 			return 1;
 		}
@@ -460,7 +469,13 @@ static int brcm_usb_phy_probe(struct platform_device *pdev)
 			break;
 
 		err = brcm_usb_get_regs(pdev, info->required_regs[x],
-					&priv->ini);
+					&priv->ini, false);
+		if (err)
+			return -EINVAL;
+	}
+	if (info->optional_reg) {
+		err = brcm_usb_get_regs(pdev, info->optional_reg,
+					&priv->ini, true);
 		if (err)
 			return -EINVAL;
 	}
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
