Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3F65F17FA
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 15:09:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dyf+7bU3B2YYBY9RsbBBRuzRTffTjBRLENx7w0Iug3Q=; b=s1tZZIfC2Ndhg2
	4bDEZGzlDqfppo6lak/1ZY8Yo3TUPBXsiXd5Oic9uK4cPA8LVaGgVY4yfZm0tF4nWMmq/EgscNkVk
	KikViSjKH64emmF8bbTemeE08XgoX7geoPvm/ivgAFQH1cCjwfNU8PSJWIfrl7YHEIgVh2BsGwkn8
	UiMEcu8eU7+HSh2YBHSqfpZe95p/qp4Qg0qxfJYhYgtHllRvlxOHtKNhui4auhRKfXH+viVSPFpqW
	V2BuD9ZQIbVD94obd6p2KFO1GSbsuVxtIMit7xvDhHvH5+yKaIGIsvThMc/b+IRvLAtlCWdz1FgZ6
	6/MpXmIoOImCz3A/pp6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSM04-0005VF-Sa; Wed, 06 Nov 2019 14:09:32 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSLzL-0004us-Cb; Wed, 06 Nov 2019 14:08:48 +0000
Received: by mail-pg1-x541.google.com with SMTP id e4so17240714pgs.1;
 Wed, 06 Nov 2019 06:08:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=IGrpDRKjGtiRT6QlcUQ2diK8Wp4T7B3HNEKu57gaI70=;
 b=M4LY1AVpLRKaQ2PYpl4ihvdNmjYEbPsEsgJGBp5awZvOHExCB4h9/vK/P1ajy7wo4R
 eCznYQKQmR0sxuEQhx2oXaGnZRS0+eVNZY2kX4ZjBV+ps4U7af3uQx7sDze9vlQLznir
 0+HGyIcrR0PoJ69qYWqFpl7aLdHYCXI3x25DrYnY6IKnvJ8a3f1uICEEInJ1jqriXyOi
 AAPSaDfApqTsa50NTGrK4sl1f6wa1GLuun1S1qnjDGiOinOxUozoZUHhc192xjATsI1Z
 nG4xZajoba2Bx/4KevwV9PXpoOylk3TpskZAbiV/uma4ZsBPl4rEF50ZQ44nc2Od9vxI
 bmOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=IGrpDRKjGtiRT6QlcUQ2diK8Wp4T7B3HNEKu57gaI70=;
 b=V0VERCNapzQ0qpnmMuddk6KboxCOHc0YFnyO1RRdHLibgJ9z88VU9o/YgpbKiKJqN6
 SjLzIN73CN5zeSJ8T2zdRHr/vEl2fl8bDAEtHuE5A+Mb5w0JpVfU8HvyxWVSmkicQmdz
 /VDEhg1xyyB/GBpC8U/NSYnmVpodCOQCCUlVyYij3WXNks6FM1+UWezUtT9s6bwHsAHI
 S2cDzx/d7SwYHTfY/ZJPKJcE4eIP8qj6EIWcHLx3WDmBVUUIsFNSNlrC+Xr+NHDTW/a/
 cxHqucz3NWKlIJ9jd+J1r/yLZmc5ZnVzegXQMCfITXbXR6/GXi4EYstjC4oWwHDlMknU
 XfQQ==
X-Gm-Message-State: APjAAAWa4kBoUEYKqfbnwCaR9ZSSCFOxVRIeeNhDXh51lZ53V1eotSAB
 mWAIxHBCfp8KwSlql1i8lUrZ9rwcndk=
X-Google-Smtp-Source: APXvYqyciAa1ghxUmSQPYlowrrMDo0Qpjz7jY0Ac/lNoa/xPayE7Fj+LDRfNpWCrFpdZ8Nu12OBZsg==
X-Received: by 2002:a65:5885:: with SMTP id d5mr3017512pgu.278.1573049326032; 
 Wed, 06 Nov 2019 06:08:46 -0800 (PST)
Received: from localhost.localdomain ([2001:19f0:7001:2668:5400:1ff:fe62:2bbd])
 by smtp.gmail.com with ESMTPSA id a16sm4707345pfc.56.2019.11.06.06.08.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 Nov 2019 06:08:43 -0800 (PST)
From: Chuanhong Guo <gch981213@gmail.com>
To: linux-mtd@lists.infradead.org
Subject: [PATCH 1/2] mtd: mtk-quadspi: add support for memory-mapped flash
 reading
Date: Wed,  6 Nov 2019 22:07:47 +0800
Message-Id: <20191106140748.13100-2-gch981213@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191106140748.13100-1-gch981213@gmail.com>
References: <20191106140748.13100-1-gch981213@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_060847_457626_D8A38094 
X-CRM114-Status: GOOD (  14.57  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (gch981213[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (gch981213[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, linux-kernel@vger.kernel.org,
 Chuanhong Guo <gch981213@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

PIO reading mode on this controller is ridiculously inefficient
(one cmd+addr+dummy sequence reads only one byte)
This patch adds support for reading from memory-mapped flash area
which increases reading speed from 1MB/s to 5.6MB/s

Signed-off-by: Chuanhong Guo <gch981213@gmail.com>
---
 drivers/mtd/spi-nor/mtk-quadspi.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/mtd/spi-nor/mtk-quadspi.c b/drivers/mtd/spi-nor/mtk-quadspi.c
index 34db01ab6cab..ba8b3be39896 100644
--- a/drivers/mtd/spi-nor/mtk-quadspi.c
+++ b/drivers/mtd/spi-nor/mtk-quadspi.c
@@ -106,6 +106,7 @@ struct mtk_nor {
 	struct spi_nor nor;
 	struct device *dev;
 	void __iomem *base;	/* nor flash base address */
+	void __iomem *flash_base;
 	struct clk *spi_clk;
 	struct clk *nor_clk;
 };
@@ -272,6 +273,11 @@ static ssize_t mtk_nor_read(struct spi_nor *nor, loff_t from, size_t length,
 	mtk_nor_set_read_mode(mtk_nor);
 	mtk_nor_set_addr(mtk_nor, addr);
 
+	if (mtk_nor->flash_base) {
+		memcpy_fromio(buffer, mtk_nor->flash_base + from, length);
+		return length;
+	}
+
 	for (i = 0; i < length; i++) {
 		ret = mtk_nor_execute_cmd(mtk_nor, MTK_NOR_PIO_READ_CMD);
 		if (ret < 0)
@@ -475,6 +481,11 @@ static int mtk_nor_drv_probe(struct platform_device *pdev)
 	if (IS_ERR(mtk_nor->base))
 		return PTR_ERR(mtk_nor->base);
 
+	res = platform_get_resource(pdev, IORESOURCE_MEM, 1);
+	mtk_nor->flash_base = devm_ioremap_resource(&pdev->dev, res);
+	if (IS_ERR(mtk_nor->flash_base))
+		mtk_nor->flash_base = NULL;
+
 	mtk_nor->spi_clk = devm_clk_get(&pdev->dev, "spi");
 	if (IS_ERR(mtk_nor->spi_clk))
 		return PTR_ERR(mtk_nor->spi_clk);
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
