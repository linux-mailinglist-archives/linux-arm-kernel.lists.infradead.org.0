Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20AA41D99F6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 16:36:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aeREL+4B2v3kSp9pYImhl2JsAVQ/Bq0yOhYehKPspho=; b=ljndG9/6vUkyV2
	QweBW04R0l3AKV6gcd+2VnjKeTwaCxXHDuhegPb9IQxUjfyptm6kYOpTUzD81v/VcY4Tazcz983u1
	BqgIB4Gbu5Mqr6RQHB34TLAmSSBva1jVx6qff0XAwcLL2Gu38Ln9vOWaEyHD32TKa2sA4lTsAjgbL
	8nn/ec+4RCyh2RtJ78sz9jvvQqDJFDkLV4kZzr9o4xfth6jnRs4btwSmoX761uA54IIYuT7OeIsr2
	+KqOp5mcdeiUE9kw2FpTzT0lOBflrsr6Sf8UkiRFNQE16qsBm9ntM0VVOPUvkY8qS+cFrfeAtGdYI
	dfrkKthjKS1qip7d1DbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb3Lu-0003dd-6n; Tue, 19 May 2020 14:36:18 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb3Dq-0000jv-J8; Tue, 19 May 2020 14:27:59 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04JERrYn062740;
 Tue, 19 May 2020 09:27:53 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1589898473;
 bh=r6GBx3PliD3v68OHwMPuus+woK+Y2rT7vGIPicza4KI=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=fXfPEKIDZHnxaGx5hZ2TroD7RQfZwxd2UlWdyKgxQEkx/b4yAWv4CSjVJdh2r/sK7
 ntuv5pIQxpMB2v0AtX0HuBzxMCUGt7fhYO5D27nANVMSgOIhhaByZ06tqv9jfIHBwa
 dq5ouQuYqwrqKtbdlB2WnbObQlrCGJZZ+4z0pqJw=
Received: from DFLE108.ent.ti.com (dfle108.ent.ti.com [10.64.6.29])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 04JERrqe070194
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 19 May 2020 09:27:53 -0500
Received: from DFLE115.ent.ti.com (10.64.6.36) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 19
 May 2020 09:27:53 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 19 May 2020 09:27:53 -0500
Received: from pratyush-OptiPlex-790.dhcp.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04JEQgjV008313;
 Tue, 19 May 2020 09:27:48 -0500
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
Subject: [PATCH v5 13/19] mtd: spi-nor: sfdp: do not make invalid quad enable
 fatal
Date: Tue, 19 May 2020 19:56:35 +0530
Message-ID: <20200519142642.24131-14-p.yadav@ti.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200519142642.24131-1-p.yadav@ti.com>
References: <20200519142642.24131-1-p.yadav@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_072758_726757_453B8B11 
X-CRM114-Status: GOOD (  14.47  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
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

The Micron MT35XU512ABA flash does not support the quad enable bit. But
instead of programming the Quad Enable Require field to 000b ("Device
does not have a QE bit"), it is programmed to 111b ("Reserved").

While this is technically incorrect, it is not reason enough to abort
BFPT parsing. Instead, continue BFPT parsing assuming there is no quad
enable bit present.

Signed-off-by: Pratyush Yadav <p.yadav@ti.com>
---
 drivers/mtd/spi-nor/sfdp.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/mtd/spi-nor/sfdp.c b/drivers/mtd/spi-nor/sfdp.c
index 4e5e0eabe2d9..be9c6c3d6590 100644
--- a/drivers/mtd/spi-nor/sfdp.c
+++ b/drivers/mtd/spi-nor/sfdp.c
@@ -569,10 +569,6 @@ static int spi_nor_parse_bfpt(struct spi_nor *nor,
 
 	/* Quad Enable Requirements. */
 	switch (bfpt.dwords[BFPT_DWORD(15)] & BFPT_DWORD15_QER_MASK) {
-	case BFPT_DWORD15_QER_NONE:
-		params->quad_enable = NULL;
-		break;
-
 	case BFPT_DWORD15_QER_SR2_BIT1_BUGGY:
 		/*
 		 * Writing only one byte to the Status Register has the
@@ -609,8 +605,10 @@ static int spi_nor_parse_bfpt(struct spi_nor *nor,
 		params->quad_enable = spi_nor_sr2_bit1_quad_enable;
 		break;
 
+	case BFPT_DWORD15_QER_NONE:
 	default:
-		return -EINVAL;
+		params->quad_enable = NULL;
+		break;
 	}
 
 	/* Stop here if JESD216 rev B. */
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
