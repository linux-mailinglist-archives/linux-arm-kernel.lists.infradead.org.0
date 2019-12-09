Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9823A1178C3
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 22:45:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Vs5Usg6z9aBk5wtR23QYBjWdnBprTc6aQgUjVXPeWTs=; b=IiiltDaksCkXr6K9W9+AJydsoa
	ygZYoN0OYb8UU1P3+kBmuuAdPgkBQmwve7zZtWIJKgFZQKvqsX9pT2HLe8XdZHb1YFq4GYqEIye1T
	nEym8/HeJVWu8eLEnlMqWZ8ukOdRLCbAk7Cex9DA4AwcbXq1JrEcHmY+yISB8FLOm0A4GpAZZ3iVn
	5mPG5BXY6ypth58VFlouB6ob/Kp6J3UjWIXqxvqU2WGGfCLMPipoyZkHp6RSPKViwg09NESVs4fTF
	pkM6WjwYxcFOXxq+tZZS3Qoi0kmvGz/Ap/wysvYH3TQD1/u8W2Tj4sLY3dDCAhUHf5+VYDLalK1au
	p7NTAecg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieQqW-00026p-0f; Mon, 09 Dec 2019 21:45:36 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieQp3-00086F-T0
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 21:44:08 +0000
Received: by mail-wr1-x444.google.com with SMTP id y17so17839499wrh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Dec 2019 13:44:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=h1w1IMOh9uAH2ZhtkpdQP5kC2zy5JqYg8a82ZJQZ4gg=;
 b=vEbQDvMgF2eXf0t9j+NtHroEWyFHZh9SLaS6tRTTjMMt3ok3A9kX1uBeNOILhVj6mE
 gW1hOJEJAdC1YMd1c53GXwy3h3W71i35923eZcIL+JyFgEdnja9unEWu5RIlZ7cH54ms
 4MzN1w6zjxF/f3lti4IuPk0sM/v+rgd1Gg8sE4iwr2t+0Lj7w4e3Sd8QbSuBitiuYgfV
 Jm7v3uzD3yg8tZqHcGz5ry6ueNFy5KhlpnuycRycP9FI28cx7nGzbTgXqBO5hTgZkmyE
 VQHOpOCk/aFv91WibWyOdk/ljSFr4pyrSpZxl7CkjnTNE7v0aPz5ImRrPZul1JFfvAZK
 Itiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=h1w1IMOh9uAH2ZhtkpdQP5kC2zy5JqYg8a82ZJQZ4gg=;
 b=QV0SexolrAvFa46AH2xJum8fhXkFmVUZVLvsdonEHnRD5Yvi0Yel4xdRu+1k8bDSDo
 0vw4/a0d1FH9rhFEze8BMj/EXByjEyHn/Zc09lRQzkENBoeko10kfQDNsfnpl/9s3u/R
 LvNDzRelZeIi/Qo6JZjUt0X61afSlouPsglNM2nOR1jB6eu58vvNbC/IX0OIdcvCYkFC
 sRveS166Pm5MIek7QsOtaXLwd3yPNQbdaPgJ6yfZVFwN/5JuauUUWPS10Amq41fmW5sV
 BgDFixgWIQlGOrVO5+WAh3v3XcT1y9goKLQGQ6YM/60wcdLuy6q/M+ft3+f59HoHJB7r
 s5gA==
X-Gm-Message-State: APjAAAVjOg09QuYq9s+6py50Tpc9wyv4j+aWFxTjJT2KZL38bbJVqfBd
 GDstqJTGCYCwNEl9QAL4E8o=
X-Google-Smtp-Source: APXvYqzdnxy952FNOAPg2EdMsLW/eIBXGSNV4PZ319qMt9sivScZRcwjCLk9yyVPEbNkDA/5ppNL1Q==
X-Received: by 2002:adf:e74a:: with SMTP id c10mr4257602wrn.386.1575927843771; 
 Mon, 09 Dec 2019 13:44:03 -0800 (PST)
Received: from stbsrv-and-01.and.broadcom.net ([192.19.231.250])
 by smtp.gmail.com with ESMTPSA id z6sm757714wmz.12.2019.12.09.13.44.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Dec 2019 13:44:03 -0800 (PST)
From: Al Cooper <alcooperx@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 resend 05/13] phy: usb: Restructure in preparation for
 adding 7216 USB support
