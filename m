Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 886421D9A1D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 16:38:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IjmMgZb/C8p1mFyo3iAsyXZmIX8CCx6rQP3S49BKTvg=; b=eQmjGL+VxPkmMx
	NqjWqIZKkwDVpaCEMit5ZZNHQ5AfSOqnmtmMR0bD3YLjnNH5HxRBsCz/morx1M76GelQDCz7scvP5
	4HlDxOSi/s4wxIXiGa1xWP9Dwyqs6fM4iwZoFrIzyBNZre1hnbfB5r9EophlYFD3kMRXa+YIxU0zi
	IhnYGDwDNknKQFc3u2u4YgillPCjLsg05JGXHa9BdCTFlhNWLp+wdqoHA5hoL9+Jlz1XvZA5n0AhY
	8PTL+w/xiJMYz90PxR9rqM8A+p8WPR0U2Cn/QSKeVuEVSudFfhfKwbPG7m8jJNW+sGjinwhkncEOM
	8SYJjYA1vyaGKw3nE1Jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb3Nm-0005SF-9V; Tue, 19 May 2020 14:38:14 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb3E5-0000wy-Hz; Tue, 19 May 2020 14:28:15 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04JES852005391;
 Tue, 19 May 2020 09:28:08 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1589898488;
 bh=70FeLQTtJkyVxVIkf8YVfc8xOxYWAvnHPgHRRqee0UU=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=jmB5xyhOOK+ovbliuLlg19+s6/dkkq+DnPTORUzo2HDGwo+2VorZInvi1B4F0hIjS
 ZGm71XOQJuP3nRcmaF2UwbbN+RA/BG4PO/3YVL9zkB529qEwe8W2ipaN9yEh7cUlER
 HQ/nPATbj5oiuo51XbVUw9/J1oK+gPIajZLxMJmk=
Received: from DFLE108.ent.ti.com (dfle108.ent.ti.com [10.64.6.29])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 04JES8cK083364
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 19 May 2020 09:28:08 -0500
Received: from DFLE108.ent.ti.com (10.64.6.29) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 19
 May 2020 09:28:08 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 19 May 2020 09:28:08 -0500
Received: from pratyush-OptiPlex-790.dhcp.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04JEQgjY008313;
 Tue, 19 May 2020 09:28:03 -0500
From: Pratyush Yadav <p.yadav@ti.com>
To: Tudor Ambarus <tudor.ambarus@microchip.com>, Miquel Raynal
 <miquel.raynal@bootlin.com>, Richard Weinberger <richard@nod.at>, Vignesh
 Raghavendra <vigneshr@ti.com>, Mark Brown <broonie@kernel.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>, Alexandre Belloni
 <alexandre.belloni@bootlin.com>, Ludovic Desroches
 <ludovic.desroches@microchip.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 <linux-mtd@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <linux-spi@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-mediatek@lists.infradead.org>
Subject: [PATCH v5 16/19] mtd: spi-nor: core: disable Octal DTR mode on
 suspend.
Date: Tue, 19 May 2020 19:56:38 +0530
Message-ID: <20200519142642.24131-17-p.yadav@ti.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200519142642.24131-1-p.yadav@ti.com>
References: <20200519142642.24131-1-p.yadav@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_072813_736639_DAFD19A5 
X-CRM114-Status: GOOD (  13.51  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mason Yang <masonccyang@mxic.com.tw>,
 Boris Brezillon <boris.brezillon@collabora.com>, Sekhar Nori <nsekhar@ti.com>,
 Pratyush Yadav <p.yadav@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On resume, the init procedure will be run that will re-enable it.

Signed-off-by: Pratyush Yadav <p.yadav@ti.com>
---
 drivers/mtd/spi-nor/core.c | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/drivers/mtd/spi-nor/core.c b/drivers/mtd/spi-nor/core.c
index 68559386f6f8..63ab588299f4 100644
--- a/drivers/mtd/spi-nor/core.c
+++ b/drivers/mtd/spi-nor/core.c
@@ -3239,6 +3239,23 @@ static void spi_nor_soft_reset(struct spi_nor *nor)
 	usleep_range(SPI_NOR_SRST_SLEEP_MIN, SPI_NOR_SRST_SLEEP_MAX);
 }
 
+/* mtd suspend handler */
+static int spi_nor_suspend(struct mtd_info *mtd)
+{
+	struct spi_nor *nor = mtd_to_spi_nor(mtd);
+	struct device *dev = nor->dev;
+	int ret;
+
+	/* Disable octal DTR mode if we enabled it. */
+	ret = spi_nor_octal_dtr_enable(nor, false);
+	if (ret) {
+		dev_err(dev, "suspend() failed\n");
+		return ret;
+	}
+
+	return 0;
+}
+
 /* mtd resume handler */
 static void spi_nor_resume(struct mtd_info *mtd)
 {
@@ -3432,6 +3449,7 @@ int spi_nor_scan(struct spi_nor *nor, const char *name,
 	mtd->size = nor->params->size;
 	mtd->_erase = spi_nor_erase;
 	mtd->_read = spi_nor_read;
+	mtd->_suspend = spi_nor_suspend;
 	mtd->_resume = spi_nor_resume;
 
 	if (nor->params->locking_ops) {
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
