Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02BE41189B8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 14:27:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Hd/4IoyckKGyMjtrzF5pwkceoa0ko3gZBgJyZWjUgsU=; b=do/EFHJniOggWsMjDP52Sutzfb
	ZsyaNG2sJDqsidh6AxDwAK5uMc35MVf1mIK0KbyZBmmh+2JXCODQbbHfWVimKr/3Qn+C0oYPruaZA
	blXDVIFjz0c60FIpeFsXM7iOPQV0b+KCDAXJvSm06KrRIRdyZshdLWft9oglPjrtu24bpgmWfFSc4
	yZyrhadPQWKLN6kLno03+ZfSqdF3gH2YLnJHzJNxZiDg2cpCbBUSzWvX6yip+Uy+Ez/+tK0q5f6a7
	WwQMglPM0JDecxP5CMczzU4Vgy2G1QIE5r+FJQGviiywIvba0gGpW2rnOOwZ8Irsrk1KWaV5q4Trb
	2dE6nZMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iefXp-0005yr-Fk; Tue, 10 Dec 2019 13:27:17 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iefUb-0001eD-3L
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 13:23:59 +0000
Received: by mail-wm1-x342.google.com with SMTP id f129so3187455wmf.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Dec 2019 05:23:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=NMIPku7Id6cY5PbjsYD0XdUtPn2oJmMYiYLLk8AbSY8=;
 b=fJsSTPEU7WGGTpWWJ4KMWNyyBNu7rLRlIJXLeADrqfD07wx7qKZIsziCHOIiH8+ikm
 hQ5LewfnH6Kkb8ffkfgY12Ixgwy5oYlRN9SmrPqKmeH5vNFIAj5OExsTpeQRR2OzI3rB
 pvY5m+6cRWV5GRhKcJ2FBRHrHYZMtEmrOvOR6pt+aVmyfCPdd69z3SS+GFxE+AIvh0+J
 9RvnwK8LpGtoFg6Xu3AWIX42Db1nOm8uC6viA1yNFA+3SOfjlC1h6eIdWzlrvumbFZfw
 5C1DF3mApzT8yoCLrVy4/UnETV2cc6xWBXC+RMz6JDbDL8OUywXrr7kDXw6TaBVArAnt
 oPcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=NMIPku7Id6cY5PbjsYD0XdUtPn2oJmMYiYLLk8AbSY8=;
 b=R6LJt4OQOp0f2lDJbeIv1OPIatA2NgNkeJTX/CEI7x4xWbaVvPmvMgxWbDqxm3mHHX
 Tg8d1kKmcco9XRDt/8WE2xrTUF2Q0NNMkTpFeFovaEcDJy4khAIiGgWk648gen/eBiev
 glguKbTETKN68JNwVyIWiuaBhCCpT7uLe+uaCJoBrYri8HgHFX9qpQtt0mnHhhSJuXJJ
 RmptMPRvOPzp216lQ2XIZu6mqTY0CT5ziYOujssNoPcUKe5tJTPdpaJ4VTavKbHQ/2DN
 pUCh2rLorpei8Y+faX4blZU2PZYCbmys0VWEQrsGAgUyLI/ITOQt9PZbTydN5t7T/KQI
 TnwA==
X-Gm-Message-State: APjAAAXEyIvZxYp51pl+XppWGhR81qWcTv4av3rV1ELYj73xQE7x2o+h
 wNEbh41Hgq7z4br9fAfAdhQ=
X-Google-Smtp-Source: APXvYqyHpx/JI5H1jp0PzP7JCd9OE1Uh2lchLMgBDc22VNQox8RyvrWUFfYLGgUzsErMHUA3Lgt36g==
X-Received: by 2002:a05:600c:22d1:: with SMTP id
 17mr3585154wmg.23.1575984234711; 
 Tue, 10 Dec 2019 05:23:54 -0800 (PST)
Received: from stbsrv-and-01.and.broadcom.net ([192.19.231.250])
 by smtp.gmail.com with ESMTPSA id s82sm3101680wms.28.2019.12.10.05.23.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Dec 2019 05:23:54 -0800 (PST)
From: Al Cooper <alcooperx@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v3 13/13] phy: usb: Add support for wake and USB low power
 mode for 7211 S2/S5
