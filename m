Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C1E814FD2C
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  2 Feb 2020 14:00:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YEyRulEVCZWYblWM/vz//kh6YJNSf82TThQ2MTeyM1E=; b=oGhOp5vNFASY/s
	NIQffhiDzxDazLF4VSgzoFX7hrRLzNE+sa6CEOHF8+XBoYraVFgOOgw6rwyUgy/EMIfrUJcn1jiAt
	vwA8bGjwJw1Kzge+4+mqle+AEbEHBLZFNyflq8tova5QsBqgEDx32GQ1LP5Vk2ZKbsj/930/rFB0U
	H0Q86dPmhfxwgqIZR6FyUNHv3tGBjzs5gEItFeY4DHaYO0VkC09AHXTKR+L08AqnGKjFnBOQ8iJj8
	KLZnSoKXZlFuc0zdit8xCMHLjZDKD8XBrfk2qeLbSKVsfAvVCYxaqHjlKbqrjOsYcWUqRHU7meRW6
	yafZexDbFNDKb6LLsoNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyErZ-0007wH-1C; Sun, 02 Feb 2020 13:00:33 +0000
Received: from mail-yw1-xc44.google.com ([2607:f8b0:4864:20::c44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyEr9-0007JK-AJ
 for linux-arm-kernel@lists.infradead.org; Sun, 02 Feb 2020 13:00:08 +0000
Received: by mail-yw1-xc44.google.com with SMTP id i190so10518350ywc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 02 Feb 2020 05:00:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=e6rN6yJZ4eWmG/f569Zn9OH6A2Ob5WD1MTBuZuc6gi8=;
 b=BcLLBaeoTaZLKReT7xF4F380ZCod3MrDwYOq1eGTKZIqQMNmr/gbg7LiBc2mA2N0iG
 WFS59R7WRetlc/VIrBYgx7UAHtA5axveGDhJDGDTKfxjTZr5i8n9fTCYYGGiF1FsRTj/
 7g1c8UYiok0vKv/IDcAXqKagTPllBhPvvG40EgkYEABz+U0iGnZf/YwWnmQnzVGmNOqe
 oJVfDLUqkBD1frBo0JfA+4FYGgFai5IO5sAzpX6MdM46TgBXUIt5O1eYstP2Vq8FKf7i
 E2pvLkUffEnd4hICkRz/YirAScywfADg/ll1QZ0CXZoXVfHHPVhIHuJ25hWb4ms+mOsh
 ckRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=e6rN6yJZ4eWmG/f569Zn9OH6A2Ob5WD1MTBuZuc6gi8=;
 b=NWry4LuaRoUzkrwmRQctxUTQjCcDw/Lk8rNuoN+aBUM5F3Xlj0rx5LkQTMqT4eZAid
 iSwYpnItoojp3Zy4ng2xHcNBXZgp07MH3tyArJ43wv5H1siTsAwwcO/Bg9/ODL9YtgF/
 G1kZ2ZnL0nXjRnZeUDf9iOYSX8cY9PJXWRSsZoFFNewjC7NkCxlgot4PRnm8uaUDs9He
 ArGMP5CPdpHkOQgQmh820xKtBt5WulCs+StxEWUM2QqbCTMDGDoiOM01eK7EFWHsRhkH
 SAm1j2rDy4Bvez+/hQOaKUc3nGbi1nxA5UE/o27kVaYB2cyZZDoM9ClVrWtFjSc6Xkdt
 UFvA==
X-Gm-Message-State: APjAAAX4vivxDJQNMvQD1aFkxzBQerRGXX60YjHLiWK08hIItL86Pwoc
 +BmvtNeaaCDw/dhsWE8PtG0=
X-Google-Smtp-Source: APXvYqx70kY7wgGOPXJWRZfeWiF9DHnZy7tefw85FuCVEcE9QFZkCaWdjfQvnlYHtM2j9I6yKoVLNA==
X-Received: by 2002:a81:6055:: with SMTP id u82mr9702017ywb.35.1580648403893; 
 Sun, 02 Feb 2020 05:00:03 -0800 (PST)
Received: from localhost.localdomain (c-73-37-219-234.hsd1.mn.comcast.net.
 [73.37.219.234])
 by smtp.gmail.com with ESMTPSA id m137sm7090013ywd.108.2020.02.02.05.00.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 02 Feb 2020 05:00:03 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-spi@vger.kernel.org
Subject: [PATCH V2 2/5] spi: fspi: dynamically alloc AHB memory
Date: Sun,  2 Feb 2020 06:59:47 -0600
Message-Id: <20200202125950.1825013-2-aford173@gmail.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200202125950.1825013-1-aford173@gmail.com>
References: <20200202125950.1825013-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200202_050007_376632_EB1B1193 
X-CRM114-Status: GOOD (  14.98  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [aford173[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [aford173[at]gmail.com]
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
 Fabio Estevam <festevam@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Ashish Kumar <ashish.kumar@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
 Yogesh Gaur <yogeshgaur.83@gmail.com>, Mark Brown <broonie@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, Han Xu <han.xu@nxp.com>,
 Adam Ford <aford173@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Han Xu <han.xu@nxp.com>

Apply patch from NXP upstream repo to
dynamically allocate AHB memory as needed.

Signed-off-by: Han Xu <han.xu@nxp.com>
Signed-off-by: Adam Ford <aford173@gmail.com>
---
V2: Reorder s-o-b lines to give credit in proper order.

diff --git a/drivers/spi/spi-nxp-fspi.c b/drivers/spi/spi-nxp-fspi.c
index 00c7899428a1..23abf5ae318e 100644
--- a/drivers/spi/spi-nxp-fspi.c
+++ b/drivers/spi/spi-nxp-fspi.c
@@ -307,6 +307,7 @@
 
 #define POLL_TOUT		5000
 #define NXP_FSPI_MAX_CHIPSELECT		4
+#define NXP_FSPI_MIN_IOMAP	SZ_4M
 
 struct nxp_fspi_devtype_data {
 	unsigned int rxfifo;
@@ -345,6 +346,8 @@ struct nxp_fspi {
 	void __iomem *ahb_addr;
 	u32 memmap_phy;
 	u32 memmap_phy_size;
+	u32 memmap_start;
+	u32 memmap_len;
 	struct clk *clk, *clk_en;
 	struct device *dev;
 	struct completion c;
@@ -657,12 +660,35 @@ static void nxp_fspi_select_mem(struct nxp_fspi *f, struct spi_device *spi)
 	f->selected = spi->chip_select;
 }
 
-static void nxp_fspi_read_ahb(struct nxp_fspi *f, const struct spi_mem_op *op)
+static int nxp_fspi_read_ahb(struct nxp_fspi *f, const struct spi_mem_op *op)
 {
+	u32 start = op->addr.val;
 	u32 len = op->data.nbytes;
 
+	/* if necessary, ioremap before AHB read */
+	if ((!f->ahb_addr) || start < f->memmap_start ||
+	     start + len > f->memmap_start + f->memmap_len) {
+		if (f->ahb_addr)
+			iounmap(f->ahb_addr);
+
+		f->memmap_start = start;
+		f->memmap_len = len > NXP_FSPI_MIN_IOMAP ?
+				len : NXP_FSPI_MIN_IOMAP;
+
+		f->ahb_addr = ioremap_wc(f->memmap_phy + f->memmap_start,
+					 f->memmap_len);
+
+		if (!f->ahb_addr) {
+			dev_err(f->dev, "failed to alloc memory\n");
+			return -ENOMEM;
+		}
+	}
+
 	/* Read out the data directly from the AHB buffer. */
-	memcpy_fromio(op->data.buf.in, (f->ahb_addr + op->addr.val), len);
+	memcpy_fromio(op->data.buf.in,
+		      f->ahb_addr + start - f->memmap_start, len);
+
+	return 0;
 }
 
 static void nxp_fspi_fill_txfifo(struct nxp_fspi *f,
@@ -822,7 +848,7 @@ static int nxp_fspi_exec_op(struct spi_mem *mem, const struct spi_mem_op *op)
 	 */
 	if (op->data.nbytes > (f->devtype_data->rxfifo - 4) &&
 	    op->data.dir == SPI_MEM_DATA_IN) {
-		nxp_fspi_read_ahb(f, op);
+		err = nxp_fspi_read_ahb(f, op);
 	} else {
 		if (op->data.nbytes && op->data.dir == SPI_MEM_DATA_OUT)
 			nxp_fspi_fill_txfifo(f, op);
@@ -992,9 +1018,8 @@ static int nxp_fspi_probe(struct platform_device *pdev)
 
 	/* find the resources - controller memory mapped space */
 	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "fspi_mmap");
-	f->ahb_addr = devm_ioremap_resource(dev, res);
-	if (IS_ERR(f->ahb_addr)) {
-		ret = PTR_ERR(f->ahb_addr);
+	if (IS_ERR(res)) {
+		ret = PTR_ERR(res);
 		goto err_put_ctrl;
 	}
 
@@ -1073,6 +1098,9 @@ static int nxp_fspi_remove(struct platform_device *pdev)
 
 	mutex_destroy(&f->lock);
 
+	if (f->ahb_addr)
+		iounmap(f->ahb_addr);
+
 	return 0;
 }
 
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
