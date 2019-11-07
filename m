Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6855AF3127
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 15:17:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8OjqbyasSYNvm3Gfm+MXZMjZqeCAjCHHmusSp9EtGlM=; b=EAuZr9MPCs/jlAGRo2MVcqoNg7
	k/dRw7etlt5Zb6jVnTE/Ih/wL49RsWRpuqemeOG3rfCJpTtb2CQdraQYKu9cvUsyLol/Hay6rCK4o
	uRl09DJF2lE+lN+W2uussvk4EVv7ZEf7Bia03pehTTiL7UkSA/K84WOXMTAhLeimUvgpa2ZF1UHJx
	E9O+59wWyUfArNA9JufTOql3gGMAMjX9nGpmHz6LMXqCqyiER6r9eFSNDmorerHJ/zGUbduaygOuY
	vr8BDSAhEQzv9091vkKHjms3Tztb/tYm87x14yhowxxz4eQrsNREXsB+GgB3n8w4myD95HGEok/NU
	GQB52mdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSibB-0002Dh-DI; Thu, 07 Nov 2019 14:17:21 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSiYg-0007YS-OT
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 14:14:49 +0000
Received: by mail-wm1-x342.google.com with SMTP id c22so2616132wmd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 Nov 2019 06:14:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=f+8MoUVPTnBqdzL0gD9ZFygBMmIys7JrCGxw0DIyYvU=;
 b=INVtIsNvUA3njZdL7K3uhDT5CDQ3x2t24Q75DcSYMeV7krUGZ6cnThXKCuh5VJRgcs
 htJmmH1IFk7vS7qwP6Yw/9kptj/qPvR9D2U0o1ME2B11UA1ZxBKx68s5Tz1IfsuSo0gD
 4BYnUj9GJB6soOKc0ZOHEsY9WcrhNth3DKHeAKCdO0YURR9EV2ItfLgoWM5QhPbTYm4l
 t0sP2CgQ5QWyAuvg7iqwg1rheChecpq2F1DhzAkxTGarMSCeigbEGF1QMS+c/aTJZPSj
 MOBov6Yzwp55V+nWyeZf5yR0xEE+TwE8N1U+VR+0AASPmxfayZAVqIi5vr5W448gfpZA
 xgtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=f+8MoUVPTnBqdzL0gD9ZFygBMmIys7JrCGxw0DIyYvU=;
 b=qCrC+yisk4Zm6Vu1PFHdhZSn94jsXz2atAR6al8IuL5mkPQgBwMQW6/S5GYD5LJjz/
 1WfRzIOjRghnqWl+CBhlreD556Xi2cjDb+vyHsDC0gbLdHOC0qYkssK5LyV1HmmKJr/l
 gjGcjGHDyQeRj5BQ6s1ePa/BqUCWXKJZwirx6XjrYwqPrzYTx9jD6opPp+ZgPMs/5Y2o
 Es3BYW3ShVFjV2GP/q4/Zl5PWutiY/brF7ATByEKL0Yi+JHBgW/Ru8dTTZ2+kPO3EAL+
 vBK58gwmiNpEn2GrmaZASSEhEmW6JXJ0EhizQB+vMJsnqqQ8gYg3dSeJmZY8O/zL2vXs
 OLKA==
X-Gm-Message-State: APjAAAW7oLHcLf1x5vgsxXixnqse6+AMfE5dsbxZQxYWQM/1ahuB5kgA
 L1/iixBV2Enh710oZRGxniQ=
X-Google-Smtp-Source: APXvYqzb5fy+QeWjDsMF5SI7+StaoECKFBGVoQhhCi7BHA39gLd8eHonB0A3aL8YKqtO7uq9ljiAiA==
X-Received: by 2002:a7b:c925:: with SMTP id h5mr3386540wml.115.1573136084688; 
 Thu, 07 Nov 2019 06:14:44 -0800 (PST)
Received: from stbsrv-and-01.and.broadcom.net ([192.19.231.250])
 by smtp.gmail.com with ESMTPSA id b1sm2453888wrw.77.2019.11.07.06.14.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Nov 2019 06:14:44 -0800 (PST)
From: Al Cooper <alcooperx@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 08/13] phy: usb: Add support for new Synopsis USB controller
 on the 7211b0
Date: Thu,  7 Nov 2019 09:13:34 -0500
Message-Id: <20191107141339.6079-9-alcooperx@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191107141339.6079-1-alcooperx@gmail.com>
References: <20191107141339.6079-1-alcooperx@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_061446_901480_E219DBBD 
X-CRM114-Status: GOOD (  20.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alcooperx[at]gmail.com)
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