Date: Tue, 10 Dec 2019 08:21:32 -0500
Message-Id: <20191210132132.41509-14-alcooperx@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191210132132.41509-1-alcooperx@gmail.com>
References: <20191210132132.41509-1-alcooperx@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_052357_220284_C2869CAA 
X-CRM114-Status: GOOD (  21.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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

Add support for 7211 USB wake. Disable all possible 7211 USB logic
for S2/S5 if USB wake is not enabled.

On the 7211, the XHCI wake signal was not connected properly and
only goes to the USB1_USB1_CTRL_TP_DIAG1 diagonstic register.
The workaround is to have VPU code running that polls for the
proper bit in the DIAG register and to wake the system when
the bit is asserted.

Signed-off-by: Al Cooper <alcooperx@gmail.com>
---
 .../phy/broadcom/phy-brcm-usb-init-synopsis.c | 77 +++++++++++++++++--
 drivers/phy/broadcom/phy-brcm-usb-init.c      | 26 ++++---
 drivers/phy/broadcom/phy-brcm-usb-init.h      | 11 +--
 drivers/phy/broadcom/phy-brcm-usb.c           | 25 ++++--
 4 files changed, 105 insertions(+), 34 deletions(-)

diff --git a/drivers/phy/broadcom/phy-brcm-usb-init-synopsis.c b/drivers/phy/broadcom/phy-brcm-usb-init-synopsis.c
index c6504649d307..a2f96fce8c2f 100644
--- a/drivers/phy/broadcom/phy-brcm-usb-init-synopsis.c
+++ b/drivers/phy/broadcom/phy-brcm-usb-init-synopsis.c
@@ -26,7 +26,6 @@
 #define   PIARBCTL_MISC_CAM1_MEM_PAGE_MASK		0x00000f00
 #define   PIARBCTL_MISC_CAM0_MEM_PAGE_MASK		0x000000f0
 #define   PIARBCTL_MISC_SATA_PRIORITY_MASK		0x0000000f
-#define PIARBCTL_USB_M_ASB_CTRL		0x10
 
 #define PIARBCTL_MISC_USB_ONLY_MASK		\
 	(PIARBCTL_MISC_USB_SELECT_MASK |	\
@@ -51,14 +50,27 @@
 #define USB_CTRL_USB_PM_STATUS		0x08
 #define USB_CTRL_USB_DEVICE_CTL1	0x10
 #define   USB_CTRL_USB_DEVICE_CTL1_PORT_MODE_MASK	0x00000003
+#define USB_CTRL_TEST_PORT_CTL		0x30
+#define   USB_CTRL_TEST_PORT_CTL_TPOUT_SEL_MASK	0x000000ff
+#define   USB_CTRL_TEST_PORT_CTL_TPOUT_SEL_PME_GEN_MASK	0x0000002e
+#define USB_CTRL_TP_DIAG1		0x34
+#define   USB_CTLR_TP_DIAG1_wake_MASK	0x00000002
+#define USB_CTRL_CTLR_CSHCR		0x50
+#define   USB_CTRL_CTLR_CSHCR_ctl_pme_en_MASK	0x00040000
 
 /* Register definitions for the USB_PHY block in 7211b0 */
+#define USB_PHY_PLL_CTL			0x00
+#define   USB_PHY_PLL_CTL_PLL_RESETB_MASK		0x40000000
 #define USB_PHY_PLL_LDO_CTL		0x08
 #define   USB_PHY_PLL_LDO_CTL_AFE_CORERDY_MASK		0x00000004
+#define   USB_PHY_PLL_LDO_CTL_AFE_LDO_PWRDWNB_MASK	0x00000002
+#define   USB_PHY_PLL_LDO_CTL_AFE_BG_PWRDWNB_MASK	0x00000001
 #define USB_PHY_UTMI_CTL_1		0x04
 #define   USB_PHY_UTMI_CTL_1_POWER_UP_FSM_EN_MASK	0x00000800
 #define   USB_PHY_UTMI_CTL_1_PHY_MODE_MASK		0x0000000c
 #define   USB_PHY_UTMI_CTL_1_PHY_MODE_SHIFT		2
+#define USB_PHY_IDDQ			0x1c
+#define   USB_PHY_IDDQ_phy_iddq_MASK			0x00000001
 #define USB_PHY_STATUS			0x20
 #define   USB_PHY_STATUS_pll_lock_MASK			0x00000001
 
@@ -199,6 +211,17 @@ static void usb_init_common(struct brcm_usb_init_params *params)
 	}
 }
 
