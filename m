Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8CED166DD8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 04:37:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p8oAiuv5Vv+KtSwPV1TVa/fg+3u7aPZU2Cdl84AWNAU=; b=prRtcgX8xw195c
	ybskNr+GkkuXNSoTHZrOfI5/wAquwF3wolOY8Q+3RCarlV7Ejgl61mJ6y+TbND8F00OgWsqB1n1Wh
	cpnzfSDReFHF5PMPuD287iTazuXh9WErKrCzjfCCLCoPwNEDJr9Imhg9gG1iKKkvF8/j/N0GpdF1n
	NFV7xP7t+yGdsf1/sc62tq2x/RkrOLbhjTzXtDiI+YGrrfo+cVZFsESAlbaPMBcQ1gDMsbw8b4qB7
	eylbCc/+0sgKYpxPiDuIhGnMPQI78rKxODtYTEwcYfJadhcCb3Cti8mZOs0jlFoGU2TRmTjZdaFH3
	RWlfvaKSC6UyyMTrKfNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4z7w-0000M9-B0; Fri, 21 Feb 2020 03:37:20 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4z7b-0000Ed-4G
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 03:37:00 +0000
Received: by mail-pg1-x541.google.com with SMTP id d6so288890pgn.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Feb 2020 19:36:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Ix9Y2nFQkgNaD5RyzKlb0GalKo293yFxFO24g2Hr7BE=;
 b=cSv8qlub9fbpZ3p/6Hvn1F3xU7QIFUacsg2CgrAfvXwZQj/D6PZ620DrFibo38PxUJ
 J34fRp6oUTIXSibPUTAXaD8rgQ7zU3sOFnI5a9/5QdNsWgWIlFUD8CyiFPWwyNV5ABgm
 L+DlPtVj5MSjZ+mutI1SAySDC+ABp7/8kiTbGKkNPreuEiq4de7HGCn/DKR3mePmeowp
 FHNAZTPjBdjOF/AhNahU+MjlivUYcIqEOWQxI7axsuEnlQ9q1Iur7aEl31PCQsVtaT+g
 ncFzZWNNx0X6Ld+S2aUdXJnoqzPnEsSVr7PbY8yBFhP5BJt5A2YtGuD47bG5p3GNlUUj
 MZqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Ix9Y2nFQkgNaD5RyzKlb0GalKo293yFxFO24g2Hr7BE=;
 b=LgPaenLGBOoX2vW8FfZ2msEv6tPYYgZyInh6hdT1+UfV669LiAtn04mtStU3K4L2k0
 twtSvAMc7X2k/BjxiY1wgvpf9NjOAYak7W5Rp34tGQBXwe2HiA5eG+LZVvC20nebO9dy
 xaHgkUe/SofL2dFJoWW5ZZZDON85Wy6r/7A1YM8U7BanZGan4b9fjpYuDOhtC+5xJDz8
 g1IYR4jdL7NhUdP5tqh6oWlS4kOp9dJ84fsLXLO1AyI1AWgi287jHJBZNmIe/jon693X
 sjUGL8GZGH6hOuLheoJQErvHObu/IQaSBLBDo0lsmH6VEESMJwbfU/+d7eq08oeE0eqW
 Kcwg==
X-Gm-Message-State: APjAAAUCZX7Y36KF6yTVtLmcHgBnLtJCYmwNhuJt55DX3HB59YCzTWP7
 x+rsXLN9oiyDkzEGl7NwDfQ=
X-Google-Smtp-Source: APXvYqyWhRoVOloNoo9kNtSguiV4jK6MA9XFVaDLEVL3Di0Yq0mE5Kxtw6jjVq1rdjQwBwZJA7LT2Q==
X-Received: by 2002:a63:4823:: with SMTP id v35mr35446928pga.177.1582256218382; 
 Thu, 20 Feb 2020 19:36:58 -0800 (PST)
Received: from localhost.localdomain ([125.130.116.2])
 by smtp.gmail.com with ESMTPSA id d4sm781340pjz.12.2020.02.20.19.36.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 20 Feb 2020 19:36:58 -0800 (PST)