The 7211b0 has added the STB XHCI Synopsis controller and it
will be used instead of the RPi based DWC USB controller. The new
Synopsis XHCI controller core is the same one that is used on the
7216, but because of the way the STB USB PHY is used on both the A0
and B0, some of the PHY control is different.

Signed-off-by: Al Cooper <alcooperx@gmail.com>
---
 .../phy/broadcom/phy-brcm-usb-init-synopsis.c | 163 +++++++++++++++++-
 drivers/phy/broadcom/phy-brcm-usb-init.c      |  31 ++--
 drivers/phy/broadcom/phy-brcm-usb-init.h      |  17 +-
 drivers/phy/broadcom/phy-brcm-usb.c           | 159 +++++++++++------
 4 files changed, 292 insertions(+), 78 deletions(-)

diff --git a/drivers/phy/broadcom/phy-brcm-usb-init-synopsis.c b/drivers/phy/broadcom/phy-brcm-usb-init-synopsis.c
index 57663492b228..bf138867efb1 100644
--- a/drivers/phy/broadcom/phy-brcm-usb-init-synopsis.c
+++ b/drivers/phy/broadcom/phy-brcm-usb-init-synopsis.c
@@ -12,10 +12,33 @@
 #include <linux/soc/brcmstb/brcmstb.h>
 #include "phy-brcm-usb-init.h"
 
+#define PHY_LOCK_TIMEOUT_MS 200
+
+/* Register definitions for syscon piarbctl registers */
+#define PIARBCTL_CAM			0x00
+#define PIARBCTL_SPLITTER		0x04
+#define PIARBCTL_MISC			0x08
+#define   PIARBCTL_MISC_SECURE_MASK			0x80000000
+#define   PIARBCTL_MISC_USB_SELECT_MASK			0x40000000
+#define   PIARBCTL_MISC_USB_4G_SDRAM_MASK		0x20000000
+#define   PIARBCTL_MISC_USB_PRIORITY_MASK		0x000f0000
+#define   PIARBCTL_MISC_USB_MEM_PAGE_MASK		0x0000f000
+#define   PIARBCTL_MISC_CAM1_MEM_PAGE_MASK		0x00000f00
+#define   PIARBCTL_MISC_CAM0_MEM_PAGE_MASK		0x000000f0
+#define   PIARBCTL_MISC_SATA_PRIORITY_MASK		0x0000000f
+#define PIARBCTL_USB_M_ASB_CTRL		0x10
+
+#define PIARBCTL_MISC_USB_ONLY_MASK		\
+	(PIARBCTL_MISC_USB_SELECT_MASK |	\
+	 PIARBCTL_MISC_USB_4G_SDRAM_MASK |	\
+	 PIARBCTL_MISC_USB_PRIORITY_MASK |	\
+	 PIARBCTL_MISC_USB_MEM_PAGE_MASK)
+
 /* Register definitions for the USB CTRL block */
 #define USB_CTRL_SETUP			0x00
 #define   USB_CTRL_SETUP_STRAP_IPP_SEL_MASK		0x02000000
 #define   USB_CTRL_SETUP_SCB2_EN_MASK			0x00008000
+#define   USB_CTRL_SETUP_tca_drv_sel_MASK		0x01000000
 #define   USB_CTRL_SETUP_SCB1_EN_MASK			0x00004000
 #define   USB_CTRL_SETUP_SOFT_SHUTDOWN_MASK		0x00000200
 #define   USB_CTRL_SETUP_IPP_MASK			0x00000020
@@ -29,11 +52,73 @@
 #define USB_CTRL_USB_DEVICE_CTL1	0x10
 #define   USB_CTRL_USB_DEVICE_CTL1_PORT_MODE_MASK	0x00000003
 
