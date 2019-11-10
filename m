Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91CF1F6743
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 10 Nov 2019 06:22:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vppDyao6i/OQgtatSFCdsQ3Z7ncVduqz0m96oB4LaCA=; b=dMLsLxdo1WYwEr
	VnQKmxaFC3N84dZDxWVlohEXjRG/3w93KjYcZiA2iYGCp/0sFZmw7/pZ8sKoxYjQUpoOZGfxVB68T
	5qEJJMoe3NGyXkWcoR/xFfMWmHI9Wom/uaU42DIOVDbsiF4TIdQ0144WRC4X+DFozx6kC+GUUoc5O
	W02Wja02dWFl1dlcQJluJemC6BXVK0fy/gJk+Ee+1qU5kkhAVx3Imz3S546rfImt2RrDZBSWcE5wy
	ZL5vqzAFaLPE8vy7z9O3FP5ExnSjHnty4fghvzF66XIBB1yOUHAdxwOdc/2qsTN886AcdqsLmTasM
	U1jRjnUN9yPnXGKyczSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTfgA-0005oc-TX; Sun, 10 Nov 2019 05:22:26 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTffN-0005GI-Ao; Sun, 10 Nov 2019 05:21:38 +0000
Received: by mail-pg1-x544.google.com with SMTP id q22so6859523pgk.2;
 Sat, 09 Nov 2019 21:21:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4ITuc3/EbXNp+U9B5Okc4zxW+jSvy8I6mUAG/x+04NA=;
 b=QrI0mXi/pUYaShNhrdkwb/zDqfns0lptxfNNJ2ClmqLWNmb3NK+udb3X4OiBZWARIT
 BgudGtWl4Le6Eq36QZ/852P4+8Sl/fp3BQGYUrl7ZfMfTPXgDX+cs0JLw7+WJg+AZpIr
 2YKY+grJxf73XYofMvypHJT/tOI37BN/PupM56IbZ23ISPuTtwgn1NGysCpOHJXLFRjD
 9A6oKuySSnrhy094rQP/v/E47xRWEoZmut2fAlCYecspBbONQ3gYoeX1euAOVXgVsYRd
 fNr+CpR4xcnp7Zkm+p05c3xtTMuf4hnh82TNmhePrRPpPoAlLW7iUaxLpfAC8zmsAUMO
 IsDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4ITuc3/EbXNp+U9B5Okc4zxW+jSvy8I6mUAG/x+04NA=;
 b=iwIq9N2JOckvCHZZtTJQNIXBRYUsNCwtmXlrJO7dKd/gDlPknbYvSSvCxtlvFq6D/j
 WDLphNPpEZIa7K3Q0eINfCKEpcYX2uCgBDu3zV+JceDQp1RwGOqCJwdQlO9NYB7YMJ0Q
 ZeU6OriLjWHE+6dgFsfsNU4hnKH2QBWzJTIty61LhOkSe+oUT/NXlG20wm7qYIhqMcwT
 9eoxHfxyZjyfX8yGJVCSJqhLlmH0O3zkyZlNlRZb0pJOSJOGHAHAN6Rhai280rmFMsbs
 2eNjo0SHS4faX69Fvl+/ScPnGAH+PE5/HGsUY/qNaE0B07tm5J7kKnJELxiSfAxqwG9i
 cKTw==
X-Gm-Message-State: APjAAAUShz8c2QH7jLmg7PGBwwd9QXwEKqlm4P+oXel8lP/prbeaO4QP
 65+FxtsUE7dFykpzuuF8TrLhMFkX
X-Google-Smtp-Source: APXvYqz38qmGlTu6irHIzXwq6E1qIqAZdTkRlEXf5i+owvXl66qNobg3mB7Q/Hg+mtvZ8+5CBJaPkA==
X-Received: by 2002:a63:e249:: with SMTP id y9mr21232293pgj.383.1573363296186; 
 Sat, 09 Nov 2019 21:21:36 -0800 (PST)
Received: from localhost.localdomain ([2001:19f0:7001:2668:5400:1ff:fe62:2bbd])
 by smtp.gmail.com with ESMTPSA id y2sm10728754pfe.126.2019.11.09.21.21.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 09 Nov 2019 21:21:35 -0800 (PST)
From: Chuanhong Guo <gch981213@gmail.com>
To: linux-mtd@lists.infradead.org
Subject: [PATCH 2/2] mtd: mtk-quadspi: misuse 1_1_2 read mode for custom read
 opcode