+static void usb_wake_enable_7211b0(struct brcm_usb_init_params *params,
+				   bool enable)
+{
+	void __iomem *ctrl = params->regs[BRCM_REGS_CTRL];
+
+	if (enable)
+		USB_CTRL_SET(ctrl, CTLR_CSHCR, ctl_pme_en);
+	else
+		USB_CTRL_UNSET(ctrl, CTLR_CSHCR, ctl_pme_en);
+}
+
 static void usb_init_common_7211b0(struct brcm_usb_init_params *params)
 {
 	void __iomem *ctrl = params->regs[BRCM_REGS_CTRL];
@@ -210,9 +233,27 @@ static void usb_init_common_7211b0(struct brcm_usb_init_params *params)
 	if (params->syscon_piarbctl)
 		syscon_piarbctl_init(params->syscon_piarbctl);
 
+	USB_CTRL_UNSET(ctrl, USB_PM, USB_PWRDN);
+
+	usb_wake_enable_7211b0(params, false);
+	if (!params->wake_enabled) {
+
+		/* undo possible suspend settings */
+		brcm_usb_writel(0, usb_phy + USB_PHY_IDDQ);
+		reg = brcm_usb_readl(usb_phy + USB_PHY_PLL_CTL);
+		reg |= USB_PHY_PLL_CTL_PLL_RESETB_MASK;
+		brcm_usb_writel(reg, usb_phy + USB_PHY_PLL_CTL);
+
+		/* temporarily enable FSM so PHY comes up properly */
+		reg = brcm_usb_readl(usb_phy + USB_PHY_UTMI_CTL_1);
+		reg |= USB_PHY_UTMI_CTL_1_POWER_UP_FSM_EN_MASK;
+		brcm_usb_writel(reg, usb_phy + USB_PHY_UTMI_CTL_1);
+	}
+
 	/* Init the PHY */
-	reg = brcm_usb_readl(usb_phy + USB_PHY_PLL_LDO_CTL);
-	reg |= USB_PHY_PLL_LDO_CTL_AFE_CORERDY_MASK;
+	reg = USB_PHY_PLL_LDO_CTL_AFE_CORERDY_MASK |
+		USB_PHY_PLL_LDO_CTL_AFE_LDO_PWRDWNB_MASK |
+		USB_PHY_PLL_LDO_CTL_AFE_BG_PWRDWNB_MASK;
 	brcm_usb_writel(reg, usb_phy + USB_PHY_PLL_LDO_CTL);
 
 	/* wait for lock */
@@ -276,12 +317,36 @@ static void usb_uninit_common(struct brcm_usb_init_params *params)
 
 }
 
+static void usb_uninit_common_7211b0(struct brcm_usb_init_params *params)
+{
+	void __iomem *ctrl = params->regs[BRCM_REGS_CTRL];
+	void __iomem *usb_phy = params->regs[BRCM_REGS_USB_PHY];
+	u32 reg;
+
+	pr_debug("%s\n", __func__);
+
+	if (params->wake_enabled) {
+		USB_CTRL_SET(ctrl, TEST_PORT_CTL, TPOUT_SEL_PME_GEN);
+		usb_wake_enable_7211b0(params, true);
+	} else {
+		USB_CTRL_SET(ctrl, USB_PM, USB_PWRDN);
+		brcm_usb_writel(0, usb_phy + USB_PHY_PLL_LDO_CTL);
+		reg = brcm_usb_readl(usb_phy + USB_PHY_PLL_CTL);
+		reg &= ~USB_PHY_PLL_CTL_PLL_RESETB_MASK;
+		brcm_usb_writel(reg, usb_phy + USB_PHY_PLL_CTL);
+		brcm_usb_writel(USB_PHY_IDDQ_phy_iddq_MASK,
+				usb_phy + USB_PHY_IDDQ);
+	}
+
+}
+
 static void usb_uninit_xhci(struct brcm_usb_init_params *params)
 {
 
 	pr_debug("%s\n", __func__);
 
-	xhci_soft_reset(params, 1);
+	if (!params->wake_enabled)
+		xhci_soft_reset(params, 1);
 }
 
 static int usb_get_dual_select(struct brcm_usb_init_params *params)
@@ -309,7 +374,6 @@ static void usb_set_dual_select(struct brcm_usb_init_params *params, int mode)
 	brcm_usb_writel(reg, USB_CTRL_REG(ctrl, USB_DEVICE_CTL1));
 }
 
