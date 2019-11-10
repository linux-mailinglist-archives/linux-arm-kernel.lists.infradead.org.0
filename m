Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB0C7F6740
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 10 Nov 2019 06:21:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lhOEbQP9wjS7W7ufujL7mrqqItzrU+cV5skCM5moU6A=; b=A9hCPc6VQ2sQKH
	ux/bHm6+167Pihho45JgboPwItF1+3Cd2yOuxG2o2zDhRcbCZA8eFnU0Zt6BpEq05vUhKMC/4dPzi
	WR+KnPNixyQnWZtcfDipEVNaD4mnPdMSbte6v7OlRRizpfvAvIUnVuC+UtH867dba53pNvT7o4k15
	G5AW9ZmO5j+gH82VwWbyPDLVgKS96Ni023niyq3qwC9iF8ChUHt79SuKXezTaHr4Qhc9+Kik+Vznc
	uGdOPqOBrBzesNXdIoEPXk33CMHJndN+C6OabkDI1AMqxE0SLmzNQpTTrjDNCPZbnNfedaxlkNEWF
	wpHTC4wcNnuwHVr4SCPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTffW-0005Ax-Eq; Sun, 10 Nov 2019 05:21:46 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTffA-00050X-IH; Sun, 10 Nov 2019 05:21:26 +0000
Received: by mail-pg1-x544.google.com with SMTP id 15so6844787pgh.5;
 Sat, 09 Nov 2019 21:21:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TMao0m+WBFgI6jAFcx+RDnI9bR05H5nekwksgla7gfk=;
 b=XdsLA0IE1tSbb8ARuuhe1PsBRcnbnHnd8Re01hVkokE2p7OVDNsaGBvWN5ie75kucy
 j9iKtGOQRK+FmZl3DMY4PdhzEvedoyAR6TfztQoKXGUmymh0erKxS3Bs22o204q9yv6Y
 bE0SUnBZZZuQrbtYIR1zZzEh8hGo9f21o77RgSQrrohhoxbkzXiGbO3Zn9NGU5/PtGXF
 0Deh8RKWCP+oJKIzz9TUkNmQl4kWXsdeO6QqrKUviLOs3MOgg1bjt/iISJI3cYvgRSLh
 /RVQTWzOgx0al/3NVry0mQWfCiKPTHrqhNLFWs5P+iZkiQrs7iAjfBQmU3gUQsfO2p+N
 fWYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TMao0m+WBFgI6jAFcx+RDnI9bR05H5nekwksgla7gfk=;
 b=MPacWxa1lRpvD2hM+xPwelEmP4dYcocyKI2ElBP7bFtqnkIPZ2gy30wjyaec9cI4gA
 m6H7aJHlvkwkdi9Ifb+E6allNSkD28JnroSpDj3og3JMJ3bRMufUz1arCMFvm8jNuKQm
 MNc6Wjib6s1ACj0936648ddFa0cuxA2bWhESloUtije59vs1YhaPzQWS9R3e4gg1ryO7
 lhhHHVTBuE7ZhCFlQom7unaqXQkDKrZIIrrQBtgkvwD3cHTQU2FkzpofWRbV9XjGUkxT
 6+dcytILj2XUZcnxqMqTl8tQ37lVzcI/XwvDc4Rych+G/3E7HPYDnXgbt/HuzP5pQGLJ
 bAyA==
X-Gm-Message-State: APjAAAUJWrdXBrL97RDuma9oYWO6mfxFS8Cic+eUzPswOAikjw/cYRIT
 RX/FM9AcBnSHiMtCBRhE5TNlawIe
X-Google-Smtp-Source: APXvYqwsQIVrKoTr9TWAEg6y3vO4SJ2DGsvjSoAXlFQdoXqviAyGF42arb0w+rT2gUcrB+ThHkvCMA==
X-Received: by 2002:a17:90a:eb18:: with SMTP id
 j24mr26185948pjz.85.1573363281014; 
 Sat, 09 Nov 2019 21:21:21 -0800 (PST)
Received: from localhost.localdomain ([2001:19f0:7001:2668:5400:1ff:fe62:2bbd])
 by smtp.gmail.com with ESMTPSA id y2sm10728754pfe.126.2019.11.09.21.21.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 09 Nov 2019 21:21:20 -0800 (PST)