Date: Sun, 10 Nov 2019 13:21:01 +0800
Message-Id: <20191110052104.5502-2-gch981213@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191110052104.5502-1-gch981213@gmail.com>
References: <20191110052104.5502-1-gch981213@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191109_212137_418218_05F291F6 
X-CRM114-Status: GOOD (  14.09  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (gch981213[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (gch981213[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Chuanhong Guo <gch981213@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

1_1_1 reading mode on this controller only support 0x03 and 0x0b
as opcode, but spi-nor framework uses nor->read for SFDP reading
as well.
Add a check for opcode and if it's not supported, misuse 1_1_2
reading and extract corresponding bits from returned data.

Signed-off-by: Chuanhong Guo <gch981213@gmail.com>
---
 drivers/mtd/spi-nor/mtk-quadspi.c | 78 ++++++++++++++++++++++++++++++-
 1 file changed, 76 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/spi-nor/mtk-quadspi.c b/drivers/mtd/spi-nor/mtk-quadspi.c
index ac0e531ce80c..46bf27c0e6e8 100644
--- a/drivers/mtd/spi-nor/mtk-quadspi.c
+++ b/drivers/mtd/spi-nor/mtk-quadspi.c
@@ -357,8 +357,8 @@ static ssize_t mtk_nor_read_dma_bounce(struct mtk_nor *mtk_nor, loff_t from,
 	return length;
 }
 
-static ssize_t mtk_nor_read(struct spi_nor *nor, loff_t from, size_t length,
-			    u_char *buffer)
+static ssize_t mtk_nor_flash_read(struct spi_nor *nor, loff_t from,
+				  size_t length, u_char *buffer)
 {
 	struct mtk_nor *mtk_nor = nor->priv;
 
@@ -372,6 +372,80 @@ static ssize_t mtk_nor_read(struct spi_nor *nor, loff_t from, size_t length,
 	return mtk_nor_read_dma(mtk_nor, from, length, buffer);
 }
 
+static ssize_t mtk_nor_generic_read(struct spi_nor *nor, loff_t from,
+				    size_t length, u_char *buffer)
+{
+	struct mtk_nor *mtk_nor = nor->priv;
+	ssize_t nor_unaligned_len = from % MTK_NOR_DMA_ALIGN;
+	loff_t read_from = from & ~(MTK_NOR_DMA_ALIGN - 1);
+	ssize_t read_len;
+	u_char *buf, *bouncebuf, tmp;
+	size_t mem_unaligned_len, i;
+	dma_addr_t dma_addr;
+	int ret;
+
+	if (length > MTK_NOR_MAX_BBUF_READ / 2)
+		length = MTK_NOR_MAX_BBUF_READ / 2;
+	read_len = ((length + nor_unaligned_len) * 2 + MTK_NOR_DMA_ALIGN) &
+		   ~(MTK_NOR_DMA_ALIGN - 1);
+
+	buf = kmalloc(read_len + MTK_NOR_DMA_ALIGN, GFP_KERNEL);
+	if (!buf)
+		return -ENOMEM;
+
+	mem_unaligned_len = (u32)buf % MTK_NOR_DMA_ALIGN;
+	bouncebuf = (buf + MTK_NOR_DMA_ALIGN) - mem_unaligned_len;
+
+	writeb(nor->read_opcode, mtk_nor->base + MTK_NOR_PRGDATA3_REG);
+	writeb(MTK_NOR_DUAL_READ_EN, mtk_nor->base + MTK_NOR_DUAL_REG);
+	mtk_nor_set_addr_width(mtk_nor);
+
+	dma_addr = dma_map_single(mtk_nor->dev, bouncebuf, read_len,
+				  DMA_FROM_DEVICE);
+	ret = dma_mapping_error(mtk_nor->dev, dma_addr);
+	if (ret) {
+		dev_err(mtk_nor->dev, "failed to map dma buffer.");
+		goto err;
+	}
+
+	writel(read_from, mtk_nor->base + MTK_NOR_FDMA_FADR_REG);
+	writel(dma_addr, mtk_nor->base + MTK_NOR_FDMA_DADR_REG);
+	writel((u32)dma_addr + read_len,
+	       mtk_nor->base + MTK_NOR_FDMA_END_DADR_REG);
+	ret = mtk_nor_dma_exec(mtk_nor);
+	dma_unmap_single(mtk_nor->dev, dma_addr, read_len, DMA_FROM_DEVICE);
+
+	if (ret)
+		goto err;
+
+	/* extract bits from DO line */
+	for (i = 0; i < length; i++) {
+		tmp = bouncebuf[(i + nor_unaligned_len) * 2];
+		buffer[i] = (tmp & BIT(7)) | ((tmp & BIT(5)) << 1) |
+			    ((tmp & BIT(3)) << 2) | ((tmp & BIT(1)) << 3);
+		tmp = bouncebuf[(i + nor_unaligned_len) * 2 + 1];
+		buffer[i] |= (tmp & BIT(7)) >> 4 | ((tmp & BIT(5)) >> 3) |
+			     ((tmp & BIT(3)) >> 2) | ((tmp & BIT(1)) >> 1);
+	}
+	ret = length;
+err:
+	kfree(buf);
+	return ret;
+}
+
+static ssize_t mtk_nor_read(struct spi_nor *nor, loff_t from, size_t length,
+			    u_char *buffer)
+{
+	if ((nor->read_proto != SNOR_PROTO_1_1_1) ||
+	    (nor->read_opcode == SPINOR_OP_READ) ||
+	    (nor->read_opcode == SPINOR_OP_READ_FAST))
+		return mtk_nor_flash_read(nor, from, length, buffer);
+	else if (nor->read_dummy == 8)
+		return mtk_nor_generic_read(nor, from, length, buffer);
+	else
+		return -EOPNOTSUPP;
+}
+
 static int mtk_nor_write_single_byte(struct mtk_nor *mtk_nor,
 				     int addr, int length, u8 *data)
 {
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