-
 static const struct brcm_usb_init_ops bcm7216_ops = {
 	.init_ipp = usb_init_ipp,
 	.init_common = usb_init_common,
@@ -324,7 +388,7 @@ static const struct brcm_usb_init_ops bcm7211b0_ops = {
 	.init_ipp = usb_init_ipp,
 	.init_common = usb_init_common_7211b0,
 	.init_xhci = usb_init_xhci,
-	.uninit_common = usb_uninit_common,
+	.uninit_common = usb_uninit_common_7211b0,
 	.uninit_xhci = usb_uninit_xhci,
 	.get_dual_select = usb_get_dual_select,
 	.set_dual_select = usb_set_dual_select,
@@ -346,4 +410,5 @@ void brcm_usb_dvr_init_7211b0(struct brcm_usb_init_params *params)
 
 	params->family_name = "7211";
 	params->ops = &bcm7211b0_ops;
+	params->suspend_with_clocks = true;
 }
diff --git a/drivers/phy/broadcom/phy-brcm-usb-init.c b/drivers/phy/broadcom/phy-brcm-usb-init.c
index 17acc3c1051b..9391ab42a12b 100644
--- a/drivers/phy/broadcom/phy-brcm-usb-init.c
+++ b/drivers/phy/broadcom/phy-brcm-usb-init.c
@@ -783,12 +783,24 @@ static void usb_init_ipp(struct brcm_usb_init_params *params)
 		msleep(50);
 }
 
+static void usb_wake_enable(struct brcm_usb_init_params *params,
+			  bool enable)
+{
+	void __iomem *ctrl = params->regs[BRCM_REGS_CTRL];
+
+	if (enable)
+		USB_CTRL_SET(ctrl, USB_PM, RMTWKUP_EN);
+	else
+		USB_CTRL_UNSET(ctrl, USB_PM, RMTWKUP_EN);
+}
+
 static void usb_init_common(struct brcm_usb_init_params *params)
 {
 	u32 reg;
 	void __iomem *ctrl = params->regs[BRCM_REGS_CTRL];
 
 	/* Clear any pending wake conditions */
+	usb_wake_enable(params, false);
 	reg = brcm_usb_readl(USB_CTRL_REG(ctrl, USB_PM_STATUS));
 	brcm_usb_writel(reg, USB_CTRL_REG(ctrl, USB_PM_STATUS));
 
@@ -935,6 +947,8 @@ static void usb_uninit_common(struct brcm_usb_init_params *params)
 
 	if (USB_CTRL_MASK_FAMILY(params, PLL_CTL, PLL_IDDQ_PWRDN))
 		USB_CTRL_SET_FAMILY(params, PLL_CTL, PLL_IDDQ_PWRDN);
+	if (params->wake_enabled)
+		usb_wake_enable(params, true);
 }
 
 static void usb_uninit_eohci(struct brcm_usb_init_params *params)
@@ -978,17 +992,6 @@ static void usb_set_dual_select(struct brcm_usb_init_params *params, int mode)
 	}
 }
 