Date: Mon,  9 Dec 2019 16:42:41 -0500
Message-Id: <20191209214249.41137-6-alcooperx@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191209214249.41137-1-alcooperx@gmail.com>
References: <20191209214249.41137-1-alcooperx@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_134406_163947_7B3DEF05 
X-CRM114-Status: GOOD (  19.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alcooperx[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

The driver is being restructured in preparation for adding support
for the new Synopsis USB conroller on the 7216. Since all the bugs
and work-arounds in previous STB chips are supposed to be fixed,
most of the code in phy-brcm-usb-init.c is not needed. Instead of
adding more complexity to the already complicated phy-brcm-usb-init.c
module, the driver will be restructured to use a vector table to
dispatch into different C modules for the different controllers.

There was also some general cleanup done including some ipp setup
code that was incorrect.

Signed-off-by: Al Cooper <alcooperx@gmail.com>
---
 drivers/phy/broadcom/phy-brcm-usb-init.c | 191 ++++++++++-------------
 drivers/phy/broadcom/phy-brcm-usb-init.h | 140 +++++++++++++++--
 drivers/phy/broadcom/phy-brcm-usb.c      |   6 +-
 3 files changed, 214 insertions(+), 123 deletions(-)

diff --git a/drivers/phy/broadcom/phy-brcm-usb-init.c b/drivers/phy/broadcom/phy-brcm-usb-init.c
index 6ad5978ded9b..5d5a916ed46f 100644
--- a/drivers/phy/broadcom/phy-brcm-usb-init.c
+++ b/drivers/phy/broadcom/phy-brcm-usb-init.c
@@ -129,10 +129,6 @@ enum {
 	USB_CTRL_SELECTOR_COUNT,
 };
 
-#define USB_CTRL_REG(base, reg)	((void *)base + USB_CTRL_##reg)
-#define USB_XHCI_EC_REG(base, reg) ((void *)base + USB_XHCI_EC_##reg)
-#define USB_CTRL_MASK(reg, field) \
-	USB_CTRL_##reg##_##field##_MASK
 #define USB_CTRL_MASK_FAMILY(params, reg, field)			\
 	(params->usb_reg_bits_map[USB_CTRL_##reg##_##field##_SELECTOR])
 
@@ -143,13 +139,6 @@ enum {
 	usb_ctrl_unset_family(params, USB_CTRL_##reg,	\
 		USB_CTRL_##reg##_##field##_SELECTOR)
 
-#define USB_CTRL_SET(base, reg, field)	\
-	usb_ctrl_set(USB_CTRL_REG(base, reg),		\
-		     USB_CTRL_##reg##_##field##_MASK)
-#define USB_CTRL_UNSET(base, reg, field)	\
-	usb_ctrl_unset(USB_CTRL_REG(base, reg),		\
-		       USB_CTRL_##reg##_##field##_MASK)
-
 #define MDIO_USB2	0
 #define MDIO_USB3	BIT(31)
 
@@ -405,26 +394,14 @@ usb_reg_bits_map_table[BRCM_FAMILY_COUNT][USB_CTRL_SELECTOR_COUNT] = {
 	},
 };
 
-static inline u32 brcmusb_readl(void __iomem *addr)
-{
-	return readl(addr);
-}
-
-static inline void brcmusb_writel(u32 val, void __iomem *addr)
-{
-	writel(val, addr);
-}
-
 static inline
 void usb_ctrl_unset_family(struct brcm_usb_init_params *params,
 			   u32 reg_offset, u32 field)
 {
 	u32 mask;
-	void *reg;
 
 	mask = params->usb_reg_bits_map[field];
-	reg = params->ctrl_regs + reg_offset;
-	brcmusb_writel(brcmusb_readl(reg) & ~mask, reg);
+	brcm_usb_ctrl_unset(params->ctrl_regs + reg_offset, mask);
 };
 
 static inline
@@ -432,45 +409,27 @@ void usb_ctrl_set_family(struct brcm_usb_init_params *params,
 			 u32 reg_offset, u32 field)
 {
 	u32 mask;
-	void *reg;
 
 	mask = params->usb_reg_bits_map[field];
-	reg = params->ctrl_regs + reg_offset;
-	brcmusb_writel(brcmusb_readl(reg) | mask, reg);
+	brcm_usb_ctrl_set(params->ctrl_regs + reg_offset, mask);
 };
 
-static inline void usb_ctrl_set(void __iomem *reg, u32 field)
-{
-	u32 value;
-
-	value = brcmusb_readl(reg);
-	brcmusb_writel(value | field, reg);
-}
-
-static inline void usb_ctrl_unset(void __iomem *reg, u32 field)
-{
-	u32 value;
-
-	value = brcmusb_readl(reg);
-	brcmusb_writel(value & ~field, reg);
-}
-
 static u32 brcmusb_usb_mdio_read(void __iomem *ctrl_base, u32 reg, int mode)
 {
 	u32 data;
 
 	data = (reg << 16) | mode;
-	brcmusb_writel(data, USB_CTRL_REG(ctrl_base, MDIO));
+	brcm_usb_writel(data, USB_CTRL_REG(ctrl_base, MDIO));
 	data |= (1 << 24);
-	brcmusb_writel(data, USB_CTRL_REG(ctrl_base, MDIO));
+	brcm_usb_writel(data, USB_CTRL_REG(ctrl_base, MDIO));
 	data &= ~(1 << 24);
 	/* wait for the 60MHz parallel to serial shifter */
 	usleep_range(10, 20);
-	brcmusb_writel(data, USB_CTRL_REG(ctrl_base, MDIO));
+	brcm_usb_writel(data, USB_CTRL_REG(ctrl_base, MDIO));
 	/* wait for the 60MHz parallel to serial shifter */
 	usleep_range(10, 20);
 
-	return brcmusb_readl(USB_CTRL_REG(ctrl_base, MDIO2)) & 0xffff;
+	return brcm_usb_readl(USB_CTRL_REG(ctrl_base, MDIO2)) & 0xffff;
 }
 
 static void brcmusb_usb_mdio_write(void __iomem *ctrl_base, u32 reg,
@@ -479,14 +438,14 @@ static void brcmusb_usb_mdio_write(void __iomem *ctrl_base, u32 reg,
 	u32 data;
 
 	data = (reg << 16) | val | mode;
-	brcmusb_writel(data, USB_CTRL_REG(ctrl_base, MDIO));
+	brcm_usb_writel(data, USB_CTRL_REG(ctrl_base, MDIO));
 	data |= (1 << 25);
-	brcmusb_writel(data, USB_CTRL_REG(ctrl_base, MDIO));
+	brcm_usb_writel(data, USB_CTRL_REG(ctrl_base, MDIO));
 	data &= ~(1 << 25);
 
 	/* wait for the 60MHz parallel to serial shifter */
 	usleep_range(10, 20);
-	brcmusb_writel(data, USB_CTRL_REG(ctrl_base, MDIO));
+	brcm_usb_writel(data, USB_CTRL_REG(ctrl_base, MDIO));
 	/* wait for the 60MHz parallel to serial shifter */
 	usleep_range(10, 20);
 }
@@ -713,12 +672,12 @@ static void brcmusb_usb3_otp_fix(struct brcm_usb_init_params *params)
 
 	if (params->family_id != 0x74371000 || xhci_ec_base == 0)
 		return;
-	brcmusb_writel(0xa20c, USB_XHCI_EC_REG(xhci_ec_base, IRAADR));
-	val = brcmusb_readl(USB_XHCI_EC_REG(xhci_ec_base, IRADAT));
+	brcm_usb_writel(0xa20c, USB_XHCI_EC_REG(xhci_ec_base, IRAADR));
+	val = brcm_usb_readl(USB_XHCI_EC_REG(xhci_ec_base, IRADAT));
 
 	/* set cfg_pick_ss_lock */
 	val |= (1 << 27);
-	brcmusb_writel(val, USB_XHCI_EC_REG(xhci_ec_base, IRADAT));
+	brcm_usb_writel(val, USB_XHCI_EC_REG(xhci_ec_base, IRADAT));
 
 	/* Reset USB 3.0 PHY for workaround to take effect */
 	USB_CTRL_UNSET(params->ctrl_regs, USB30_CTL1, PHY3_RESETB);
@@ -751,7 +710,7 @@ static void brcmusb_xhci_soft_reset(struct brcm_usb_init_params *params,
  *   - default chip/rev.
  * NOTE: The minor rev is always ignored.
  */
-static enum brcm_family_type brcmusb_get_family_type(
+static enum brcm_family_type get_family_type(
 	struct brcm_usb_init_params *params)
 {
 	int last_type = -1;
@@ -779,7 +738,7 @@ static enum brcm_family_type brcmusb_get_family_type(
 	return last_type;
 }
 
-void brcm_usb_init_ipp(struct brcm_usb_init_params *params)
+static void usb_init_ipp(struct brcm_usb_init_params *params)
 {
 	void __iomem *ctrl = params->ctrl_regs;
 	u32 reg;
@@ -795,7 +754,7 @@ void brcm_usb_init_ipp(struct brcm_usb_init_params *params)
 			USB_CTRL_SET_FAMILY(params, USB30_CTL1, USB3_IPP);
 	}
 
-	reg = brcmusb_readl(USB_CTRL_REG(ctrl, SETUP));
+	reg = brcm_usb_readl(USB_CTRL_REG(ctrl, SETUP));
 	orig_reg = reg;
 	if (USB_CTRL_MASK_FAMILY(params, SETUP, STRAP_CC_DRD_MODE_ENABLE_SEL))
 		/* Never use the strap, it's going away. */
@@ -803,8 +762,8 @@ void brcm_usb_init_ipp(struct brcm_usb_init_params *params)
 					      SETUP,
 					      STRAP_CC_DRD_MODE_ENABLE_SEL));
 	if (USB_CTRL_MASK_FAMILY(params, SETUP, STRAP_IPP_SEL))
+		/* override ipp strap pin (if it exits) */
 		if (params->ipp != 2)
-			/* override ipp strap pin (if it exits) */
 			reg &= ~(USB_CTRL_MASK_FAMILY(params, SETUP,
 						      STRAP_IPP_SEL));
 
@@ -812,54 +771,26 @@ void brcm_usb_init_ipp(struct brcm_usb_init_params *params)
 	reg &= ~(USB_CTRL_MASK(SETUP, IPP) | USB_CTRL_MASK(SETUP, IOC));
 	if (params->ioc)
 		reg |= USB_CTRL_MASK(SETUP, IOC);
-	if (params->ipp == 1 && ((reg & USB_CTRL_MASK(SETUP, IPP)) == 0))
+	if (params->ipp == 1)
 		reg |= USB_CTRL_MASK(SETUP, IPP);
-	brcmusb_writel(reg, USB_CTRL_REG(ctrl, SETUP));
+	brcm_usb_writel(reg, USB_CTRL_REG(ctrl, SETUP));
 
 	/*
 	 * If we're changing IPP, make sure power is off long enough
 	 * to turn off any connected devices.
 	 */
-	if (reg != orig_reg)
+	if ((reg ^ orig_reg) & USB_CTRL_MASK(SETUP, IPP))
 		msleep(50);
 }
 
-int brcm_usb_init_get_dual_select(struct brcm_usb_init_params *params)
-{
-	void __iomem *ctrl = params->ctrl_regs;
-	u32 reg = 0;
-
-	if (USB_CTRL_MASK_FAMILY(params, USB_DEVICE_CTL1, PORT_MODE)) {
-		reg = brcmusb_readl(USB_CTRL_REG(ctrl, USB_DEVICE_CTL1));
-		reg &= USB_CTRL_MASK_FAMILY(params, USB_DEVICE_CTL1,
-					PORT_MODE);
-	}
-	return reg;
-}
-
-void brcm_usb_init_set_dual_select(struct brcm_usb_init_params *params,
-				   int mode)
-{
-	void __iomem *ctrl = params->ctrl_regs;
-	u32 reg;
-
-	if (USB_CTRL_MASK_FAMILY(params, USB_DEVICE_CTL1, PORT_MODE)) {
-		reg = brcmusb_readl(USB_CTRL_REG(ctrl, USB_DEVICE_CTL1));
-		reg &= ~USB_CTRL_MASK_FAMILY(params, USB_DEVICE_CTL1,
-					PORT_MODE);
-		reg |= mode;
-		brcmusb_writel(reg, USB_CTRL_REG(ctrl, USB_DEVICE_CTL1));
-	}
-}
-
-void brcm_usb_init_common(struct brcm_usb_init_params *params)
+static void usb_init_common(struct brcm_usb_init_params *params)
 {
 	u32 reg;
 	void __iomem *ctrl = params->ctrl_regs;
 
 	/* Clear any pending wake conditions */
-	reg = brcmusb_readl(USB_CTRL_REG(ctrl, USB_PM_STATUS));
-	brcmusb_writel(reg, USB_CTRL_REG(ctrl, USB_PM_STATUS));
+	reg = brcm_usb_readl(USB_CTRL_REG(ctrl, USB_PM_STATUS));
+	brcm_usb_writel(reg, USB_CTRL_REG(ctrl, USB_PM_STATUS));
 
 	/* Take USB out of power down */
 	if (USB_CTRL_MASK_FAMILY(params, PLL_CTL, PLL_IDDQ_PWRDN)) {
@@ -885,7 +816,7 @@ void brcm_usb_init_common(struct brcm_usb_init_params *params)
 	/* Block auto PLL suspend by USB2 PHY (Sasi) */
 	USB_CTRL_SET(ctrl, PLL_CTL, PLL_SUSPEND_EN);
 
-	reg = brcmusb_readl(USB_CTRL_REG(ctrl, SETUP));
+	reg = brcm_usb_readl(USB_CTRL_REG(ctrl, SETUP));
 	if (params->selected_family == BRCM_FAMILY_7364A0)
 		/* Suppress overcurrent indication from USB30 ports for A0 */
 		reg |= USB_CTRL_MASK_FAMILY(params, SETUP, OC3_DISABLE);
@@ -901,16 +832,16 @@ void brcm_usb_init_common(struct brcm_usb_init_params *params)
 		reg |= USB_CTRL_MASK_FAMILY(params, SETUP, SCB1_EN);
 	if (USB_CTRL_MASK_FAMILY(params, SETUP, SCB2_EN))
 		reg |= USB_CTRL_MASK_FAMILY(params, SETUP, SCB2_EN);
-	brcmusb_writel(reg, USB_CTRL_REG(ctrl, SETUP));
+	brcm_usb_writel(reg, USB_CTRL_REG(ctrl, SETUP));
 
 	brcmusb_memc_fix(params);
 
 	if (USB_CTRL_MASK_FAMILY(params, USB_DEVICE_CTL1, PORT_MODE)) {
-		reg = brcmusb_readl(USB_CTRL_REG(ctrl, USB_DEVICE_CTL1));
+		reg = brcm_usb_readl(USB_CTRL_REG(ctrl, USB_DEVICE_CTL1));
 		reg &= ~USB_CTRL_MASK_FAMILY(params, USB_DEVICE_CTL1,
 					PORT_MODE);
 		reg |= params->mode;
-		brcmusb_writel(reg, USB_CTRL_REG(ctrl, USB_DEVICE_CTL1));
+		brcm_usb_writel(reg, USB_CTRL_REG(ctrl, USB_DEVICE_CTL1));
 	}
 	if (USB_CTRL_MASK_FAMILY(params, USB_PM, BDC_SOFT_RESETB)) {
 		switch (params->mode) {
@@ -932,7 +863,7 @@ void brcm_usb_init_common(struct brcm_usb_init_params *params)
 	}
 }
 
-void brcm_usb_init_eohci(struct brcm_usb_init_params *params)
+static void usb_init_eohci(struct brcm_usb_init_params *params)
 {
 	u32 reg;
 	void __iomem *ctrl = params->ctrl_regs;
@@ -948,10 +879,10 @@ void brcm_usb_init_eohci(struct brcm_usb_init_params *params)
 		USB_CTRL_SET(ctrl, EBRIDGE, ESTOP_SCB_REQ);
 
 	/* Setup the endian bits */
-	reg = brcmusb_readl(USB_CTRL_REG(ctrl, SETUP));
+	reg = brcm_usb_readl(USB_CTRL_REG(ctrl, SETUP));
 	reg &= ~USB_CTRL_SETUP_ENDIAN_BITS;
 	reg |= USB_CTRL_MASK_FAMILY(params, SETUP, ENDIAN);
-	brcmusb_writel(reg, USB_CTRL_REG(ctrl, SETUP));
+	brcm_usb_writel(reg, USB_CTRL_REG(ctrl, SETUP));
 
 	if (params->selected_family == BRCM_FAMILY_7271A0)
 		/* Enable LS keep alive fix for certain keyboards */
@@ -962,14 +893,14 @@ void brcm_usb_init_eohci(struct brcm_usb_init_params *params)
 		 * Make the burst size 512 bytes to fix a hardware bug
 		 * on the 7255a0. See HW7255-24.
 		 */
-		reg = brcmusb_readl(USB_CTRL_REG(ctrl, EBRIDGE));
+		reg = brcm_usb_readl(USB_CTRL_REG(ctrl, EBRIDGE));
 		reg &= ~USB_CTRL_MASK(EBRIDGE, EBR_SCB_SIZE);
 		reg |= 0x800;
-		brcmusb_writel(reg, USB_CTRL_REG(ctrl, EBRIDGE));
+		brcm_usb_writel(reg, USB_CTRL_REG(ctrl, EBRIDGE));
 	}
 }
 
-void brcm_usb_init_xhci(struct brcm_usb_init_params *params)
+static void usb_init_xhci(struct brcm_usb_init_params *params)
 {
 	void __iomem *ctrl = params->ctrl_regs;
 
@@ -997,7 +928,7 @@ void brcm_usb_init_xhci(struct brcm_usb_init_params *params)
 	brcmusb_usb3_otp_fix(params);
 }
 
-void brcm_usb_uninit_common(struct brcm_usb_init_params *params)
+static void usb_uninit_common(struct brcm_usb_init_params *params)
 {
 	if (USB_CTRL_MASK_FAMILY(params, USB_PM, USB_PWRDN))
 		USB_CTRL_SET_FAMILY(params, USB_PM, USB_PWRDN);
@@ -1006,17 +937,47 @@ void brcm_usb_uninit_common(struct brcm_usb_init_params *params)
 		USB_CTRL_SET_FAMILY(params, PLL_CTL, PLL_IDDQ_PWRDN);
 }
 
-void brcm_usb_uninit_eohci(struct brcm_usb_init_params *params)
+static void usb_uninit_eohci(struct brcm_usb_init_params *params)
 {
 }
 
-void brcm_usb_uninit_xhci(struct brcm_usb_init_params *params)
+static void usb_uninit_xhci(struct brcm_usb_init_params *params)
 {
 	brcmusb_xhci_soft_reset(params, 1);
 	USB_CTRL_SET(params->ctrl_regs, USB30_PCTL, PHY3_IDDQ_OVERRIDE);
 }
 
-void brcm_usb_wake_enable(struct brcm_usb_init_params *params,
+static int usb_get_dual_select(struct brcm_usb_init_params *params)
+{
+	void __iomem *ctrl = params->ctrl_regs;
+	u32 reg = 0;
+
+	pr_debug("%s\n", __func__);
+	if (USB_CTRL_MASK_FAMILY(params, USB_DEVICE_CTL1, PORT_MODE)) {
+		reg = brcm_usb_readl(USB_CTRL_REG(ctrl, USB_DEVICE_CTL1));
+		reg &= USB_CTRL_MASK_FAMILY(params, USB_DEVICE_CTL1,
+					PORT_MODE);
+	}
+	return reg;
+}
+
+static void usb_set_dual_select(struct brcm_usb_init_params *params, int mode)
+{
+	void __iomem *ctrl = params->ctrl_regs;
+	u32 reg;
+
+	pr_debug("%s\n", __func__);
+
+	if (USB_CTRL_MASK_FAMILY(params, USB_DEVICE_CTL1, PORT_MODE)) {
+		reg = brcm_usb_readl(USB_CTRL_REG(ctrl, USB_DEVICE_CTL1));
+		reg &= ~USB_CTRL_MASK_FAMILY(params, USB_DEVICE_CTL1,
+					PORT_MODE);
+		reg |= mode;
+		brcm_usb_writel(reg, USB_CTRL_REG(ctrl, USB_DEVICE_CTL1));
+	}
+}
+
+static void usb_wake_enable(struct brcm_usb_init_params *params,
 			  int enable)
 {
 	void __iomem *ctrl = params->ctrl_regs;
@@ -1027,13 +988,29 @@ void brcm_usb_wake_enable(struct brcm_usb_init_params *params,
 		USB_CTRL_UNSET(ctrl, USB_PM, RMTWKUP_EN);
 }
 
-void brcm_usb_set_family_map(struct brcm_usb_init_params *params)
+static const struct brcm_usb_init_ops bcm7445_ops = {
+	.init_ipp = usb_init_ipp,
+	.init_common = usb_init_common,
+	.init_eohci = usb_init_eohci,
+	.init_xhci = usb_init_xhci,
+	.uninit_common = usb_uninit_common,
+	.uninit_eohci = usb_uninit_eohci,
+	.uninit_xhci = usb_uninit_xhci,
+	.get_dual_select = usb_get_dual_select,
+	.set_dual_select = usb_set_dual_select,
+	.wake_enable = usb_wake_enable,
+};
+
+void brcm_usb_dvr_init_7445(struct brcm_usb_init_params *params)
 {
 	int fam;
 
-	fam = brcmusb_get_family_type(params);
+	pr_debug("%s\n", __func__);
+
+	fam = get_family_type(params);
 	params->selected_family = fam;
 	params->usb_reg_bits_map =
 		&usb_reg_bits_map_table[fam][0];
 	params->family_name = family_names[fam];
+	params->ops = &bcm7445_ops;
 }
diff --git a/drivers/phy/broadcom/phy-brcm-usb-init.h b/drivers/phy/broadcom/phy-brcm-usb-init.h
index f473e0c51f0b..8fab5ff76b2b 100644
--- a/drivers/phy/broadcom/phy-brcm-usb-init.h
+++ b/drivers/phy/broadcom/phy-brcm-usb-init.h
@@ -13,6 +13,33 @@
 
 struct  brcm_usb_init_params;
 
+#define USB_CTRL_REG(base, reg)	((void *)base + USB_CTRL_##reg)
+#define USB_XHCI_EC_REG(base, reg) ((void *)base + USB_XHCI_EC_##reg)
+#define USB_CTRL_MASK(reg, field) \
+	USB_CTRL_##reg##_##field##_MASK
+#define USB_CTRL_SET(base, reg, field)	\
+	brcm_usb_ctrl_set(USB_CTRL_REG(base, reg),	\
+			  USB_CTRL_##reg##_##field##_MASK)
+#define USB_CTRL_UNSET(base, reg, field)	\
+	brcm_usb_ctrl_unset(USB_CTRL_REG(base, reg),		\
+			    USB_CTRL_##reg##_##field##_MASK)
+
+struct  brcm_usb_init_params;
+
+struct brcm_usb_init_ops {
+	void (*init_ipp)(struct brcm_usb_init_params *params);
+	void (*init_common)(struct brcm_usb_init_params *params);
+	void (*init_eohci)(struct brcm_usb_init_params *params);
+	void (*init_xhci)(struct brcm_usb_init_params *params);
+	void (*uninit_common)(struct brcm_usb_init_params *params);
+	void (*uninit_eohci)(struct brcm_usb_init_params *params);
+	void (*uninit_xhci)(struct brcm_usb_init_params *params);
+	int  (*get_dual_select)(struct brcm_usb_init_params *params);
+	void (*set_dual_select)(struct brcm_usb_init_params *params, int mode);
+	void (*wake_enable)(struct brcm_usb_init_params *params,
+			    int enable);
+};
+
 struct  brcm_usb_init_params {
 	void __iomem *ctrl_regs;
 	void __iomem *xhci_ec_regs;
@@ -24,20 +51,107 @@ struct  brcm_usb_init_params {
 	int selected_family;
 	const char *family_name;
 	const u32 *usb_reg_bits_map;
+	const struct brcm_usb_init_ops *ops;
 };
 
-void brcm_usb_set_family_map(struct brcm_usb_init_params *params);
-int brcm_usb_init_get_dual_select(struct brcm_usb_init_params *params);
-void brcm_usb_init_set_dual_select(struct brcm_usb_init_params *params,
-				   int mode);
-
-void brcm_usb_init_ipp(struct brcm_usb_init_params *ini);
-void brcm_usb_init_common(struct brcm_usb_init_params *ini);
-void brcm_usb_init_eohci(struct brcm_usb_init_params *ini);
-void brcm_usb_init_xhci(struct brcm_usb_init_params *ini);
-void brcm_usb_uninit_common(struct brcm_usb_init_params *ini);
-void brcm_usb_uninit_eohci(struct brcm_usb_init_params *ini);
-void brcm_usb_uninit_xhci(struct brcm_usb_init_params *ini);
-void brcm_usb_wake_enable(struct brcm_usb_init_params *params, int enable);
+void brcm_usb_dvr_init_7445(struct brcm_usb_init_params *params);
+
+static inline u32 brcm_usb_readl(void __iomem *addr)
+{
+	/*
+	 * MIPS endianness is configured by boot strap, which also reverses all
+	 * bus endianness (i.e., big-endian CPU + big endian bus ==> native
+	 * endian I/O).
+	 *
+	 * Other architectures (e.g., ARM) either do not support big endian, or
+	 * else leave I/O in little endian mode.
+	 */
+	if (IS_ENABLED(CONFIG_MIPS) && IS_ENABLED(__BIG_ENDIAN))
+		return __raw_readl(addr);
+	else
+		return readl_relaxed(addr);
+}
+
+static inline void brcm_usb_writel(u32 val, void __iomem *addr)
+{
+	/* See brcmnand_readl() comments */
+	if (IS_ENABLED(CONFIG_MIPS) && IS_ENABLED(__BIG_ENDIAN))
+		__raw_writel(val, addr);
+	else
+		writel_relaxed(val, addr);
+}
+
+static inline void brcm_usb_ctrl_unset(void __iomem *reg, u32 mask)
+{
+	brcm_usb_writel(brcm_usb_readl(reg) & ~(mask), reg);
+};
+
+static inline void brcm_usb_ctrl_set(void __iomem *reg, u32 mask)
+{
+	brcm_usb_writel(brcm_usb_readl(reg) | (mask), reg);
+};
+
+static inline void brcm_usb_init_ipp(struct brcm_usb_init_params *ini)
+{
+	if (ini->ops->init_ipp)
+		ini->ops->init_ipp(ini);
+}
+
+static inline void brcm_usb_init_common(struct brcm_usb_init_params *ini)
+{
+	if (ini->ops->init_common)
+		ini->ops->init_common(ini);
+}
+
+static inline void brcm_usb_init_eohci(struct brcm_usb_init_params *ini)
+{
+	if (ini->ops->init_eohci)
+		ini->ops->init_eohci(ini);
+}
+
+static inline void brcm_usb_init_xhci(struct brcm_usb_init_params *ini)
+{
+	if (ini->ops->init_xhci)
+		ini->ops->init_xhci(ini);
+}
+
+static inline void brcm_usb_uninit_common(struct brcm_usb_init_params *ini)
+{
+	if (ini->ops->uninit_common)
+		ini->ops->uninit_common(ini);
+}
+
+static inline void brcm_usb_uninit_eohci(struct brcm_usb_init_params *ini)
+{
+	if (ini->ops->uninit_eohci)
+		ini->ops->uninit_eohci(ini);
+}
+
+static inline void brcm_usb_uninit_xhci(struct brcm_usb_init_params *ini)
+{
+	if (ini->ops->uninit_xhci)
+		ini->ops->uninit_xhci(ini);
+}
+
+static inline void brcm_usb_wake_enable(struct brcm_usb_init_params *ini,
+	int enable)
+{
+	if (ini->ops->wake_enable)
+		ini->ops->wake_enable(ini, enable);
+}
+
+static inline int brcm_usb_get_dual_select(struct brcm_usb_init_params *ini)
+{
+	if (ini->ops->get_dual_select)
+		return ini->ops->get_dual_select(ini);
+	return 0;
+}
+
+static inline void brcm_usb_set_dual_select(struct brcm_usb_init_params *ini,
+	int mode)
+{
+	if (ini->ops->set_dual_select)
+		ini->ops->set_dual_select(ini, mode);
+}
 
 #endif /* _USB_BRCM_COMMON_INIT_H */
diff --git a/drivers/phy/broadcom/phy-brcm-usb.c b/drivers/phy/broadcom/phy-brcm-usb.c
index cca04d60f2d2..9d93c5599511 100644
--- a/drivers/phy/broadcom/phy-brcm-usb.c
+++ b/drivers/phy/broadcom/phy-brcm-usb.c
@@ -207,7 +207,7 @@ static ssize_t dual_select_store(struct device *dev,
 	res = name_to_value(&brcm_dual_mode_to_name[0],
 			    ARRAY_SIZE(brcm_dual_mode_to_name), buf, &value);
 	if (!res) {
-		brcm_usb_init_set_dual_select(&priv->ini, value);
+		brcm_usb_set_dual_select(&priv->ini, value);
 		res = len;
 	}
 	mutex_unlock(&sysfs_lock);
@@ -222,7 +222,7 @@ static ssize_t dual_select_show(struct device *dev,
 	int value;
 
 	mutex_lock(&sysfs_lock);
-	value = brcm_usb_init_get_dual_select(&priv->ini);
+	value = brcm_usb_get_dual_select(&priv->ini);
 	mutex_unlock(&sysfs_lock);
 	return sprintf(buf, "%s\n",
 		value_to_name(&brcm_dual_mode_to_name[0],
@@ -331,7 +331,7 @@ static int brcm_usb_phy_probe(struct platform_device *pdev)
 
 	priv->ini.family_id = brcmstb_get_family_id();
 	priv->ini.product_id = brcmstb_get_product_id();
-	brcm_usb_set_family_map(&priv->ini);
+	brcm_usb_dvr_init_7445(&priv->ini);
 	dev_dbg(dev, "Best mapping table is for %s\n",
 		priv->ini.family_name);
 	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