From: Chuanhong Guo <gch981213@gmail.com>
To: linux-mtd@lists.infradead.org
Subject: [PATCH 1/2] mtd: mtk-quadspi: add support for DMA reading
Date: Sun, 10 Nov 2019 13:21:00 +0800
Message-Id: <20191110052104.5502-1-gch981213@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191109_212124_629969_7EDEE2E4 
X-CRM114-Status: GOOD (  14.96  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
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

PIO reading mode on this controller is pretty inefficient
(one cmd+addr+dummy sequence reads only one byte)
This patch adds support for reading using DMA mode which increases
reading speed from 1MB/s to 4MB/s

DMA busy checking is implemented with readl_poll_timeout because
I don't have access to IRQ-related docs. The speed increment comes
from those saved cmd+addr+dummy clocks.

This controller requires that DMA source/destination address and
reading length should be 16-byte aligned. We use a bounce buffer if
one of them is not aligned, read more than what we need, and copy
data from corresponding buffer offset.

Signed-off-by: Chuanhong Guo <gch981213@gmail.com>
---

 drivers/mtd/spi-nor/mtk-quadspi.c | 99 +++++++++++++++++++++++++++++--
 1 file changed, 95 insertions(+), 4 deletions(-)

diff --git a/drivers/mtd/spi-nor/mtk-quadspi.c b/drivers/mtd/spi-nor/mtk-quadspi.c
index b1691680d174..ac0e531ce80c 100644
--- a/drivers/mtd/spi-nor/mtk-quadspi.c
+++ b/drivers/mtd/spi-nor/mtk-quadspi.c
@@ -7,6 +7,7 @@
 #include <linux/clk.h>
 #include <linux/delay.h>
 #include <linux/device.h>
+#include <linux/dma-mapping.h>
 #include <linux/init.h>
 #include <linux/io.h>
 #include <linux/iopoll.h>
@@ -17,6 +18,7 @@
 #include <linux/of.h>
 #include <linux/of_device.h>
 #include <linux/platform_device.h>
+#include <linux/sched/task_stack.h>
 #include <linux/slab.h>
 #include <linux/mtd/mtd.h>
 #include <linux/mtd/partitions.h>
@@ -70,6 +72,10 @@
 #define MTK_NOR_DELSEL2_REG		0xd0
 #define MTK_NOR_DELSEL3_REG		0xd4
 #define MTK_NOR_DELSEL4_REG		0xd8
+#define MTK_NOR_FDMA_CTL_REG		0x718
+#define MTK_NOR_FDMA_FADR_REG		0x71c
+#define MTK_NOR_FDMA_DADR_REG		0x720
+#define MTK_NOR_FDMA_END_DADR_REG	0x724
 
 /* commands for mtk nor controller */
 #define MTK_NOR_READ_CMD		0x0
@@ -88,6 +94,7 @@
 #define MTK_NOR_DUAL_READ_EN		0x1
 #define MTK_NOR_DUAL_DISABLE		0x0
 #define MTK_NOR_FAST_READ		0x1
+#define MTK_NOR_DMA_TRIG		0x1
 
 #define SFLASH_WRBUF_SIZE		128
 
@@ -97,7 +104,10 @@
 #define MTK_NOR_MAX_SHIFT		7
 /* nor controller 4-byte address mode enable bit */
 #define MTK_NOR_4B_ADDR_EN		BIT(4)
-
+/* DMA address has to be 16-byte aligned */
+#define MTK_NOR_DMA_ALIGN		16
+/* Limit bounce buffer size to 32KB */
+#define MTK_NOR_MAX_BBUF_READ		(32 * 1024)
 /* Helpers for accessing the program data / shift data registers */
 #define MTK_NOR_PRG_REG(n)		(MTK_NOR_PRGDATA0_REG + 4 * (n))
 #define MTK_NOR_SHREG(n)		(MTK_NOR_SHREG0_REG + 4 * (n))
@@ -260,13 +270,12 @@ static void mtk_nor_set_addr(struct mtk_nor *mtk_nor, u32 addr)
 	writeb(addr & 0xff, mtk_nor->base + MTK_NOR_RADR3_REG);
 }
 
