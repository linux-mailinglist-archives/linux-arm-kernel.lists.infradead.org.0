Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2EF0156373
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Feb 2020 09:41:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ROwDyl8D5FKSp0g1ie/EgieMXccrD6fXNBQST/ly7bc=; b=oiMq67rZVfha/3
	pVKIpiAfaGlu85U+rnoRQjhF6kSbNgTF2rs2sQL013tMQ8MbW+R6DDmLIPy2a1lxu0VjniCGznQfP
	jKSBc46xoecyzHMiAhtn/hs3TIjzqiprEXcYSoVmM+2R3dbUdlqzfKNofcK18F0rls25Uw7RMfHm8
	8EPIebUWZPxDfgW3H2W+H4/+ZD9EgWFYX3oBzy67huqX6hQVHrS21+Ca/AQSQyCnN0X4ZVk7KK714
	YxLo4U2HqCTOpPUrUDrO2Uw6z6eEMslupXe2cRXMW6RL/aVnbjNtdWGO9FrmZj8qh+2yCxWLTyl0h
	18uZj2A9u9K/jGqPtciQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0LgA-0001lM-IK; Sat, 08 Feb 2020 08:41:30 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0Lfr-0001eH-Mx; Sat, 08 Feb 2020 08:41:13 +0000
Received: by mail-pf1-x441.google.com with SMTP id 4so993629pfz.9;
 Sat, 08 Feb 2020 00:41:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=t4fT1flivhHE2bOiFUCwrYP2oGVgN/u3bLIm2YsCtVs=;
 b=j+hIx8PPKVttFIFcJkTAOz8wLBNnQ0xmyv248cqVekR4q7ODZSC7HOTdeDlYUHJpTX
 /Yofq526CRXJD6p7SeG0rg5/3NSTyZGVkePh9g8DwzfWfmqtzELW79BTNLQMRxh7KDgc
 SyLwxRFlhr1CWYdivSVAnGbiOmICIMvd/43KpKo2kLI51N8CcBUBJGX0ldpwu47Jlshe
 mV3Qcy67jPCdc8FlvkzQLF28sRqYxf4DQ5h4RYupY2izf5ae8PBo1i3H8BICW9OxQbq5
 fJQEzlT+5bD6nEvRdQeJRm2ejYaZHW4qus76uEdo2N7DbIfolJZYali6WDSVyYGaOryV
 52eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=t4fT1flivhHE2bOiFUCwrYP2oGVgN/u3bLIm2YsCtVs=;
 b=rNu8oIqh/ZjOi84Vki0t71jNZZoI+diWOkV6jIrULiEke122VKZnM5fTlDzn4t+v47
 WtJPW34AXk7aZGq5dB5DzzVKSJv/SsajD5JeYQzPNsYcjNYbcqNJppcj1h5YhHkjXKIq
 SOn0ebEv5JVDweM4fy4jEPqAh49XAu4NLBVqVmzz/kJUy/C3Tkf9IY17j/N4lBwx4WEz
 oV6AyuCbrJ+ppeWoV0OFzSUQMamwZC2Jp4eGcDSiAlTpNUfttK3eQWerAqkrjD5YKtT8
 b8fLPkmbtKjq6J2tHb9+J9Sg4EluBrf7oK2+Bu7X90QhG7sP75cGPnz3op9V0xOHx04u
 cmfg==
X-Gm-Message-State: APjAAAWn2Nu/aiGdBTy1JVFfr8/hYKdpWgjabZvd1CN8DUfud3xkPwwE
 4+D7LboC3lCYBv8ewvIs3AS+uR5Y0HA=
X-Google-Smtp-Source: APXvYqw8yuRdAlV0i6bI+LVdCO1J+fT6uuUjHQnYnfC2NQZy2tbSx1BIZdWlWOR+b4PIAmizEgcjUg==
X-Received: by 2002:a62:cec7:: with SMTP id y190mr3075149pfg.191.1581151268223; 
 Sat, 08 Feb 2020 00:41:08 -0800 (PST)
Received: from localhost.localdomain ([240e:379:947:2855::fa3])
 by smtp.gmail.com with ESMTPSA id t63sm5639365pfb.70.2020.02.08.00.40.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 08 Feb 2020 00:41:07 -0800 (PST)
From: Chuanhong Guo <gch981213@gmail.com>
To: linux-mtd@lists.infradead.org
Subject: [PATCH v2] mtd: mtk-quadspi: add support for DMA reading
Date: Sat,  8 Feb 2020 16:40:09 +0800
Message-Id: <20200208084022.193231-1-gch981213@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200208_004112_090549_41F76658 
X-CRM114-Status: GOOD (  15.53  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [gch981213[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [gch981213[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Changes since v1:
1. cast pointers to ulong instead of u32 to fix warnings on 64bit
   platform
2. drop the other patch for reading with custom opcode. That'll
   be a separated fix which is unrelated to this one.

 drivers/mtd/spi-nor/mtk-quadspi.c | 99 +++++++++++++++++++++++++++++--
 1 file changed, 95 insertions(+), 4 deletions(-)

diff --git a/drivers/mtd/spi-nor/mtk-quadspi.c b/drivers/mtd/spi-nor/mtk-quadspi.c
index b1691680d174..85101b84b516 100644
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
+	mem_unaligned_len = (ulong)buf % MTK_NOR_DMA_ALIGN;
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
+	    (ulong)buffer % MTK_NOR_DMA_ALIGN || from % MTK_NOR_DMA_ALIGN)
+		return mtk_nor_read_dma_bounce(mtk_nor, from, length, buffer);
+
+	return mtk_nor_read_dma(mtk_nor, from, length, buffer);
+}
+
 static int mtk_nor_write_single_byte(struct mtk_nor *mtk_nor,
 				     int addr, int length, u8 *data)
 {
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