-static void usb_wake_enable(struct brcm_usb_init_params *params,
-			  int enable)
-{
-	void __iomem *ctrl = params->regs[BRCM_REGS_CTRL];
-
-	if (enable)
-		USB_CTRL_SET(ctrl, USB_PM, RMTWKUP_EN);
-	else
-		USB_CTRL_UNSET(ctrl, USB_PM, RMTWKUP_EN);
-}
-
 static const struct brcm_usb_init_ops bcm7445_ops = {
 	.init_ipp = usb_init_ipp,
 	.init_common = usb_init_common,
@@ -999,7 +1002,6 @@ static const struct brcm_usb_init_ops bcm7445_ops = {
 	.uninit_xhci = usb_uninit_xhci,
 	.get_dual_select = usb_get_dual_select,
 	.set_dual_select = usb_set_dual_select,
-	.wake_enable = usb_wake_enable,
 };
 
 void brcm_usb_dvr_init_7445(struct brcm_usb_init_params *params)
diff --git a/drivers/phy/broadcom/phy-brcm-usb-init.h b/drivers/phy/broadcom/phy-brcm-usb-init.h
index 4cdd9cc1c5a3..899b9eb43fad 100644
--- a/drivers/phy/broadcom/phy-brcm-usb-init.h
+++ b/drivers/phy/broadcom/phy-brcm-usb-init.h
@@ -46,8 +46,6 @@ struct brcm_usb_init_ops {
 	void (*uninit_xhci)(struct brcm_usb_init_params *params);
 	int  (*get_dual_select)(struct brcm_usb_init_params *params);
 	void (*set_dual_select)(struct brcm_usb_init_params *params, int mode);
-	void (*wake_enable)(struct brcm_usb_init_params *params,
-			    int enable);
 };
 
 struct  brcm_usb_init_params {
@@ -62,6 +60,8 @@ struct  brcm_usb_init_params {
 	const u32 *usb_reg_bits_map;
 	const struct brcm_usb_init_ops *ops;
 	struct regmap *syscon_piarbctl;
+	bool wake_enabled;
+	bool suspend_with_clocks;
 };
 
 void brcm_usb_dvr_init_7445(struct brcm_usb_init_params *params);
@@ -145,13 +145,6 @@ static inline void brcm_usb_uninit_xhci(struct brcm_usb_init_params *ini)
 		ini->ops->uninit_xhci(ini);
 }
 
-static inline void brcm_usb_wake_enable(struct brcm_usb_init_params *ini,
-	int enable)
-{
-	if (ini->ops->wake_enable)
-		ini->ops->wake_enable(ini, enable);
-}
-
 static inline int brcm_usb_get_dual_select(struct brcm_usb_init_params *ini)
 {
 	if (ini->ops->get_dual_select)
diff --git a/drivers/phy/broadcom/phy-brcm-usb.c b/drivers/phy/broadcom/phy-brcm-usb.c
index 1ab44f54244b..491bbd46c5b3 100644
--- a/drivers/phy/broadcom/phy-brcm-usb.c
+++ b/drivers/phy/broadcom/phy-brcm-usb.c
@@ -535,16 +535,26 @@ static int brcm_usb_phy_suspend(struct device *dev)
 	struct brcm_usb_phy_data *priv = dev_get_drvdata(dev);
 
 	if (priv->init_count) {
+		priv->ini.wake_enabled = device_may_wakeup(dev);
 		if (priv->phys[BRCM_USB_PHY_3_0].inited)
 			brcm_usb_uninit_xhci(&priv->ini);
 		if (priv->phys[BRCM_USB_PHY_2_0].inited)
 			brcm_usb_uninit_eohci(&priv->ini);
 		brcm_usb_uninit_common(&priv->ini);
-		brcm_usb_wake_enable(&priv->ini, true);
-		if (priv->phys[BRCM_USB_PHY_3_0].inited)
-			clk_disable_unprepare(priv->usb_30_clk);
-		if (priv->phys[BRCM_USB_PHY_2_0].inited || !priv->has_eohci)
-			clk_disable_unprepare(priv->usb_20_clk);
+
+		/*
+		 * Handle the clocks unless needed for wake. This has
+		 * to work for both older XHCI->3.0-clks, EOHCI->2.0-clks
+		 * and newer XHCI->2.0-clks/3.0-clks.
+		 */
+
+		if (!priv->ini.suspend_with_clocks) {
+			if (priv->phys[BRCM_USB_PHY_3_0].inited)
+				clk_disable_unprepare(priv->usb_30_clk);
+			if (priv->phys[BRCM_USB_PHY_2_0].inited ||
+			    !priv->has_eohci)
+				clk_disable_unprepare(priv->usb_20_clk);
+		}
 		if (priv->wake_irq >= 0)
 			enable_irq_wake(priv->wake_irq);
 	}
@@ -557,7 +567,6 @@ static int brcm_usb_phy_resume(struct device *dev)
 
 	clk_prepare_enable(priv->usb_20_clk);
 	clk_prepare_enable(priv->usb_30_clk);
-	brcm_usb_wake_enable(&priv->ini, false);
 	brcm_usb_init_ipp(&priv->ini);
 
 	/*
@@ -579,6 +588,8 @@ static int brcm_usb_phy_resume(struct device *dev)
 		} else if (priv->has_xhci) {
 			brcm_usb_uninit_xhci(&priv->ini);
 			clk_disable_unprepare(priv->usb_30_clk);
+			if (!priv->has_eohci)
+				clk_disable_unprepare(priv->usb_20_clk);
 		}
 	} else {
 		if (priv->has_xhci)
@@ -589,7 +600,7 @@ static int brcm_usb_phy_resume(struct device *dev)
 		clk_disable_unprepare(priv->usb_20_clk);
 		clk_disable_unprepare(priv->usb_30_clk);
 	}
-
+	priv->ini.wake_enabled = false;
 	return 0;
 }
 #endif /* CONFIG_PM_SLEEP */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
