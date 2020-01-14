Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B738C13B038
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 18:03:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=q7sSTbWDr8Tec6K2bihQLgf9/npka6wLN5s9wGNRGdk=; b=h4kWzh/pWJ/r2q
	sfuIyPflzbbK5V20Uk1+vSParC/QdsYiCRJokGem1oAJIwswHBJUOoE89iBQAkILsClQ3b0RI4Gr0
	K9KYTTHe4i07r+h7Tb01bY8n1koW4oiX/bqtN4hO1xE48HiNHyL1phGYTQL55IJhgOJ9KVh2E1OgO
	UIx6MSS0B2WLpK6plkfMRT35vM2wiHmiwjJWry56yDMOQrtnGc7af41h1z5tUnk7I7ZgdbpAqOMXa
	jFfsvzlMgha8aphH7MpZ19fVnRJgSJofc1ICSId6Mq9NHJwNYEyCzrry01o3KQLIr6ivLqDVtTZHo
	FCEcwFB8n2qCBymNSNnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irPag-0005fL-Ta; Tue, 14 Jan 2020 17:02:54 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irPaX-0005eG-Bx
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 17:02:49 +0000
Received: by mail-pl1-x644.google.com with SMTP id az3so5458988plb.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Jan 2020 09:02:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3+lga2oB8K5Ss2Uu6yNflYDGPUmZeE6SY/JusL2fAR8=;
 b=X0z4Ei56FLn458HWuargVdl+kd8CHVATzwkQ7yugIsxLYSRyj7Ysp6xewUSmHBocpW
 8XIX/B8KRRqdOsLk4Rjk6cFn3C+Rf0k6romlEZaCJsSvMYsIs4cgdpgWooTSlWm1+Mzc
 sNvzQIUL0uBzRRFVV5y4XeanmNpoP25Rs+Rf3I0dwmSmTC/lyN2qRxFEM/8pnqRY/Oqd
 bUec9PsIO2d36BCVfDpACU+ioRlgGUNhgw2vlvwOugDPJZqHPC6peiCNjqS+KupYpuov
 UmbDYTPyavTOye4In6KFO3a9YLfJnHLyeVP1fn9ogNmN+hLjpBl7wkAgIKHJI8lAIG0h
 Hneg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3+lga2oB8K5Ss2Uu6yNflYDGPUmZeE6SY/JusL2fAR8=;
 b=RCN8LAjTpuoOTGvydoZfx6UXYNv3zQSFDOKcQlDjuacdnmfbyTV6ON8lNgGrbdXfSO
 e0PC0W8R05i8WeNe9hK+/r8tyMr/ggpJFo6zT4FiqSkBswZmQBBOjB2NUr8e3joxJhv7
 SmuQ780FuSD3dl2EnG3VcymmPLN4CjHlsjHoXdrFaeGhgEXvdsQuUlxdJworCnE4PNQr
 b/NirU0mklYYHaLL1m/TbTx5U3Hx5KZzSrtYiCX73goPfA2dHmpcjcB/GVzwRbtBmAUA
 Ph0k94GETb4KSGeroCuKwwUBUbuZjXDVCtoOgyRq/ENF/CZSQhlYYH8NuZ6TmDUBkTQ5
 8YRg==
X-Gm-Message-State: APjAAAXFxgzv1nlAst3R6dqHzByz49WXlAvGfQKN5dkQgidh74xKI9rp
 U4M58KLhTHjHHtcd9UKT7K4=
X-Google-Smtp-Source: APXvYqxFUIKh/fr1rGtVIHfPs5AXKPCZiAnvlSg0dzBq1NcpbElJqq90X2OA7RaV9kWCUHUgwmwxKw==
X-Received: by 2002:a17:902:8642:: with SMTP id
 y2mr26704047plt.306.1579021364635; 
 Tue, 14 Jan 2020 09:02:44 -0800 (PST)
Received: from localhost.localdomain (c-67-165-113-11.hsd1.wa.comcast.net.
 [67.165.113.11])
 by smtp.gmail.com with ESMTPSA id 3sm18686345pfi.13.2020.01.14.09.02.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Jan 2020 09:02:43 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
