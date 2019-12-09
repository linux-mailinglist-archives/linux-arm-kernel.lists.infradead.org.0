Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C08151178C2
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 22:45:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wtIhOinbm/U3O6Vrot3fZEwLHn+277r2BLQDxrP+dz0=; b=BO7Rk/O/FILu7VNWqbI++KEHC3
	Fm59k+BtbuvwTgHlxT8LirDtWMSyqLqPE/7jW8PPoWl62qcrZiGY1twEdtF5N10Ug1VfJZEdYzqlU
	FOuR8hvXheRdqPdO5kud2F1K7WUz7gC9aDPl3aAaOQ43K3XSYeXjvLo3APgLn/p/OdIu+B6I/s/Qq
	MaUuAoKnBh5rWCbrhOwMLuCgWlrN5nzh60gqb35a9HGlUjxsd0JtUj3s/nTMeBCX3epe7Ewzn9Val
	MAP6g/z/wyYldOmYl5CHaTO2XzzoPC/x2x+Rc/fANpLliz1K1QeULrt0HF/jwE9hu8kfCYXB6Bjhy
	dNhFIkTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieQqI-0001no-EK; Mon, 09 Dec 2019 21:45:22 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieQp1-000840-6T
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 21:44:05 +0000
Received: by mail-wm1-x342.google.com with SMTP id g206so969225wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Dec 2019 13:44:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=+hMwPgRaMykXSn7DE5c3kA8l5sH3/EjUvphsNHwNa6U=;
 b=Nx8lgnaXYR7FRbTet4K3Hj2WqOXWSVkfBrJjNrwWpn8cC7LaRECvSR7ZrGYBi0L3S9
 kqaDJMcGzp+g1OzOSExum3gbiSGIcFyC6X8WKYlS6kOVOp5jnUqTyTS9krfb8zon0sYv
 kqtZKfqXIbxBjXIQSaGQOyJLm214gN9wy4L0WJl6iwBxdkaimrHCKaz6pidt+pEWHpIz
 0u8Z1FFQ2NtfR3bAvq51emkBCVMUOOS51+x57dQlDtDiQQChfUDY+kj9i/5zEYhCE8WD
 9EpRQiR2SDue+kaOhCpZws6exbvVrxbXxAhDMNu622oYmTgpjRKgu8OPT1SZN0ITK1Kh
 b7EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=+hMwPgRaMykXSn7DE5c3kA8l5sH3/EjUvphsNHwNa6U=;
 b=UnbR16M0LhwUNoYo2ajT9XIjXqFMbjNKakzQWO9x2ZslIMJ6FvLWgEfkQ01LNNQlNT
 m5Lb0ogprmp66fxklmgMLqN2ouAheS38SfAlLfHQS6FMdJl1vXXk772x7u075CbdMs3G
 q/BYV36/3h7HAYNf6DPswIsviuonVIt6SJCglO7CIAnutilWbic1FG6IJjL+38E9qavm
 ZDDl7szbH+jEcgkaZyGyCAssOCPyVbgxuzsTneZiEuQQJdX0ad+xCUGFmIY8QNgJ5ODN
 Omn8+ZEBtyipNG5tIa2lusWzHZG3+dsU2NwWavM2duEgTZ6XOMM2z/0HiT3yQBGTqyzO
 ipGA==
X-Gm-Message-State: APjAAAWoYNqvTvyg/3Lil5kbVyRD1ifgLTpESfLlO3opscxt9j4ufTgj
 h3rHaCg73ycCUYBzaMeOQ2A=
X-Google-Smtp-Source: APXvYqwVgdmKP4zjXl7W+Isfc6jiClMbcA8AkXLfQglyPTqlDIuV/4Sa3XG43cxb1dDdL59/n1zd3Q==
X-Received: by 2002:a7b:ca4b:: with SMTP id m11mr1192590wml.74.1575927841659; 
 Mon, 09 Dec 2019 13:44:01 -0800 (PST)
Received: from stbsrv-and-01.and.broadcom.net ([192.19.231.250])
 by smtp.gmail.com with ESMTPSA id z6sm757714wmz.12.2019.12.09.13.43.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Dec 2019 13:44:00 -0800 (PST)
From: Al Cooper <alcooperx@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 resend 04/13] phy: usb: Add "wake on" functionality
Date: Mon,  9 Dec 2019 16:42:40 -0500
Message-Id: <20191209214249.41137-5-alcooperx@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191209214249.41137-1-alcooperx@gmail.com>
References: <20191209214249.41137-1-alcooperx@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_134403_265144_CF79F1AE 
X-CRM114-Status: GOOD (  21.26  )
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

Add the ability to handle USB wake events from USB devices when
in S2 mode. Typically there is some additional configuration
needed to tell the USB device to generate the wake event when
suspended but this varies with the different USB device classes.
For example, on USB Ethernet dongles, ethtool should be used to
enable the magic packet wake functionality in the dongle.
NOTE:  This requires that the "power/wakeup" sysfs entry for
the USB device generating the wakeup be set to "enabled".

