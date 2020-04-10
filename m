Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57DA71A3D85
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 02:48:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G9gnJzKYVwOWDDMyxoZzySIiadjc70anFBVHDjXGq60=; b=dxObgHrZSZQeRR
	3QzkG1HfPBd3oCQDCRIYfM9A0Vf80cA2Dtg2nKpaRsxOlQsLSY8lxrDaG5ms5FxKLUa1kIcwFV5pe
	rwFiL2EsdH93/G17DArGIw/eetusUkGQZgL6XU6sWCiTlQMXwGEj9Vx4qJLkE83rbm2pdn/85asvw
	4iHnqKQdi7IH+laBeiCKbO1xDOzBwzn2cz+XJlZfaqEj1k4IlulrOssAf3ff4kASh5N0mXArR5zzn
	Ny9plG9dgmTot6l1vZ8lor9uFFXnxmJdlDp9ECyv/MiGV+92g/2W8nqua8ZV26/RzNyCiSv+DVyyB
	1PYtGF4vC8WlcjzDN+7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMhqD-0002aY-9l; Fri, 10 Apr 2020 00:48:17 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMhpp-0002QK-WC
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Apr 2020 00:47:55 +0000
Received: by mail-ed1-x541.google.com with SMTP id cw6so525590edb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Apr 2020 17:47:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=w7akJQeZgBAyvPhH/ChJKlP3JYPIrxMAGcuficQZtxY=;
 b=iesyHr/hnvI62Ueqr1Zv1c7YEhMlo24XbPFHaXZ0BayN5Lx8TPOkxfj1b2NeKaO55Y
 Eh1Jz9v/+GVO0TtkxoF19Kf9MkYEtSv7yI2Dku7cALzGaP7qpPVhrveu/VVr2qrO/2Yn
 mkpzOJo5JHYel/0KxdPpUfh+f3A7repRDnJyuATFVvFJE/OFJdVayvc5EaHbiTH5r85N
 4MctnmC+wsVJblh6KMRqsC5MnzXrkPmF12N2q649moDDmhSe4TQQJItoMp7q7hGZvRrw
 VeBGT9qghaOJNFALVeGBNhRDUJZH7xk+oAwKAMyuF9sdxu4qV8+BOhCwbHN347nZsdDp
 muBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=w7akJQeZgBAyvPhH/ChJKlP3JYPIrxMAGcuficQZtxY=;
 b=ljAJYn0wN+cTJQlr23sPR3QZy4vZd3GAAVTgHiTa9D3JHcacEkl2fK0dl5RLCMROOD
 H9yBtpqMJWiO1jCyTMqhRw39Xh7AwmBhWVz6sXs5SNhE2cJx6vJ578gLE7dfB8JNEWvG
 z9lE7O0SxdrOCJJ621/cRIhev+7vyVNHaMf27Ho8ZL0Oo+g7LVT9exqRyruwC6p3FKw/
 KtY574sMbzV0DPntwpt3FI62HPznBXfnD7mtVTUDn/2WM3zumSkNFW4P6E2tJ5/4E7JY
 rgZsBJhMcy/hlSN8C388oe3FZg+CKqvvA2z715cre5NBsZetjGZwKk8jMB9gV6mDxwsx
 Sxqw==
X-Gm-Message-State: AGi0PuYjd7fhRmmnNjTu+5Vp2dBLBhJPg0FxEPZtu81pFWJAHzF3dN/W
 rjhXD3eodNtBCA9kAsAQ3Ww=
X-Google-Smtp-Source: APiQypLsY/OE3plQ2JuqYCxhA/x+TXFMmkcH/bNCsm1jD7QvwkDIAIyneK4Vg11GYlMqsLFqQoiJ6A==
X-Received: by 2002:a17:906:af81:: with SMTP id
 mj1mr1529524ejb.99.1586479671240; 
 Thu, 09 Apr 2020 17:47:51 -0700 (PDT)
Received: from Ansuel-XPS.localdomain
 (host117-205-dynamic.180-80-r.retail.telecomitalia.it. [80.180.205.117])
 by smtp.googlemail.com with ESMTPSA id z16sm30523edm.52.2020.04.09.17.47.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Apr 2020 17:47:50 -0700 (PDT)
From: Ansuel Smith <ansuelsmth@gmail.com>
To: devicetree@vger.kernel.org
Subject: [PATCH 2/4] drivers: pci: dwc: pci-imx6: update binding to generic
 name
Date: Fri, 10 Apr 2020 02:47:36 +0200
Message-Id: <20200410004738.19668-3-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200410004738.19668-1-ansuelsmth@gmail.com>
References: <20200410004738.19668-1-ansuelsmth@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_174754_051776_F2514299 
X-CRM114-Status: GOOD (  12.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ansuelsmth[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Richard Zhu <hongxing.zhu@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, linux-pci@vger.kernel.org,
 Bjorn Helgaas <bhelgaas@google.com>,
 Andrew Murray <amurray@thegoodpenguin.co.uk>, Shawn Guo <shawnguo@kernel.org>,
 Ansuel Smith <ansuelsmth@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Rename specific bindings to generic name.

Signed-off-by: Ansuel Smith <ansuelsmth@gmail.com>
---
 drivers/pci/controller/dwc/pci-imx6.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/pci/controller/dwc/pci-imx6.c b/drivers/pci/controller/dwc/pci-imx6.c
index acfbd34032a8..4ac140e007b4 100644
--- a/drivers/pci/controller/dwc/pci-imx6.c
+++ b/drivers/pci/controller/dwc/pci-imx6.c
@@ -1146,28 +1146,28 @@ static int imx6_pcie_probe(struct platform_device *pdev)
 	}
 
 	/* Grab PCIe PHY Tx Settings */
-	if (of_property_read_u32(node, "fsl,tx-deemph-gen1",
+	if (of_property_read_u32(node, "tx-deemph-gen1",
 				 &imx6_pcie->tx_deemph_gen1))
 		imx6_pcie->tx_deemph_gen1 = 0;
 
-	if (of_property_read_u32(node, "fsl,tx-deemph-gen2-3p5db",
+	if (of_property_read_u32(node, "tx-deemph-gen2-3p5db",
 				 &imx6_pcie->tx_deemph_gen2_3p5db))
 		imx6_pcie->tx_deemph_gen2_3p5db = 0;
 
-	if (of_property_read_u32(node, "fsl,tx-deemph-gen2-6db",
+	if (of_property_read_u32(node, "tx-deemph-gen2-6db",
 				 &imx6_pcie->tx_deemph_gen2_6db))
 		imx6_pcie->tx_deemph_gen2_6db = 20;
 
-	if (of_property_read_u32(node, "fsl,tx-swing-full",
+	if (of_property_read_u32(node, "tx-swing-full",
 				 &imx6_pcie->tx_swing_full))
 		imx6_pcie->tx_swing_full = 127;
 
-	if (of_property_read_u32(node, "fsl,tx-swing-low",
+	if (of_property_read_u32(node, "tx-swing-low",
 				 &imx6_pcie->tx_swing_low))
 		imx6_pcie->tx_swing_low = 127;
 
 	/* Limit link speed */
-	ret = of_property_read_u32(node, "fsl,max-link-speed",
+	ret = of_property_read_u32(node, "max-link-speed",
 				   &imx6_pcie->link_gen);
 	if (ret)
 		imx6_pcie->link_gen = 1;
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