+/* Register definitions for the USB_PHY block in 7211b0 */
+#define USB_PHY_PLL_LDO_CTL		0x08
+#define   USB_PHY_PLL_LDO_CTL_AFE_CORERDY_MASK		0x00000004
+#define USB_PHY_UTMI_CTL_1		0x04
+#define   USB_PHY_UTMI_CTL_1_PHY_MODE_MASK		0x0000000c
+#define   USB_PHY_UTMI_CTL_1_PHY_MODE_SHIFT		2
+#define USB_PHY_STATUS			0x20
+#define   USB_PHY_STATUS_pll_lock_MASK			0x00000001
+
+/* Register definitions for the MDIO registers in the DWC2 block of
+ * the 7211b0.
+ * NOTE: The PHY's MDIO registers are only accessible through the
+ * legacy DesignWare USB controller even though it's not being used.
+ */
+#define USB_GMDIOCSR	0
+#define USB_GMDIOGEN	4
+
+
+static void usb_mdio_write_7211b0(struct brcm_usb_init_params *params,
+				  uint8_t addr, uint16_t data)
+{
+	void __iomem *usb_mdio = params->regs[BRCM_REGS_USB_MDIO];
+
+	addr &= 0x1f; /* 5-bit address */
+	brcm_usb_writel(0xffffffff, usb_mdio + USB_GMDIOGEN);
+	while (brcm_usb_readl(usb_mdio + USB_GMDIOCSR) & (1<<31))
+		;
+	brcm_usb_writel(0x59020000 | (addr << 18) | data,
+			usb_mdio + USB_GMDIOGEN);
+	while (brcm_usb_readl(usb_mdio + USB_GMDIOCSR) & (1<<31))
+		;
+	brcm_usb_writel(0x00000000, usb_mdio + USB_GMDIOGEN);
+	while (brcm_usb_readl(usb_mdio + USB_GMDIOCSR) & (1<<31))
+		;
+}
+
+static uint16_t __maybe_unused usb_mdio_read_7211b0(
+	struct brcm_usb_init_params *params, uint8_t addr)
+{
+	void __iomem *usb_mdio = params->regs[BRCM_REGS_USB_MDIO];
+
+	addr &= 0x1f; /* 5-bit address */
+	brcm_usb_writel(0xffffffff, usb_mdio + USB_GMDIOGEN);
+	while (brcm_usb_readl(usb_mdio + USB_GMDIOCSR) & (1<<31))
+		;
+	brcm_usb_writel(0x69020000 | (addr << 18), usb_mdio + USB_GMDIOGEN);
+	while (brcm_usb_readl(usb_mdio + USB_GMDIOCSR) & (1<<31))
+		;
+	brcm_usb_writel(0x00000000, usb_mdio + USB_GMDIOGEN);
+	while (brcm_usb_readl(usb_mdio + USB_GMDIOCSR) & (1<<31))
+		;
+	return brcm_usb_readl(usb_mdio + USB_GMDIOCSR) & 0xffff;
+}
+
+static void usb2_eye_fix_7211b0(struct brcm_usb_init_params *params)
+{
+	/* select bank */
+	usb_mdio_write_7211b0(params, 0x1f, 0x80a0);
+
+	/* Set the eye */
+	usb_mdio_write_7211b0(params, 0x0a, 0xc6a0);
+}
 
 static void xhci_soft_reset(struct brcm_usb_init_params *params,
 			int on_off)
 {
-	void __iomem *ctrl = params->ctrl_regs;
+	void __iomem *ctrl = params->regs[BRCM_REGS_CTRL];
 
 	/* Assert reset */
 	if (on_off)
@@ -45,7 +130,7 @@ static void xhci_soft_reset(struct brcm_usb_init_params *params,
 
 static void usb_init_ipp(struct brcm_usb_init_params *params)
 {
-	void __iomem *ctrl = params->ctrl_regs;
+	void __iomem *ctrl = params->regs[BRCM_REGS_CTRL];
 	u32 reg;
 	u32 orig_reg;
 
@@ -72,10 +157,18 @@ static void usb_init_ipp(struct brcm_usb_init_params *params)
 		msleep(50);
 }
 
+static void syscon_piarbctl_init(struct regmap *rmap)
+{
+	/* Switch from legacy USB OTG controller to new STB USB controller */
+	regmap_update_bits(rmap, PIARBCTL_MISC, PIARBCTL_MISC_USB_ONLY_MASK,
+			   PIARBCTL_MISC_USB_SELECT_MASK |
+			   PIARBCTL_MISC_USB_4G_SDRAM_MASK);
+}
+
 static void usb_init_common(struct brcm_usb_init_params *params)
 {
 	u32 reg;
-	void __iomem *ctrl = params->ctrl_regs;
+	void __iomem *ctrl = params->regs[BRCM_REGS_CTRL];
 
 	pr_debug("%s\n", __func__);
 
@@ -100,6 +193,45 @@ static void usb_init_common(struct brcm_usb_init_params *params)
 	}
 }
 
+static void usb_init_common_7211b0(struct brcm_usb_init_params *params)
+{
+	void __iomem *ctrl = params->regs[BRCM_REGS_CTRL];
+	void __iomem *usb_phy = params->regs[BRCM_REGS_USB_PHY];
+	int timeout_ms = PHY_LOCK_TIMEOUT_MS;
+	u32 reg;
+
+	if (params->syscon_piarbctl)
+		syscon_piarbctl_init(params->syscon_piarbctl);
+
+	/* Init the PHY */
+	reg = brcm_usb_readl(usb_phy + USB_PHY_PLL_LDO_CTL);
+	reg |= USB_PHY_PLL_LDO_CTL_AFE_CORERDY_MASK;
+	brcm_usb_writel(reg, usb_phy + USB_PHY_PLL_LDO_CTL);
+
+	/* wait for lock */
+	while (timeout_ms-- > 0) {
+		reg = brcm_usb_readl(usb_phy + USB_PHY_STATUS);
+		if (reg & USB_PHY_STATUS_pll_lock_MASK)
+			break;
+		usleep_range(1000, 2000);
+	}
+
+	/* Set the PHY_MODE */
+	reg = brcm_usb_readl(usb_phy + USB_PHY_UTMI_CTL_1);
+	reg &= ~USB_PHY_UTMI_CTL_1_PHY_MODE_MASK;
+	reg |= params->mode << USB_PHY_UTMI_CTL_1_PHY_MODE_SHIFT;
+	brcm_usb_writel(reg, usb_phy + USB_PHY_UTMI_CTL_1);
+
+	/* Fix the incorrect default */
+	reg = brcm_usb_readl(ctrl + USB_CTRL_SETUP);
+	reg &= ~USB_CTRL_SETUP_tca_drv_sel_MASK;
+	brcm_usb_writel(reg, ctrl + USB_CTRL_SETUP);
+
+	usb_init_common(params);
+
+	usb2_eye_fix_7211b0(params);
+}
+
 static void usb_init_xhci(struct brcm_usb_init_params *params)
 {
 	pr_debug("%s\n", __func__);
@@ -109,7 +241,7 @@ static void usb_init_xhci(struct brcm_usb_init_params *params)
 
 static void usb_uninit_common(struct brcm_usb_init_params *params)
 {
-	void __iomem *ctrl = params->ctrl_regs;
+	void __iomem *ctrl = params->regs[BRCM_REGS_CTRL];
 
 	pr_debug("%s\n", __func__);
 
@@ -127,7 +259,7 @@ static void usb_uninit_xhci(struct brcm_usb_init_params *params)
 
 static int usb_get_dual_select(struct brcm_usb_init_params *params)
 {
-	void __iomem *ctrl = params->ctrl_regs;
+	void __iomem *ctrl = params->regs[BRCM_REGS_CTRL];
 	u32 reg = 0;
 
 	pr_debug("%s\n", __func__);
@@ -139,7 +271,7 @@ static int usb_get_dual_select(struct brcm_usb_init_params *params)
 
 static void usb_set_dual_select(struct brcm_usb_init_params *params, int mode)
 {
-	void __iomem *ctrl = params->ctrl_regs;
+	void __iomem *ctrl = params->regs[BRCM_REGS_CTRL];
 	u32 reg;
 
 	pr_debug("%s\n", __func__);
@@ -161,6 +293,16 @@ static const struct brcm_usb_init_ops bcm7216_ops = {
 	.set_dual_select = usb_set_dual_select,
 };
 
+static const struct brcm_usb_init_ops bcm7211b0_ops = {
+	.init_ipp = usb_init_ipp,
+	.init_common = usb_init_common_7211b0,
+	.init_xhci = usb_init_xhci,
+	.uninit_common = usb_uninit_common,
+	.uninit_xhci = usb_uninit_xhci,
+	.get_dual_select = usb_get_dual_select,
+	.set_dual_select = usb_set_dual_select,
+};
+
 void brcm_usb_dvr_init_7216(struct brcm_usb_init_params *params)
 {
 
@@ -169,3 +311,12 @@ void brcm_usb_dvr_init_7216(struct brcm_usb_init_params *params)
 	params->family_name = "7216";
 	params->ops = &bcm7216_ops;
 }
+
+void brcm_usb_dvr_init_7211b0(struct brcm_usb_init_params *params)
+{
+
+	pr_debug("%s\n", __func__);
+
+	params->family_name = "7211";
+	params->ops = &bcm7211b0_ops;
+}
diff --git a/drivers/phy/broadcom/phy-brcm-usb-init.c b/drivers/phy/broadcom/phy-brcm-usb-init.c
index 5d5a916ed46f..e28e4b1a3f21 100644
--- a/drivers/phy/broadcom/phy-brcm-usb-init.c
+++ b/drivers/phy/broadcom/phy-brcm-usb-init.c
@@ -401,7 +401,7 @@ void usb_ctrl_unset_family(struct brcm_usb_init_params *params,
 	u32 mask;
 
 	mask = params->usb_reg_bits_map[field];
-	brcm_usb_ctrl_unset(params->ctrl_regs + reg_offset, mask);
+	brcm_usb_ctrl_unset(params->regs[BRCM_REGS_CTRL] + reg_offset, mask);
 };
 
 static inline
@@ -411,7 +411,7 @@ void usb_ctrl_set_family(struct brcm_usb_init_params *params,
 	u32 mask;
 
 	mask = params->usb_reg_bits_map[field];
-	brcm_usb_ctrl_set(params->ctrl_regs + reg_offset, mask);
+	brcm_usb_ctrl_set(params->regs[BRCM_REGS_CTRL] + reg_offset, mask);
 };
 
 static u32 brcmusb_usb_mdio_read(void __iomem *ctrl_base, u32 reg, int mode)
@@ -544,7 +544,7 @@ static void brcmusb_usb3_pll_54mhz(struct brcm_usb_init_params *params)
 {
 	u32 ofs;
 	int ii;
-	void __iomem *ctrl_base = params->ctrl_regs;
+	void __iomem *ctrl_base = params->regs[BRCM_REGS_CTRL];
 
 	/*
 	 * On newer B53 based SoC's, the reference clock for the
@@ -625,7 +625,7 @@ static void brcmusb_usb3_ssc_enable(void __iomem *ctrl_base)
 
 static void brcmusb_usb3_phy_workarounds(struct brcm_usb_init_params *params)
 {
-	void __iomem *ctrl_base = params->ctrl_regs;
+	void __iomem *ctrl_base = params->regs[BRCM_REGS_CTRL];
 
 	brcmusb_usb3_pll_fix(ctrl_base);
 	brcmusb_usb3_pll_54mhz(params);
@@ -667,7 +667,7 @@ static void brcmusb_memc_fix(struct brcm_usb_init_params *params)
 
 static void brcmusb_usb3_otp_fix(struct brcm_usb_init_params *params)
 {
-	void __iomem *xhci_ec_base = params->xhci_ec_regs;
+	void __iomem *xhci_ec_base = params->regs[BRCM_REGS_XHCI_EC];
 	u32 val;
 
 	if (params->family_id != 0x74371000 || xhci_ec_base == 0)
@@ -680,8 +680,8 @@ static void brcmusb_usb3_otp_fix(struct brcm_usb_init_params *params)
 	brcm_usb_writel(val, USB_XHCI_EC_REG(xhci_ec_base, IRADAT));
 
 	/* Reset USB 3.0 PHY for workaround to take effect */
-	USB_CTRL_UNSET(params->ctrl_regs, USB30_CTL1, PHY3_RESETB);
-	USB_CTRL_SET(params->ctrl_regs,	USB30_CTL1, PHY3_RESETB);
+	USB_CTRL_UNSET(params->regs[BRCM_REGS_CTRL], USB30_CTL1, PHY3_RESETB);
+	USB_CTRL_SET(params->regs[BRCM_REGS_CTRL], USB30_CTL1, PHY3_RESETB);
 }
 
 static void brcmusb_xhci_soft_reset(struct brcm_usb_init_params *params,
@@ -740,7 +740,7 @@ static enum brcm_family_type get_family_type(
 
 static void usb_init_ipp(struct brcm_usb_init_params *params)
 {
-	void __iomem *ctrl = params->ctrl_regs;
+	void __iomem *ctrl = params->regs[BRCM_REGS_CTRL];
 	u32 reg;
 	u32 orig_reg;
 
@@ -786,7 +786,7 @@ static void usb_init_ipp(struct brcm_usb_init_params *params)
 static void usb_init_common(struct brcm_usb_init_params *params)
 {
 	u32 reg;
-	void __iomem *ctrl = params->ctrl_regs;
+	void __iomem *ctrl = params->regs[BRCM_REGS_CTRL];
 
 	/* Clear any pending wake conditions */
 	reg = brcm_usb_readl(USB_CTRL_REG(ctrl, USB_PM_STATUS));
@@ -866,7 +866,7 @@ static void usb_init_common(struct brcm_usb_init_params *params)
 static void usb_init_eohci(struct brcm_usb_init_params *params)
 {
 	u32 reg;
-	void __iomem *ctrl = params->ctrl_regs;
+	void __iomem *ctrl = params->regs[BRCM_REGS_CTRL];
 
 	if (USB_CTRL_MASK_FAMILY(params, USB_PM, USB20_HC_RESETB))
 		USB_CTRL_SET_FAMILY(params, USB_PM, USB20_HC_RESETB);
@@ -902,7 +902,7 @@ static void usb_init_eohci(struct brcm_usb_init_params *params)
 
 static void usb_init_xhci(struct brcm_usb_init_params *params)
 {
-	void __iomem *ctrl = params->ctrl_regs;
+	void __iomem *ctrl = params->regs[BRCM_REGS_CTRL];
 
 	USB_CTRL_UNSET(ctrl, USB30_PCTL, PHY3_IDDQ_OVERRIDE);
 	/* 1 millisecond - for USB clocks to settle down */
@@ -944,12 +944,13 @@ static void usb_uninit_eohci(struct brcm_usb_init_params *params)
 static void usb_uninit_xhci(struct brcm_usb_init_params *params)
 {
 	brcmusb_xhci_soft_reset(params, 1);
-	USB_CTRL_SET(params->ctrl_regs, USB30_PCTL, PHY3_IDDQ_OVERRIDE);
+	USB_CTRL_SET(params->regs[BRCM_REGS_CTRL], USB30_PCTL,
+		     PHY3_IDDQ_OVERRIDE);
 }
 
 static int usb_get_dual_select(struct brcm_usb_init_params *params)
 {
-	void __iomem *ctrl = params->ctrl_regs;
+	void __iomem *ctrl = params->regs[BRCM_REGS_CTRL];
 	u32 reg = 0;
 
 	pr_debug("%s\n", __func__);
@@ -963,7 +964,7 @@ static int usb_get_dual_select(struct brcm_usb_init_params *params)
 
 static void usb_set_dual_select(struct brcm_usb_init_params *params, int mode)
 {
-	void __iomem *ctrl = params->ctrl_regs;
+	void __iomem *ctrl = params->regs[BRCM_REGS_CTRL];
 	u32 reg;
 
 	pr_debug("%s\n", __func__);
@@ -980,7 +981,7 @@ static void usb_set_dual_select(struct brcm_usb_init_params *params, int mode)
 static void usb_wake_enable(struct brcm_usb_init_params *params,
 			  int enable)
 {
-	void __iomem *ctrl = params->ctrl_regs;
+	void __iomem *ctrl = params->regs[BRCM_REGS_CTRL];
 
 	if (enable)
 		USB_CTRL_SET(ctrl, USB_PM, RMTWKUP_EN);
diff --git a/drivers/phy/broadcom/phy-brcm-usb-init.h b/drivers/phy/broadcom/phy-brcm-usb-init.h
index 571ccae48e3f..66363b04d778 100644
--- a/drivers/phy/broadcom/phy-brcm-usb-init.h
+++ b/drivers/phy/broadcom/phy-brcm-usb-init.h
@@ -6,12 +6,21 @@
 #ifndef _USB_BRCM_COMMON_INIT_H
 #define _USB_BRCM_COMMON_INIT_H
 
+#include <linux/regmap.h>
+
 #define USB_CTLR_MODE_HOST 0
 #define USB_CTLR_MODE_DEVICE 1
 #define USB_CTLR_MODE_DRD 2
 #define USB_CTLR_MODE_TYPEC_PD 3
 
-struct  brcm_usb_init_params;
+enum brcmusb_reg_sel {
+	BRCM_REGS_CTRL = 0,
+	BRCM_REGS_XHCI_EC,
+	BRCM_REGS_XHCI_GBL,
+	BRCM_REGS_USB_PHY,
+	BRCM_REGS_USB_MDIO,
+	BRCM_REGS_MAX
+};
 
 #define USB_CTRL_REG(base, reg)	((void *)base + USB_CTRL_##reg)
 #define USB_XHCI_EC_REG(base, reg) ((void *)base + USB_XHCI_EC_##reg)
@@ -41,9 +50,7 @@ struct brcm_usb_init_ops {
 };
 
 struct  brcm_usb_init_params {
-	void __iomem *ctrl_regs;
-	void __iomem *xhci_ec_regs;
-	void __iomem *xhci_gbl_regs;
+	void __iomem *regs[BRCM_REGS_MAX];
 	int ioc;
 	int ipp;
 	int mode;
@@ -53,10 +60,12 @@ struct  brcm_usb_init_params {
 	const char *family_name;
 	const u32 *usb_reg_bits_map;
 	const struct brcm_usb_init_ops *ops;
+	struct regmap *syscon_piarbctl;
 };
 
 void brcm_usb_dvr_init_7445(struct brcm_usb_init_params *params);
 void brcm_usb_dvr_init_7216(struct brcm_usb_init_params *params);
+void brcm_usb_dvr_init_7211b0(struct brcm_usb_init_params *params);
 
 static inline u32 brcm_usb_readl(void __iomem *addr)
 {
diff --git a/drivers/phy/broadcom/phy-brcm-usb.c b/drivers/phy/broadcom/phy-brcm-usb.c
index 7df2f7052cb6..b16b72a04eb4 100644
--- a/drivers/phy/broadcom/phy-brcm-usb.c
+++ b/drivers/phy/broadcom/phy-brcm-usb.c
@@ -16,6 +16,7 @@
 #include <linux/interrupt.h>
 #include <linux/soc/brcmstb/brcmstb.h>
 #include <dt-bindings/phy/phy.h>
+#include <linux/mfd/syscon.h>
 
 #include "phy-brcm-usb-init.h"
 
@@ -32,6 +33,11 @@ struct value_to_name_map {
 	const char *name;
 };
 
+struct match_chip_info {
+	void *init_func;
+	u8 required_regs[BRCM_REGS_MAX + 1];
+};
+
 static struct value_to_name_map brcm_dr_mode_to_name[] = {
 	{ USB_CTLR_MODE_HOST, "host" },
 	{ USB_CTLR_MODE_DEVICE, "peripheral" },
@@ -64,6 +70,10 @@ struct brcm_usb_phy_data {
 	struct brcm_usb_phy	phys[BRCM_USB_PHY_ID_MAX];
 };
 
+static s8 *node_reg_names[BRCM_REGS_MAX] = {
+	"crtl", "xhci_ec", "xhci_gbl", "usb_phy", "usb_mdio"
+};
+
 static irqreturn_t brcm_usb_phy_wake_isr(int irq, void *dev_id)
 {
 	struct phy *gphy = dev_id;
@@ -241,15 +251,86 @@ static const struct attribute_group brcm_usb_phy_group = {
 	.attrs = brcm_usb_phy_attrs,
 };
 
+static struct match_chip_info chip_info_7216 = {
+	.init_func = &brcm_usb_dvr_init_7216,
+	.required_regs = {
+		BRCM_REGS_CTRL,
+		BRCM_REGS_XHCI_EC,
+		BRCM_REGS_XHCI_GBL,
+		-1,
+	},
+};
+
+static struct match_chip_info chip_info_7211b0 = {
+	.init_func = &brcm_usb_dvr_init_7211b0,
+	.required_regs = {
+		BRCM_REGS_CTRL,
+		BRCM_REGS_XHCI_EC,
+		BRCM_REGS_XHCI_GBL,
+		BRCM_REGS_USB_PHY,
+		BRCM_REGS_USB_MDIO,
+		-1,
+	},
+};
+
+static struct match_chip_info chip_info_7445 = {
+	.init_func = &brcm_usb_dvr_init_7445,
+	.required_regs = {
+		BRCM_REGS_CTRL,
+		BRCM_REGS_XHCI_EC,
+		-1,
+	},
+};
+
 static const struct of_device_id brcm_usb_dt_ids[] = {
 	{
 		.compatible = "brcm,bcm7216-usb-phy",
-		.data = &brcm_usb_dvr_init_7216,
+		.data = &chip_info_7216,
+	},
+	{
+		.compatible = "brcm,bcm7211-usb-phy",
+		.data = &chip_info_7211b0,
+	},
+	{
+		.compatible = "brcm,brcmstb-usb-phy",
+		.data = &chip_info_7445,
 	},
-	{ .compatible = "brcm,brcmstb-usb-phy" },
 	{ /* sentinel */ }
 };
 
+static int brcm_usb_get_regs(struct platform_device *pdev,
+			     enum brcmusb_reg_sel regs,
+			     struct  brcm_usb_init_params *ini)
+{
+	struct resource *res;
+
+	/* Older DT nodes have ctrl and optional xhci_ec by index only */
+	res = platform_get_resource_byname(pdev, IORESOURCE_MEM,
+						node_reg_names[regs]);
+	if (res == NULL) {
+		if (regs == BRCM_REGS_CTRL) {
+			res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+		} else if (regs == BRCM_REGS_XHCI_EC) {
+			res = platform_get_resource(pdev, IORESOURCE_MEM, 1);
+			/* XHCI_EC registers are optional */
+			if (res == NULL)
+				return 0;
+		}
+		if (res == NULL) {
+			dev_err(&pdev->dev, "can't get %s base address\n",
+				node_reg_names[regs]);
+			return 1;
+		}
+	}
+	ini->regs[regs] = devm_ioremap_resource(&pdev->dev, res);
+	if (IS_ERR(ini->regs[regs])) {
+		dev_err(&pdev->dev, "can't map %s register space\n",
+			node_reg_names[regs]);
+		return 1;
+	}
+	return 0;
+}
+
 static int brcm_usb_phy_dvr_init(struct platform_device *pdev,
 				 struct brcm_usb_phy_data *priv,
 				 struct device_node *dn)
@@ -323,9 +404,6 @@ static int brcm_usb_phy_dvr_init(struct platform_device *pdev,
 
 static int brcm_usb_phy_probe(struct platform_device *pdev)
 {
-	struct resource *res_ctrl;
-	struct resource *res_xhciec = NULL;
-	struct resource *res_xhcigbl = NULL;
 	struct device *dev = &pdev->dev;
 	struct brcm_usb_phy_data *priv;
 	struct phy_provider *phy_provider;
@@ -333,6 +411,10 @@ static int brcm_usb_phy_probe(struct platform_device *pdev)
 	int err;
 	const char *mode;
 	const struct of_device_id *match;
+	void (*dvr_init)(struct brcm_usb_init_params *params);
+	const struct match_chip_info *info;
+	struct regmap *rmap;
+	int x;
 
 	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
 	if (!priv)
@@ -343,58 +425,13 @@ static int brcm_usb_phy_probe(struct platform_device *pdev)
 	priv->ini.product_id = brcmstb_get_product_id();
 
 	match = of_match_node(brcm_usb_dt_ids, dev->of_node);
-	if (match && match->data) {
-		void (*dvr_init)(struct brcm_usb_init_params *params);
-
-		dvr_init = match->data;
-		(*dvr_init)(&priv->ini);
-	} else {
-		brcm_usb_dvr_init_7445(&priv->ini);
-	}
+	info = match->data;
+	dvr_init = info->init_func;
+	(*dvr_init)(&priv->ini);
 
 	dev_dbg(dev, "Best mapping table is for %s\n",
 		priv->ini.family_name);
 
-	/* Newer DT node has reg-names. xhci_ec and xhci_gbl are optional. */
-	res_ctrl = platform_get_resource_byname(pdev, IORESOURCE_MEM, "ctrl");
-	if (res_ctrl != NULL) {
-		res_xhciec = platform_get_resource_byname(pdev,
-							  IORESOURCE_MEM,
-							  "xhci_ec");
-		res_xhcigbl = platform_get_resource_byname(pdev,
-							   IORESOURCE_MEM,
-							   "xhci_gbl");
-	} else {
-		/* Older DT node without reg-names, use index */
-		res_ctrl = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-		if (res_ctrl == NULL) {
-			dev_err(dev, "can't get CTRL base address\n");
-			return -EINVAL;
-		}
-		res_xhciec = platform_get_resource(pdev, IORESOURCE_MEM, 1);
-	}
-	priv->ini.ctrl_regs = devm_ioremap_resource(dev, res_ctrl);
-	if (IS_ERR(priv->ini.ctrl_regs)) {
-		dev_err(dev, "can't map CTRL register space\n");
-		return -EINVAL;
-	}
-	if (res_xhciec) {
-		priv->ini.xhci_ec_regs =
-			devm_ioremap_resource(dev, res_xhciec);
-		if (IS_ERR(priv->ini.xhci_ec_regs)) {
-			dev_err(dev, "can't map XHCI EC register space\n");
-			return -EINVAL;
-		}
-	}
-	if (res_xhcigbl) {
-		priv->ini.xhci_gbl_regs =
-			devm_ioremap_resource(dev, res_xhcigbl);
-		if (IS_ERR(priv->ini.xhci_gbl_regs)) {
-			dev_err(dev, "can't map XHCI Global register space\n");
-			return -EINVAL;
-		}
-	}
-
 	of_property_read_u32(dn, "brcm,ipp", &priv->ini.ipp);
 	of_property_read_u32(dn, "brcm,ioc", &priv->ini.ioc);
 
@@ -410,6 +447,16 @@ static int brcm_usb_phy_probe(struct platform_device *pdev)
 	if (of_property_read_bool(dn, "brcm,has-eohci"))
 		priv->has_eohci = true;
 
+	for (x = 0; x < BRCM_REGS_MAX; x++) {
+		if (info->required_regs[x] >= BRCM_REGS_MAX)
+			break;
+
+		err = brcm_usb_get_regs(pdev, info->required_regs[x],
+					&priv->ini);
+		if (err)
+			return -EINVAL;
+	}
+
 	err = brcm_usb_phy_dvr_init(pdev, priv, dn);
 	if (err)
 		return err;
@@ -429,6 +476,12 @@ static int brcm_usb_phy_probe(struct platform_device *pdev)
 	if (err)
 		dev_warn(dev, "Error creating sysfs attributes\n");
 
+	/* Get piarbctl syscon if it exists */
+	rmap = syscon_regmap_lookup_by_phandle(dev->of_node,
+						 "syscon-piarbctl");
+	if (!IS_ERR(rmap))
+		priv->ini.syscon_piarbctl = rmap;
+
 	/* start with everything off */
 	if (priv->has_xhci)
 		brcm_usb_uninit_xhci(&priv->ini);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
