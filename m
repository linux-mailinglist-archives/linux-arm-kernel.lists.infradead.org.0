Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BC44149AF8
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Jan 2020 15:10:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7lTDh9hdW+uQf7tI06az1BUksbZ+HxV5d3KktOIVgFw=; b=qCBTsQP37yPi9P
	nB9v4HFNmqMBkm37jDEwHEV00Q7JqtZkNwTSutOtB3RLUNX/O/pwSMRfsXAdizcpm1ruZPEQBf8/h
	3FQ2ouRMHKaIjV4f0ksNplLnV6B0X/gWud1jn3h6MwjNVgCro7UzLQU+hGWMCGwm+oWvmz/M0ydGs
	f6Byvs6Ex5NsNWV2oLtgywBq1UrJu9VecsmSndAkiCS6o9YrHrZgHNV+p12HodPy9+zkcGF+Vh4xk
	kL5A60ALkITkFVHnotCkCAQgy/5Ww0nsILwthfJCAXLP/pzXQcGiNRFvXg26O1TXO4xJVfanS8g07
	4HK0lGBYpNkqEgm7gn7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivic5-0001Jg-MK; Sun, 26 Jan 2020 14:10:09 +0000
Received: from mail-yb1-xb43.google.com ([2607:f8b0:4864:20::b43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivibV-00015j-VT
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Jan 2020 14:09:35 +0000
Received: by mail-yb1-xb43.google.com with SMTP id w17so3652468ybm.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 Jan 2020 06:09:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0znyjyYbiAbfIQWL1oHWminydK6nnqolmIPai4FHJsc=;
 b=R4GqoCH0iaDMWEwxpz1GR5oUF1M/PE+kqz3xfrZFKD3jO36TKruKc+faOYkaorNk/D
 DeQeNy5D9BzFVEmzmhmt7ldcFyWlbkECndL6WYGi+2dHcJmOTM5hphD7ATLRFTHy0Clv
 6qug8RknOAOytZhosq2Mj6lbC7hNAdXnvnb/SZKEd6FrVJpcReBRiXvxv4VFKSalqBaI
 2AHJWwykNlWagqtgLAPvXb+ELm74R8e314A3RWKmipUwoPfEt2/fq1rHwUZH3v8E/Kcq
 YZkCH887Srp+xO+17qyxEA6A/5aUKdXRIu8TH+J9BVYQsb9e8Ax8qDRDur1Vawvob5vT
 QyBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0znyjyYbiAbfIQWL1oHWminydK6nnqolmIPai4FHJsc=;
 b=VPt0NdV8tO1D0FG03Sht3KPNs2j9K07UewGOYFzIS4dorInnR+C4tPJSCzu/6y3OQD
 cS+lYAHh3glFIYqwf3eJB41gyuSzsh0ZhlxqhzJvFVHsQtpjsm7xjV8Qfob3MoALMGQY
 OSV1SwfaMtNnoR+tOvbJKreMV7zCZoWppV+v3f8p4xw02v5W60MQfsY/zrCJYDLm+VmK
 DTKSkJ059n+Lcu+1bsHkUrv6kvG65iFaVrADmO10BSGzNeDF+RSh4iWuyP2O5+bmvRAf
 oBtcRS+qizImHbZ+9K2WnzmI0+mZjR3hLUSjaJzR4PZin5pNBv1E8UZfzvthCix3RQKM
 cQJQ==
X-Gm-Message-State: APjAAAVN/zvtl/l0OZFK9aVI0kikkxYw8QQFHjq13BbNXTPpwiuDHpHB
 855y4jeiHh6FUR31bI/ylpg=
X-Google-Smtp-Source: APXvYqyZvLUQmp2PTyVD65ywAO78sFlydfcTzGCK8FC8Fn/wQl9dllTay7iP+Tj7BKw2LabEC8Xomw==
X-Received: by 2002:a25:d252:: with SMTP id j79mr9269996ybg.311.1580047772582; 
 Sun, 26 Jan 2020 06:09:32 -0800 (PST)
Received: from localhost.localdomain (c-73-37-219-234.hsd1.mn.comcast.net.
 [73.37.219.234])
 by smtp.gmail.com with ESMTPSA id a12sm5237214ywa.95.2020.01.26.06.09.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 26 Jan 2020 06:09:32 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-spi@vger.kernel.org
Subject: [PATCH 2/5] spi: fspi: dynamically alloc AHB memory
Date: Sun, 26 Jan 2020 08:09:09 -0600
Message-Id: <20200126140913.2139260-2-aford173@gmail.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200126140913.2139260-1-aford173@gmail.com>
References: <20200126140913.2139260-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200126_060934_013335_E7698771 
X-CRM114-Status: GOOD (  15.06  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [aford173[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [aford173[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Pengutronix Kernel Team <kernel@pengutronix.de>, han.xu@nxp.com,
 Adam Ford <aford173@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Han Xu <han.xu@nxp.com>

Apply patch from NXP upstream repo to
dynamically allocate AHB memory as needed.

Signed-off-by: Adam Ford <aford173@gmail.com>
Signed-off-by: Han Xu <han.xu@nxp.com>

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