To: linux-pci@vger.kernel.org
Subject: [PATCH] PCI: imx6: Add L1SS support for i.MX8MQ
Date: Tue, 14 Jan 2020 09:02:31 -0800
Message-Id: <20200114170231.16421-1-andrew.smirnov@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_090245_410460_DE565B5E 
X-CRM114-Status: GOOD (  14.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andrew.smirnov[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arm-kernel@lists.infradead.org,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Richard Zhu <hongxing.zhu@nxp.com>, Andrey Smirnov <andrew.smirnov@gmail.com>,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com,
 Bjorn Helgaas <bhelgaas@google.com>, Chris Healy <cphealy@gmail.com>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add code to configure PCI IP block to utilize supported ASPM features.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>
Cc: Chris Healy <cphealy@gmail.com>
Cc: Lucas Stach <l.stach@pengutronix.de>
Cc: Richard Zhu <hongxing.zhu@nxp.com>
Cc: linux-imx@nxp.com
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
Cc: linux-pci@vger.kernel.org
---
 drivers/pci/controller/dwc/pci-imx6.c | 72 ++++++++++++++++++++++-----
 1 file changed, 60 insertions(+), 12 deletions(-)

diff --git a/drivers/pci/controller/dwc/pci-imx6.c b/drivers/pci/controller/dwc/pci-imx6.c
index acfbd34032a8..3cc94ab7d22b 100644
--- a/drivers/pci/controller/dwc/pci-imx6.c
+++ b/drivers/pci/controller/dwc/pci-imx6.c
@@ -40,6 +40,9 @@
 #define IMX8MQ_GPR12_PCIE2_CTRL_DEVICE_TYPE	GENMASK(11, 8)
 #define IMX8MQ_PCIE2_BASE_ADDR			0x33c00000

+#define IMX8MQ_PCIE_LINK_CAP_L1EL_64US		(0x6 << 15)
+#define IMX8MQ_PCIE_CTRL_APPS_CLK_REQ		BIT(4)
+
 #define to_imx6_pcie(x)	dev_get_drvdata((x)->dev)

 enum imx6_pcie_variants {
@@ -64,12 +67,14 @@ struct imx6_pcie {
 	struct dw_pcie		*pci;
 	int			reset_gpio;
 	bool			gpio_active_high;
+	bool			supports_clkreq;
 	struct clk		*pcie_bus;
 	struct clk		*pcie_phy;
 	struct clk		*pcie_inbound_axi;
 	struct clk		*pcie;
 	struct clk		*pcie_aux;
 	struct regmap		*iomuxc_gpr;
+	struct regmap		*src;
 	u32			controller_id;
 	struct reset_control	*pciephy_reset;
 	struct reset_control	*apps_reset;
@@ -421,11 +426,17 @@ static unsigned int imx6_pcie_grp_offset(const struct imx6_pcie *imx6_pcie)
 	return imx6_pcie->controller_id == 1 ? IOMUXC_GPR16 : IOMUXC_GPR14;
 }

+static unsigned int
+imx6_pcie_pciphy_rcr_offset(const struct imx6_pcie *imx6_pcie)
+{
+	WARN_ON(imx6_pcie->drvdata->variant != IMX8MQ);
+	return imx6_pcie->controller_id == 1 ? 0x48 : 0x2C;
+}
+
 static int imx6_pcie_enable_ref_clk(struct imx6_pcie *imx6_pcie)
 {
 	struct dw_pcie *pci = imx6_pcie->pci;
 	struct device *dev = pci->dev;
-	unsigned int offset;
 	int ret = 0;

 	switch (imx6_pcie->drvdata->variant) {
@@ -463,17 +474,19 @@ static int imx6_pcie_enable_ref_clk(struct imx6_pcie *imx6_pcie)
 			break;
 		}

-		offset = imx6_pcie_grp_offset(imx6_pcie);
-		/*
-		 * Set the over ride low and enabled
-		 * make sure that REF_CLK is turned on.
-		 */
-		regmap_update_bits(imx6_pcie->iomuxc_gpr, offset,
-				   IMX8MQ_GPR_PCIE_CLK_REQ_OVERRIDE,
-				   0);
-		regmap_update_bits(imx6_pcie->iomuxc_gpr, offset,
-				   IMX8MQ_GPR_PCIE_CLK_REQ_OVERRIDE_EN,
-				   IMX8MQ_GPR_PCIE_CLK_REQ_OVERRIDE_EN);
+		if (!imx6_pcie->supports_clkreq) {
+			unsigned int offset = imx6_pcie_grp_offset(imx6_pcie);
+			/*
+			 * Set the over ride low and enabled
+			 * make sure that REF_CLK is turned on.
+			 */
+			regmap_update_bits(imx6_pcie->iomuxc_gpr, offset,
+					   IMX8MQ_GPR_PCIE_CLK_REQ_OVERRIDE,
+					   0);
+			regmap_update_bits(imx6_pcie->iomuxc_gpr, offset,
+					 IMX8MQ_GPR_PCIE_CLK_REQ_OVERRIDE_EN,
+					 IMX8MQ_GPR_PCIE_CLK_REQ_OVERRIDE_EN);
+		}
 		break;
 	}

@@ -547,6 +560,27 @@ static void imx6_pcie_deassert_core_reset(struct imx6_pcie *imx6_pcie)
 	switch (imx6_pcie->drvdata->variant) {
 	case IMX8MQ:
 		reset_control_deassert(imx6_pcie->pciephy_reset);
+		if (imx6_pcie->supports_clkreq) {
+			u32 lcr;
+
+			regmap_update_bits(imx6_pcie->src,
+				imx6_pcie_pciphy_rcr_offset(imx6_pcie),
+				IMX8MQ_PCIE_CTRL_APPS_CLK_REQ,
+				IMX8MQ_PCIE_CTRL_APPS_CLK_REQ);
+			/*
+			 * Configure the L1 latency of rc to less than
+			 * 64us Otherwise, the L1/L1SUB wouldn't be
+			 * enable by ASPM.
+			 */
+			dw_pcie_dbi_ro_wr_en(pci);
+
+			lcr  = dw_pcie_readl_dbi2(pci, PCIE_RC_LCR);
+			lcr &= ~PCI_EXP_LNKCAP_L1EL;
+			lcr |= IMX8MQ_PCIE_LINK_CAP_L1EL_64US;
+			dw_pcie_writel_dbi2(pci, PCIE_RC_LCR, lcr);
+
+			dw_pcie_dbi_ro_wr_dis(pci);
+		}
 		break;
 	case IMX7D:
 		reset_control_deassert(imx6_pcie->pciephy_reset);
@@ -1054,6 +1088,11 @@ static int imx6_pcie_probe(struct platform_device *pdev)
 	pci->dbi_base = devm_ioremap_resource(dev, dbi_base);
 	if (IS_ERR(pci->dbi_base))
 		return PTR_ERR(pci->dbi_base);
+	/*
+	 * Configure dbi_base2 to access DBI space with CS2
+	 * asserted
+	 */
+	pci->dbi_base2 = pci->dbi_base + SZ_1M;

 	/* Fetch GPIOs */
 	imx6_pcie->reset_gpio = of_get_named_gpio(node, "reset-gpio", 0);
@@ -1107,6 +1146,13 @@ static int imx6_pcie_probe(struct platform_device *pdev)
 			dev_err(dev, "pcie_aux clock source missing or invalid\n");
 			return PTR_ERR(imx6_pcie->pcie_aux);
 		}
+		imx6_pcie->src =
+			syscon_regmap_lookup_by_compatible("fsl,imx8mq-src");
+		if (IS_ERR(imx6_pcie->src)) {
+			dev_err(dev, "SRC regmap is missing or invalid\n");
+			return PTR_ERR(imx6_pcie->src);
+		}
+
 		/* fall through */
 	case IMX7D:
 		if (dbi_base->start == IMX8MQ_PCIE2_BASE_ADDR)
@@ -1179,6 +1225,8 @@ static int imx6_pcie_probe(struct platform_device *pdev)
 		imx6_pcie->vpcie = NULL;
 	}

+	imx6_pcie->supports_clkreq = of_property_read_bool(node,
+							   "supports-clkreq");
 	platform_set_drvdata(pdev, imx6_pcie);

 	ret = imx6_pcie_attach_pd(dev);
--
2.21.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