From: Jaedon Shin <jaedon.shin@gmail.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Florian Fainelli <f.fainelli@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com, Mark Brown <broonie@kernel.org>
Subject: [PATCH v2 1/2] PCI: brcmstb: Add regulator support
Date: Fri, 21 Feb 2020 12:36:39 +0900
Message-Id: <20200221033640.55163-2-jaedon.shin@gmail.com>
X-Mailer: git-send-email 2.21.0 (Apple Git-122)
In-Reply-To: <20200221033640.55163-1-jaedon.shin@gmail.com>
References: <20200221033640.55163-1-jaedon.shin@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_193659_217821_66FA3DB0 
X-CRM114-Status: GOOD (  15.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jaedon.shin[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, linux-gpio@vger.kernel.org,
 linux-pci@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 Jaedon Shin <jaedon.shin@gmail.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, Gregory Fong <gregory.0xf0@gmail.com>,
 Bjorn Helgaas <bhelgaas@google.com>, linux-arm-kernel@lists.infradead.org,
 Andrew Murray <amurray@thegoodpenguin.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ARM-based Broadcom STB SoCs have GPIO-based voltage regulator for PCIe
turning off/on power supplies.

Signed-off-by: Jaedon Shin <jaedon.shin@gmail.com>
---
 .../bindings/pci/brcm,stb-pcie.yaml           |  3 ++
 drivers/pci/controller/pcie-brcmstb.c         | 36 +++++++++++++++++++
 2 files changed, 39 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml b/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml
index 77d3e81a437b..efa5c885724b 100644
--- a/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml
@@ -56,6 +56,9 @@ properties:
     description: Indicates usage of spread-spectrum clocking.
     type: boolean
 
+  supply-names:
+    description: List of regulator supplies to use for PCIe
+
 required:
   - reg
   - dma-ranges
diff --git a/drivers/pci/controller/pcie-brcmstb.c b/drivers/pci/controller/pcie-brcmstb.c
index d20aabc26273..8968ef7fa55d 100644
--- a/drivers/pci/controller/pcie-brcmstb.c
+++ b/drivers/pci/controller/pcie-brcmstb.c
@@ -23,6 +23,7 @@
 #include <linux/of_platform.h>
 #include <linux/pci.h>
 #include <linux/printk.h>
+#include <linux/regulator/consumer.h>
 #include <linux/sizes.h>
 #include <linux/slab.h>
 #include <linux/string.h>
@@ -173,6 +174,8 @@ struct brcm_pcie {
 	int			gen;
 	u64			msi_target_addr;
 	struct brcm_msi		*msi;
+	struct regulator_bulk_data *vreg_bulk;
+	int			num_vregs;
 };
 
 /*
@@ -898,6 +901,7 @@ static void __brcm_pcie_remove(struct brcm_pcie *pcie)
 {
 	brcm_msi_remove(pcie);
 	brcm_pcie_turn_off(pcie);
+	regulator_bulk_disable(pcie->num_vregs, pcie->vreg_bulk);
 	clk_disable_unprepare(pcie->clk);
 	clk_put(pcie->clk);
 }
@@ -920,6 +924,8 @@ static int brcm_pcie_probe(struct platform_device *pdev)
 	struct brcm_pcie *pcie;
 	struct pci_bus *child;
 	struct resource *res;
+	struct regulator_bulk_data *bulk;
+	int i;
 	int ret;
 
 	bridge = devm_pci_alloc_host_bridge(&pdev->dev, sizeof(*pcie));
@@ -955,6 +961,36 @@ static int brcm_pcie_probe(struct platform_device *pdev)
 		return ret;
 	}
 
+	ret = of_property_count_strings(np, "supply-names");
+	pcie->num_vregs = (ret < 0) ? 0 : ret;
+
+	if (pcie->num_vregs) {
+		bulk = devm_kcalloc(pcie->dev, pcie->num_vregs, sizeof(*bulk),
+				    GFP_KERNEL);
+		if (!bulk) {
+			clk_disable_unprepare(pcie->clk);
+			return -ENOMEM;
+		}
+
+		for (i = 0; i < pcie->num_vregs; i++)
+			of_property_read_string_index(np, "supply-names", i,
+						      &bulk[i].supply);
+
+		ret = devm_regulator_bulk_get(pcie->dev, pcie->num_vregs, bulk);
+		if (ret < 0) {
+			clk_disable_unprepare(pcie->clk);
+			return ret;
+		}
+
+		pcie->vreg_bulk = bulk;
+	}
+
+	ret = regulator_bulk_enable(pcie->num_vregs, pcie->vreg_bulk);
+	if (ret) {
+		clk_disable_unprepare(pcie->clk);
+		return ret;
+	}
+
 	ret = brcm_pcie_setup(pcie);
 	if (ret)
 		goto fail;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