-static ssize_t mtk_nor_read(struct spi_nor *nor, loff_t from, size_t length,
-			    u_char *buffer)
+static ssize_t mtk_nor_read_pio(struct mtk_nor *mtk_nor, loff_t from,
+				size_t length, u_char *buffer)
 {
 	int i, ret;
 	int addr = (int)from;
 	u8 *buf = (u8 *)buffer;
-	struct mtk_nor *mtk_nor = nor->priv;
 
 	/* set mode for fast read mode ,dual mode or quad mode */
 	mtk_nor_set_read_mode(mtk_nor);
@@ -281,6 +290,88 @@ static ssize_t mtk_nor_read(struct spi_nor *nor, loff_t from, size_t length,
 	return length;
 }
 
+static int mtk_nor_dma_exec(struct mtk_nor *mtk_nor)
+{
+	int reg;
+
+	reg = readl(mtk_nor->base + MTK_NOR_FDMA_CTL_REG);
+	writel(reg | MTK_NOR_DMA_TRIG, mtk_nor->base + MTK_NOR_FDMA_CTL_REG);
+	return readl_poll_timeout(mtk_nor->base + MTK_NOR_FDMA_CTL_REG, reg,
+				  !(reg & MTK_NOR_DMA_TRIG), 20, 10000);
+}
+
+static ssize_t mtk_nor_read_dma(struct mtk_nor *mtk_nor, loff_t from,
+				size_t length, u_char *buffer)
+{
+	ssize_t ret;
+	ssize_t read_length = length & ~(MTK_NOR_DMA_ALIGN - 1);
+	dma_addr_t dma_addr;
+
+	mtk_nor_set_read_mode(mtk_nor);
+	mtk_nor_set_addr_width(mtk_nor);
+
+	dma_addr = dma_map_single(mtk_nor->dev, buffer, read_length,
+				  DMA_FROM_DEVICE);
+	if (dma_mapping_error(mtk_nor->dev, dma_addr)) {
+		dev_err(mtk_nor->dev, "failed to map dma buffer.");
+		return -EINVAL;
+	}
+
+	writel(from, mtk_nor->base + MTK_NOR_FDMA_FADR_REG);
+	writel(dma_addr, mtk_nor->base + MTK_NOR_FDMA_DADR_REG);
+	writel((u32)dma_addr + read_length,
+	       mtk_nor->base + MTK_NOR_FDMA_END_DADR_REG);
+	ret = mtk_nor_dma_exec(mtk_nor);
+	dma_unmap_single(mtk_nor->dev, dma_addr, read_length, DMA_FROM_DEVICE);
+	if (!ret)
+		ret = read_length;
+	return ret;
+}
+
+static ssize_t mtk_nor_read_dma_bounce(struct mtk_nor *mtk_nor, loff_t from,
+				       size_t length, u_char *buffer)
+{
+	ssize_t nor_unaligned_len = from % MTK_NOR_DMA_ALIGN;
+	loff_t read_from = from & ~(MTK_NOR_DMA_ALIGN - 1);
+	ssize_t read_len;
+	u_char *buf;
+	u_char *bouncebuf;
+	size_t mem_unaligned_len;
+
+	if (length > MTK_NOR_MAX_BBUF_READ)
+		length = MTK_NOR_MAX_BBUF_READ;
+	read_len = length + nor_unaligned_len + MTK_NOR_DMA_ALIGN;
+
+	buf = kmalloc(read_len + MTK_NOR_DMA_ALIGN, GFP_KERNEL);
+	if (!buf)
+		return -ENOMEM;
+
+	mem_unaligned_len = (u32)buf % MTK_NOR_DMA_ALIGN;
+	bouncebuf = (buf + MTK_NOR_DMA_ALIGN) - mem_unaligned_len;
+
+	read_len = mtk_nor_read_dma(mtk_nor, read_from, read_len, bouncebuf);
+	if (read_len > 0)
+		memcpy(buffer, bouncebuf + nor_unaligned_len, length);
+
+	kfree(buf);
+	return length;
+}
+
+static ssize_t mtk_nor_read(struct spi_nor *nor, loff_t from, size_t length,
+			    u_char *buffer)
+{
+	struct mtk_nor *mtk_nor = nor->priv;
+
+	if (length < MTK_NOR_DMA_ALIGN)
+		return mtk_nor_read_pio(mtk_nor, from, length, buffer);
+
+	if (object_is_on_stack(buffer) || !virt_addr_valid(buffer) ||
+	    (u32)buffer % MTK_NOR_DMA_ALIGN || from % MTK_NOR_DMA_ALIGN)
+		return mtk_nor_read_dma_bounce(mtk_nor, from, length, buffer);
+
+	return mtk_nor_read_dma(mtk_nor, from, length, buffer);
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
