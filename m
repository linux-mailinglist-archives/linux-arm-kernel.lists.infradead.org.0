Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12F781CD3F2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 10:31:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2WZlyVn7R06eFPXvJhXfJ3BLz3uKvqFrhZLrt+l5ZlY=; b=dHU8EfuUwy2Zp/
	vjKRS7KjRY+D/z7rjXuBcVLlBrUwyZn7raM77zyLKt0pNkp/9GLYiZiVRl9YUKKA3Yjpypz6ZcxFH
	0iJzbZKo/J3f99ZTs5JWatZO4vgUYpSuGx4Yo6A6CtFIflwsLAhwiqs5h3nxTdXFC281E++O+zNtc
	dp9pvTMuVK1g+a039rf5f7+/1SrK5zwcqZT6B/Mk1VkOAbnzdIK8ONWmy9LASN8CKTKGVql0bBxr2
	RAo7VltOfOMM12KdZEoGvfFiB5xJJOYs7Vf0piM0e7Yqk+1DGTY9PTbTcOY0xOgfkF/K06RQ+dQfO
	238WFxw85Na7bTounNoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY3pv-000849-Qh; Mon, 11 May 2020 08:30:55 +0000
Received: from [27.111.83.178] (helo=mail.gtsys.com.hk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY3pn-00082Z-4D; Mon, 11 May 2020 08:30:48 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.gtsys.com.hk (Postfix) with ESMTP id 3159D2005E73;
 Mon, 11 May 2020 16:30:42 +0800 (HKT)
X-Virus-Scanned: Debian amavisd-new at gtsys.com.hk
Received: from mail.gtsys.com.hk ([127.0.0.1])
 by localhost (mail.gtsys.com.hk [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id li1WDHJHoWxu; Mon, 11 May 2020 16:30:42 +0800 (HKT)
Received: from s01.gtsys.com.hk (unknown [10.128.4.2])
 by mail.gtsys.com.hk (Postfix) with ESMTP id 161AB20020CB;
 Mon, 11 May 2020 16:30:42 +0800 (HKT)
Received: from armhf2.gtsys.com.hk (unknown [10.128.4.15])
 by s01.gtsys.com.hk (Postfix) with ESMTP id 12A7CC01F94;
 Mon, 11 May 2020 16:30:42 +0800 (HKT)
Received: by armhf2.gtsys.com.hk (Postfix, from userid 1000)
 id 0D5D32001DE; Mon, 11 May 2020 16:30:42 +0800 (HKT)
From: Chris Ruehl <chris.ruehl@gtsys.com.hk>
To: Chris Ruehl <chris.ruehl@gtsys.com.hk>,
	Jack Lo <jack.lo@gtsys.com.hk>
Subject: [PATCH v1 3/3] spi: spi-rockchip: use num-cs property and
 ctlr->enable_gpiods
Date: Mon, 11 May 2020 16:30:22 +0800
Message-Id: <20200511083022.23678-4-chris.ruehl@gtsys.com.hk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200511083022.23678-1-chris.ruehl@gtsys.com.hk>
References: <20200511083022.23678-1-chris.ruehl@gtsys.com.hk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_013047_322737_5844EB55 
X-CRM114-Status: GOOD (  10.66  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Mark Brown <broonie@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The original implementation set num_chipselect to ROCKCHIP_SPI_MAX_CS_NUM (2)
which seems wrong here. spi0 has 2 native cs, all others just one. With
enable and use of cs_gpiods / GPIO CS, its correct to set the num_chipselect
from the num-cs property and set max_native_cs with the define.
If num-cs is missing the default set to num_chipselect = 1.

Signed-off-by: Chris Ruehl <chris.ruehl@gtsys.com.hk>
---
 drivers/spi/spi-rockchip.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/spi/spi-rockchip.c b/drivers/spi/spi-rockchip.c
index f57a8faa6f31..9b8a5e1233c0 100644
--- a/drivers/spi/spi-rockchip.c
+++ b/drivers/spi/spi-rockchip.c
@@ -708,8 +708,15 @@ static int rockchip_spi_probe(struct platform_device *pdev)
 		ctlr->slave_abort = rockchip_spi_slave_abort;
 	} else {
 		ctlr->flags = SPI_MASTER_GPIO_SS;
+		ctlr->max_native_cs = ROCKCHIP_SPI_MAX_CS_NUM;
+		/*
+		 * rk spi0 has two native cs, spi1..5 one cs only
+		 * if num-cs is missing in the dts, default to 1
+		 */
+		if (of_property_read_u16(np, "num-cs", &ctlr->num_chipselect))
+			ctlr->num_chipselect = 1;
+		ctlr->use_gpio_descriptors = true;
 	}
-	ctlr->num_chipselect = ROCKCHIP_SPI_MAX_CS_NUM;
 	ctlr->dev.of_node = pdev->dev.of_node;
 	ctlr->bits_per_word_mask = SPI_BPW_MASK(16) | SPI_BPW_MASK(8) | SPI_BPW_MASK(4);
 	ctlr->min_speed_hz = rs->freq / BAUDR_SCKDV_MAX;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
