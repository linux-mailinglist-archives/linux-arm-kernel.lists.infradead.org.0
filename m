Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D498E35D6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 16:44:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=MQnCKHeDQk64G0LpDfrbkSqwawdSBWWSb0394rg/ghc=; b=iHM/qAJZBzIIXU9mnW0p+UdBk7
	AFoShvB4A534xl+QZsz147KjxrL02YjYhC9zgf+qy0euOW9Nn4G0G9j2YDSK8P4ztqHzniYuFgyfr
	3i61LN4gGR4Ojfzylqtgp+BCOuM1CNWjVLqHsbMdHyqQ8kg1ywNVT5aGteimSfSxIS74PoS3IlL2a
	k0xGgwf7tIIXFzUVSfmyXuE6im3Ke4iCK5CmtLTpvcgftlTigzqpu2Wi9Wc3Lj+gEirZpQP9qQeoi
	MG5vfTSES+Pw5vv65quPZsyiXLPKlUmCD0BLf+OU/1hDjTjnNXYWKZJFeVHazOK6PZQK59v9jQkgx
	YK6WU3cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNeLe-0005ld-7I; Thu, 24 Oct 2019 14:44:22 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNeKf-000595-4c
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 14:43:23 +0000
Received: by mail-pf1-x442.google.com with SMTP id b25so1243988pfi.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 07:43:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ej8B142hK6d03XKUGaQLuYVY6IpXZx2RmTPiqw40xi0=;
 b=aebygqwdzbyjiw1HI65W5nDqWVi//gOTnjJUMoWKjfynVochCmJY083Di3Z6fMd+2Q
 B4E5dQMYgWhkj9ZkFE1XJlPGurpFgXZoXwPoXN9Ix9sKAib91IXfaGWLfPxNvf3fkPvt
 Xa9/13iNYaLa/6P/LIUpcwIl98F2OusacFiQ5mWEss9viOnVX/ClAM4b5QmYv1JbmKef
 vgw4dOPpdDlsccirWZmcKsk8IZ/+SjhU/yAP5tvX6oZiodBlWz2livl5Kjma8204ZPEb
 EyxBRzhDqTzo65FthvKiqj3+vbKNzEYTYxRoop5a8r+QIENcwNZzUUNTCsxJxSwt8D8e
 NFSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ej8B142hK6d03XKUGaQLuYVY6IpXZx2RmTPiqw40xi0=;
 b=ihVvIE0d9j4hiBVzLSKp+vAyuDfr+ZA/vwGNFPPnUmj/tNHjGGSbCdjXjbA5ngtQwh
 Jw2sjLBAT38a6DlQL5Y91BmdhUbgD0es3/g2PdWKx/ATBVTZ+h2Pv1/A8MdMQEnABEaQ
 aUGGDavkSJvHqBfz78gVi1xtWbeL7/nXgjqSzGnXeCddDzE34gzi9Ap5MXdduOU3BBzp
 Bjnr5Xh9GkmYxmOkH4h1KZuMl8i5cAjk2w23udScZFB8jDjgshxRhujjShVRZxuvLUXI
 W4gotY5CDnBemVxC/LF0ElFPYYDQHQC5sUz6qTWqiNwEGGLkRgbS6JYnjEM+Cq8nGBEg
 W4Kg==
X-Gm-Message-State: APjAAAXqVzp753uY9g3qg8kfCmylXzc37hZwZ+2lD9ZfLxD95N/rmWT6
 khNIdLudYuGfajJOoYhWd3YwYBZ+nA==
X-Google-Smtp-Source: APXvYqyDYXDc7Cp++dLoN78c2Zxn8cmXxMVZpwreIbgMQ5jl2bGcMqKD3B+kSHCDsAWtxtHmrJFrKQ==
X-Received: by 2002:a05:6a00:51:: with SMTP id
 i17mr11035059pfk.8.1571928199878; 
 Thu, 24 Oct 2019 07:43:19 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:997:a0de:81a:ea25:468a:5918])
 by smtp.gmail.com with ESMTPSA id
 193sm29059810pfc.59.2019.10.24.07.43.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Oct 2019 07:43:19 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	robh+dt@kernel.org
Subject: [PATCH 3/3] mtd: spi-nor: Add support for w25q256jw
Date: Thu, 24 Oct 2019 20:12:35 +0530
Message-Id: <20191024144235.3182-4-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191024144235.3182-1-manivannan.sadhasivam@linaro.org>
References: <20191024144235.3182-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_074321_252088_E28BA042 
X-CRM114-Status: GOOD (  14.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Richard Weinberger <richard@nod.at>,
 Marek Vasut <marek.vasut@gmail.com>, Miquel Raynal <miquel.raynal@bootlin.com>,
 David Woodhouse <dwmw2@infradead.org>,
 Tudor Ambarus <tudor.ambarus@microchip.com>, linux-kernel@vger.kernel.org,
 Vignesh Raghavendra <vigneshr@ti.com>, darshak.patel@einfochips.com,
 linux-mtd@lists.infradead.org, linux-imx@nxp.com, kernel@pengutronix.de,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Brian Norris <computersforpeace@gmail.com>, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org, prajose.john@einfochips.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add MTD support for w25q256jw SPI NOR chip from Winbond. This chip
supports dual/quad I/O mode with 512 blocks of memory organized in
4KB sectors. The device has been validated using Thor96 board.

Cc: Marek Vasut <marek.vasut@gmail.com>
Cc: Tudor Ambarus <tudor.ambarus@microchip.com>
Cc: David Woodhouse <dwmw2@infradead.org>
Cc: Brian Norris <computersforpeace@gmail.com>
Cc: Miquel Raynal <miquel.raynal@bootlin.com>
Cc: Richard Weinberger <richard@nod.at>
Cc: Vignesh Raghavendra <vigneshr@ti.com>
Cc: linux-mtd@lists.infradead.org
Signed-off-by: Darshak Patel <darshak.patel@einfochips.com>
[Mani: cleaned up for upstream]
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/mtd/spi-nor/spi-nor.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 1d8621d43160..2c25b371d9f0 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -2482,6 +2482,8 @@ static const struct flash_info spi_nor_ids[] = {
 	{ "w25q256", INFO(0xef4019, 0, 64 * 1024, 512, SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
 	{ "w25q256jvm", INFO(0xef7019, 0, 64 * 1024, 512,
 			     SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
+	{ "w25q256jw", INFO(0xef6019, 0, 64 * 1024, 512,
+			     SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
 	{ "w25m512jv", INFO(0xef7119, 0, 64 * 1024, 1024,
 			SECT_4K | SPI_NOR_QUAD_READ | SPI_NOR_DUAL_READ) },
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