This functionality requires a special hardware sideband path that
will trigger the AON_PM_L2 interrupt needed to wake the system from
S2 even though the USB host controllers are in IDDQ (low power state)
and most USB related clocks are shut off. For the sideband signaling
to work we need to leave the usbx_freerun clock running, but this
clock consumes very little power by design. There's a bug in the
XHCI wake hardware so only EHCI/OHCI wake is currently supported.

Signed-off-by: Al Cooper <alcooperx@gmail.com>
---
 drivers/phy/broadcom/phy-brcm-usb-init.c | 17 +++++++++
 drivers/phy/broadcom/phy-brcm-usb-init.h |  1 +
 drivers/phy/broadcom/phy-brcm-usb.c      | 48 ++++++++++++++++++++++--
 3 files changed, 63 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/broadcom/phy-brcm-usb-init.c b/drivers/phy/broadcom/phy-brcm-usb-init.c
index 0e6b921072be..6ad5978ded9b 100644
--- a/drivers/phy/broadcom/phy-brcm-usb-init.c
+++ b/drivers/phy/broadcom/phy-brcm-usb-init.c
@@ -58,6 +58,8 @@
 #define   USB_CTRL_USB_PM_SOFT_RESET_MASK		0x40000000 /* option */
 #define   USB_CTRL_USB_PM_USB20_HC_RESETB_MASK		0x30000000 /* option */
 #define   USB_CTRL_USB_PM_USB20_HC_RESETB_VAR_MASK	0x00300000 /* option */
+#define   USB_CTRL_USB_PM_RMTWKUP_EN_MASK		0x00000001
+#define USB_CTRL_USB_PM_STATUS		0x38
 #define USB_CTRL_USB30_CTL1		0x60
 #define   USB_CTRL_USB30_CTL1_PHY3_PLL_SEQ_START_MASK	0x00000010
 #define   USB_CTRL_USB30_CTL1_PHY3_RESETB_MASK		0x00010000
@@ -855,6 +857,10 @@ void brcm_usb_init_common(struct brcm_usb_init_params *params)
 	u32 reg;
 	void __iomem *ctrl = params->ctrl_regs;
 
+	/* Clear any pending wake conditions */
+	reg = brcmusb_readl(USB_CTRL_REG(ctrl, USB_PM_STATUS));
+	brcmusb_writel(reg, USB_CTRL_REG(ctrl, USB_PM_STATUS));
+
 	/* Take USB out of power down */
 	if (USB_CTRL_MASK_FAMILY(params, PLL_CTL, PLL_IDDQ_PWRDN)) {
 		USB_CTRL_UNSET_FAMILY(params, PLL_CTL, PLL_IDDQ_PWRDN);
@@ -1010,6 +1016,17 @@ void brcm_usb_uninit_xhci(struct brcm_usb_init_params *params)
 	USB_CTRL_SET(params->ctrl_regs, USB30_PCTL, PHY3_IDDQ_OVERRIDE);
 }
 
