Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28153E98BA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 10:03:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=eRj2XAYE6yHAXp6QKNvDE9N7LDA6Q83VVtyuQMf5Bu4=; b=fgj6+tKmOGpsZZWqpIE3HAY1/p
	gbkLhRLdYXC8Y9iiu2ymd7LYPGdLxOUHkKhTfEUwlLyxLBB16xDbc3GQzK/e/OYw7HPctuIVCuWZZ
	bxQxijfFqNc9tK2vs99EIeRcJl61aPhg3YWmGpPqwKTTEVA3bTijku9kyZMJ22kPUzY44tcjgJXq/
	R6ngBVFXUR63NNycH9sX8I0u9Llqg2cpYR6mplgJ0zXaxpbtPV4lLWmNP13dCo8mjIvViCbDrFGBR
	lB0HCZMjFNtQ/R1bYHWw6u9806UgpdzQY3Vda17tdUHueaPxI4Tm7NLsBFs2TsKj0+4umUrwXfOwa
	sMxMmQsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPjtC-0004zZ-BW; Wed, 30 Oct 2019 09:03:38 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPjs5-0004BQ-3S
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 09:02:32 +0000
Received: by mail-pg1-x541.google.com with SMTP id w3so1045295pgt.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 30 Oct 2019 02:02:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=LAPsnGt1pYtfbduk+JeNTkq03C0NkkTkxfb05DzEQJ0=;
 b=OjUstP+ZDVdOGkJvM7Td/6qBjFXM/KJF6OJzUcEP7TyIJ4ZvUAn9T7yD8XjYxDNEJN
 KHjfvWijYiNtqenb9bwa4Sd1uGk/jU8FssM6dooJ4yDHUi45cn17lSpLQFbVew2amgW1
 FPa8iEp/VeagMZARlx0/Hkpd+Tt/g031BieCjXyxwn2gsco2zYNWb50cT4woJ+ovMB3Z
 fzA4VRtI6KPvbdbp/WHauQOggzc/Pzxm45n53SBGlLJ/X4cN+ny0thBTdo/0mLdX21nN
 udm+afipjTPSHKncaghH/3F0Zwzwekn1z/WYsofoSyAtuLp7QCy8b/4kPAXWhs5jUQrf
 Bfnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=LAPsnGt1pYtfbduk+JeNTkq03C0NkkTkxfb05DzEQJ0=;
 b=QziXSYUOuokYdGbTjMrJ1lVDIOUlFEXC4u9LNW2PClYh835EvbktgFCiUpT6SQp1Sh
 W0y6GYrYmTu8jwD5xNR5xq3SAlPEoHazl9o2pg6by4/GyIt+ukdEq2LK2z0tvqHACysE
 oT0POwBW25Yji/qlQV4UOUWadPkVlwGDgMN4wyhRTfE+XcQNPoMa10T/JnpTJ1ibGJJg
 ZEG9tiC83DDy0Fa1N21AThfqhlRHutq7+Xm64p6aw+iYL7bnIXoq4CLPbEgQvSGDiLEx
 hzf6b4cPW0h/I3rXWmgH/QIlLHkRj6SRm6SAjv2wzD7XA3c9Kuss+KfdhZpS2ia8+ypc
 XGkA==
X-Gm-Message-State: APjAAAW8hZkc7TX+/FUF4GXaU3+EnXrfotDOXck2jJCZrluHDieznzLI
 WXzInxhJ0n1QfypCwqXnButi
X-Google-Smtp-Source: APXvYqxsyssWpqE3cm5I9+vC1DFWm8h7Zo1nOKgSKfAdxUIWWIrp9fIwVWU5LGEWc9pZGi9gWdp/CA==
X-Received: by 2002:a63:6d02:: with SMTP id i2mr33658547pgc.64.1572426146740; 
 Wed, 30 Oct 2019 02:02:26 -0700 (PDT)
Received: from localhost.localdomain
 ([2409:4072:618e:77d9:c9fa:423a:3851:8df4])
 by smtp.gmail.com with ESMTPSA id g24sm2070351pfi.81.2019.10.30.02.02.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 30 Oct 2019 02:02:26 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	robh+dt@kernel.org
Subject: [PATCH v2 4/4] mtd: spi-nor: Add support for w25q256jw
Date: Wed, 30 Oct 2019 14:31:24 +0530
Message-Id: <20191030090124.24900-5-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191030090124.24900-1-manivannan.sadhasivam@linaro.org>
References: <20191030090124.24900-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_020229_382228_178FFF85 
X-CRM114-Status: GOOD (  15.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
64KB sectors. In addition to this, there is also small 4KB sectors
available for flexibility. The device has been validated using Thor96
board.

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