+void brcm_usb_wake_enable(struct brcm_usb_init_params *params,
+			  int enable)
+{
+	void __iomem *ctrl = params->ctrl_regs;
+
+	if (enable)
+		USB_CTRL_SET(ctrl, USB_PM, RMTWKUP_EN);
+	else
+		USB_CTRL_UNSET(ctrl, USB_PM, RMTWKUP_EN);
+}
+
 void brcm_usb_set_family_map(struct brcm_usb_init_params *params)
 {
 	int fam;
diff --git a/drivers/phy/broadcom/phy-brcm-usb-init.h b/drivers/phy/broadcom/phy-brcm-usb-init.h
index f4f4f6d5d258..f473e0c51f0b 100644
--- a/drivers/phy/broadcom/phy-brcm-usb-init.h
+++ b/drivers/phy/broadcom/phy-brcm-usb-init.h
@@ -38,5 +38,6 @@ void brcm_usb_init_xhci(struct brcm_usb_init_params *ini);
 void brcm_usb_uninit_common(struct brcm_usb_init_params *ini);
 void brcm_usb_uninit_eohci(struct brcm_usb_init_params *ini);
 void brcm_usb_uninit_xhci(struct brcm_usb_init_params *ini);
+void brcm_usb_wake_enable(struct brcm_usb_init_params *params, int enable);
 
 #endif /* _USB_BRCM_COMMON_INIT_H */
diff --git a/drivers/phy/broadcom/phy-brcm-usb.c b/drivers/phy/broadcom/phy-brcm-usb.c
index 634afc803778..cca04d60f2d2 100644
--- a/drivers/phy/broadcom/phy-brcm-usb.c
+++ b/drivers/phy/broadcom/phy-brcm-usb.c
@@ -57,11 +57,22 @@ struct brcm_usb_phy_data {
 	bool			has_xhci;
 	struct clk		*usb_20_clk;
 	struct clk		*usb_30_clk;
+	struct clk		*suspend_clk;
 	struct mutex		mutex;	/* serialize phy init */
 	int			init_count;
+	int			wake_irq;
 	struct brcm_usb_phy	phys[BRCM_USB_PHY_ID_MAX];
 };
 
+static irqreturn_t brcm_usb_phy_wake_isr(int irq, void *dev_id)
+{
+	struct phy *gphy = dev_id;
+
+	pm_wakeup_event(&gphy->dev, 0);
+
+	return IRQ_HANDLED;
+}
+
 static int brcm_usb_phy_init(struct phy *gphy)
 {
 	struct brcm_usb_phy *phy = phy_get_drvdata(gphy);
@@ -76,6 +87,7 @@ static int brcm_usb_phy_init(struct phy *gphy)
 	if (priv->init_count++ == 0) {
 		clk_prepare_enable(priv->usb_20_clk);
 		clk_prepare_enable(priv->usb_30_clk);
+		clk_prepare_enable(priv->suspend_clk);
 		brcm_usb_init_common(&priv->ini);
 	}
 	mutex_unlock(&priv->mutex);
@@ -108,6 +120,7 @@ static int brcm_usb_phy_exit(struct phy *gphy)
 		brcm_usb_uninit_common(&priv->ini);
 		clk_disable_unprepare(priv->usb_20_clk);
 		clk_disable_unprepare(priv->usb_30_clk);
+		clk_disable_unprepare(priv->suspend_clk);
 	}
 	mutex_unlock(&priv->mutex);
 	phy->inited = false;
@@ -228,11 +241,12 @@ static const struct attribute_group brcm_usb_phy_group = {
 	.attrs = brcm_usb_phy_attrs,
 };
 
-static int brcm_usb_phy_dvr_init(struct device *dev,
+static int brcm_usb_phy_dvr_init(struct platform_device *pdev,
 				 struct brcm_usb_phy_data *priv,
 				 struct device_node *dn)
 {
-	struct phy *gphy;
+	struct device *dev = &pdev->dev;
+	struct phy *gphy = NULL;
 	int err;
 
 	priv->usb_20_clk = of_clk_get_by_name(dn, "sw_usb");
@@ -275,6 +289,28 @@ static int brcm_usb_phy_dvr_init(struct device *dev,
 		if (err)
 			return err;
 	}
+
+	priv->suspend_clk = clk_get(dev, "usb0_freerun");
+	if (IS_ERR(priv->suspend_clk)) {
+		dev_err(dev, "Suspend Clock not found in Device Tree\n");
+		priv->suspend_clk = NULL;
+	}
+
+	priv->wake_irq = platform_get_irq_byname(pdev, "wake");
+	if (priv->wake_irq < 0)
+		priv->wake_irq = platform_get_irq_byname(pdev, "wakeup");
+	if (priv->wake_irq >= 0) {
+		err = devm_request_irq(dev, priv->wake_irq,
+				       brcm_usb_phy_wake_isr, 0,
+				       dev_name(dev), gphy);
+		if (err < 0)
+			return err;
+		device_set_wakeup_capable(dev, 1);
+	} else {
+		dev_info(dev,
+			 "Wake interrupt missing, system wake not supported\n");
+	}
+
 	return 0;
 }
 
@@ -335,7 +371,7 @@ static int brcm_usb_phy_probe(struct platform_device *pdev)
 	if (of_property_read_bool(dn, "brcm,has-eohci"))
 		priv->has_eohci = true;
 
-	err = brcm_usb_phy_dvr_init(dev, priv, dn);
+	err = brcm_usb_phy_dvr_init(pdev, priv, dn);
 	if (err)
 		return err;
 
@@ -386,10 +422,13 @@ static int brcm_usb_phy_suspend(struct device *dev)
 		if (priv->phys[BRCM_USB_PHY_2_0].inited)
 			brcm_usb_uninit_eohci(&priv->ini);
 		brcm_usb_uninit_common(&priv->ini);
+		brcm_usb_wake_enable(&priv->ini, true);
 		if (priv->phys[BRCM_USB_PHY_3_0].inited)
 			clk_disable_unprepare(priv->usb_30_clk);
 		if (priv->phys[BRCM_USB_PHY_2_0].inited)
 			clk_disable_unprepare(priv->usb_20_clk);
+		if (priv->wake_irq >= 0)
+			enable_irq_wake(priv->wake_irq);
 	}
 	return 0;
 }
@@ -400,6 +439,7 @@ static int brcm_usb_phy_resume(struct device *dev)
 
 	clk_prepare_enable(priv->usb_20_clk);
 	clk_prepare_enable(priv->usb_30_clk);
+	brcm_usb_wake_enable(&priv->ini, false);
 	brcm_usb_init_ipp(&priv->ini);
 
 	/*
@@ -407,6 +447,8 @@ static int brcm_usb_phy_resume(struct device *dev)
 	 * Uninitialize anything that wasn't previously initialized.
 	 */
 	if (priv->init_count) {
+		if (priv->wake_irq >= 0)
+			disable_irq_wake(priv->wake_irq);
 		brcm_usb_init_common(&priv->ini);
 		if (priv->phys[BRCM_USB_PHY_2_0].inited) {
 			brcm_usb_init_eohci(&priv->ini);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
